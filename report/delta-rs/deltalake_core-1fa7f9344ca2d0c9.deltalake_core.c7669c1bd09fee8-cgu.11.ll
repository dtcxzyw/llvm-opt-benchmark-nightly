inline.NumInlined: 10475
inline.NumDeleted: 2844
begin_hunk_0_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter44 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter44.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter44.next = add i32 %epil.iter44, 1     ; 2 uses
  %epil.iter44.cmp.not = icmp eq i32 %epil.iter44.next, %xtraiter43
  br i1 %epil.iter44.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !28844

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.as = add i32 %.sroa.0.02.i27.i, 1
  %i.at = load atomic ptr, ptr %i.ak acquire, align 8
  %i.au = icmp eq ptr %i.at, null
  %loop-unroll.iv.next42 = add i32 %loop-unroll.iv41, %i.ao
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_IB1M_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorENtNtBY_6marker4SendEL_EEB4k_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_IB1M_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorENtNtBY_6marker4SendEL_EEB4k_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.av = load atomic ptr, ptr %i.ak acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.147.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.147.i, i64 noundef 3488, i64 noundef 16) #48
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_IB1j_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2W_5error5ErrorENtNtB4_6marker4SendEL_EEB3R_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.k:                                             ; preds = %.lr.ph50.i
  %i.aw = getelementptr inbounds nuw [112 x i8], ptr %.sroa.011.147.i, i64 %i.aj ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96 ; 2 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8
  %i.az = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_IB1J_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3m_5error5ErrorENtNtBV_6marker4SendEL_EEB4h_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %loop-unroll.iv33 = phi i32 [ %loop-unroll.iv.next34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.0.02.i29.i = phi i32 [ %i.bg, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %i.bb = shl i32 %.sroa.0.02.i29.i, 1
  %i.bc = or i32 %i.bb, 1
  %i.bd = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.be = add i32 %loop-unroll.iv33, -1
  %xtraiter35 = and i32 %loop-unroll.iv33, 7      ; 3 uses
  %i.bf = icmp ult i32 %i.be, 7
  br i1 %i.bf, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter39 = and i32 %loop-unroll.iv33, -8
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
  %niter40 = phi i32 [ 0, %.lr.ph.i.i32.i.preheader.new ], [ %niter40.next.7, %.lr.ph.i.i32.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter40.next.7 = add i32 %niter40, 8           ; 2 uses
  %niter40.ncmp.7 = icmp eq i32 %niter40.next.7, %unroll_iter39
  br i1 %niter40.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, label %.lr.ph.i.i32.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i32.i
  %lcmp.mod37.not = icmp eq i32 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil.preheader

.lr.ph.i.i32.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.preheader
  %lcmp.mod38 = icmp ne i32 %xtraiter35, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph.i.i32.i.epil

.lr.ph.i.i32.i.epil:                              ; preds = %.lr.ph.i.i32.i.epil, %.lr.ph.i.i32.i.epil.preheader
  %epil.iter36 = phi i32 [ 0, %.lr.ph.i.i32.i.epil.preheader ], [ %epil.iter36.next, %.lr.ph.i.i32.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil, !llvm.loop !28845

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.epil, %bb.m, %bb.l
  %i.bg = add i32 %.sroa.0.02.i29.i, 1
  %i.bh = load atomic i64, ptr %i.ax acquire, align 8
  %i.bi = and i64 %i.bh, 1
  %i.bj = icmp eq i64 %i.bi, 0
  %loop-unroll.iv.next34 = add i32 %loop-unroll.iv33, %i.bc
  br i1 %i.bj, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_IB1J_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3m_5error5ErrorENtNtBV_6marker4SendEL_EEB4h_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_IB1J_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3m_5error5ErrorENtNtBV_6marker4SendEL_EEB4h_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28846)
  %i.bk = load i64, ptr %i.aw, align 16, !range !635, !alias.scope !28846, !noundef !3
  %i.bl = icmp eq i64 %i.bk, -9223372036854775743
  br i1 %i.bl, label %bb.n, label %bb.t

bb.n:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_IB1J_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3m_5error5ErrorENtNtBV_6marker4SendEL_EEB4h_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.val.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !28846 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val1.i.i = load ptr, ptr %i.bn, align 16, !alias.scope !28846, !nonnull !3, !align !65, !noundef !3 ; 5 uses
  %i.bo = load ptr, ptr %.val1.i.i, align 8, !invariant.load !3, !noalias !28846 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.bo(ptr noundef nonnull %.val.i.i)
          to label %bb.p unwind label %bb.r, !noalias !28846

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !112, !invariant.load !3, !noalias !28846 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_IB1j_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2W_5error5ErrorENtNtB4_6marker4SendEL_EEB3R_EECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !296, !invariant.load !3, !noalias !28846
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bq, i64 noundef range(i64 1, 536870913) %i.bt) #48, !noalias !28846
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_IB1j_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2W_5error5ErrorENtNtB4_6marker4SendEL_EEB3R_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.r:                                             ; preds = %bb.o
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !112, !invariant.load !3, !noalias !28846 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultIBy_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2j_5error5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !296, !invariant.load !3, !noalias !28846
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bw, i64 noundef range(i64 1, 536870913) %i.bz) #48, !noalias !28846
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultIBy_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2j_5error5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultIBy_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2j_5error5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i.i.i: ; preds = %bb.s, %bb.r
  resume { ptr, i32 } %i.bu

bb.t:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_IB1J_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3m_5error5ErrorENtNtBV_6marker4SendEL_EEB4h_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.aw)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_IB1j_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2W_5error5ErrorENtNtB4_6marker4SendEL_EEB3R_EECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_IB1j_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2W_5error5ErrorENtNtB4_6marker4SendEL_EEB3R_EECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.t, %bb.q, %bb.p, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_IB1M_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorENtNtBY_6marker4SendEL_EEB4k_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.011.2.i = phi ptr [ %i.av, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_IB1M_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorENtNtBY_6marker4SendEL_EEB4k_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.011.147.i, %bb.p ], [ %.sroa.011.147.i, %bb.q ], [ %.sroa.011.147.i, %bb.t ] ; 2 uses
  %i.ca = add i64 %.sroa.05.048.i, 2              ; 3 uses
  %i.cb = lshr i64 %i.ca, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.cb, %i.q
  br i1 %.not.i, label %._crit_edge51.i, label %.lr.ph50.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge51.i, %bb.g
  %i.cc = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.cc, ptr %0 release, align 128
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
  call void @llvm.experimental.noalias.scope.decl(metadata !28849)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !28849 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !28849 ; 8 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28849
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
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
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
  call void @llvm.x86.sse2.pause(), !noalias !28849
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28852

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
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !28849 ; 3 uses
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
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28849
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
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
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
  call void @llvm.x86.sse2.pause(), !noalias !28849
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !28853

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !28849
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.am, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i, i32 6) ; 2 uses
  %i.an = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.034.i, 0
  br i1 %.not.i23.i, label %.backedge.i.backedge, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.o
  %xtraiter = and i32 %i.an, 5                    ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.034.i, 3
  br i1 %i.ao, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %i.an, 56
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
  call void @llvm.x86.sse2.pause(), !noalias !28849
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !28854

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ap = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.034.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ap, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.aq = icmp eq i64 %i.s, 30
  br i1 %i.aq, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 3472 ; 2 uses
  %i.as = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !28849 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_IB1M_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorENtNtBY_6marker4SendEL_EEB4k_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %.sroa.0.02.i28.i = phi i32 [ %i.az, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %i.au = shl i32 %.sroa.0.02.i28.i, 1
  %i.av = or i32 %i.au, 1
  %i.aw = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.aw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i27.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28849
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.s:                                             ; preds = %.lr.ph.i27.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i28.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.s
  %i.ax = add i32 %loop-unroll.iv, -1
  %xtraiter98 = and i32 %loop-unroll.iv, 7        ; 3 uses
  %i.ay = icmp ult i32 %i.ax, 7
  br i1 %i.ay, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter102 = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter103 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter103.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
  call void @llvm.x86.sse2.pause(), !noalias !28849
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
  call void @llvm.x86.sse2.pause(), !noalias !28849
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !28855

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.az = add i32 %.sroa.0.02.i28.i, 1
  %i.ba = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !28849 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.av
  br i1 %i.bb, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_IB1M_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorENtNtBY_6marker4SendEL_EEB4k_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_IB1M_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorENtNtBY_6marker4SendEL_EEB4k_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.as, %bb.q ], [ %i.ba, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.bc = and i64 %.sroa.01.0.i, -2
  %i.bd = add i64 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 3472
  %i.bf = load atomic ptr, ptr %i.be monotonic, align 8, !noalias !28849
  %i.bg = icmp ne ptr %i.bf, null
  %i.bh = zext i1 %i.bg to i64
  %spec.select17.i = or disjoint i64 %i.bd, %i.bh
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !28849
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !28849
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  %i.bi = load i32, ptr %i.i, align 8, !range !28599, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bi, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_IB1M_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorENtNtBY_6marker4SendEL_EEB4k_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !28849
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !28849
  %i.bj = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96 ; 3 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8, !noalias !28856
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_IB1J_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3m_5error5ErrorENtNtBV_6marker4SendEL_EEB4h_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %loop-unroll.iv104 = phi i32 [ %loop-unroll.iv.next105, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 4 uses
  %.sroa.0.02.i.i4 = phi i32 [ %i.bt, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 4 uses
  %i.bo = shl i32 %.sroa.0.02.i.i4, 1
  %i.bp = or i32 %i.bo, 1
  %i.bq = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28856
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5

bb.v:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.v
  %i.br = add i32 %loop-unroll.iv104, -1
  %xtraiter106 = and i32 %loop-unroll.iv104, 7    ; 3 uses
  %i.bs = icmp ult i32 %i.br, 7
  br i1 %i.bs, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter110 = and i32 %loop-unroll.iv104, -8
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter111 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter111.next.7, %.lr.ph.i.i.i7 ]
  call void @llvm.x86.sse2.pause(), !noalias !28856
  call void @llvm.x86.sse2.pause(), !noalias !28856
  call void @llvm.x86.sse2.pause(), !noalias !28856
  call void @llvm.x86.sse2.pause(), !noalias !28856
  call void @llvm.x86.sse2.pause(), !noalias !28856
  call void @llvm.x86.sse2.pause(), !noalias !28856
  call void @llvm.x86.sse2.pause(), !noalias !28856
  call void @llvm.x86.sse2.pause(), !noalias !28856
  %niter111.next.7 = add i32 %niter111, 8         ; 2 uses
  %niter111.ncmp.7 = icmp eq i32 %niter111.next.7, %unroll_iter110
  br i1 %niter111.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, label %.lr.ph.i.i.i7

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7
  %lcmp.mod108.not = icmp eq i32 %xtraiter106, 0
  br i1 %lcmp.mod108.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil.preheader

.lr.ph.i.i.i7.epil.preheader:                     ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.preheader
  %lcmp.mod109 = icmp ne i32 %xtraiter106, 0
  call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph.i.i.i7.epil

.lr.ph.i.i.i7.epil:                               ; preds = %.lr.ph.i.i.i7.epil, %.lr.ph.i.i.i7.epil.preheader
  %epil.iter107 = phi i32 [ 0, %.lr.ph.i.i.i7.epil.preheader ], [ %epil.iter107.next, %.lr.ph.i.i.i7.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28856
  %epil.iter107.next = add i32 %epil.iter107, 1   ; 2 uses
  %epil.iter107.cmp.not = icmp eq i32 %epil.iter107.next, %xtraiter106
  br i1 %epil.iter107.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !28859
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4recvCs14kWLkQVSKO_14deltalake_core:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28860
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_IB2s_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB46_5error5ErrorENtNtB1D_6marker4SendEL_EEB51_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ak:                                            ; preds = %bb.aq, %bb.ah
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56, !noalias !28860
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.ah, %bb.ag
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.do, %bb.ag ], [ %i.ec, %bb.ap ], [ %i.do, %bb.ah ], [ %i.ec, %bb.aq ]
  resume { ptr, i32 } %.pn.pn.i.i.i

bb.al:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28860
  store ptr %i.dm, ptr %i.d, align 8, !noalias !28860
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store atomic i64 0, ptr %i.dw release, align 8, !noalias !28860
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store atomic ptr null, ptr %i.dx release, align 8, !noalias !28860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28860
  store ptr %i.g, ptr %i.b, align 8, !noalias !28860
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_IB1S_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3v_5error5ErrorENtNtB13_6marker4SendEL_EEB4q_EE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.dm)
          to label %bb.am unwind label %bb.ap, !noalias !28860

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28860
  %i.dy = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28860, !noundef !3 ; 3 uses
  store ptr %i.dy, ptr %i.a, align 8, !noalias !28860
  store ptr %i.dm, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28860
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ea = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !28892
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #58, !noalias !28860
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.ao, %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28860
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_IB2s_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB46_5error5ErrorENtNtB1D_6marker4SendEL_EEB51_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ap:                                            ; preds = %bb.al
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !28901
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.ak, !noalias !28860

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_IB45_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB5J_5error5ErrorENtNtBZ_6marker4SendEL_EEB6E_EE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1B_IB2u_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB48_5error5ErrorENtNtB1F_6marker4SendEL_EEB53_EE4recvs_0uEs0_0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.f), !noalias !28860
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_IB2s_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB46_5error5ErrorENtNtB1D_6marker4SendEL_EEB51_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_IB2s_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB46_5error5ErrorENtNtB1D_6marker4SendEL_EEB51_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_IB45_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB5J_5error5ErrorENtNtBZ_6marker4SendEL_EEB6E_EE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !28860
  br label %bb.b

bb.ar:                                            ; preds = %bb.ad
  %i.ef = extractvalue { i64, i32 } %i.df, 1      ; 2 uses
  %i.eg = icmp ult i32 %i.ef, 1000000000
  call void @llvm.assume(i1 %i.eg)
  %.not26 = icmp samesign ult i32 %i.ef, %i.bi
  br i1 %.not26, label %bb.ae, label %bb.at

bb.as:                                            ; preds = %bb.ad
  %.not25 = icmp slt i64 %i.dg, %i.de
  br i1 %.not25, label %bb.ae, label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.eh, align 8
  br label %bb.au

bb.au:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.av, %bb.at
  %storemerge = phi i64 [ -9223372036854775742, %bb.at ], [ %.sroa.018.0.copyload, %bb.av ], [ -9223372036854775742, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ei, align 8
  br label %bb.au

bb.av:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.419, i64 88, i1 false)
  br label %bb.au
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [88 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [88 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !28908 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !28908
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
  %.sroa.03.0.ph84.i = phi i64 [ %i.b, %.lr.ph.lr.ph.i ], [ %i.aq, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph83.i = phi ptr [ %i.d, %.lr.ph.lr.ph.i ], [ %i.ar, %.outer.backedge.i ]
  %.sroa.0.0.ph82.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 5 uses
  %.sroa.038.0.ph81.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.0.ph84.i, 1
  %i.i = and i64 %i.h, 31                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.k = mul i32 %.sroa.0.0.ph82.i, %.sroa.0.0.ph82.i
  %i.l = shl i32 %.sroa.0.0.ph82.i, 1
  %i.m = or i32 %i.l, 1
  br label %.lr.ph

bb.b:                                             ; preds = %.loopexit.i
  %i.n = add i32 %.sroa.0.077.i64, 1              ; 2 uses
  %i.o = lshr exact i64 %i.x, 1
  %i.p = and i64 %i.o, 31                         ; 2 uses
  %i.q = icmp eq i64 %i.p, 31
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.s
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %loop-unroll.iv = phi i32 [ %i.k, %.lr.ph.preheader ], [ %loop-unroll.iv.next, %bb.b ] ; 4 uses
  %indvar = phi i32 [ 0, %.lr.ph.preheader ], [ %indvar.next, %bb.b ] ; 2 uses
  %.sroa.0.077.i64 = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.preheader ], [ %i.n, %bb.b ] ; 3 uses
  %i.r = shl i32 %indvar, 1
  %i.s = add i32 %i.m, %i.r
  %i.t = icmp ult i32 %.sroa.0.077.i64, 7
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.loopexit59.i, !noalias !28908

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.077.i64, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.u = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.v = icmp ult i32 %i.u, 7
  br i1 %i.v, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !28908
  tail call void @llvm.x86.sse2.pause(), !noalias !28908
  tail call void @llvm.x86.sse2.pause(), !noalias !28908
  tail call void @llvm.x86.sse2.pause(), !noalias !28908
  tail call void @llvm.x86.sse2.pause(), !noalias !28908
  tail call void @llvm.x86.sse2.pause(), !noalias !28908
  tail call void @llvm.x86.sse2.pause(), !noalias !28908
  tail call void @llvm.x86.sse2.pause(), !noalias !28908
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.079.i.lcssa = phi i64 [ %.sroa.03.0.ph84.i, %.lr.ph.i ], [ %i.x, %bb.b ] ; 2 uses
  %.sroa.07.078.i.lcssa = phi ptr [ %.sroa.07.0.ph83.i, %.lr.ph.i ], [ %i.y, %bb.b ] ; 2 uses
  %.sroa.0.077.i.lcssa = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.i ], [ %i.n, %bb.b ] ; 6 uses
  %.lcssa = phi i64 [ %i.i, %.lr.ph.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.w = icmp eq i64 %.lcssa, 30                  ; 2 uses
  %.not.i = icmp eq ptr %.sroa.038.0.ph81.i, null
  %or.cond.i = select i1 %i.w, i1 %.not.i, i1 false
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
  tail call void @llvm.x86.sse2.pause(), !noalias !28908
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !28911

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.x = load atomic i64, ptr %i.a acquire, align 128, !noalias !28908 ; 3 uses
  %i.y = load atomic ptr, ptr %i.c acquire, align 8, !noalias !28908
  %i.z = and i64 %i.x, 1
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.b, label %.outer._crit_edge.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_IB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4a_5error5ErrorENtNtB4_6marker4SendEL_EEB55_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %._crit_edge
  %.sroa.038.2.i = phi ptr [ %.sroa.038.0.ph81.i, %._crit_edge ], [ %i.ac, %bb.e ] ; 9 uses
  %i.ab = icmp eq ptr %.sroa.07.078.i.lcssa, null
  br i1 %i.ab, label %bb.f, label %bb.l

bb.e:                                             ; preds = %._crit_edge
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !28908
  %i.ac = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3488, i64 noundef 16) #48, !noalias !28908 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.noexc21.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_IB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4a_5error5ErrorENtNtB4_6marker4SendEL_EEB55_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i, !prof !6

.noexc21.i:                                       ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #55
          to label %.noexc unwind label %.body.thread23

.noexc:                                           ; preds = %.noexc21.i
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_IB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4a_5error5ErrorENtNtB4_6marker4SendEL_EEB55_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !28908
  %i.ae = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3488, i64 noundef 16) #48, !noalias !28908 ; 6 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #55
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !28908

.noexc22.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ag = cmpxchg ptr %i.c, ptr null, ptr %i.ae release monotonic, align 8, !noalias !28908
  %i.ah = extractvalue { ptr, i1 } %i.ag, 1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.ae, ptr %i.g release, align 8, !noalias !28908
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ai = icmp eq ptr %.sroa.038.2.i, null
  br i1 %i.ai, label %.outer.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.2.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !28908
  br label %.outer.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_IB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4a_5error5ErrorENtNtB4_6marker4SendEL_EEB55_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.07.1.i = phi ptr [ %.sroa.07.078.i.lcssa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_IB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4a_5error5ErrorENtNtB4_6marker4SendEL_EEB55_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ae, %bb.i ] ; 3 uses
  %i.aj = add i64 %.sroa.03.079.i.lcssa, 2
  %i.ak = cmpxchg weak ptr %i.a, i64 %.sroa.03.079.i.lcssa, i64 %i.aj seq_cst acquire, align 8, !noalias !28908
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.ak, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.077.i.lcssa, i32 6) ; 2 uses
  %i.al = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.077.i.lcssa, 0
  br i1 %.not.i27.i, label %.outer.backedge.i, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %bb.m
  %xtraiter156 = and i32 %i.al, 5                 ; 3 uses
  %i.am = icmp ult i32 %.sroa.0.077.i.lcssa, 3
  br i1 %i.am, label %.lr.ph.i28.i.epil.preheader, label %.lr.ph.i28.i.preheader.new

.lr.ph.i28.i.preheader.new:                       ; preds = %.lr.ph.i28.i.preheader
  %unroll_iter160 = and i32 %i.al, 56
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
  tail call void @llvm.x86.sse2.pause(), !noalias !28908
  %epil.iter157.next = add i32 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i32 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil, !llvm.loop !28912

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i28.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.an = add i32 %.sroa.0.077.i.lcssa, 1
  br label %.outer.backedge.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i, %.lr.ph.i28.i.preheader.new
  %niter161 = phi i32 [ 0, %.lr.ph.i28.i.preheader.new ], [ %niter161.next.7, %.lr.ph.i28.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !28908
  tail call void @llvm.x86.sse2.pause(), !noalias !28908
  tail call void @llvm.x86.sse2.pause(), !noalias !28908
  tail call void @llvm.x86.sse2.pause(), !noalias !28908
  tail call void @llvm.x86.sse2.pause(), !noalias !28908
  tail call void @llvm.x86.sse2.pause(), !noalias !28908
  tail call void @llvm.x86.sse2.pause(), !noalias !28908
  tail call void @llvm.x86.sse2.pause(), !noalias !28908
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i28.i

bb.n:                                             ; preds = %bb.l
  br i1 %i.w, label %bb.o, label %.outer._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %.not16.i = icmp eq ptr %.sroa.038.2.i, null
  br i1 %.not16.i, label %bb.p, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #55
          to label %.noexc5 unwind label %.body.thread23

.noexc5:                                          ; preds = %bb.p
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31: ; preds = %bb.o
  store atomic ptr %.sroa.038.2.i, ptr %i.c release, align 8, !noalias !28908
  %i.ao = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !28908 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 3472
  store atomic ptr %.sroa.038.2.i, ptr %i.ap release, align 8, !noalias !28908
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx35, i64 88, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.m, %bb.k, %bb.j
  %.sroa.038.0.ph.be.i = phi ptr [ %i.ae, %bb.k ], [ %i.ae, %bb.j ], [ %.sroa.038.2.i, %bb.m ], [ %.sroa.038.2.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.077.i.lcssa, %bb.k ], [ %.sroa.0.077.i.lcssa, %bb.j ], [ 1, %bb.m ], [ %i.an, %._crit_edge.loopexit.i.i ]
  %i.aq = load atomic i64, ptr %i.a acquire, align 128, !noalias !28908 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.c acquire, align 8, !noalias !28908
  %i.as = and i64 %i.aq, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i, label %.outer._crit_edge.i

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
  %i.au = icmp eq ptr %.sroa.038.1.ph.i, null
  br i1 %i.au, label %.body.thread, label %.thread50.i

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !28908
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.av = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.av, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !28908
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28916)
  %i.aw = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aw, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.47.136 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ax = icmp samesign ult i64 %.sroa.9.137, 31
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [112 x i8], ptr %.sroa.47.136, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.ay, align 16, !noalias !28913
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !noalias !28913
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.ba = atomicrmw or ptr %i.az, i64 1 release, align 8, !noalias !28918 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bb) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !alias.scope !28918
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
  %i.bc = landingpad { ptr, i32 }
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter44 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter44.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter44.next = add i32 %epil.iter44, 1     ; 2 uses
  %epil.iter44.cmp.not = icmp eq i32 %epil.iter44.next, %xtraiter43
  br i1 %epil.iter44.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !28921

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.as = add i32 %.sroa.0.02.i27.i, 1
  %i.at = load atomic ptr, ptr %i.ak acquire, align 8
  %i.au = icmp eq ptr %i.at, null
  %loop-unroll.iv.next42 = add i32 %loop-unroll.iv41, %i.ao
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3h_5error5ErrorENtNtBY_6marker4SendEL_EEB3S_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3h_5error5ErrorENtNtBY_6marker4SendEL_EEB3S_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.av = load atomic ptr, ptr %i.ak acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.147.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.147.i, i64 noundef 3488, i64 noundef 16) #48
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2O_5error5ErrorENtNtB4_6marker4SendEL_EEB3p_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.k:                                             ; preds = %.lr.ph50.i
  %i.aw = getelementptr inbounds nuw [112 x i8], ptr %.sroa.011.147.i, i64 %i.aj ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96 ; 2 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8
  %i.az = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3e_5error5ErrorENtNtBV_6marker4SendEL_EEB3P_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %loop-unroll.iv33 = phi i32 [ %loop-unroll.iv.next34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.0.02.i29.i = phi i32 [ %i.bg, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %i.bb = shl i32 %.sroa.0.02.i29.i, 1
  %i.bc = or i32 %i.bb, 1
  %i.bd = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.be = add i32 %loop-unroll.iv33, -1
  %xtraiter35 = and i32 %loop-unroll.iv33, 7      ; 3 uses
  %i.bf = icmp ult i32 %i.be, 7
  br i1 %i.bf, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter39 = and i32 %loop-unroll.iv33, -8
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
  %niter40 = phi i32 [ 0, %.lr.ph.i.i32.i.preheader.new ], [ %niter40.next.7, %.lr.ph.i.i32.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter40.next.7 = add i32 %niter40, 8           ; 2 uses
  %niter40.ncmp.7 = icmp eq i32 %niter40.next.7, %unroll_iter39
  br i1 %niter40.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, label %.lr.ph.i.i32.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i32.i
  %lcmp.mod37.not = icmp eq i32 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil.preheader

.lr.ph.i.i32.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.preheader
  %lcmp.mod38 = icmp ne i32 %xtraiter35, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph.i.i32.i.epil

.lr.ph.i.i32.i.epil:                              ; preds = %.lr.ph.i.i32.i.epil, %.lr.ph.i.i32.i.epil.preheader
  %epil.iter36 = phi i32 [ 0, %.lr.ph.i.i32.i.epil.preheader ], [ %epil.iter36.next, %.lr.ph.i.i32.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil, !llvm.loop !28922

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.epil, %bb.m, %bb.l
  %i.bg = add i32 %.sroa.0.02.i29.i, 1
  %i.bh = load atomic i64, ptr %i.ax acquire, align 8
  %i.bi = and i64 %i.bh, 1
  %i.bj = icmp eq i64 %i.bi, 0
  %loop-unroll.iv.next34 = add i32 %loop-unroll.iv33, %i.bc
  br i1 %i.bj, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3e_5error5ErrorENtNtBV_6marker4SendEL_EEB3P_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3e_5error5ErrorENtNtBV_6marker4SendEL_EEB3P_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28923)
  %i.bk = load i64, ptr %i.aw, align 16, !range !635, !alias.scope !28923, !noundef !3
  %i.bl = icmp eq i64 %i.bk, -9223372036854775743
  br i1 %i.bl, label %bb.n, label %bb.t

bb.n:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3e_5error5ErrorENtNtBV_6marker4SendEL_EEB3P_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.val.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !28923 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val1.i.i = load ptr, ptr %i.bn, align 16, !alias.scope !28923, !nonnull !3, !align !65, !noundef !3 ; 5 uses
  %i.bo = load ptr, ptr %.val1.i.i, align 8, !invariant.load !3, !noalias !28923 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.bo(ptr noundef nonnull %.val.i.i)
          to label %bb.p unwind label %bb.r, !noalias !28923

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !112, !invariant.load !3, !noalias !28923 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2O_5error5ErrorENtNtB4_6marker4SendEL_EEB3p_EECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !296, !invariant.load !3, !noalias !28923
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bq, i64 noundef range(i64 1, 536870913) %i.bt) #48, !noalias !28923
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2O_5error5ErrorENtNtB4_6marker4SendEL_EEB3p_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.r:                                             ; preds = %bb.o
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !112, !invariant.load !3, !noalias !28923 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2c_5error5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !296, !invariant.load !3, !noalias !28923
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bw, i64 noundef range(i64 1, 536870913) %i.bz) #48, !noalias !28923
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2c_5error5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2c_5error5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i.i.i: ; preds = %bb.s, %bb.r
  resume { ptr, i32 } %i.bu

bb.t:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3e_5error5ErrorENtNtBV_6marker4SendEL_EEB3P_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.aw)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2O_5error5ErrorENtNtB4_6marker4SendEL_EEB3p_EECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2O_5error5ErrorENtNtB4_6marker4SendEL_EEB3p_EECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.t, %bb.q, %bb.p, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3h_5error5ErrorENtNtBY_6marker4SendEL_EEB3S_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.011.2.i = phi ptr [ %i.av, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3h_5error5ErrorENtNtBY_6marker4SendEL_EEB3S_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.011.147.i, %bb.p ], [ %.sroa.011.147.i, %bb.q ], [ %.sroa.011.147.i, %bb.t ] ; 2 uses
  %i.ca = add i64 %.sroa.05.048.i, 2              ; 3 uses
  %i.cb = lshr i64 %i.ca, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.cb, %i.q
  br i1 %.not.i, label %._crit_edge51.i, label %.lr.ph50.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge51.i, %bb.g
  %i.cc = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.cc, ptr %0 release, align 128
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
  call void @llvm.experimental.noalias.scope.decl(metadata !28926)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !28926 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !28926 ; 8 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28926
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
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
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
  call void @llvm.x86.sse2.pause(), !noalias !28926
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28929

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
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !28926 ; 3 uses
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
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28926
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
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
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
  call void @llvm.x86.sse2.pause(), !noalias !28926
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !28930

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !28926
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.am, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i, i32 6) ; 2 uses
  %i.an = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.034.i, 0
  br i1 %.not.i23.i, label %.backedge.i.backedge, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.o
  %xtraiter = and i32 %i.an, 5                    ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.034.i, 3
  br i1 %i.ao, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %i.an, 56
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
  call void @llvm.x86.sse2.pause(), !noalias !28926
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !28931

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ap = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.034.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ap, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.aq = icmp eq i64 %i.s, 30
  br i1 %i.aq, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 3472 ; 2 uses
  %i.as = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !28926 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3h_5error5ErrorENtNtBY_6marker4SendEL_EEB3S_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %.sroa.0.02.i28.i = phi i32 [ %i.az, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %i.au = shl i32 %.sroa.0.02.i28.i, 1
  %i.av = or i32 %i.au, 1
  %i.aw = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.aw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i27.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28926
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.s:                                             ; preds = %.lr.ph.i27.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i28.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.s
  %i.ax = add i32 %loop-unroll.iv, -1
  %xtraiter98 = and i32 %loop-unroll.iv, 7        ; 3 uses
  %i.ay = icmp ult i32 %i.ax, 7
  br i1 %i.ay, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter102 = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter103 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter103.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
  call void @llvm.x86.sse2.pause(), !noalias !28926
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
  call void @llvm.x86.sse2.pause(), !noalias !28926
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !28932

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.az = add i32 %.sroa.0.02.i28.i, 1
  %i.ba = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !28926 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.av
  br i1 %i.bb, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3h_5error5ErrorENtNtBY_6marker4SendEL_EEB3S_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3h_5error5ErrorENtNtBY_6marker4SendEL_EEB3S_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.as, %bb.q ], [ %i.ba, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.bc = and i64 %.sroa.01.0.i, -2
  %i.bd = add i64 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 3472
  %i.bf = load atomic ptr, ptr %i.be monotonic, align 8, !noalias !28926
  %i.bg = icmp ne ptr %i.bf, null
  %i.bh = zext i1 %i.bg to i64
  %spec.select17.i = or disjoint i64 %i.bd, %i.bh
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !28926
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !28926
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  %i.bi = load i32, ptr %i.i, align 8, !range !28599, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bi, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3h_5error5ErrorENtNtBY_6marker4SendEL_EEB3S_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !28926
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !28926
  %i.bj = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96 ; 3 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8, !noalias !28933
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3e_5error5ErrorENtNtBV_6marker4SendEL_EEB3P_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %loop-unroll.iv104 = phi i32 [ %loop-unroll.iv.next105, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 4 uses
  %.sroa.0.02.i.i4 = phi i32 [ %i.bt, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 4 uses
  %i.bo = shl i32 %.sroa.0.02.i.i4, 1
  %i.bp = or i32 %i.bo, 1
  %i.bq = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28933
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5

bb.v:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.v
  %i.br = add i32 %loop-unroll.iv104, -1
  %xtraiter106 = and i32 %loop-unroll.iv104, 7    ; 3 uses
  %i.bs = icmp ult i32 %i.br, 7
  br i1 %i.bs, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter110 = and i32 %loop-unroll.iv104, -8
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter111 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter111.next.7, %.lr.ph.i.i.i7 ]
  call void @llvm.x86.sse2.pause(), !noalias !28933
  call void @llvm.x86.sse2.pause(), !noalias !28933
  call void @llvm.x86.sse2.pause(), !noalias !28933
  call void @llvm.x86.sse2.pause(), !noalias !28933
  call void @llvm.x86.sse2.pause(), !noalias !28933
  call void @llvm.x86.sse2.pause(), !noalias !28933
  call void @llvm.x86.sse2.pause(), !noalias !28933
  call void @llvm.x86.sse2.pause(), !noalias !28933
  %niter111.next.7 = add i32 %niter111, 8         ; 2 uses
  %niter111.ncmp.7 = icmp eq i32 %niter111.next.7, %unroll_iter110
  br i1 %niter111.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, label %.lr.ph.i.i.i7

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7
  %lcmp.mod108.not = icmp eq i32 %xtraiter106, 0
  br i1 %lcmp.mod108.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil.preheader

.lr.ph.i.i.i7.epil.preheader:                     ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.preheader
  %lcmp.mod109 = icmp ne i32 %xtraiter106, 0
  call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph.i.i.i7.epil

.lr.ph.i.i.i7.epil:                               ; preds = %.lr.ph.i.i.i7.epil, %.lr.ph.i.i.i7.epil.preheader
  %epil.iter107 = phi i32 [ 0, %.lr.ph.i.i.i7.epil.preheader ], [ %epil.iter107.next, %.lr.ph.i.i.i7.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28933
  %epil.iter107.next = add i32 %epil.iter107, 1   ; 2 uses
  %epil.iter107.cmp.not = icmp eq i32 %epil.iter107.next, %xtraiter106
  br i1 %epil.iter107.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !28936
end_hunk_2
begin_hunk_3_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4recvCs14kWLkQVSKO_14deltalake_core:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28937
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3Y_5error5ErrorENtNtB1D_6marker4SendEL_EEB4z_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ak:                                            ; preds = %bb.aq, %bb.ah
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56, !noalias !28937
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.ah, %bb.ag
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.do, %bb.ag ], [ %i.ec, %bb.ap ], [ %i.do, %bb.ah ], [ %i.ec, %bb.aq ]
  resume { ptr, i32 } %.pn.pn.i.i.i

bb.al:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28937
  store ptr %i.dm, ptr %i.d, align 8, !noalias !28937
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store atomic i64 0, ptr %i.dw release, align 8, !noalias !28937
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store atomic ptr null, ptr %i.dx release, align 8, !noalias !28937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28937
  store ptr %i.g, ptr %i.b, align 8, !noalias !28937
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3n_5error5ErrorENtNtB13_6marker4SendEL_EEB3Y_EE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.dm)
          to label %bb.am unwind label %bb.ap, !noalias !28937

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28937
  %i.dy = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28937, !noundef !3 ; 3 uses
  store ptr %i.dy, ptr %i.a, align 8, !noalias !28937
  store ptr %i.dm, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28937
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ea = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !28969
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #58, !noalias !28937
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.ao, %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28937
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3Y_5error5ErrorENtNtB1D_6marker4SendEL_EEB4z_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ap:                                            ; preds = %bb.al
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !28978
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.ak, !noalias !28937

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB5B_5error5ErrorENtNtBZ_6marker4SendEL_EEB6c_EE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1B_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB40_5error5ErrorENtNtB1F_6marker4SendEL_EEB4B_EE4recvs_0uEs0_0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.f), !noalias !28937
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3Y_5error5ErrorENtNtB1D_6marker4SendEL_EEB4z_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3Y_5error5ErrorENtNtB1D_6marker4SendEL_EEB4z_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB5B_5error5ErrorENtNtBZ_6marker4SendEL_EEB6c_EE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !28937
  br label %bb.b

bb.ar:                                            ; preds = %bb.ad
  %i.ef = extractvalue { i64, i32 } %i.df, 1      ; 2 uses
  %i.eg = icmp ult i32 %i.ef, 1000000000
  call void @llvm.assume(i1 %i.eg)
  %.not26 = icmp samesign ult i32 %i.ef, %i.bi
  br i1 %.not26, label %bb.ae, label %bb.at

bb.as:                                            ; preds = %bb.ad
  %.not25 = icmp slt i64 %i.dg, %i.de
  br i1 %.not25, label %bb.ae, label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.eh, align 8
  br label %bb.au

bb.au:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.av, %bb.at
  %storemerge = phi i64 [ -9223372036854775742, %bb.at ], [ %.sroa.018.0.copyload, %bb.av ], [ -9223372036854775742, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ei, align 8
  br label %bb.au

bb.av:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.419, i64 88, i1 false)
  br label %bb.au
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [88 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [88 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !28985 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !28985
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
  %.sroa.03.0.ph84.i = phi i64 [ %i.b, %.lr.ph.lr.ph.i ], [ %i.aq, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph83.i = phi ptr [ %i.d, %.lr.ph.lr.ph.i ], [ %i.ar, %.outer.backedge.i ]
  %.sroa.0.0.ph82.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 5 uses
  %.sroa.038.0.ph81.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.0.ph84.i, 1
  %i.i = and i64 %i.h, 31                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.k = mul i32 %.sroa.0.0.ph82.i, %.sroa.0.0.ph82.i
  %i.l = shl i32 %.sroa.0.0.ph82.i, 1
  %i.m = or i32 %i.l, 1
  br label %.lr.ph

bb.b:                                             ; preds = %.loopexit.i
  %i.n = add i32 %.sroa.0.077.i64, 1              ; 2 uses
  %i.o = lshr exact i64 %i.x, 1
  %i.p = and i64 %i.o, 31                         ; 2 uses
  %i.q = icmp eq i64 %i.p, 31
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.s
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %loop-unroll.iv = phi i32 [ %i.k, %.lr.ph.preheader ], [ %loop-unroll.iv.next, %bb.b ] ; 4 uses
  %indvar = phi i32 [ 0, %.lr.ph.preheader ], [ %indvar.next, %bb.b ] ; 2 uses
  %.sroa.0.077.i64 = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.preheader ], [ %i.n, %bb.b ] ; 3 uses
  %i.r = shl i32 %indvar, 1
  %i.s = add i32 %i.m, %i.r
  %i.t = icmp ult i32 %.sroa.0.077.i64, 7
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.loopexit59.i, !noalias !28985

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.077.i64, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.u = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.v = icmp ult i32 %i.u, 7
  br i1 %i.v, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !28985
  tail call void @llvm.x86.sse2.pause(), !noalias !28985
  tail call void @llvm.x86.sse2.pause(), !noalias !28985
  tail call void @llvm.x86.sse2.pause(), !noalias !28985
  tail call void @llvm.x86.sse2.pause(), !noalias !28985
  tail call void @llvm.x86.sse2.pause(), !noalias !28985
  tail call void @llvm.x86.sse2.pause(), !noalias !28985
  tail call void @llvm.x86.sse2.pause(), !noalias !28985
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.079.i.lcssa = phi i64 [ %.sroa.03.0.ph84.i, %.lr.ph.i ], [ %i.x, %bb.b ] ; 2 uses
  %.sroa.07.078.i.lcssa = phi ptr [ %.sroa.07.0.ph83.i, %.lr.ph.i ], [ %i.y, %bb.b ] ; 2 uses
  %.sroa.0.077.i.lcssa = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.i ], [ %i.n, %bb.b ] ; 6 uses
  %.lcssa = phi i64 [ %i.i, %.lr.ph.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.w = icmp eq i64 %.lcssa, 30                  ; 2 uses
  %.not.i = icmp eq ptr %.sroa.038.0.ph81.i, null
  %or.cond.i = select i1 %i.w, i1 %.not.i, i1 false
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
  tail call void @llvm.x86.sse2.pause(), !noalias !28985
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !28988

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.x = load atomic i64, ptr %i.a acquire, align 128, !noalias !28985 ; 3 uses
  %i.y = load atomic ptr, ptr %i.c acquire, align 8, !noalias !28985
  %i.z = and i64 %i.x, 1
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.b, label %.outer._crit_edge.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB42_5error5ErrorENtNtB4_6marker4SendEL_EEB4D_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %._crit_edge
  %.sroa.038.2.i = phi ptr [ %.sroa.038.0.ph81.i, %._crit_edge ], [ %i.ac, %bb.e ] ; 9 uses
  %i.ab = icmp eq ptr %.sroa.07.078.i.lcssa, null
  br i1 %i.ab, label %bb.f, label %bb.l

bb.e:                                             ; preds = %._crit_edge
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !28985
  %i.ac = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3488, i64 noundef 16) #48, !noalias !28985 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.noexc21.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB42_5error5ErrorENtNtB4_6marker4SendEL_EEB4D_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i, !prof !6

.noexc21.i:                                       ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #55
          to label %.noexc unwind label %.body.thread23

.noexc:                                           ; preds = %.noexc21.i
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB42_5error5ErrorENtNtB4_6marker4SendEL_EEB4D_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !28985
  %i.ae = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3488, i64 noundef 16) #48, !noalias !28985 ; 6 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #55
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !28985

.noexc22.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ag = cmpxchg ptr %i.c, ptr null, ptr %i.ae release monotonic, align 8, !noalias !28985
  %i.ah = extractvalue { ptr, i1 } %i.ag, 1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.ae, ptr %i.g release, align 8, !noalias !28985
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ai = icmp eq ptr %.sroa.038.2.i, null
  br i1 %i.ai, label %.outer.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.2.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !28985
  br label %.outer.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB42_5error5ErrorENtNtB4_6marker4SendEL_EEB4D_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.07.1.i = phi ptr [ %.sroa.07.078.i.lcssa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB42_5error5ErrorENtNtB4_6marker4SendEL_EEB4D_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ae, %bb.i ] ; 3 uses
  %i.aj = add i64 %.sroa.03.079.i.lcssa, 2
  %i.ak = cmpxchg weak ptr %i.a, i64 %.sroa.03.079.i.lcssa, i64 %i.aj seq_cst acquire, align 8, !noalias !28985
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.ak, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.077.i.lcssa, i32 6) ; 2 uses
  %i.al = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.077.i.lcssa, 0
  br i1 %.not.i27.i, label %.outer.backedge.i, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %bb.m
  %xtraiter156 = and i32 %i.al, 5                 ; 3 uses
  %i.am = icmp ult i32 %.sroa.0.077.i.lcssa, 3
  br i1 %i.am, label %.lr.ph.i28.i.epil.preheader, label %.lr.ph.i28.i.preheader.new

.lr.ph.i28.i.preheader.new:                       ; preds = %.lr.ph.i28.i.preheader
  %unroll_iter160 = and i32 %i.al, 56
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
  tail call void @llvm.x86.sse2.pause(), !noalias !28985
  %epil.iter157.next = add i32 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i32 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil, !llvm.loop !28989

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i28.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.an = add i32 %.sroa.0.077.i.lcssa, 1
  br label %.outer.backedge.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i, %.lr.ph.i28.i.preheader.new
  %niter161 = phi i32 [ 0, %.lr.ph.i28.i.preheader.new ], [ %niter161.next.7, %.lr.ph.i28.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !28985
  tail call void @llvm.x86.sse2.pause(), !noalias !28985
  tail call void @llvm.x86.sse2.pause(), !noalias !28985
  tail call void @llvm.x86.sse2.pause(), !noalias !28985
  tail call void @llvm.x86.sse2.pause(), !noalias !28985
  tail call void @llvm.x86.sse2.pause(), !noalias !28985
  tail call void @llvm.x86.sse2.pause(), !noalias !28985
  tail call void @llvm.x86.sse2.pause(), !noalias !28985
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i28.i

bb.n:                                             ; preds = %bb.l
  br i1 %i.w, label %bb.o, label %.outer._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %.not16.i = icmp eq ptr %.sroa.038.2.i, null
  br i1 %.not16.i, label %bb.p, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #55
          to label %.noexc5 unwind label %.body.thread23

.noexc5:                                          ; preds = %bb.p
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31: ; preds = %bb.o
  store atomic ptr %.sroa.038.2.i, ptr %i.c release, align 8, !noalias !28985
  %i.ao = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !28985 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 3472
  store atomic ptr %.sroa.038.2.i, ptr %i.ap release, align 8, !noalias !28985
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx35, i64 88, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.m, %bb.k, %bb.j
  %.sroa.038.0.ph.be.i = phi ptr [ %i.ae, %bb.k ], [ %i.ae, %bb.j ], [ %.sroa.038.2.i, %bb.m ], [ %.sroa.038.2.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.077.i.lcssa, %bb.k ], [ %.sroa.0.077.i.lcssa, %bb.j ], [ 1, %bb.m ], [ %i.an, %._crit_edge.loopexit.i.i ]
  %i.aq = load atomic i64, ptr %i.a acquire, align 128, !noalias !28985 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.c acquire, align 8, !noalias !28985
  %i.as = and i64 %i.aq, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i, label %.outer._crit_edge.i

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
  %i.au = icmp eq ptr %.sroa.038.1.ph.i, null
  br i1 %i.au, label %.body.thread, label %.thread50.i

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !28985
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.av = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.av, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !28985
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28993)
  %i.aw = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aw, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.47.136 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ax = icmp samesign ult i64 %.sroa.9.137, 31
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [112 x i8], ptr %.sroa.47.136, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.ay, align 16, !noalias !28990
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !noalias !28990
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.ba = atomicrmw or ptr %i.az, i64 1 release, align 8, !noalias !28995 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bb) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !alias.scope !28995
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
  %i.bc = landingpad { ptr, i32 }
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
end_hunk_3
begin_hunk_4_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter44 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter44.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter44.next = add i32 %epil.iter44, 1     ; 2 uses
  %epil.iter44.cmp.not = icmp eq i32 %epil.iter44.next, %xtraiter43
  br i1 %epil.iter44.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !28998

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.as = add i32 %.sroa.0.02.i27.i, 1
  %i.at = load atomic ptr, ptr %i.ak acquire, align 8
  %i.au = icmp eq ptr %i.at, null
  %loop-unroll.iv.next42 = add i32 %loop-unroll.iv41, %i.ao
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBY_6marker4SendEL_EEB3P_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBY_6marker4SendEL_EEB3P_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.av = load atomic ptr, ptr %i.ak acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.147.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.147.i, i64 noundef 3488, i64 noundef 16) #48
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB3m_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.k:                                             ; preds = %.lr.ph50.i
  %i.aw = getelementptr inbounds nuw [112 x i8], ptr %.sroa.011.147.i, i64 %i.aj ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96 ; 2 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8
  %i.az = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBV_6marker4SendEL_EEB3M_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %loop-unroll.iv33 = phi i32 [ %loop-unroll.iv.next34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.0.02.i29.i = phi i32 [ %i.bg, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %i.bb = shl i32 %.sroa.0.02.i29.i, 1
  %i.bc = or i32 %i.bb, 1
  %i.bd = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.be = add i32 %loop-unroll.iv33, -1
  %xtraiter35 = and i32 %loop-unroll.iv33, 7      ; 3 uses
  %i.bf = icmp ult i32 %i.be, 7
  br i1 %i.bf, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter39 = and i32 %loop-unroll.iv33, -8
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
  %niter40 = phi i32 [ 0, %.lr.ph.i.i32.i.preheader.new ], [ %niter40.next.7, %.lr.ph.i.i32.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter40.next.7 = add i32 %niter40, 8           ; 2 uses
  %niter40.ncmp.7 = icmp eq i32 %niter40.next.7, %unroll_iter39
  br i1 %niter40.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, label %.lr.ph.i.i32.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i32.i
  %lcmp.mod37.not = icmp eq i32 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil.preheader

.lr.ph.i.i32.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.preheader
  %lcmp.mod38 = icmp ne i32 %xtraiter35, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph.i.i32.i.epil

.lr.ph.i.i32.i.epil:                              ; preds = %.lr.ph.i.i32.i.epil, %.lr.ph.i.i32.i.epil.preheader
  %epil.iter36 = phi i32 [ 0, %.lr.ph.i.i32.i.epil.preheader ], [ %epil.iter36.next, %.lr.ph.i.i32.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil, !llvm.loop !28999

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.epil, %bb.m, %bb.l
  %i.bg = add i32 %.sroa.0.02.i29.i, 1
  %i.bh = load atomic i64, ptr %i.ax acquire, align 8
  %i.bi = and i64 %i.bh, 1
  %i.bj = icmp eq i64 %i.bi, 0
  %loop-unroll.iv.next34 = add i32 %loop-unroll.iv33, %i.bc
  br i1 %i.bj, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBV_6marker4SendEL_EEB3M_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBV_6marker4SendEL_EEB3M_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29000)
  %i.bk = load i64, ptr %i.aw, align 16, !range !635, !alias.scope !29000, !noundef !3
  %i.bl = icmp eq i64 %i.bk, -9223372036854775743
  br i1 %i.bl, label %bb.n, label %bb.t

bb.n:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBV_6marker4SendEL_EEB3M_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.val.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !29000 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val1.i.i = load ptr, ptr %i.bn, align 16, !alias.scope !29000, !nonnull !3, !align !65, !noundef !3 ; 5 uses
  %i.bo = load ptr, ptr %.val1.i.i, align 8, !invariant.load !3, !noalias !29000 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.bo(ptr noundef nonnull %.val.i.i)
          to label %bb.p unwind label %bb.r, !noalias !29000

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !112, !invariant.load !3, !noalias !29000 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB3m_EECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !296, !invariant.load !3, !noalias !29000
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bq, i64 noundef range(i64 1, 536870913) %i.bt) #48, !noalias !29000
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB3m_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.r:                                             ; preds = %bb.o
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !112, !invariant.load !3, !noalias !29000 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !296, !invariant.load !3, !noalias !29000
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bw, i64 noundef range(i64 1, 536870913) %i.bz) #48, !noalias !29000
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i.i.i: ; preds = %bb.s, %bb.r
  resume { ptr, i32 } %i.bu

bb.t:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBV_6marker4SendEL_EEB3M_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.aw)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB3m_EECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB3m_EECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.t, %bb.q, %bb.p, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBY_6marker4SendEL_EEB3P_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.011.2.i = phi ptr [ %i.av, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBY_6marker4SendEL_EEB3P_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.011.147.i, %bb.p ], [ %.sroa.011.147.i, %bb.q ], [ %.sroa.011.147.i, %bb.t ] ; 2 uses
  %i.ca = add i64 %.sroa.05.048.i, 2              ; 3 uses
  %i.cb = lshr i64 %i.ca, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.cb, %i.q
  br i1 %.not.i, label %._crit_edge51.i, label %.lr.ph50.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge51.i, %bb.g
  %i.cc = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.cc, ptr %0 release, align 128
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
  call void @llvm.experimental.noalias.scope.decl(metadata !29003)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !29003 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !29003 ; 8 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29003
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
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
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
  call void @llvm.x86.sse2.pause(), !noalias !29003
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29006

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
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !29003 ; 3 uses
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
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29003
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
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
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
  call void @llvm.x86.sse2.pause(), !noalias !29003
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !29007

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !29003
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.am, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i, i32 6) ; 2 uses
  %i.an = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.034.i, 0
  br i1 %.not.i23.i, label %.backedge.i.backedge, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.o
  %xtraiter = and i32 %i.an, 5                    ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.034.i, 3
  br i1 %i.ao, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %i.an, 56
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
  call void @llvm.x86.sse2.pause(), !noalias !29003
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !29008

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ap = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.034.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ap, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.aq = icmp eq i64 %i.s, 30
  br i1 %i.aq, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 3472 ; 2 uses
  %i.as = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !29003 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBY_6marker4SendEL_EEB3P_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %.sroa.0.02.i28.i = phi i32 [ %i.az, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %i.au = shl i32 %.sroa.0.02.i28.i, 1
  %i.av = or i32 %i.au, 1
  %i.aw = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.aw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i27.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29003
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.s:                                             ; preds = %.lr.ph.i27.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i28.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.s
  %i.ax = add i32 %loop-unroll.iv, -1
  %xtraiter98 = and i32 %loop-unroll.iv, 7        ; 3 uses
  %i.ay = icmp ult i32 %i.ax, 7
  br i1 %i.ay, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter102 = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter103 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter103.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
  call void @llvm.x86.sse2.pause(), !noalias !29003
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
  call void @llvm.x86.sse2.pause(), !noalias !29003
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29009

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.az = add i32 %.sroa.0.02.i28.i, 1
  %i.ba = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !29003 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.av
  br i1 %i.bb, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBY_6marker4SendEL_EEB3P_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBY_6marker4SendEL_EEB3P_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.as, %bb.q ], [ %i.ba, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.bc = and i64 %.sroa.01.0.i, -2
  %i.bd = add i64 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 3472
  %i.bf = load atomic ptr, ptr %i.be monotonic, align 8, !noalias !29003
  %i.bg = icmp ne ptr %i.bf, null
  %i.bh = zext i1 %i.bg to i64
  %spec.select17.i = or disjoint i64 %i.bd, %i.bh
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !29003
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !29003
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  %i.bi = load i32, ptr %i.i, align 8, !range !28599, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bi, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBY_6marker4SendEL_EEB3P_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !29003
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !29003
  %i.bj = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96 ; 3 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8, !noalias !29010
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBV_6marker4SendEL_EEB3M_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %loop-unroll.iv104 = phi i32 [ %loop-unroll.iv.next105, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 4 uses
  %.sroa.0.02.i.i4 = phi i32 [ %i.bt, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 4 uses
  %i.bo = shl i32 %.sroa.0.02.i.i4, 1
  %i.bp = or i32 %i.bo, 1
  %i.bq = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29010
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5

bb.v:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.v
  %i.br = add i32 %loop-unroll.iv104, -1
  %xtraiter106 = and i32 %loop-unroll.iv104, 7    ; 3 uses
  %i.bs = icmp ult i32 %i.br, 7
  br i1 %i.bs, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter110 = and i32 %loop-unroll.iv104, -8
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter111 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter111.next.7, %.lr.ph.i.i.i7 ]
  call void @llvm.x86.sse2.pause(), !noalias !29010
  call void @llvm.x86.sse2.pause(), !noalias !29010
  call void @llvm.x86.sse2.pause(), !noalias !29010
  call void @llvm.x86.sse2.pause(), !noalias !29010
  call void @llvm.x86.sse2.pause(), !noalias !29010
  call void @llvm.x86.sse2.pause(), !noalias !29010
  call void @llvm.x86.sse2.pause(), !noalias !29010
  call void @llvm.x86.sse2.pause(), !noalias !29010
  %niter111.next.7 = add i32 %niter111, 8         ; 2 uses
  %niter111.ncmp.7 = icmp eq i32 %niter111.next.7, %unroll_iter110
  br i1 %niter111.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, label %.lr.ph.i.i.i7

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7
  %lcmp.mod108.not = icmp eq i32 %xtraiter106, 0
  br i1 %lcmp.mod108.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil.preheader

.lr.ph.i.i.i7.epil.preheader:                     ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.preheader
  %lcmp.mod109 = icmp ne i32 %xtraiter106, 0
  call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph.i.i.i7.epil

.lr.ph.i.i.i7.epil:                               ; preds = %.lr.ph.i.i.i7.epil, %.lr.ph.i.i.i7.epil.preheader
  %epil.iter107 = phi i32 [ 0, %.lr.ph.i.i.i7.epil.preheader ], [ %epil.iter107.next, %.lr.ph.i.i.i7.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !29010
  %epil.iter107.next = add i32 %epil.iter107, 1   ; 2 uses
  %epil.iter107.cmp.not = icmp eq i32 %epil.iter107.next, %xtraiter106
  br i1 %epil.iter107.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !29013
end_hunk_4
begin_hunk_5_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4recvCs14kWLkQVSKO_14deltalake_core:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !29014
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1D_6marker4SendEL_EEB4w_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ak:                                            ; preds = %bb.aq, %bb.ah
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56, !noalias !29014
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.ah, %bb.ag
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.do, %bb.ag ], [ %i.ec, %bb.ap ], [ %i.do, %bb.ah ], [ %i.ec, %bb.aq ]
  resume { ptr, i32 } %.pn.pn.i.i.i

bb.al:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !29014
  store ptr %i.dm, ptr %i.d, align 8, !noalias !29014
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store atomic i64 0, ptr %i.dw release, align 8, !noalias !29014
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store atomic ptr null, ptr %i.dx release, align 8, !noalias !29014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29014
  store ptr %i.g, ptr %i.b, align 8, !noalias !29014
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB13_6marker4SendEL_EEB3V_EE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.dm)
          to label %bb.am unwind label %bb.ap, !noalias !29014

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29014
  %i.dy = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !29014, !noundef !3 ; 3 uses
  store ptr %i.dy, ptr %i.a, align 8, !noalias !29014
  store ptr %i.dm, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !29014
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ea = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !29046
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #58, !noalias !29014
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.ao, %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29014
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1D_6marker4SendEL_EEB4w_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ap:                                            ; preds = %bb.al
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !29055
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.ak, !noalias !29014

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBZ_6marker4SendEL_EEB69_EE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1B_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1F_6marker4SendEL_EEB4y_EE4recvs_0uEs0_0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.f), !noalias !29014
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1D_6marker4SendEL_EEB4w_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1D_6marker4SendEL_EEB4w_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBZ_6marker4SendEL_EEB69_EE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29014
  br label %bb.b

bb.ar:                                            ; preds = %bb.ad
  %i.ef = extractvalue { i64, i32 } %i.df, 1      ; 2 uses
  %i.eg = icmp ult i32 %i.ef, 1000000000
  call void @llvm.assume(i1 %i.eg)
  %.not26 = icmp samesign ult i32 %i.ef, %i.bi
  br i1 %.not26, label %bb.ae, label %bb.at

bb.as:                                            ; preds = %bb.ad
  %.not25 = icmp slt i64 %i.dg, %i.de
  br i1 %.not25, label %bb.ae, label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.eh, align 8
  br label %bb.au

bb.au:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.av, %bb.at
  %storemerge = phi i64 [ -9223372036854775742, %bb.at ], [ %.sroa.018.0.copyload, %bb.av ], [ -9223372036854775742, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ei, align 8
  br label %bb.au

bb.av:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.419, i64 88, i1 false)
  br label %bb.au
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [88 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [88 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !29062 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29062
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
  %.sroa.03.0.ph84.i = phi i64 [ %i.b, %.lr.ph.lr.ph.i ], [ %i.aq, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph83.i = phi ptr [ %i.d, %.lr.ph.lr.ph.i ], [ %i.ar, %.outer.backedge.i ]
  %.sroa.0.0.ph82.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 5 uses
  %.sroa.038.0.ph81.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.0.ph84.i, 1
  %i.i = and i64 %i.h, 31                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.k = mul i32 %.sroa.0.0.ph82.i, %.sroa.0.0.ph82.i
  %i.l = shl i32 %.sroa.0.0.ph82.i, 1
  %i.m = or i32 %i.l, 1
  br label %.lr.ph

bb.b:                                             ; preds = %.loopexit.i
  %i.n = add i32 %.sroa.0.077.i64, 1              ; 2 uses
  %i.o = lshr exact i64 %i.x, 1
  %i.p = and i64 %i.o, 31                         ; 2 uses
  %i.q = icmp eq i64 %i.p, 31
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.s
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %loop-unroll.iv = phi i32 [ %i.k, %.lr.ph.preheader ], [ %loop-unroll.iv.next, %bb.b ] ; 4 uses
  %indvar = phi i32 [ 0, %.lr.ph.preheader ], [ %indvar.next, %bb.b ] ; 2 uses
  %.sroa.0.077.i64 = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.preheader ], [ %i.n, %bb.b ] ; 3 uses
  %i.r = shl i32 %indvar, 1
  %i.s = add i32 %i.m, %i.r
  %i.t = icmp ult i32 %.sroa.0.077.i64, 7
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.loopexit59.i, !noalias !29062

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.077.i64, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.u = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.v = icmp ult i32 %i.u, 7
  br i1 %i.v, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29062
  tail call void @llvm.x86.sse2.pause(), !noalias !29062
  tail call void @llvm.x86.sse2.pause(), !noalias !29062
  tail call void @llvm.x86.sse2.pause(), !noalias !29062
  tail call void @llvm.x86.sse2.pause(), !noalias !29062
  tail call void @llvm.x86.sse2.pause(), !noalias !29062
  tail call void @llvm.x86.sse2.pause(), !noalias !29062
  tail call void @llvm.x86.sse2.pause(), !noalias !29062
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.079.i.lcssa = phi i64 [ %.sroa.03.0.ph84.i, %.lr.ph.i ], [ %i.x, %bb.b ] ; 2 uses
  %.sroa.07.078.i.lcssa = phi ptr [ %.sroa.07.0.ph83.i, %.lr.ph.i ], [ %i.y, %bb.b ] ; 2 uses
  %.sroa.0.077.i.lcssa = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.i ], [ %i.n, %bb.b ] ; 6 uses
  %.lcssa = phi i64 [ %i.i, %.lr.ph.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.w = icmp eq i64 %.lcssa, 30                  ; 2 uses
  %.not.i = icmp eq ptr %.sroa.038.0.ph81.i, null
  %or.cond.i = select i1 %i.w, i1 %.not.i, i1 false
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
  tail call void @llvm.x86.sse2.pause(), !noalias !29062
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !29065

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.x = load atomic i64, ptr %i.a acquire, align 128, !noalias !29062 ; 3 uses
  %i.y = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29062
  %i.z = and i64 %i.x, 1
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.b, label %.outer._crit_edge.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4A_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %._crit_edge
  %.sroa.038.2.i = phi ptr [ %.sroa.038.0.ph81.i, %._crit_edge ], [ %i.ac, %bb.e ] ; 9 uses
  %i.ab = icmp eq ptr %.sroa.07.078.i.lcssa, null
  br i1 %i.ab, label %bb.f, label %bb.l

bb.e:                                             ; preds = %._crit_edge
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29062
  %i.ac = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3488, i64 noundef 16) #48, !noalias !29062 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.noexc21.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4A_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i, !prof !6

.noexc21.i:                                       ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #55
          to label %.noexc unwind label %.body.thread23

.noexc:                                           ; preds = %.noexc21.i
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4A_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29062
  %i.ae = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3488, i64 noundef 16) #48, !noalias !29062 ; 6 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #55
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !29062

.noexc22.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ag = cmpxchg ptr %i.c, ptr null, ptr %i.ae release monotonic, align 8, !noalias !29062
  %i.ah = extractvalue { ptr, i1 } %i.ag, 1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.ae, ptr %i.g release, align 8, !noalias !29062
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ai = icmp eq ptr %.sroa.038.2.i, null
  br i1 %i.ai, label %.outer.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.2.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29062
  br label %.outer.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4A_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.07.1.i = phi ptr [ %.sroa.07.078.i.lcssa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4A_EEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ae, %bb.i ] ; 3 uses
  %i.aj = add i64 %.sroa.03.079.i.lcssa, 2
  %i.ak = cmpxchg weak ptr %i.a, i64 %.sroa.03.079.i.lcssa, i64 %i.aj seq_cst acquire, align 8, !noalias !29062
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.ak, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.077.i.lcssa, i32 6) ; 2 uses
  %i.al = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.077.i.lcssa, 0
  br i1 %.not.i27.i, label %.outer.backedge.i, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %bb.m
  %xtraiter156 = and i32 %i.al, 5                 ; 3 uses
  %i.am = icmp ult i32 %.sroa.0.077.i.lcssa, 3
  br i1 %i.am, label %.lr.ph.i28.i.epil.preheader, label %.lr.ph.i28.i.preheader.new

.lr.ph.i28.i.preheader.new:                       ; preds = %.lr.ph.i28.i.preheader
  %unroll_iter160 = and i32 %i.al, 56
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
  tail call void @llvm.x86.sse2.pause(), !noalias !29062
  %epil.iter157.next = add i32 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i32 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil, !llvm.loop !29066

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i28.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.an = add i32 %.sroa.0.077.i.lcssa, 1
  br label %.outer.backedge.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i, %.lr.ph.i28.i.preheader.new
  %niter161 = phi i32 [ 0, %.lr.ph.i28.i.preheader.new ], [ %niter161.next.7, %.lr.ph.i28.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29062
  tail call void @llvm.x86.sse2.pause(), !noalias !29062
  tail call void @llvm.x86.sse2.pause(), !noalias !29062
  tail call void @llvm.x86.sse2.pause(), !noalias !29062
  tail call void @llvm.x86.sse2.pause(), !noalias !29062
  tail call void @llvm.x86.sse2.pause(), !noalias !29062
  tail call void @llvm.x86.sse2.pause(), !noalias !29062
  tail call void @llvm.x86.sse2.pause(), !noalias !29062
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i28.i

bb.n:                                             ; preds = %bb.l
  br i1 %i.w, label %bb.o, label %.outer._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %.not16.i = icmp eq ptr %.sroa.038.2.i, null
  br i1 %.not16.i, label %bb.p, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #55
          to label %.noexc5 unwind label %.body.thread23

.noexc5:                                          ; preds = %bb.p
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31: ; preds = %bb.o
  store atomic ptr %.sroa.038.2.i, ptr %i.c release, align 8, !noalias !29062
  %i.ao = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !29062 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 3472
  store atomic ptr %.sroa.038.2.i, ptr %i.ap release, align 8, !noalias !29062
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx35, i64 88, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.m, %bb.k, %bb.j
  %.sroa.038.0.ph.be.i = phi ptr [ %i.ae, %bb.k ], [ %i.ae, %bb.j ], [ %.sroa.038.2.i, %bb.m ], [ %.sroa.038.2.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.077.i.lcssa, %bb.k ], [ %.sroa.0.077.i.lcssa, %bb.j ], [ 1, %bb.m ], [ %i.an, %._crit_edge.loopexit.i.i ]
  %i.aq = load atomic i64, ptr %i.a acquire, align 128, !noalias !29062 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29062
  %i.as = and i64 %i.aq, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i, label %.outer._crit_edge.i

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
  %i.au = icmp eq ptr %.sroa.038.1.ph.i, null
  br i1 %i.au, label %.body.thread, label %.thread50.i

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29062
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.av = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.av, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29062
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29070)
  %i.aw = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aw, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.47.136 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ax = icmp samesign ult i64 %.sroa.9.137, 31
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [112 x i8], ptr %.sroa.47.136, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.ay, align 16, !noalias !29067
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !noalias !29067
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.ba = atomicrmw or ptr %i.az, i64 1 release, align 8, !noalias !29072 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bb) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !alias.scope !29072
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
  %i.bc = landingpad { ptr, i32 }
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
end_hunk_5
begin_hunk_6_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
  %xtraiter40 = and i32 %loop-unroll.iv38, 7      ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 7
  br i1 %i.ar, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter44 = and i32 %loop-unroll.iv38, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter45 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter45.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter45.next.7 = add i32 %niter45, 8           ; 2 uses
  %niter45.ncmp.7 = icmp eq i32 %niter45.next.7, %unroll_iter44
  br i1 %niter45.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod42.not = icmp eq i32 %xtraiter40, 0
  br i1 %lcmp.mod42.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod43 = icmp ne i32 %xtraiter40, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter41 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter41.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter41.next = add i32 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i32 %epil.iter41.next, %xtraiter40
  br i1 %epil.iter41.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29075

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.as = add i32 %.sroa.0.02.i27.i, 1
  %i.at = load atomic ptr, ptr %i.ak acquire, align 8
  %i.au = icmp eq ptr %i.at, null
  %loop-unroll.iv.next39 = add i32 %loop-unroll.iv38, %i.ao
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.av = load atomic ptr, ptr %i.ak acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.145.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 3488, i64 noundef 16) #48
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.k:                                             ; preds = %.lr.ph48.i
  %i.aw = getelementptr inbounds nuw [112 x i8], ptr %.sroa.011.145.i, i64 %i.aj ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96 ; 2 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8
  %i.az = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1u_5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %loop-unroll.iv30 = phi i32 [ %loop-unroll.iv.next31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.0.02.i29.i = phi i32 [ %i.bg, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %i.bb = shl i32 %.sroa.0.02.i29.i, 1
  %i.bc = or i32 %i.bb, 1
  %i.bd = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.be = add i32 %loop-unroll.iv30, -1
  %xtraiter32 = and i32 %loop-unroll.iv30, 7      ; 3 uses
  %i.bf = icmp ult i32 %i.be, 7
  br i1 %i.bf, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter36 = and i32 %loop-unroll.iv30, -8
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
  %niter37 = phi i32 [ 0, %.lr.ph.i.i32.i.preheader.new ], [ %niter37.next.7, %.lr.ph.i.i32.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter37.next.7 = add i32 %niter37, 8           ; 2 uses
  %niter37.ncmp.7 = icmp eq i32 %niter37.next.7, %unroll_iter36
  br i1 %niter37.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, label %.lr.ph.i.i32.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i32.i
  %lcmp.mod34.not = icmp eq i32 %xtraiter32, 0
  br i1 %lcmp.mod34.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil.preheader

.lr.ph.i.i32.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.preheader
  %lcmp.mod35 = icmp ne i32 %xtraiter32, 0
  tail call void @llvm.assume(i1 %lcmp.mod35)
  br label %.lr.ph.i.i32.i.epil

.lr.ph.i.i32.i.epil:                              ; preds = %.lr.ph.i.i32.i.epil, %.lr.ph.i.i32.i.epil.preheader
  %epil.iter33 = phi i32 [ 0, %.lr.ph.i.i32.i.epil.preheader ], [ %epil.iter33.next, %.lr.ph.i.i32.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter33.next = add i32 %epil.iter33, 1     ; 2 uses
  %epil.iter33.cmp.not = icmp eq i32 %epil.iter33.next, %xtraiter32
  br i1 %epil.iter33.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil, !llvm.loop !29076

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.epil, %bb.m, %bb.l
  %i.bg = add i32 %.sroa.0.02.i29.i, 1
  %i.bh = load atomic i64, ptr %i.ax acquire, align 8
  %i.bi = and i64 %i.bh, 1
  %i.bj = icmp eq i64 %i.bi, 0
  %loop-unroll.iv.next31 = add i32 %loop-unroll.iv30, %i.bc
  br i1 %i.bj, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1u_5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1u_5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29077)
  %i.bk = load i64, ptr %i.aw, align 16, !range !635, !alias.scope !29077, !noundef !3
  %i.bl = icmp eq i64 %i.bk, -9223372036854775743
  br i1 %i.bl, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1u_5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29086)
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !29089, !nonnull !3, !noundef !3
  %i.bo = atomicrmw sub ptr %i.bn, i64 1 release, align 8, !noalias !29089
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bm) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.p:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1u_5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.aw)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.p, %bb.o, %bb.n, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.011.2.i = phi ptr [ %i.av, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.011.145.i, %bb.n ], [ %.sroa.011.145.i, %bb.o ], [ %.sroa.011.145.i, %bb.p ] ; 2 uses
  %i.bq = add i64 %.sroa.05.046.i, 2              ; 3 uses
  %i.br = lshr i64 %i.bq, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.br, %i.q
  br i1 %.not.i, label %._crit_edge49.i, label %.lr.ph48.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge49.i, %bb.g
  %i.bs = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bs, ptr %0 release, align 128
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
  call void @llvm.experimental.noalias.scope.decl(metadata !29090)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !29090 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !29090 ; 8 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29090
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
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
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
  call void @llvm.x86.sse2.pause(), !noalias !29090
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29093

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
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !29090 ; 3 uses
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
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29090
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
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
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
  call void @llvm.x86.sse2.pause(), !noalias !29090
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !29094

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !29090
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.am, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i, i32 6) ; 2 uses
  %i.an = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.034.i, 0
  br i1 %.not.i23.i, label %.backedge.i.backedge, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.o
  %xtraiter = and i32 %i.an, 5                    ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.034.i, 3
  br i1 %i.ao, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %i.an, 56
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
  call void @llvm.x86.sse2.pause(), !noalias !29090
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !29095

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ap = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.034.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ap, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.aq = icmp eq i64 %i.s, 30
  br i1 %i.aq, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 3472 ; 2 uses
  %i.as = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !29090 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %.sroa.0.02.i28.i = phi i32 [ %i.az, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %i.au = shl i32 %.sroa.0.02.i28.i, 1
  %i.av = or i32 %i.au, 1
  %i.aw = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.aw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i27.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29090
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.s:                                             ; preds = %.lr.ph.i27.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i28.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.s
  %i.ax = add i32 %loop-unroll.iv, -1
  %xtraiter98 = and i32 %loop-unroll.iv, 7        ; 3 uses
  %i.ay = icmp ult i32 %i.ax, 7
  br i1 %i.ay, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter102 = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter103 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter103.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
  call void @llvm.x86.sse2.pause(), !noalias !29090
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
  call void @llvm.x86.sse2.pause(), !noalias !29090
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29096

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.az = add i32 %.sroa.0.02.i28.i, 1
  %i.ba = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !29090 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.av
  br i1 %i.bb, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.as, %bb.q ], [ %i.ba, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.bc = and i64 %.sroa.01.0.i, -2
  %i.bd = add i64 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 3472
  %i.bf = load atomic ptr, ptr %i.be monotonic, align 8, !noalias !29090
  %i.bg = icmp ne ptr %i.bf, null
  %i.bh = zext i1 %i.bg to i64
  %spec.select17.i = or disjoint i64 %i.bd, %i.bh
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !29090
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !29090
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  %i.bi = load i32, ptr %i.i, align 8, !range !28599, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bi, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !29090
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !29090
  %i.bj = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96 ; 3 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8, !noalias !29097
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1u_5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %loop-unroll.iv104 = phi i32 [ %loop-unroll.iv.next105, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 4 uses
  %.sroa.0.02.i.i4 = phi i32 [ %i.bt, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 4 uses
  %i.bo = shl i32 %.sroa.0.02.i.i4, 1
  %i.bp = or i32 %i.bo, 1
  %i.bq = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29097
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5

bb.v:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.v
  %i.br = add i32 %loop-unroll.iv104, -1
  %xtraiter106 = and i32 %loop-unroll.iv104, 7    ; 3 uses
  %i.bs = icmp ult i32 %i.br, 7
  br i1 %i.bs, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter110 = and i32 %loop-unroll.iv104, -8
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter111 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter111.next.7, %.lr.ph.i.i.i7 ]
  call void @llvm.x86.sse2.pause(), !noalias !29097
  call void @llvm.x86.sse2.pause(), !noalias !29097
  call void @llvm.x86.sse2.pause(), !noalias !29097
  call void @llvm.x86.sse2.pause(), !noalias !29097
  call void @llvm.x86.sse2.pause(), !noalias !29097
  call void @llvm.x86.sse2.pause(), !noalias !29097
  call void @llvm.x86.sse2.pause(), !noalias !29097
  call void @llvm.x86.sse2.pause(), !noalias !29097
  %niter111.next.7 = add i32 %niter111, 8         ; 2 uses
  %niter111.ncmp.7 = icmp eq i32 %niter111.next.7, %unroll_iter110
  br i1 %niter111.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, label %.lr.ph.i.i.i7

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7
  %lcmp.mod108.not = icmp eq i32 %xtraiter106, 0
  br i1 %lcmp.mod108.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil.preheader

.lr.ph.i.i.i7.epil.preheader:                     ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.preheader
  %lcmp.mod109 = icmp ne i32 %xtraiter106, 0
  call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph.i.i.i7.epil

.lr.ph.i.i.i7.epil:                               ; preds = %.lr.ph.i.i.i7.epil, %.lr.ph.i.i.i7.epil.preheader
  %epil.iter107 = phi i32 [ 0, %.lr.ph.i.i.i7.epil.preheader ], [ %epil.iter107.next, %.lr.ph.i.i.i7.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !29097
  %epil.iter107.next = add i32 %epil.iter107, 1   ; 2 uses
  %epil.iter107.cmp.not = icmp eq i32 %epil.iter107.next, %xtraiter106
  br i1 %epil.iter107.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !29100
end_hunk_6
begin_hunk_7_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !29101
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2c_5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ak:                                            ; preds = %bb.aq, %bb.ah
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56, !noalias !29101
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.ah, %bb.ag
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.do, %bb.ag ], [ %i.ec, %bb.ap ], [ %i.do, %bb.ah ], [ %i.ec, %bb.aq ]
  resume { ptr, i32 } %.pn.pn.i.i.i

bb.al:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !29101
  store ptr %i.dm, ptr %i.d, align 8, !noalias !29101
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store atomic i64 0, ptr %i.dw release, align 8, !noalias !29101
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store atomic ptr null, ptr %i.dx release, align 8, !noalias !29101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29101
  store ptr %i.g, ptr %i.b, align 8, !noalias !29101
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1C_5error5ErrorEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.dm)
          to label %bb.am unwind label %bb.ap, !noalias !29101

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29101
  %i.dy = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !29101, !noundef !3 ; 3 uses
  store ptr %i.dy, ptr %i.a, align 8, !noalias !29101
  store ptr %i.dm, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !29101
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ea = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !29133
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #58, !noalias !29101
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.ao, %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29101
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2c_5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ap:                                            ; preds = %bb.al
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !29142
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.ak, !noalias !29101

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB3Q_5error5ErrorEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2e_5error5ErrorEE4recvs_0uEs0_0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.f), !noalias !29101
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2c_5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2c_5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB3Q_5error5ErrorEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29101
  br label %bb.b

bb.ar:                                            ; preds = %bb.ad
  %i.ef = extractvalue { i64, i32 } %i.df, 1      ; 2 uses
  %i.eg = icmp ult i32 %i.ef, 1000000000
  call void @llvm.assume(i1 %i.eg)
  %.not26 = icmp samesign ult i32 %i.ef, %i.bi
  br i1 %.not26, label %bb.ae, label %bb.at

bb.as:                                            ; preds = %bb.ad
  %.not25 = icmp slt i64 %i.dg, %i.de
  br i1 %.not25, label %bb.ae, label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.eh, align 8
  br label %bb.au

bb.au:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.av, %bb.at
  %storemerge = phi i64 [ -9223372036854775742, %bb.at ], [ %.sroa.018.0.copyload, %bb.av ], [ -9223372036854775742, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ei, align 8
  br label %bb.au

bb.av:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.419, i64 88, i1 false)
  br label %bb.au
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [88 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [88 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !29149 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29149
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
  %.sroa.03.0.ph84.i = phi i64 [ %i.b, %.lr.ph.lr.ph.i ], [ %i.aq, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph83.i = phi ptr [ %i.d, %.lr.ph.lr.ph.i ], [ %i.ar, %.outer.backedge.i ]
  %.sroa.0.0.ph82.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 5 uses
  %.sroa.038.0.ph81.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.0.ph84.i, 1
  %i.i = and i64 %i.h, 31                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.k = mul i32 %.sroa.0.0.ph82.i, %.sroa.0.0.ph82.i
  %i.l = shl i32 %.sroa.0.0.ph82.i, 1
  %i.m = or i32 %i.l, 1
  br label %.lr.ph

bb.b:                                             ; preds = %.loopexit.i
  %i.n = add i32 %.sroa.0.077.i64, 1              ; 2 uses
  %i.o = lshr exact i64 %i.x, 1
  %i.p = and i64 %i.o, 31                         ; 2 uses
  %i.q = icmp eq i64 %i.p, 31
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.s
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %loop-unroll.iv = phi i32 [ %i.k, %.lr.ph.preheader ], [ %loop-unroll.iv.next, %bb.b ] ; 4 uses
  %indvar = phi i32 [ 0, %.lr.ph.preheader ], [ %indvar.next, %bb.b ] ; 2 uses
  %.sroa.0.077.i64 = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.preheader ], [ %i.n, %bb.b ] ; 3 uses
  %i.r = shl i32 %indvar, 1
  %i.s = add i32 %i.m, %i.r
  %i.t = icmp ult i32 %.sroa.0.077.i64, 7
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.loopexit59.i, !noalias !29149

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.077.i64, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.u = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.v = icmp ult i32 %i.u, 7
  br i1 %i.v, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29149
  tail call void @llvm.x86.sse2.pause(), !noalias !29149
  tail call void @llvm.x86.sse2.pause(), !noalias !29149
  tail call void @llvm.x86.sse2.pause(), !noalias !29149
  tail call void @llvm.x86.sse2.pause(), !noalias !29149
  tail call void @llvm.x86.sse2.pause(), !noalias !29149
  tail call void @llvm.x86.sse2.pause(), !noalias !29149
  tail call void @llvm.x86.sse2.pause(), !noalias !29149
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.079.i.lcssa = phi i64 [ %.sroa.03.0.ph84.i, %.lr.ph.i ], [ %i.x, %bb.b ] ; 2 uses
  %.sroa.07.078.i.lcssa = phi ptr [ %.sroa.07.0.ph83.i, %.lr.ph.i ], [ %i.y, %bb.b ] ; 2 uses
  %.sroa.0.077.i.lcssa = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.i ], [ %i.n, %bb.b ] ; 6 uses
  %.lcssa = phi i64 [ %i.i, %.lr.ph.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.w = icmp eq i64 %.lcssa, 30                  ; 2 uses
  %.not.i = icmp eq ptr %.sroa.038.0.ph81.i, null
  %or.cond.i = select i1 %i.w, i1 %.not.i, i1 false
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
  tail call void @llvm.x86.sse2.pause(), !noalias !29149
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !29152

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.x = load atomic i64, ptr %i.a acquire, align 128, !noalias !29149 ; 3 uses
  %i.y = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29149
  %i.z = and i64 %i.x, 1
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.b, label %.outer._crit_edge.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %._crit_edge
  %.sroa.038.2.i = phi ptr [ %.sroa.038.0.ph81.i, %._crit_edge ], [ %i.ac, %bb.e ] ; 9 uses
  %i.ab = icmp eq ptr %.sroa.07.078.i.lcssa, null
  br i1 %i.ab, label %bb.f, label %bb.l

bb.e:                                             ; preds = %._crit_edge
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29149
  %i.ac = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3488, i64 noundef 16) #48, !noalias !29149 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.noexc21.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i, !prof !6

.noexc21.i:                                       ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #55
          to label %.noexc unwind label %.body.thread23

.noexc:                                           ; preds = %.noexc21.i
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29149
  %i.ae = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3488, i64 noundef 16) #48, !noalias !29149 ; 6 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #55
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !29149

.noexc22.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ag = cmpxchg ptr %i.c, ptr null, ptr %i.ae release monotonic, align 8, !noalias !29149
  %i.ah = extractvalue { ptr, i1 } %i.ag, 1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.ae, ptr %i.g release, align 8, !noalias !29149
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ai = icmp eq ptr %.sroa.038.2.i, null
  br i1 %i.ai, label %.outer.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.2.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29149
  br label %.outer.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.07.1.i = phi ptr [ %.sroa.07.078.i.lcssa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ae, %bb.i ] ; 3 uses
  %i.aj = add i64 %.sroa.03.079.i.lcssa, 2
  %i.ak = cmpxchg weak ptr %i.a, i64 %.sroa.03.079.i.lcssa, i64 %i.aj seq_cst acquire, align 8, !noalias !29149
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.ak, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.077.i.lcssa, i32 6) ; 2 uses
  %i.al = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.077.i.lcssa, 0
  br i1 %.not.i27.i, label %.outer.backedge.i, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %bb.m
  %xtraiter156 = and i32 %i.al, 5                 ; 3 uses
  %i.am = icmp ult i32 %.sroa.0.077.i.lcssa, 3
  br i1 %i.am, label %.lr.ph.i28.i.epil.preheader, label %.lr.ph.i28.i.preheader.new

.lr.ph.i28.i.preheader.new:                       ; preds = %.lr.ph.i28.i.preheader
  %unroll_iter160 = and i32 %i.al, 56
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
  tail call void @llvm.x86.sse2.pause(), !noalias !29149
  %epil.iter157.next = add i32 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i32 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil, !llvm.loop !29153

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i28.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.an = add i32 %.sroa.0.077.i.lcssa, 1
  br label %.outer.backedge.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i, %.lr.ph.i28.i.preheader.new
  %niter161 = phi i32 [ 0, %.lr.ph.i28.i.preheader.new ], [ %niter161.next.7, %.lr.ph.i28.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29149
  tail call void @llvm.x86.sse2.pause(), !noalias !29149
  tail call void @llvm.x86.sse2.pause(), !noalias !29149
  tail call void @llvm.x86.sse2.pause(), !noalias !29149
  tail call void @llvm.x86.sse2.pause(), !noalias !29149
  tail call void @llvm.x86.sse2.pause(), !noalias !29149
  tail call void @llvm.x86.sse2.pause(), !noalias !29149
  tail call void @llvm.x86.sse2.pause(), !noalias !29149
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i28.i

bb.n:                                             ; preds = %bb.l
  br i1 %i.w, label %bb.o, label %.outer._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %.not16.i = icmp eq ptr %.sroa.038.2.i, null
  br i1 %.not16.i, label %bb.p, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #55
          to label %.noexc5 unwind label %.body.thread23

.noexc5:                                          ; preds = %bb.p
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31: ; preds = %bb.o
  store atomic ptr %.sroa.038.2.i, ptr %i.c release, align 8, !noalias !29149
  %i.ao = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !29149 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 3472
  store atomic ptr %.sroa.038.2.i, ptr %i.ap release, align 8, !noalias !29149
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx35, i64 88, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.m, %bb.k, %bb.j
  %.sroa.038.0.ph.be.i = phi ptr [ %i.ae, %bb.k ], [ %i.ae, %bb.j ], [ %.sroa.038.2.i, %bb.m ], [ %.sroa.038.2.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.077.i.lcssa, %bb.k ], [ %.sroa.0.077.i.lcssa, %bb.j ], [ 1, %bb.m ], [ %i.an, %._crit_edge.loopexit.i.i ]
  %i.aq = load atomic i64, ptr %i.a acquire, align 128, !noalias !29149 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29149
  %i.as = and i64 %i.aq, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i, label %.outer._crit_edge.i

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
  %i.au = icmp eq ptr %.sroa.038.1.ph.i, null
  br i1 %i.au, label %.body.thread, label %.thread50.i

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29149
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.av = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.av, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29149
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29157)
  %i.aw = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aw, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.47.136 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ax = icmp samesign ult i64 %.sroa.9.137, 31
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [112 x i8], ptr %.sroa.47.136, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.ay, align 16, !noalias !29154
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !noalias !29154
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.ba = atomicrmw or ptr %i.az, i64 1 release, align 8, !noalias !29159 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bb) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !alias.scope !29159
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
  %i.bc = landingpad { ptr, i32 }
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
end_hunk_7
begin_hunk_8_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
  %niter50 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter50.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter50.next.7 = add i32 %niter50, 8           ; 2 uses
  %niter50.ncmp.7 = icmp eq i32 %niter50.next.7, %unroll_iter49
  br i1 %niter50.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod47.not = icmp eq i32 %xtraiter45, 0
  br i1 %lcmp.mod47.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod48 = icmp ne i32 %xtraiter45, 0
  tail call void @llvm.assume(i1 %lcmp.mod48)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter46 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter46.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter46.next = add i32 %epil.iter46, 1     ; 2 uses
  %epil.iter46.cmp.not = icmp eq i32 %epil.iter46.next, %xtraiter45
  br i1 %epil.iter46.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29162

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.as = add i32 %.sroa.0.02.i27.i, 1
  %i.at = load atomic ptr, ptr %i.ak acquire, align 8
  %i.au = icmp eq ptr %i.at, null
  %loop-unroll.iv.next44 = add i32 %loop-unroll.iv43, %i.ao
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.av = load atomic ptr, ptr %i.ak acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.148.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.148.i, i64 noundef 3984, i64 noundef 16) #48
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.k:                                             ; preds = %.lr.ph51.i
  %i.aw = getelementptr inbounds nuw [128 x i8], ptr %.sroa.011.148.i, i64 %i.aj ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 112 ; 2 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8
  %i.az = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1u_5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %loop-unroll.iv35 = phi i32 [ %loop-unroll.iv.next36, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.0.02.i29.i = phi i32 [ %i.bg, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %i.bb = shl i32 %.sroa.0.02.i29.i, 1
  %i.bc = or i32 %i.bb, 1
  %i.bd = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.be = add i32 %loop-unroll.iv35, -1
  %xtraiter37 = and i32 %loop-unroll.iv35, 7      ; 3 uses
  %i.bf = icmp ult i32 %i.be, 7
  br i1 %i.bf, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter41 = and i32 %loop-unroll.iv35, -8
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
  %niter42 = phi i32 [ 0, %.lr.ph.i.i32.i.preheader.new ], [ %niter42.next.7, %.lr.ph.i.i32.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter42.next.7 = add i32 %niter42, 8           ; 2 uses
  %niter42.ncmp.7 = icmp eq i32 %niter42.next.7, %unroll_iter41
  br i1 %niter42.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, label %.lr.ph.i.i32.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i32.i
  %lcmp.mod39.not = icmp eq i32 %xtraiter37, 0
  br i1 %lcmp.mod39.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil.preheader

.lr.ph.i.i32.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.preheader
  %lcmp.mod40 = icmp ne i32 %xtraiter37, 0
  tail call void @llvm.assume(i1 %lcmp.mod40)
  br label %.lr.ph.i.i32.i.epil

.lr.ph.i.i32.i.epil:                              ; preds = %.lr.ph.i.i32.i.epil, %.lr.ph.i.i32.i.epil.preheader
  %epil.iter38 = phi i32 [ 0, %.lr.ph.i.i32.i.epil.preheader ], [ %epil.iter38.next, %.lr.ph.i.i32.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter38.next = add i32 %epil.iter38, 1     ; 2 uses
  %epil.iter38.cmp.not = icmp eq i32 %epil.iter38.next, %xtraiter37
  br i1 %epil.iter38.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil, !llvm.loop !29163

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.epil, %bb.m, %bb.l
  %i.bg = add i32 %.sroa.0.02.i29.i, 1
  %i.bh = load atomic i64, ptr %i.ax acquire, align 8
  %i.bi = and i64 %i.bh, 1
  %i.bj = icmp eq i64 %i.bi, 0
  %loop-unroll.iv.next36 = add i32 %loop-unroll.iv35, %i.bc
  br i1 %i.bj, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1u_5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1u_5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, %bb.k
  %i.bk = load i64, ptr %i.aw, align 16, !range !7, !alias.scope !29164, !noundef !3
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1u_5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.bm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.bm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %bb.o
  resume { ptr, i32 } %i.bn

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.n
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.bm)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.q:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1u_5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.bp)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.011.2.i = phi ptr [ %i.av, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.011.148.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.011.148.i, %bb.q ] ; 2 uses
  %i.bq = add i64 %.sroa.05.049.i, 2              ; 3 uses
  %i.br = lshr i64 %i.bq, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.br, %i.q
  br i1 %.not.i, label %._crit_edge52.i, label %.lr.ph51.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge52.i, %bb.g
  %i.bs = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bs, ptr %0 release, align 128
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
  call void @llvm.experimental.noalias.scope.decl(metadata !29167)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !29167 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !29167 ; 8 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29167
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
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
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
  call void @llvm.x86.sse2.pause(), !noalias !29167
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29170

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
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !29167 ; 3 uses
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
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29167
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
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
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
  call void @llvm.x86.sse2.pause(), !noalias !29167
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !29171

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !29167
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.am, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i, i32 6) ; 2 uses
  %i.an = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.034.i, 0
  br i1 %.not.i23.i, label %.backedge.i.backedge, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.o
  %xtraiter = and i32 %i.an, 5                    ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.034.i, 3
  br i1 %i.ao, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %i.an, 56
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
  call void @llvm.x86.sse2.pause(), !noalias !29167
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !29172

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ap = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.034.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ap, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.aq = icmp eq i64 %i.s, 30
  br i1 %i.aq, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 3968 ; 2 uses
  %i.as = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !29167 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %.sroa.0.02.i28.i = phi i32 [ %i.az, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %i.au = shl i32 %.sroa.0.02.i28.i, 1
  %i.av = or i32 %i.au, 1
  %i.aw = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.aw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i27.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29167
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.s:                                             ; preds = %.lr.ph.i27.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i28.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.s
  %i.ax = add i32 %loop-unroll.iv, -1
  %xtraiter98 = and i32 %loop-unroll.iv, 7        ; 3 uses
  %i.ay = icmp ult i32 %i.ax, 7
  br i1 %i.ay, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter102 = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter103 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter103.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
  call void @llvm.x86.sse2.pause(), !noalias !29167
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
  call void @llvm.x86.sse2.pause(), !noalias !29167
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29173

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.az = add i32 %.sroa.0.02.i28.i, 1
  %i.ba = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !29167 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.av
  br i1 %i.bb, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.as, %bb.q ], [ %i.ba, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.bc = and i64 %.sroa.01.0.i, -2
  %i.bd = add i64 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 3968
  %i.bf = load atomic ptr, ptr %i.be monotonic, align 8, !noalias !29167
  %i.bg = icmp ne ptr %i.bf, null
  %i.bh = zext i1 %i.bg to i64
  %spec.select17.i = or disjoint i64 %i.bd, %i.bh
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !29167
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !29167
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  %i.bi = load i32, ptr %i.i, align 8, !range !28599, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bi, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !29167
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !29167
  %i.bj = getelementptr inbounds nuw [128 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 112 ; 3 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8, !noalias !29174
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1u_5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %loop-unroll.iv104 = phi i32 [ %loop-unroll.iv.next105, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 4 uses
  %.sroa.0.02.i.i4 = phi i32 [ %i.bt, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 4 uses
  %i.bo = shl i32 %.sroa.0.02.i.i4, 1
  %i.bp = or i32 %i.bo, 1
  %i.bq = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29174
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5

bb.v:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.v
  %i.br = add i32 %loop-unroll.iv104, -1
  %xtraiter106 = and i32 %loop-unroll.iv104, 7    ; 3 uses
  %i.bs = icmp ult i32 %i.br, 7
  br i1 %i.bs, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter110 = and i32 %loop-unroll.iv104, -8
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter111 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter111.next.7, %.lr.ph.i.i.i7 ]
  call void @llvm.x86.sse2.pause(), !noalias !29174
  call void @llvm.x86.sse2.pause(), !noalias !29174
  call void @llvm.x86.sse2.pause(), !noalias !29174
  call void @llvm.x86.sse2.pause(), !noalias !29174
  call void @llvm.x86.sse2.pause(), !noalias !29174
  call void @llvm.x86.sse2.pause(), !noalias !29174
  call void @llvm.x86.sse2.pause(), !noalias !29174
  call void @llvm.x86.sse2.pause(), !noalias !29174
  %niter111.next.7 = add i32 %niter111, 8         ; 2 uses
  %niter111.ncmp.7 = icmp eq i32 %niter111.next.7, %unroll_iter110
  br i1 %niter111.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, label %.lr.ph.i.i.i7

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7
  %lcmp.mod108.not = icmp eq i32 %xtraiter106, 0
  br i1 %lcmp.mod108.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil.preheader

.lr.ph.i.i.i7.epil.preheader:                     ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.preheader
  %lcmp.mod109 = icmp ne i32 %xtraiter106, 0
  call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph.i.i.i7.epil

.lr.ph.i.i.i7.epil:                               ; preds = %.lr.ph.i.i.i7.epil, %.lr.ph.i.i.i7.epil.preheader
  %epil.iter107 = phi i32 [ 0, %.lr.ph.i.i.i7.epil.preheader ], [ %epil.iter107.next, %.lr.ph.i.i.i7.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !29174
  %epil.iter107.next = add i32 %epil.iter107, 1   ; 2 uses
  %epil.iter107.cmp.not = icmp eq i32 %epil.iter107.next, %xtraiter106
  br i1 %epil.iter107.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !29177
end_hunk_8
begin_hunk_9_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !29178
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2c_5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ak:                                            ; preds = %bb.aq, %bb.ah
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56, !noalias !29178
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.ah, %bb.ag
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.do, %bb.ag ], [ %i.ec, %bb.ap ], [ %i.do, %bb.ah ], [ %i.ec, %bb.aq ]
  resume { ptr, i32 } %.pn.pn.i.i.i

bb.al:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !29178
  store ptr %i.dm, ptr %i.d, align 8, !noalias !29178
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store atomic i64 0, ptr %i.dw release, align 8, !noalias !29178
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store atomic ptr null, ptr %i.dx release, align 8, !noalias !29178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29178
  store ptr %i.g, ptr %i.b, align 8, !noalias !29178
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1C_5error5ErrorEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.dm)
          to label %bb.am unwind label %bb.ap, !noalias !29178

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29178
  %i.dy = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !29178, !noundef !3 ; 3 uses
  store ptr %i.dy, ptr %i.a, align 8, !noalias !29178
  store ptr %i.dm, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !29178
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ea = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !29210
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #58, !noalias !29178
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.ao, %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29178
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2c_5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ap:                                            ; preds = %bb.al
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !29219
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.ak, !noalias !29178

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3Q_5error5ErrorEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2e_5error5ErrorEE4recvs_0uEs0_0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.f), !noalias !29178
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2c_5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2c_5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3Q_5error5ErrorEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29178
  br label %bb.b

bb.ar:                                            ; preds = %bb.ad
  %i.ef = extractvalue { i64, i32 } %i.df, 1      ; 2 uses
  %i.eg = icmp ult i32 %i.ef, 1000000000
  call void @llvm.assume(i1 %i.eg)
  %.not26 = icmp samesign ult i32 %i.ef, %i.bi
  br i1 %.not26, label %bb.ae, label %bb.at

bb.as:                                            ; preds = %bb.ad
  %.not25 = icmp slt i64 %i.dg, %i.de
  br i1 %.not25, label %bb.ae, label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.eh, align 8
  br label %bb.au

bb.au:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.av, %bb.at
  %storemerge = phi i64 [ 2, %bb.at ], [ %.sroa.018.0.copyload, %bb.av ], [ 2, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ei, align 8
  br label %bb.au

bb.av:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.419, i64 104, i1 false)
  br label %bb.au
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [104 x i8], align 8           ; 10 uses
  %.sroa.6 = alloca [104 x i8], align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !29226 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29226
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
  %.sroa.03.0.ph84.i = phi i64 [ %i.b, %.lr.ph.lr.ph.i ], [ %i.aq, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph83.i = phi ptr [ %i.d, %.lr.ph.lr.ph.i ], [ %i.ar, %.outer.backedge.i ]
  %.sroa.0.0.ph82.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 5 uses
  %.sroa.038.0.ph81.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.0.ph84.i, 1
  %i.i = and i64 %i.h, 31                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.k = mul i32 %.sroa.0.0.ph82.i, %.sroa.0.0.ph82.i
  %i.l = shl i32 %.sroa.0.0.ph82.i, 1
  %i.m = or i32 %i.l, 1
  br label %.lr.ph

bb.b:                                             ; preds = %.loopexit.i
  %i.n = add i32 %.sroa.0.077.i64, 1              ; 2 uses
  %i.o = lshr exact i64 %i.x, 1
  %i.p = and i64 %i.o, 31                         ; 2 uses
  %i.q = icmp eq i64 %i.p, 31
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.s
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %loop-unroll.iv = phi i32 [ %i.k, %.lr.ph.preheader ], [ %loop-unroll.iv.next, %bb.b ] ; 4 uses
  %indvar = phi i32 [ 0, %.lr.ph.preheader ], [ %indvar.next, %bb.b ] ; 2 uses
  %.sroa.0.077.i64 = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.preheader ], [ %i.n, %bb.b ] ; 3 uses
  %i.r = shl i32 %indvar, 1
  %i.s = add i32 %i.m, %i.r
  %i.t = icmp ult i32 %.sroa.0.077.i64, 7
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.loopexit59.i, !noalias !29226

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.077.i64, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.u = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.v = icmp ult i32 %i.u, 7
  br i1 %i.v, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29226
  tail call void @llvm.x86.sse2.pause(), !noalias !29226
  tail call void @llvm.x86.sse2.pause(), !noalias !29226
  tail call void @llvm.x86.sse2.pause(), !noalias !29226
  tail call void @llvm.x86.sse2.pause(), !noalias !29226
  tail call void @llvm.x86.sse2.pause(), !noalias !29226
  tail call void @llvm.x86.sse2.pause(), !noalias !29226
  tail call void @llvm.x86.sse2.pause(), !noalias !29226
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.079.i.lcssa = phi i64 [ %.sroa.03.0.ph84.i, %.lr.ph.i ], [ %i.x, %bb.b ] ; 2 uses
  %.sroa.07.078.i.lcssa = phi ptr [ %.sroa.07.0.ph83.i, %.lr.ph.i ], [ %i.y, %bb.b ] ; 2 uses
  %.sroa.0.077.i.lcssa = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.i ], [ %i.n, %bb.b ] ; 6 uses
  %.lcssa = phi i64 [ %i.i, %.lr.ph.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.w = icmp eq i64 %.lcssa, 30                  ; 2 uses
  %.not.i = icmp eq ptr %.sroa.038.0.ph81.i, null
  %or.cond.i = select i1 %i.w, i1 %.not.i, i1 false
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
  tail call void @llvm.x86.sse2.pause(), !noalias !29226
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !29229

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.x = load atomic i64, ptr %i.a acquire, align 128, !noalias !29226 ; 3 uses
  %i.y = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29226
  %i.z = and i64 %i.x, 1
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.b, label %.outer._crit_edge.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %._crit_edge
  %.sroa.038.2.i = phi ptr [ %.sroa.038.0.ph81.i, %._crit_edge ], [ %i.ac, %bb.e ] ; 9 uses
  %i.ab = icmp eq ptr %.sroa.07.078.i.lcssa, null
  br i1 %i.ab, label %bb.f, label %bb.l

bb.e:                                             ; preds = %._crit_edge
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29226
  %i.ac = tail call noalias noundef align 16 dereferenceable_or_null(3984) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3984, i64 noundef 16) #48, !noalias !29226 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.noexc21.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i, !prof !6

.noexc21.i:                                       ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3984) #55
          to label %.noexc unwind label %.body.thread23

.noexc:                                           ; preds = %.noexc21.i
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29226
  %i.ae = tail call noalias noundef align 16 dereferenceable_or_null(3984) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3984, i64 noundef 16) #48, !noalias !29226 ; 6 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3984) #55
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !29226

.noexc22.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ag = cmpxchg ptr %i.c, ptr null, ptr %i.ae release monotonic, align 8, !noalias !29226
  %i.ah = extractvalue { ptr, i1 } %i.ag, 1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.ae, ptr %i.g release, align 8, !noalias !29226
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ai = icmp eq ptr %.sroa.038.2.i, null
  br i1 %i.ai, label %.outer.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.2.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29226
  br label %.outer.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.07.1.i = phi ptr [ %.sroa.07.078.i.lcssa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2L_5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ae, %bb.i ] ; 3 uses
  %i.aj = add i64 %.sroa.03.079.i.lcssa, 2
  %i.ak = cmpxchg weak ptr %i.a, i64 %.sroa.03.079.i.lcssa, i64 %i.aj seq_cst acquire, align 8, !noalias !29226
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.ak, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.077.i.lcssa, i32 6) ; 2 uses
  %i.al = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.077.i.lcssa, 0
  br i1 %.not.i27.i, label %.outer.backedge.i, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %bb.m
  %xtraiter156 = and i32 %i.al, 5                 ; 3 uses
  %i.am = icmp ult i32 %.sroa.0.077.i.lcssa, 3
  br i1 %i.am, label %.lr.ph.i28.i.epil.preheader, label %.lr.ph.i28.i.preheader.new

.lr.ph.i28.i.preheader.new:                       ; preds = %.lr.ph.i28.i.preheader
  %unroll_iter160 = and i32 %i.al, 56
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
  tail call void @llvm.x86.sse2.pause(), !noalias !29226
  %epil.iter157.next = add i32 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i32 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil, !llvm.loop !29230

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i28.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.an = add i32 %.sroa.0.077.i.lcssa, 1
  br label %.outer.backedge.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i, %.lr.ph.i28.i.preheader.new
  %niter161 = phi i32 [ 0, %.lr.ph.i28.i.preheader.new ], [ %niter161.next.7, %.lr.ph.i28.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29226
  tail call void @llvm.x86.sse2.pause(), !noalias !29226
  tail call void @llvm.x86.sse2.pause(), !noalias !29226
  tail call void @llvm.x86.sse2.pause(), !noalias !29226
  tail call void @llvm.x86.sse2.pause(), !noalias !29226
  tail call void @llvm.x86.sse2.pause(), !noalias !29226
  tail call void @llvm.x86.sse2.pause(), !noalias !29226
  tail call void @llvm.x86.sse2.pause(), !noalias !29226
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i28.i

bb.n:                                             ; preds = %bb.l
  br i1 %i.w, label %bb.o, label %.outer._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %.not16.i = icmp eq ptr %.sroa.038.2.i, null
  br i1 %.not16.i, label %bb.p, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #55
          to label %.noexc5 unwind label %.body.thread23

.noexc5:                                          ; preds = %bb.p
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31: ; preds = %bb.o
  store atomic ptr %.sroa.038.2.i, ptr %i.c release, align 8, !noalias !29226
  %i.ao = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !29226 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 3968
  store atomic ptr %.sroa.038.2.i, ptr %i.ap release, align 8, !noalias !29226
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx35, i64 104, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.m, %bb.k, %bb.j
  %.sroa.038.0.ph.be.i = phi ptr [ %i.ae, %bb.k ], [ %i.ae, %bb.j ], [ %.sroa.038.2.i, %bb.m ], [ %.sroa.038.2.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.077.i.lcssa, %bb.k ], [ %.sroa.0.077.i.lcssa, %bb.j ], [ 1, %bb.m ], [ %i.an, %._crit_edge.loopexit.i.i ]
  %i.aq = load atomic i64, ptr %i.a acquire, align 128, !noalias !29226 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29226
  %i.as = and i64 %i.aq, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i, label %.outer._crit_edge.i

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
  %i.au = icmp eq ptr %.sroa.038.1.ph.i, null
  br i1 %i.au, label %.body.thread, label %.thread50.i

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29226
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.av = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.av, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29226
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29234)
  %i.aw = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aw, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.47.136 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ax = icmp samesign ult i64 %.sroa.9.137, 31
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [128 x i8], ptr %.sroa.47.136, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.ay, align 16, !noalias !29231
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, i64 104, i1 false), !noalias !29231
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  %i.ba = atomicrmw or ptr %i.az, i64 1 release, align 8, !noalias !29236 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bb) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, i64 104, i1 false), !alias.scope !29236
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
  %i.bc = landingpad { ptr, i32 }
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
end_hunk_9
begin_hunk_10_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.0.02.i27.i = phi i32 [ %i.as, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %i.an = shl i32 %.sroa.0.02.i27.i, 1
  %i.ao = or i32 %i.an, 1
  %i.ap = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i26.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i27.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %i.aq = add i32 %loop-unroll.iv38, -1
  %xtraiter40 = and i32 %loop-unroll.iv38, 7      ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 7
  br i1 %i.ar, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter44 = and i32 %loop-unroll.iv38, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter45 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter45.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter45.next.7 = add i32 %niter45, 8           ; 2 uses
  %niter45.ncmp.7 = icmp eq i32 %niter45.next.7, %unroll_iter44
  br i1 %niter45.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod42.not = icmp eq i32 %xtraiter40, 0
  br i1 %lcmp.mod42.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod43 = icmp ne i32 %xtraiter40, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter41 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter41.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter41.next = add i32 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i32 %epil.iter41.next, %xtraiter40
  br i1 %epil.iter41.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29239

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.as = add i32 %.sroa.0.02.i27.i, 1
  %i.at = load atomic ptr, ptr %i.ak acquire, align 8
  %i.au = icmp eq ptr %i.at, null
  %loop-unroll.iv.next39 = add i32 %loop-unroll.iv38, %i.ao
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.av = load atomic ptr, ptr %i.ak acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.145.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 3488, i64 noundef 16) #48
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.k:                                             ; preds = %.lr.ph48.i
  %i.aw = getelementptr inbounds nuw [112 x i8], ptr %.sroa.011.145.i, i64 %i.aj ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96 ; 2 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8
  %i.az = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %loop-unroll.iv30 = phi i32 [ %loop-unroll.iv.next31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.0.02.i29.i = phi i32 [ %i.bg, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %i.bb = shl i32 %.sroa.0.02.i29.i, 1
  %i.bc = or i32 %i.bb, 1
  %i.bd = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.be = add i32 %loop-unroll.iv30, -1
  %xtraiter32 = and i32 %loop-unroll.iv30, 7      ; 3 uses
  %i.bf = icmp ult i32 %i.be, 7
  br i1 %i.bf, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter36 = and i32 %loop-unroll.iv30, -8
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
  %niter37 = phi i32 [ 0, %.lr.ph.i.i32.i.preheader.new ], [ %niter37.next.7, %.lr.ph.i.i32.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter37.next.7 = add i32 %niter37, 8           ; 2 uses
  %niter37.ncmp.7 = icmp eq i32 %niter37.next.7, %unroll_iter36
  br i1 %niter37.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, label %.lr.ph.i.i32.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i32.i
  %lcmp.mod34.not = icmp eq i32 %xtraiter32, 0
  br i1 %lcmp.mod34.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil.preheader

.lr.ph.i.i32.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.preheader
  %lcmp.mod35 = icmp ne i32 %xtraiter32, 0
  tail call void @llvm.assume(i1 %lcmp.mod35)
  br label %.lr.ph.i.i32.i.epil

.lr.ph.i.i32.i.epil:                              ; preds = %.lr.ph.i.i32.i.epil, %.lr.ph.i.i32.i.epil.preheader
  %epil.iter33 = phi i32 [ 0, %.lr.ph.i.i32.i.epil.preheader ], [ %epil.iter33.next, %.lr.ph.i.i32.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter33.next = add i32 %epil.iter33, 1     ; 2 uses
  %epil.iter33.cmp.not = icmp eq i32 %epil.iter33.next, %xtraiter32
  br i1 %epil.iter33.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil, !llvm.loop !29240

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.epil, %bb.m, %bb.l
  %i.bg = add i32 %.sroa.0.02.i29.i, 1
  %i.bh = load atomic i64, ptr %i.ax acquire, align 8
  %i.bi = and i64 %i.bh, 1
  %i.bj = icmp eq i64 %i.bi, 0
  %loop-unroll.iv.next31 = add i32 %loop-unroll.iv30, %i.bc
  br i1 %i.bj, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, %bb.k
  %i.bk = load i64, ptr %i.aw, align 16, !range !635, !alias.scope !29241, !noundef !3
  %i.bl = icmp eq i64 %i.bk, -9223372036854775743
  br i1 %i.bl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.aw)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.n, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.011.2.i = phi ptr [ %i.av, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.011.145.i, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.011.145.i, %bb.n ] ; 2 uses
  %i.bm = add i64 %.sroa.05.046.i, 2              ; 3 uses
  %i.bn = lshr i64 %i.bm, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.bn, %i.q
  br i1 %.not.i, label %._crit_edge49.i, label %.lr.ph48.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge49.i, %bb.g
  %i.bo = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bo, ptr %0 release, align 128
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
  call void @llvm.experimental.noalias.scope.decl(metadata !29244)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !29244 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !29244 ; 8 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29244
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
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
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
  call void @llvm.x86.sse2.pause(), !noalias !29244
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29247

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
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !29244 ; 3 uses
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
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29244
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
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
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
  call void @llvm.x86.sse2.pause(), !noalias !29244
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !29248

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !29244
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.am, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i, i32 6) ; 2 uses
  %i.an = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.034.i, 0
  br i1 %.not.i23.i, label %.backedge.i.backedge, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.o
  %xtraiter = and i32 %i.an, 5                    ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.034.i, 3
  br i1 %i.ao, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %i.an, 56
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
  call void @llvm.x86.sse2.pause(), !noalias !29244
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !29249

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ap = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.034.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ap, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.aq = icmp eq i64 %i.s, 30
  br i1 %i.aq, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 3472 ; 2 uses
  %i.as = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !29244 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %.sroa.0.02.i28.i = phi i32 [ %i.az, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %i.au = shl i32 %.sroa.0.02.i28.i, 1
  %i.av = or i32 %i.au, 1
  %i.aw = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.aw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i27.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29244
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.s:                                             ; preds = %.lr.ph.i27.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i28.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.s
  %i.ax = add i32 %loop-unroll.iv, -1
  %xtraiter98 = and i32 %loop-unroll.iv, 7        ; 3 uses
  %i.ay = icmp ult i32 %i.ax, 7
  br i1 %i.ay, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter102 = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter103 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter103.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
  call void @llvm.x86.sse2.pause(), !noalias !29244
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
  call void @llvm.x86.sse2.pause(), !noalias !29244
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29250

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.az = add i32 %.sroa.0.02.i28.i, 1
  %i.ba = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !29244 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.av
  br i1 %i.bb, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.as, %bb.q ], [ %i.ba, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.bc = and i64 %.sroa.01.0.i, -2
  %i.bd = add i64 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 3472
  %i.bf = load atomic ptr, ptr %i.be monotonic, align 8, !noalias !29244
  %i.bg = icmp ne ptr %i.bf, null
  %i.bh = zext i1 %i.bg to i64
  %spec.select17.i = or disjoint i64 %i.bd, %i.bh
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !29244
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !29244
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  %i.bi = load i32, ptr %i.i, align 8, !range !28599, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bi, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !29244
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !29244
  %i.bj = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96 ; 3 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8, !noalias !29251
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %loop-unroll.iv104 = phi i32 [ %loop-unroll.iv.next105, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 4 uses
  %.sroa.0.02.i.i4 = phi i32 [ %i.bt, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 4 uses
  %i.bo = shl i32 %.sroa.0.02.i.i4, 1
  %i.bp = or i32 %i.bo, 1
  %i.bq = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29251
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5

bb.v:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.v
  %i.br = add i32 %loop-unroll.iv104, -1
  %xtraiter106 = and i32 %loop-unroll.iv104, 7    ; 3 uses
  %i.bs = icmp ult i32 %i.br, 7
  br i1 %i.bs, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter110 = and i32 %loop-unroll.iv104, -8
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter111 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter111.next.7, %.lr.ph.i.i.i7 ]
  call void @llvm.x86.sse2.pause(), !noalias !29251
  call void @llvm.x86.sse2.pause(), !noalias !29251
  call void @llvm.x86.sse2.pause(), !noalias !29251
  call void @llvm.x86.sse2.pause(), !noalias !29251
  call void @llvm.x86.sse2.pause(), !noalias !29251
  call void @llvm.x86.sse2.pause(), !noalias !29251
  call void @llvm.x86.sse2.pause(), !noalias !29251
  call void @llvm.x86.sse2.pause(), !noalias !29251
  %niter111.next.7 = add i32 %niter111, 8         ; 2 uses
  %niter111.ncmp.7 = icmp eq i32 %niter111.next.7, %unroll_iter110
  br i1 %niter111.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, label %.lr.ph.i.i.i7

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7
  %lcmp.mod108.not = icmp eq i32 %xtraiter106, 0
  br i1 %lcmp.mod108.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil.preheader

.lr.ph.i.i.i7.epil.preheader:                     ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.preheader
  %lcmp.mod109 = icmp ne i32 %xtraiter106, 0
  call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph.i.i.i7.epil

.lr.ph.i.i.i7.epil:                               ; preds = %.lr.ph.i.i.i7.epil, %.lr.ph.i.i.i7.epil.preheader
  %epil.iter107 = phi i32 [ 0, %.lr.ph.i.i.i7.epil.preheader ], [ %epil.iter107.next, %.lr.ph.i.i.i7.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !29251
  %epil.iter107.next = add i32 %epil.iter107, 1   ; 2 uses
  %epil.iter107.cmp.not = icmp eq i32 %epil.iter107.next, %xtraiter106
  br i1 %epil.iter107.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !29254
end_hunk_10
begin_hunk_11_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !29255
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ak:                                            ; preds = %bb.aq, %bb.ah
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56, !noalias !29255
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.ah, %bb.ag
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.do, %bb.ag ], [ %i.ec, %bb.ap ], [ %i.do, %bb.ah ], [ %i.ec, %bb.aq ]
  resume { ptr, i32 } %.pn.pn.i.i.i

bb.al:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !29255
  store ptr %i.dm, ptr %i.d, align 8, !noalias !29255
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store atomic i64 0, ptr %i.dw release, align 8, !noalias !29255
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store atomic ptr null, ptr %i.dx release, align 8, !noalias !29255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29255
  store ptr %i.g, ptr %i.b, align 8, !noalias !29255
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.dm)
          to label %bb.am unwind label %bb.ap, !noalias !29255

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29255
  %i.dy = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !29255, !noundef !3 ; 3 uses
  store ptr %i.dy, ptr %i.a, align 8, !noalias !29255
  store ptr %i.dm, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !29255
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ea = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !29287
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #58, !noalias !29255
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.ao, %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29255
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ap:                                            ; preds = %bb.al
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !29296
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.ak, !noalias !29255

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0uEs0_0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.f), !noalias !29255
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29255
  br label %bb.b

bb.ar:                                            ; preds = %bb.ad
  %i.ef = extractvalue { i64, i32 } %i.df, 1      ; 2 uses
  %i.eg = icmp ult i32 %i.ef, 1000000000
  call void @llvm.assume(i1 %i.eg)
  %.not26 = icmp samesign ult i32 %i.ef, %i.bi
  br i1 %.not26, label %bb.ae, label %bb.at

bb.as:                                            ; preds = %bb.ad
  %.not25 = icmp slt i64 %i.dg, %i.de
  br i1 %.not25, label %bb.ae, label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.eh, align 8
  br label %bb.au

bb.au:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.av, %bb.at
  %storemerge = phi i64 [ -9223372036854775742, %bb.at ], [ %.sroa.018.0.copyload, %bb.av ], [ -9223372036854775742, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ei, align 8
  br label %bb.au

bb.av:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.419, i64 88, i1 false)
  br label %bb.au
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [88 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [88 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !29303 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29303
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
  %.sroa.03.0.ph84.i = phi i64 [ %i.b, %.lr.ph.lr.ph.i ], [ %i.aq, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph83.i = phi ptr [ %i.d, %.lr.ph.lr.ph.i ], [ %i.ar, %.outer.backedge.i ]
  %.sroa.0.0.ph82.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 5 uses
  %.sroa.038.0.ph81.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.0.ph84.i, 1
  %i.i = and i64 %i.h, 31                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.k = mul i32 %.sroa.0.0.ph82.i, %.sroa.0.0.ph82.i
  %i.l = shl i32 %.sroa.0.0.ph82.i, 1
  %i.m = or i32 %i.l, 1
  br label %.lr.ph

bb.b:                                             ; preds = %.loopexit.i
  %i.n = add i32 %.sroa.0.077.i65, 1              ; 2 uses
  %i.o = lshr exact i64 %i.x, 1
  %i.p = and i64 %i.o, 31                         ; 2 uses
  %i.q = icmp eq i64 %i.p, 31
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.s
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %loop-unroll.iv = phi i32 [ %i.k, %.lr.ph.preheader ], [ %loop-unroll.iv.next, %bb.b ] ; 4 uses
  %indvar = phi i32 [ 0, %.lr.ph.preheader ], [ %indvar.next, %bb.b ] ; 2 uses
  %.sroa.0.077.i65 = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.preheader ], [ %i.n, %bb.b ] ; 3 uses
  %i.r = shl i32 %indvar, 1
  %i.s = add i32 %i.m, %i.r
  %i.t = icmp ult i32 %.sroa.0.077.i65, 7
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.loopexit59.i, !noalias !29303

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.077.i65, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.u = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.v = icmp ult i32 %i.u, 7
  br i1 %i.v, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29303
  tail call void @llvm.x86.sse2.pause(), !noalias !29303
  tail call void @llvm.x86.sse2.pause(), !noalias !29303
  tail call void @llvm.x86.sse2.pause(), !noalias !29303
  tail call void @llvm.x86.sse2.pause(), !noalias !29303
  tail call void @llvm.x86.sse2.pause(), !noalias !29303
  tail call void @llvm.x86.sse2.pause(), !noalias !29303
  tail call void @llvm.x86.sse2.pause(), !noalias !29303
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.079.i.lcssa = phi i64 [ %.sroa.03.0.ph84.i, %.lr.ph.i ], [ %i.x, %bb.b ] ; 2 uses
  %.sroa.07.078.i.lcssa = phi ptr [ %.sroa.07.0.ph83.i, %.lr.ph.i ], [ %i.y, %bb.b ] ; 2 uses
  %.sroa.0.077.i.lcssa = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.i ], [ %i.n, %bb.b ] ; 6 uses
  %.lcssa = phi i64 [ %i.i, %.lr.ph.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.w = icmp eq i64 %.lcssa, 30                  ; 2 uses
  %.not.i = icmp eq ptr %.sroa.038.0.ph81.i, null
  %or.cond.i = select i1 %i.w, i1 %.not.i, i1 false
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
  tail call void @llvm.x86.sse2.pause(), !noalias !29303
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !29306

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.x = load atomic i64, ptr %i.a acquire, align 128, !noalias !29303 ; 3 uses
  %i.y = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29303
  %i.z = and i64 %i.x, 1
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.b, label %.outer._crit_edge.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %._crit_edge
  %.sroa.038.2.i = phi ptr [ %.sroa.038.0.ph81.i, %._crit_edge ], [ %i.ac, %bb.e ] ; 9 uses
  %i.ab = icmp eq ptr %.sroa.07.078.i.lcssa, null
  br i1 %i.ab, label %bb.f, label %bb.l

bb.e:                                             ; preds = %._crit_edge
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29303
  %i.ac = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3488, i64 noundef 16) #48, !noalias !29303 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.noexc21.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i, !prof !6

.noexc21.i:                                       ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #55
          to label %.noexc unwind label %.body.thread24

.noexc:                                           ; preds = %.noexc21.i
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29303
  %i.ae = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3488, i64 noundef 16) #48, !noalias !29303 ; 6 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #55
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !29303

.noexc22.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ag = cmpxchg ptr %i.c, ptr null, ptr %i.ae release monotonic, align 8, !noalias !29303
  %i.ah = extractvalue { ptr, i1 } %i.ag, 1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.ae, ptr %i.g release, align 8, !noalias !29303
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ai = icmp eq ptr %.sroa.038.2.i, null
  br i1 %i.ai, label %.outer.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.2.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29303
  br label %.outer.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.07.1.i = phi ptr [ %.sroa.07.078.i.lcssa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ae, %bb.i ] ; 3 uses
  %i.aj = add i64 %.sroa.03.079.i.lcssa, 2
  %i.ak = cmpxchg weak ptr %i.a, i64 %.sroa.03.079.i.lcssa, i64 %i.aj seq_cst acquire, align 8, !noalias !29303
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.ak, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.077.i.lcssa, i32 6) ; 2 uses
  %i.al = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.077.i.lcssa, 0
  br i1 %.not.i27.i, label %.outer.backedge.i, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %bb.m
  %xtraiter157 = and i32 %i.al, 5                 ; 3 uses
  %i.am = icmp ult i32 %.sroa.0.077.i.lcssa, 3
  br i1 %i.am, label %.lr.ph.i28.i.epil.preheader, label %.lr.ph.i28.i.preheader.new

.lr.ph.i28.i.preheader.new:                       ; preds = %.lr.ph.i28.i.preheader
  %unroll_iter161 = and i32 %i.al, 56
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
  tail call void @llvm.x86.sse2.pause(), !noalias !29303
  %epil.iter158.next = add i32 %epil.iter158, 1   ; 2 uses
  %epil.iter158.cmp.not = icmp eq i32 %epil.iter158.next, %xtraiter157
  br i1 %epil.iter158.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil, !llvm.loop !29307

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i28.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.an = add i32 %.sroa.0.077.i.lcssa, 1
  br label %.outer.backedge.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i, %.lr.ph.i28.i.preheader.new
  %niter162 = phi i32 [ 0, %.lr.ph.i28.i.preheader.new ], [ %niter162.next.7, %.lr.ph.i28.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29303
  tail call void @llvm.x86.sse2.pause(), !noalias !29303
  tail call void @llvm.x86.sse2.pause(), !noalias !29303
  tail call void @llvm.x86.sse2.pause(), !noalias !29303
  tail call void @llvm.x86.sse2.pause(), !noalias !29303
  tail call void @llvm.x86.sse2.pause(), !noalias !29303
  tail call void @llvm.x86.sse2.pause(), !noalias !29303
  tail call void @llvm.x86.sse2.pause(), !noalias !29303
  %niter162.next.7 = add i32 %niter162, 8         ; 2 uses
  %niter162.ncmp.7 = icmp eq i32 %niter162.next.7, %unroll_iter161
  br i1 %niter162.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i28.i

bb.n:                                             ; preds = %bb.l
  br i1 %i.w, label %bb.o, label %.outer._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %.not16.i = icmp eq ptr %.sroa.038.2.i, null
  br i1 %.not16.i, label %bb.p, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread32, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #55
          to label %.noexc5 unwind label %.body.thread24

.noexc5:                                          ; preds = %bb.p
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread32: ; preds = %bb.o
  store atomic ptr %.sroa.038.2.i, ptr %i.c release, align 8, !noalias !29303
  %i.ao = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !29303 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 3472
  store atomic ptr %.sroa.038.2.i, ptr %i.ap release, align 8, !noalias !29303
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.012.0.copyload35 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx36, i64 88, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.m, %bb.k, %bb.j
  %.sroa.038.0.ph.be.i = phi ptr [ %i.ae, %bb.k ], [ %i.ae, %bb.j ], [ %.sroa.038.2.i, %bb.m ], [ %.sroa.038.2.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.077.i.lcssa, %bb.k ], [ %.sroa.0.077.i.lcssa, %bb.j ], [ 1, %bb.m ], [ %i.an, %._crit_edge.loopexit.i.i ]
  %i.aq = load atomic i64, ptr %i.a acquire, align 128, !noalias !29303 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29303
  %i.as = and i64 %i.aq, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i, label %.outer._crit_edge.i

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
  %i.au = icmp eq ptr %.sroa.038.1.ph.i, null
  br i1 %i.au, label %.body.thread, label %.thread50.i

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29303
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.48.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.av = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.av, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29303
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29311)
  %i.aw = icmp eq ptr %.sroa.48.0, null
  br i1 %i.aw, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread32, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.012.0.copyload39 = phi i64 [ %.sroa.012.0.copyload35, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread32 ], [ %.sroa.012.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.138 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread32 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.48.137 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread32 ], [ %.sroa.48.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ax = icmp samesign ult i64 %.sroa.9.138, 31
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [112 x i8], ptr %.sroa.48.137, i64 %.sroa.9.138 ; 3 uses
  store i64 %.sroa.012.0.copyload39, ptr %i.ay, align 16, !noalias !29308
  %.sroa.5.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !noalias !29308
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.ba = atomicrmw or ptr %i.az, i64 1 release, align 8, !noalias !29313 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bb) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.012.0.copyload31 = phi i64 [ %.sroa.012.0.copyload29, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.012.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !alias.scope !29313
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
  %i.bc = load i64, ptr %2, align 16, !range !635, !alias.scope !29314, !noundef !3
  %i.bd = icmp eq i64 %i.bc, -9223372036854775743
  br i1 %i.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.v

bb.v:                                             ; preds = %.body.thread
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %2)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
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
}

end_hunk_11
begin_hunk_12_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorEEINtNtBZ_3pin3PinIB1T_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv38 = phi i32 [ %loop-unroll.iv.next39, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %.sroa.0.02.i27.i = phi i32 [ %i.as, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %i.an = shl i32 %.sroa.0.02.i27.i, 1
  %i.ao = or i32 %i.an, 1
  %i.ap = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i26.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i27.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %i.aq = add i32 %loop-unroll.iv38, -1
  %xtraiter40 = and i32 %loop-unroll.iv38, 7      ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 7
  br i1 %i.ar, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter44 = and i32 %loop-unroll.iv38, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter45 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter45.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter45.next.7 = add i32 %niter45, 8           ; 2 uses
  %niter45.ncmp.7 = icmp eq i32 %niter45.next.7, %unroll_iter44
  br i1 %niter45.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod42.not = icmp eq i32 %xtraiter40, 0
  br i1 %lcmp.mod42.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod43 = icmp ne i32 %xtraiter40, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter41 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter41.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter41.next = add i32 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i32 %epil.iter41.next, %xtraiter40
  br i1 %epil.iter41.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29319

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.as = add i32 %.sroa.0.02.i27.i, 1
  %i.at = load atomic ptr, ptr %i.ak acquire, align 8
  %i.au = icmp eq ptr %i.at, null
  %loop-unroll.iv.next39 = add i32 %loop-unroll.iv38, %i.ao
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorEEINtNtBZ_3pin3PinIB1T_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorEEINtNtBZ_3pin3PinIB1T_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.av = load atomic ptr, ptr %i.ak acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.145.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 3984, i64 noundef 16) #48
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph48.i
  %i.aw = getelementptr inbounds nuw [128 x i8], ptr %.sroa.011.145.i, i64 %i.aj ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 112 ; 2 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8
  %i.az = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorEEINtNtBW_3pin3PinIB1Q_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %loop-unroll.iv30 = phi i32 [ %loop-unroll.iv.next31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.0.02.i29.i = phi i32 [ %i.bg, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %i.bb = shl i32 %.sroa.0.02.i29.i, 1
  %i.bc = or i32 %i.bb, 1
  %i.bd = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.be = add i32 %loop-unroll.iv30, -1
  %xtraiter32 = and i32 %loop-unroll.iv30, 7      ; 3 uses
  %i.bf = icmp ult i32 %i.be, 7
  br i1 %i.bf, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter36 = and i32 %loop-unroll.iv30, -8
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
  %niter37 = phi i32 [ 0, %.lr.ph.i.i32.i.preheader.new ], [ %niter37.next.7, %.lr.ph.i.i32.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter37.next.7 = add i32 %niter37, 8           ; 2 uses
  %niter37.ncmp.7 = icmp eq i32 %niter37.next.7, %unroll_iter36
  br i1 %niter37.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, label %.lr.ph.i.i32.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i32.i
  %lcmp.mod34.not = icmp eq i32 %xtraiter32, 0
  br i1 %lcmp.mod34.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil.preheader

.lr.ph.i.i32.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.preheader
  %lcmp.mod35 = icmp ne i32 %xtraiter32, 0
  tail call void @llvm.assume(i1 %lcmp.mod35)
  br label %.lr.ph.i.i32.i.epil

.lr.ph.i.i32.i.epil:                              ; preds = %.lr.ph.i.i32.i.epil, %.lr.ph.i.i32.i.epil.preheader
  %epil.iter33 = phi i32 [ 0, %.lr.ph.i.i32.i.epil.preheader ], [ %epil.iter33.next, %.lr.ph.i.i32.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter33.next = add i32 %epil.iter33, 1     ; 2 uses
  %epil.iter33.cmp.not = icmp eq i32 %epil.iter33.next, %xtraiter32
  br i1 %epil.iter33.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil, !llvm.loop !29320

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.epil, %bb.m, %bb.l
  %i.bg = add i32 %.sroa.0.02.i29.i, 1
  %i.bh = load atomic i64, ptr %i.ax acquire, align 8
  %i.bi = and i64 %i.bh, 1
  %i.bj = icmp eq i64 %i.bi, 0
  %loop-unroll.iv.next31 = add i32 %loop-unroll.iv30, %i.bc
  br i1 %i.bj, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorEEINtNtBW_3pin3PinIB1Q_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorEEINtNtBW_3pin3PinIB1Q_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, %bb.k
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB23_5error5ErrorEEINtNtB4_3pin3PinIB1q_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.aw)
  br label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorEEINtNtBW_3pin3PinIB1Q_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorEEINtNtBZ_3pin3PinIB1T_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.011.2.i = phi ptr [ %.sroa.011.145.i, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorEEINtNtBW_3pin3PinIB1Q_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.av, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorEEINtNtBZ_3pin3PinIB1T_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.bk = add i64 %.sroa.05.046.i, 2              ; 3 uses
  %i.bl = lshr i64 %i.bk, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.bl, %i.q
  br i1 %.not.i, label %._crit_edge49.i, label %.lr.ph48.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge49.i, %bb.g
  %i.bm = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bm, ptr %0 release, align 128
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
  call void @llvm.experimental.noalias.scope.decl(metadata !29321)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !29321 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !29321 ; 8 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29321
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
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
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
  call void @llvm.x86.sse2.pause(), !noalias !29321
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29324

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
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !29321 ; 3 uses
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
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29321
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
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
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
  call void @llvm.x86.sse2.pause(), !noalias !29321
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !29325

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !29321
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.am, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i, i32 6) ; 2 uses
  %i.an = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.034.i, 0
  br i1 %.not.i23.i, label %.backedge.i.backedge, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.o
  %xtraiter = and i32 %i.an, 5                    ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.034.i, 3
  br i1 %i.ao, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %i.an, 56
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
  call void @llvm.x86.sse2.pause(), !noalias !29321
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !29326

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ap = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.034.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ap, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.aq = icmp eq i64 %i.s, 30
  br i1 %i.aq, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 3968 ; 2 uses
  %i.as = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !29321 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorEEINtNtBZ_3pin3PinIB1T_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %.sroa.0.02.i28.i = phi i32 [ %i.az, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %i.au = shl i32 %.sroa.0.02.i28.i, 1
  %i.av = or i32 %i.au, 1
  %i.aw = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.aw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i27.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29321
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.s:                                             ; preds = %.lr.ph.i27.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i28.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.s
  %i.ax = add i32 %loop-unroll.iv, -1
  %xtraiter98 = and i32 %loop-unroll.iv, 7        ; 3 uses
  %i.ay = icmp ult i32 %i.ax, 7
  br i1 %i.ay, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter102 = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter103 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter103.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
  call void @llvm.x86.sse2.pause(), !noalias !29321
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
  call void @llvm.x86.sse2.pause(), !noalias !29321
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29327

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.az = add i32 %.sroa.0.02.i28.i, 1
  %i.ba = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !29321 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.av
  br i1 %i.bb, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorEEINtNtBZ_3pin3PinIB1T_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorEEINtNtBZ_3pin3PinIB1T_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.as, %bb.q ], [ %i.ba, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.bc = and i64 %.sroa.01.0.i, -2
  %i.bd = add i64 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 3968
  %i.bf = load atomic ptr, ptr %i.be monotonic, align 8, !noalias !29321
  %i.bg = icmp ne ptr %i.bf, null
  %i.bh = zext i1 %i.bg to i64
  %spec.select17.i = or disjoint i64 %i.bd, %i.bh
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !29321
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !29321
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  %i.bi = load i32, ptr %i.i, align 8, !range !28599, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bi, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorEEINtNtBZ_3pin3PinIB1T_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !29321
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !29321
  %i.bj = getelementptr inbounds nuw [128 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 112 ; 3 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8, !noalias !29328
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorEEINtNtBW_3pin3PinIB1Q_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %loop-unroll.iv104 = phi i32 [ %loop-unroll.iv.next105, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 4 uses
  %.sroa.0.02.i.i4 = phi i32 [ %i.bt, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 4 uses
  %i.bo = shl i32 %.sroa.0.02.i.i4, 1
  %i.bp = or i32 %i.bo, 1
  %i.bq = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29328
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5

bb.v:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.v
  %i.br = add i32 %loop-unroll.iv104, -1
  %xtraiter106 = and i32 %loop-unroll.iv104, 7    ; 3 uses
  %i.bs = icmp ult i32 %i.br, 7
  br i1 %i.bs, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter110 = and i32 %loop-unroll.iv104, -8
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter111 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter111.next.7, %.lr.ph.i.i.i7 ]
  call void @llvm.x86.sse2.pause(), !noalias !29328
  call void @llvm.x86.sse2.pause(), !noalias !29328
  call void @llvm.x86.sse2.pause(), !noalias !29328
  call void @llvm.x86.sse2.pause(), !noalias !29328
  call void @llvm.x86.sse2.pause(), !noalias !29328
  call void @llvm.x86.sse2.pause(), !noalias !29328
  call void @llvm.x86.sse2.pause(), !noalias !29328
  call void @llvm.x86.sse2.pause(), !noalias !29328
  %niter111.next.7 = add i32 %niter111, 8         ; 2 uses
  %niter111.ncmp.7 = icmp eq i32 %niter111.next.7, %unroll_iter110
  br i1 %niter111.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, label %.lr.ph.i.i.i7

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7
  %lcmp.mod108.not = icmp eq i32 %xtraiter106, 0
  br i1 %lcmp.mod108.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil.preheader

.lr.ph.i.i.i7.epil.preheader:                     ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.preheader
  %lcmp.mod109 = icmp ne i32 %xtraiter106, 0
  call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph.i.i.i7.epil

.lr.ph.i.i.i7.epil:                               ; preds = %.lr.ph.i.i.i7.epil, %.lr.ph.i.i.i7.epil.preheader
  %epil.iter107 = phi i32 [ 0, %.lr.ph.i.i.i7.epil.preheader ], [ %epil.iter107.next, %.lr.ph.i.i.i7.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !29328
  %epil.iter107.next = add i32 %epil.iter107, 1   ; 2 uses
  %epil.iter107.cmp.not = icmp eq i32 %epil.iter107.next, %xtraiter106
  br i1 %epil.iter107.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !29331
end_hunk_12
begin_hunk_13_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !29332
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3c_5error5ErrorEEINtNtB1E_3pin3PinIB2z_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ak:                                            ; preds = %bb.aq, %bb.ah
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56, !noalias !29332
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.ah, %bb.ag
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.do, %bb.ag ], [ %i.ec, %bb.ap ], [ %i.do, %bb.ah ], [ %i.ec, %bb.aq ]
  resume { ptr, i32 } %.pn.pn.i.i.i

bb.al:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !29332
  store ptr %i.dm, ptr %i.d, align 8, !noalias !29332
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store atomic i64 0, ptr %i.dw release, align 8, !noalias !29332
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store atomic ptr null, ptr %i.dx release, align 8, !noalias !29332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29332
  store ptr %i.g, ptr %i.b, align 8, !noalias !29332
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB7_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2C_5error5ErrorEEINtNtB14_3pin3PinIB1Z_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.dm)
          to label %bb.am unwind label %bb.ap, !noalias !29332

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29332
  %i.dy = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !29332, !noundef !3 ; 3 uses
  store ptr %i.dy, ptr %i.a, align 8, !noalias !29332
  store ptr %i.dm, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !29332
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ea = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !29364
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #58, !noalias !29332
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.ao, %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29332
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3c_5error5ErrorEEINtNtB1E_3pin3PinIB2z_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ap:                                            ; preds = %bb.al
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !29373
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.ak, !noalias !29332

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelTIB1t_INtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4y_5error5ErrorEEINtNtBZ_3pin3PinIB3V_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1G_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3e_5error5ErrorEEINtNtB1G_3pin3PinIB2B_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2d_NtNtB1G_6marker4SendEL_EEEE4recvs_0uEs0_0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.f), !noalias !29332
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3c_5error5ErrorEEINtNtB1E_3pin3PinIB2z_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3c_5error5ErrorEEINtNtB1E_3pin3PinIB2z_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelTIB1t_INtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4y_5error5ErrorEEINtNtBZ_3pin3PinIB3V_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29332
  br label %bb.b

bb.ar:                                            ; preds = %bb.ad
  %i.ef = extractvalue { i64, i32 } %i.df, 1      ; 2 uses
  %i.eg = icmp ult i32 %i.ef, 1000000000
  call void @llvm.assume(i1 %i.eg)
  %.not26 = icmp samesign ult i32 %i.ef, %i.bi
  br i1 %.not26, label %bb.ae, label %bb.at

bb.as:                                            ; preds = %bb.ad
  %.not25 = icmp slt i64 %i.dg, %i.de
  br i1 %.not25, label %bb.ae, label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.eh, align 8
  br label %bb.au

bb.au:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.av, %bb.at
  %storemerge = phi i64 [ -9223372036854775741, %bb.at ], [ %.sroa.018.0.copyload, %bb.av ], [ -9223372036854775741, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ei, align 8
  br label %bb.au

bb.av:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.419, i64 104, i1 false)
  br label %bb.au
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [104 x i8], align 8           ; 10 uses
  %.sroa.6 = alloca [104 x i8], align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !29380 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29380
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
  %.sroa.03.0.ph84.i = phi i64 [ %i.b, %.lr.ph.lr.ph.i ], [ %i.aq, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph83.i = phi ptr [ %i.d, %.lr.ph.lr.ph.i ], [ %i.ar, %.outer.backedge.i ]
  %.sroa.0.0.ph82.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 5 uses
  %.sroa.038.0.ph81.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.0.ph84.i, 1
  %i.i = and i64 %i.h, 31                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.k = mul i32 %.sroa.0.0.ph82.i, %.sroa.0.0.ph82.i
  %i.l = shl i32 %.sroa.0.0.ph82.i, 1
  %i.m = or i32 %i.l, 1
  br label %.lr.ph

bb.b:                                             ; preds = %.loopexit.i
  %i.n = add i32 %.sroa.0.077.i64, 1              ; 2 uses
  %i.o = lshr exact i64 %i.x, 1
  %i.p = and i64 %i.o, 31                         ; 2 uses
  %i.q = icmp eq i64 %i.p, 31
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.s
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %loop-unroll.iv = phi i32 [ %i.k, %.lr.ph.preheader ], [ %loop-unroll.iv.next, %bb.b ] ; 4 uses
  %indvar = phi i32 [ 0, %.lr.ph.preheader ], [ %indvar.next, %bb.b ] ; 2 uses
  %.sroa.0.077.i64 = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.preheader ], [ %i.n, %bb.b ] ; 3 uses
  %i.r = shl i32 %indvar, 1
  %i.s = add i32 %i.m, %i.r
  %i.t = icmp ult i32 %.sroa.0.077.i64, 7
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.loopexit59.i, !noalias !29380

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.077.i64, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.u = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.v = icmp ult i32 %i.u, 7
  br i1 %i.v, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29380
  tail call void @llvm.x86.sse2.pause(), !noalias !29380
  tail call void @llvm.x86.sse2.pause(), !noalias !29380
  tail call void @llvm.x86.sse2.pause(), !noalias !29380
  tail call void @llvm.x86.sse2.pause(), !noalias !29380
  tail call void @llvm.x86.sse2.pause(), !noalias !29380
  tail call void @llvm.x86.sse2.pause(), !noalias !29380
  tail call void @llvm.x86.sse2.pause(), !noalias !29380
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.079.i.lcssa = phi i64 [ %.sroa.03.0.ph84.i, %.lr.ph.i ], [ %i.x, %bb.b ] ; 2 uses
  %.sroa.07.078.i.lcssa = phi ptr [ %.sroa.07.0.ph83.i, %.lr.ph.i ], [ %i.y, %bb.b ] ; 2 uses
  %.sroa.0.077.i.lcssa = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.i ], [ %i.n, %bb.b ] ; 6 uses
  %.lcssa = phi i64 [ %i.i, %.lr.ph.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.w = icmp eq i64 %.lcssa, 30                  ; 2 uses
  %.not.i = icmp eq ptr %.sroa.038.0.ph81.i, null
  %or.cond.i = select i1 %i.w, i1 %.not.i, i1 false
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
  tail call void @llvm.x86.sse2.pause(), !noalias !29380
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !29383

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.x = load atomic i64, ptr %i.a acquire, align 128, !noalias !29380 ; 3 uses
  %i.y = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29380
  %i.z = and i64 %i.x, 1
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.b, label %.outer._crit_edge.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Y_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %._crit_edge
  %.sroa.038.2.i = phi ptr [ %.sroa.038.0.ph81.i, %._crit_edge ], [ %i.ac, %bb.e ] ; 9 uses
  %i.ab = icmp eq ptr %.sroa.07.078.i.lcssa, null
  br i1 %i.ab, label %bb.f, label %bb.l

bb.e:                                             ; preds = %._crit_edge
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29380
  %i.ac = tail call noalias noundef align 16 dereferenceable_or_null(3984) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3984, i64 noundef 16) #48, !noalias !29380 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.noexc21.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Y_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i, !prof !6

.noexc21.i:                                       ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3984) #55
          to label %.noexc unwind label %.body.thread23

.noexc:                                           ; preds = %.noexc21.i
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Y_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29380
  %i.ae = tail call noalias noundef align 16 dereferenceable_or_null(3984) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3984, i64 noundef 16) #48, !noalias !29380 ; 6 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3984) #55
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !29380

.noexc22.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ag = cmpxchg ptr %i.c, ptr null, ptr %i.ae release monotonic, align 8, !noalias !29380
  %i.ah = extractvalue { ptr, i1 } %i.ag, 1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.ae, ptr %i.g release, align 8, !noalias !29380
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ai = icmp eq ptr %.sroa.038.2.i, null
  br i1 %i.ai, label %.outer.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.2.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29380
  br label %.outer.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Y_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.07.1.i = phi ptr [ %.sroa.07.078.i.lcssa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Y_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ae, %bb.i ] ; 3 uses
  %i.aj = add i64 %.sroa.03.079.i.lcssa, 2
  %i.ak = cmpxchg weak ptr %i.a, i64 %.sroa.03.079.i.lcssa, i64 %i.aj seq_cst acquire, align 8, !noalias !29380
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.ak, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.077.i.lcssa, i32 6) ; 2 uses
  %i.al = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.077.i.lcssa, 0
  br i1 %.not.i27.i, label %.outer.backedge.i, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %bb.m
  %xtraiter156 = and i32 %i.al, 5                 ; 3 uses
  %i.am = icmp ult i32 %.sroa.0.077.i.lcssa, 3
  br i1 %i.am, label %.lr.ph.i28.i.epil.preheader, label %.lr.ph.i28.i.preheader.new

.lr.ph.i28.i.preheader.new:                       ; preds = %.lr.ph.i28.i.preheader
  %unroll_iter160 = and i32 %i.al, 56
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
  tail call void @llvm.x86.sse2.pause(), !noalias !29380
  %epil.iter157.next = add i32 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i32 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil, !llvm.loop !29384

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i28.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.an = add i32 %.sroa.0.077.i.lcssa, 1
  br label %.outer.backedge.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i, %.lr.ph.i28.i.preheader.new
  %niter161 = phi i32 [ 0, %.lr.ph.i28.i.preheader.new ], [ %niter161.next.7, %.lr.ph.i28.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29380
  tail call void @llvm.x86.sse2.pause(), !noalias !29380
  tail call void @llvm.x86.sse2.pause(), !noalias !29380
  tail call void @llvm.x86.sse2.pause(), !noalias !29380
  tail call void @llvm.x86.sse2.pause(), !noalias !29380
  tail call void @llvm.x86.sse2.pause(), !noalias !29380
  tail call void @llvm.x86.sse2.pause(), !noalias !29380
  tail call void @llvm.x86.sse2.pause(), !noalias !29380
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i28.i

bb.n:                                             ; preds = %bb.l
  br i1 %i.w, label %bb.o, label %.outer._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %.not16.i = icmp eq ptr %.sroa.038.2.i, null
  br i1 %.not16.i, label %bb.p, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #55
          to label %.noexc5 unwind label %.body.thread23

.noexc5:                                          ; preds = %bb.p
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31: ; preds = %bb.o
  store atomic ptr %.sroa.038.2.i, ptr %i.c release, align 8, !noalias !29380
  %i.ao = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !29380 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 3968
  store atomic ptr %.sroa.038.2.i, ptr %i.ap release, align 8, !noalias !29380
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx35, i64 104, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.m, %bb.k, %bb.j
  %.sroa.038.0.ph.be.i = phi ptr [ %i.ae, %bb.k ], [ %i.ae, %bb.j ], [ %.sroa.038.2.i, %bb.m ], [ %.sroa.038.2.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.077.i.lcssa, %bb.k ], [ %.sroa.0.077.i.lcssa, %bb.j ], [ 1, %bb.m ], [ %i.an, %._crit_edge.loopexit.i.i ]
  %i.aq = load atomic i64, ptr %i.a acquire, align 128, !noalias !29380 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29380
  %i.as = and i64 %i.aq, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i, label %.outer._crit_edge.i

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
  %i.au = icmp eq ptr %.sroa.038.1.ph.i, null
  br i1 %i.au, label %.body.thread, label %.thread50.i

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29380
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.av = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.av, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29380
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29388)
  %i.aw = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aw, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.47.136 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ax = icmp samesign ult i64 %.sroa.9.137, 31
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [128 x i8], ptr %.sroa.47.136, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.ay, align 16, !noalias !29385
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, i64 104, i1 false), !noalias !29385
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  %i.ba = atomicrmw or ptr %i.az, i64 1 release, align 8, !noalias !29390 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bb) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, i64 104, i1 false), !alias.scope !29390
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
  %i.bc = landingpad { ptr, i32 }
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
end_hunk_13
begin_hunk_14_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1U_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv38 = phi i32 [ %loop-unroll.iv.next39, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %.sroa.0.02.i27.i = phi i32 [ %i.as, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %i.an = shl i32 %.sroa.0.02.i27.i, 1
  %i.ao = or i32 %i.an, 1
  %i.ap = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i26.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i27.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %i.aq = add i32 %loop-unroll.iv38, -1
  %xtraiter40 = and i32 %loop-unroll.iv38, 7      ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 7
  br i1 %i.ar, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter44 = and i32 %loop-unroll.iv38, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter45 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter45.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter45.next.7 = add i32 %niter45, 8           ; 2 uses
  %niter45.ncmp.7 = icmp eq i32 %niter45.next.7, %unroll_iter44
  br i1 %niter45.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod42.not = icmp eq i32 %xtraiter40, 0
  br i1 %lcmp.mod42.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod43 = icmp ne i32 %xtraiter40, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter41 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter41.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter41.next = add i32 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i32 %epil.iter41.next, %xtraiter40
  br i1 %epil.iter41.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29393

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.as = add i32 %.sroa.0.02.i27.i, 1
  %i.at = load atomic ptr, ptr %i.ak acquire, align 8
  %i.au = icmp eq ptr %i.at, null
  %loop-unroll.iv.next39 = add i32 %loop-unroll.iv38, %i.ao
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1U_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1U_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.av = load atomic ptr, ptr %i.ak acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.145.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 4480, i64 noundef 16) #48
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph48.i
  %i.aw = getelementptr inbounds nuw [144 x i8], ptr %.sroa.011.145.i, i64 %i.aj ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 128 ; 2 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8
  %i.az = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1R_5error5ErrorEEINtNtBW_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %loop-unroll.iv30 = phi i32 [ %loop-unroll.iv.next31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.0.02.i29.i = phi i32 [ %i.bg, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %i.bb = shl i32 %.sroa.0.02.i29.i, 1
  %i.bc = or i32 %i.bb, 1
  %i.bd = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.be = add i32 %loop-unroll.iv30, -1
  %xtraiter32 = and i32 %loop-unroll.iv30, 7      ; 3 uses
  %i.bf = icmp ult i32 %i.be, 7
  br i1 %i.bf, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter36 = and i32 %loop-unroll.iv30, -8
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
  %niter37 = phi i32 [ 0, %.lr.ph.i.i32.i.preheader.new ], [ %niter37.next.7, %.lr.ph.i.i32.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter37.next.7 = add i32 %niter37, 8           ; 2 uses
  %niter37.ncmp.7 = icmp eq i32 %niter37.next.7, %unroll_iter36
  br i1 %niter37.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, label %.lr.ph.i.i32.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i32.i
  %lcmp.mod34.not = icmp eq i32 %xtraiter32, 0
  br i1 %lcmp.mod34.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil.preheader

.lr.ph.i.i32.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.preheader
  %lcmp.mod35 = icmp ne i32 %xtraiter32, 0
  tail call void @llvm.assume(i1 %lcmp.mod35)
  br label %.lr.ph.i.i32.i.epil

.lr.ph.i.i32.i.epil:                              ; preds = %.lr.ph.i.i32.i.epil, %.lr.ph.i.i32.i.epil.preheader
  %epil.iter33 = phi i32 [ 0, %.lr.ph.i.i32.i.epil.preheader ], [ %epil.iter33.next, %.lr.ph.i.i32.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter33.next = add i32 %epil.iter33, 1     ; 2 uses
  %epil.iter33.cmp.not = icmp eq i32 %epil.iter33.next, %xtraiter32
  br i1 %epil.iter33.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil, !llvm.loop !29394

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.epil, %bb.m, %bb.l
  %i.bg = add i32 %.sroa.0.02.i29.i, 1
  %i.bh = load atomic i64, ptr %i.ax acquire, align 8
  %i.bi = and i64 %i.bh, 1
  %i.bj = icmp eq i64 %i.bi, 0
  %loop-unroll.iv.next31 = add i32 %loop-unroll.iv30, %i.bc
  br i1 %i.bj, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1R_5error5ErrorEEINtNtBW_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1R_5error5ErrorEEINtNtBW_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, %bb.k
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1r_5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %i.aw)
  br label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1R_5error5ErrorEEINtNtBW_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1U_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.011.2.i = phi ptr [ %.sroa.011.145.i, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1R_5error5ErrorEEINtNtBW_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.av, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1U_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.bk = add i64 %.sroa.05.046.i, 2              ; 3 uses
  %i.bl = lshr i64 %i.bk, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.bl, %i.q
  br i1 %.not.i, label %._crit_edge49.i, label %.lr.ph48.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge49.i, %bb.g
  %i.bm = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bm, ptr %0 release, align 128
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
  call void @llvm.experimental.noalias.scope.decl(metadata !29395)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !29395 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !29395 ; 8 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29395
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
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
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
  call void @llvm.x86.sse2.pause(), !noalias !29395
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29398

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
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !29395 ; 3 uses
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
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29395
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
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
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
  call void @llvm.x86.sse2.pause(), !noalias !29395
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !29399

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !29395
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.am, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i, i32 6) ; 2 uses
  %i.an = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.034.i, 0
  br i1 %.not.i23.i, label %.backedge.i.backedge, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.o
  %xtraiter = and i32 %i.an, 5                    ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.034.i, 3
  br i1 %i.ao, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %i.an, 56
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
  call void @llvm.x86.sse2.pause(), !noalias !29395
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !29400

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ap = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.034.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ap, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.aq = icmp eq i64 %i.s, 30
  br i1 %i.aq, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 4464 ; 2 uses
  %i.as = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !29395 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1U_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %.sroa.0.02.i28.i = phi i32 [ %i.az, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %i.au = shl i32 %.sroa.0.02.i28.i, 1
  %i.av = or i32 %i.au, 1
  %i.aw = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.aw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i27.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29395
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.s:                                             ; preds = %.lr.ph.i27.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i28.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.s
  %i.ax = add i32 %loop-unroll.iv, -1
  %xtraiter98 = and i32 %loop-unroll.iv, 7        ; 3 uses
  %i.ay = icmp ult i32 %i.ax, 7
  br i1 %i.ay, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter102 = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter103 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter103.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
  call void @llvm.x86.sse2.pause(), !noalias !29395
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
  call void @llvm.x86.sse2.pause(), !noalias !29395
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29401

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.az = add i32 %.sroa.0.02.i28.i, 1
  %i.ba = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !29395 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.av
  br i1 %i.bb, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1U_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1U_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.as, %bb.q ], [ %i.ba, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.bc = and i64 %.sroa.01.0.i, -2
  %i.bd = add i64 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 4464
  %i.bf = load atomic ptr, ptr %i.be monotonic, align 8, !noalias !29395
  %i.bg = icmp ne ptr %i.bf, null
  %i.bh = zext i1 %i.bg to i64
  %spec.select17.i = or disjoint i64 %i.bd, %i.bh
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !29395
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !29395
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  %i.bi = load i32, ptr %i.i, align 8, !range !28599, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bi, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1U_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !29395
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !29395
  %i.bj = getelementptr inbounds nuw [144 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 128 ; 3 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8, !noalias !29402
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1R_5error5ErrorEEINtNtBW_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %loop-unroll.iv104 = phi i32 [ %loop-unroll.iv.next105, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 4 uses
  %.sroa.0.02.i.i4 = phi i32 [ %i.bt, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 4 uses
  %i.bo = shl i32 %.sroa.0.02.i.i4, 1
  %i.bp = or i32 %i.bo, 1
  %i.bq = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29402
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5

bb.v:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.v
  %i.br = add i32 %loop-unroll.iv104, -1
  %xtraiter106 = and i32 %loop-unroll.iv104, 7    ; 3 uses
  %i.bs = icmp ult i32 %i.br, 7
  br i1 %i.bs, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter110 = and i32 %loop-unroll.iv104, -8
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter111 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter111.next.7, %.lr.ph.i.i.i7 ]
  call void @llvm.x86.sse2.pause(), !noalias !29402
  call void @llvm.x86.sse2.pause(), !noalias !29402
  call void @llvm.x86.sse2.pause(), !noalias !29402
  call void @llvm.x86.sse2.pause(), !noalias !29402
  call void @llvm.x86.sse2.pause(), !noalias !29402
  call void @llvm.x86.sse2.pause(), !noalias !29402
  call void @llvm.x86.sse2.pause(), !noalias !29402
  call void @llvm.x86.sse2.pause(), !noalias !29402
  %niter111.next.7 = add i32 %niter111, 8         ; 2 uses
  %niter111.ncmp.7 = icmp eq i32 %niter111.next.7, %unroll_iter110
  br i1 %niter111.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, label %.lr.ph.i.i.i7

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7
  %lcmp.mod108.not = icmp eq i32 %xtraiter106, 0
  br i1 %lcmp.mod108.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil.preheader

.lr.ph.i.i.i7.epil.preheader:                     ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.preheader
  %lcmp.mod109 = icmp ne i32 %xtraiter106, 0
  call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph.i.i.i7.epil

.lr.ph.i.i.i7.epil:                               ; preds = %.lr.ph.i.i.i7.epil, %.lr.ph.i.i.i7.epil.preheader
  %epil.iter107 = phi i32 [ 0, %.lr.ph.i.i.i7.epil.preheader ], [ %epil.iter107.next, %.lr.ph.i.i.i7.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !29402
  %epil.iter107.next = add i32 %epil.iter107, 1   ; 2 uses
  %epil.iter107.cmp.not = icmp eq i32 %epil.iter107.next, %xtraiter106
  br i1 %epil.iter107.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !29405
end_hunk_14
begin_hunk_15_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !29406
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2A_5error5ErrorEEINtNtB1E_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ak:                                            ; preds = %bb.aq, %bb.ah
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56, !noalias !29406
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.ah, %bb.ag
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.do, %bb.ag ], [ %i.ec, %bb.ap ], [ %i.do, %bb.ah ], [ %i.ec, %bb.aq ]
  resume { ptr, i32 } %.pn.pn.i.i.i

bb.al:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !29406
  store ptr %i.dm, ptr %i.d, align 8, !noalias !29406
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store atomic i64 0, ptr %i.dw release, align 8, !noalias !29406
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store atomic ptr null, ptr %i.dx release, align 8, !noalias !29406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29406
  store ptr %i.g, ptr %i.b, align 8, !noalias !29406
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB7_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB20_5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.dm)
          to label %bb.am unwind label %bb.ap, !noalias !29406

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29406
  %i.dy = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !29406, !noundef !3 ; 3 uses
  store ptr %i.dy, ptr %i.a, align 8, !noalias !29406
  store ptr %i.dm, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !29406
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ea = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !29438
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #58, !noalias !29406
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.ao, %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29406
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2A_5error5ErrorEEINtNtB1E_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ap:                                            ; preds = %bb.al
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !29447
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.ak, !noalias !29406

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelTIB1t_INtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3W_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1G_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2C_5error5ErrorEEINtNtB1G_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2d_NtNtB1G_6marker4SendEL_EEEE4recvs_0uEs0_0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.f), !noalias !29406
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2A_5error5ErrorEEINtNtB1E_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2A_5error5ErrorEEINtNtB1E_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelTIB1t_INtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3W_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29406
  br label %bb.b

bb.ar:                                            ; preds = %bb.ad
  %i.ef = extractvalue { i64, i32 } %i.df, 1      ; 2 uses
  %i.eg = icmp ult i32 %i.ef, 1000000000
  call void @llvm.assume(i1 %i.eg)
  %.not26 = icmp samesign ult i32 %i.ef, %i.bi
  br i1 %.not26, label %bb.ae, label %bb.at

bb.as:                                            ; preds = %bb.ad
  %.not25 = icmp slt i64 %i.dg, %i.de
  br i1 %.not25, label %bb.ae, label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.eh, align 8
  br label %bb.au

bb.au:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.av, %bb.at
  %storemerge = phi i64 [ 3, %bb.at ], [ %.sroa.018.0.copyload, %bb.av ], [ 3, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ei, align 8
  br label %bb.au

bb.av:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.419, i64 120, i1 false)
  br label %bb.au
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(128) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [120 x i8], align 8           ; 10 uses
  %.sroa.6 = alloca [120 x i8], align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !29454 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29454
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
  %.sroa.03.0.ph84.i = phi i64 [ %i.b, %.lr.ph.lr.ph.i ], [ %i.aq, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph83.i = phi ptr [ %i.d, %.lr.ph.lr.ph.i ], [ %i.ar, %.outer.backedge.i ]
  %.sroa.0.0.ph82.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 5 uses
  %.sroa.038.0.ph81.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.0.ph84.i, 1
  %i.i = and i64 %i.h, 31                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.k = mul i32 %.sroa.0.0.ph82.i, %.sroa.0.0.ph82.i
  %i.l = shl i32 %.sroa.0.0.ph82.i, 1
  %i.m = or i32 %i.l, 1
  br label %.lr.ph

bb.b:                                             ; preds = %.loopexit.i
  %i.n = add i32 %.sroa.0.077.i64, 1              ; 2 uses
  %i.o = lshr exact i64 %i.x, 1
  %i.p = and i64 %i.o, 31                         ; 2 uses
  %i.q = icmp eq i64 %i.p, 31
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.s
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %loop-unroll.iv = phi i32 [ %i.k, %.lr.ph.preheader ], [ %loop-unroll.iv.next, %bb.b ] ; 4 uses
  %indvar = phi i32 [ 0, %.lr.ph.preheader ], [ %indvar.next, %bb.b ] ; 2 uses
  %.sroa.0.077.i64 = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.preheader ], [ %i.n, %bb.b ] ; 3 uses
  %i.r = shl i32 %indvar, 1
  %i.s = add i32 %i.m, %i.r
  %i.t = icmp ult i32 %.sroa.0.077.i64, 7
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.loopexit59.i, !noalias !29454

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.077.i64, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.u = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.v = icmp ult i32 %i.u, 7
  br i1 %i.v, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29454
  tail call void @llvm.x86.sse2.pause(), !noalias !29454
  tail call void @llvm.x86.sse2.pause(), !noalias !29454
  tail call void @llvm.x86.sse2.pause(), !noalias !29454
  tail call void @llvm.x86.sse2.pause(), !noalias !29454
  tail call void @llvm.x86.sse2.pause(), !noalias !29454
  tail call void @llvm.x86.sse2.pause(), !noalias !29454
  tail call void @llvm.x86.sse2.pause(), !noalias !29454
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.079.i.lcssa = phi i64 [ %.sroa.03.0.ph84.i, %.lr.ph.i ], [ %i.x, %bb.b ] ; 2 uses
  %.sroa.07.078.i.lcssa = phi ptr [ %.sroa.07.0.ph83.i, %.lr.ph.i ], [ %i.y, %bb.b ] ; 2 uses
  %.sroa.0.077.i.lcssa = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.i ], [ %i.n, %bb.b ] ; 6 uses
  %.lcssa = phi i64 [ %i.i, %.lr.ph.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.w = icmp eq i64 %.lcssa, 30                  ; 2 uses
  %.not.i = icmp eq ptr %.sroa.038.0.ph81.i, null
  %or.cond.i = select i1 %i.w, i1 %.not.i, i1 false
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
  tail call void @llvm.x86.sse2.pause(), !noalias !29454
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !29457

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.x = load atomic i64, ptr %i.a acquire, align 128, !noalias !29454 ; 3 uses
  %i.y = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29454
  %i.z = and i64 %i.x, 1
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.b, label %.outer._crit_edge.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2Q_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %._crit_edge
  %.sroa.038.2.i = phi ptr [ %.sroa.038.0.ph81.i, %._crit_edge ], [ %i.ac, %bb.e ] ; 9 uses
  %i.ab = icmp eq ptr %.sroa.07.078.i.lcssa, null
  br i1 %i.ab, label %bb.f, label %bb.l

bb.e:                                             ; preds = %._crit_edge
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29454
  %i.ac = tail call noalias noundef align 16 dereferenceable_or_null(4480) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 4480, i64 noundef 16) #48, !noalias !29454 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.noexc21.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2Q_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i, !prof !6

.noexc21.i:                                       ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 4480) #55
          to label %.noexc unwind label %.body.thread23

.noexc:                                           ; preds = %.noexc21.i
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2Q_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29454
  %i.ae = tail call noalias noundef align 16 dereferenceable_or_null(4480) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 4480, i64 noundef 16) #48, !noalias !29454 ; 6 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 4480) #55
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !29454

.noexc22.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ag = cmpxchg ptr %i.c, ptr null, ptr %i.ae release monotonic, align 8, !noalias !29454
  %i.ah = extractvalue { ptr, i1 } %i.ag, 1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.ae, ptr %i.g release, align 8, !noalias !29454
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ai = icmp eq ptr %.sroa.038.2.i, null
  br i1 %i.ai, label %.outer.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.2.i, i64 noundef 4480, i64 noundef 16) #48, !noalias !29454
  br label %.outer.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2Q_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.07.1.i = phi ptr [ %.sroa.07.078.i.lcssa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2Q_5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ae, %bb.i ] ; 3 uses
  %i.aj = add i64 %.sroa.03.079.i.lcssa, 2
  %i.ak = cmpxchg weak ptr %i.a, i64 %.sroa.03.079.i.lcssa, i64 %i.aj seq_cst acquire, align 8, !noalias !29454
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.ak, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.077.i.lcssa, i32 6) ; 2 uses
  %i.al = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.077.i.lcssa, 0
  br i1 %.not.i27.i, label %.outer.backedge.i, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %bb.m
  %xtraiter156 = and i32 %i.al, 5                 ; 3 uses
  %i.am = icmp ult i32 %.sroa.0.077.i.lcssa, 3
  br i1 %i.am, label %.lr.ph.i28.i.epil.preheader, label %.lr.ph.i28.i.preheader.new

.lr.ph.i28.i.preheader.new:                       ; preds = %.lr.ph.i28.i.preheader
  %unroll_iter160 = and i32 %i.al, 56
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
  tail call void @llvm.x86.sse2.pause(), !noalias !29454
  %epil.iter157.next = add i32 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i32 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil, !llvm.loop !29458

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i28.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.an = add i32 %.sroa.0.077.i.lcssa, 1
  br label %.outer.backedge.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i, %.lr.ph.i28.i.preheader.new
  %niter161 = phi i32 [ 0, %.lr.ph.i28.i.preheader.new ], [ %niter161.next.7, %.lr.ph.i28.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29454
  tail call void @llvm.x86.sse2.pause(), !noalias !29454
  tail call void @llvm.x86.sse2.pause(), !noalias !29454
  tail call void @llvm.x86.sse2.pause(), !noalias !29454
  tail call void @llvm.x86.sse2.pause(), !noalias !29454
  tail call void @llvm.x86.sse2.pause(), !noalias !29454
  tail call void @llvm.x86.sse2.pause(), !noalias !29454
  tail call void @llvm.x86.sse2.pause(), !noalias !29454
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i28.i

bb.n:                                             ; preds = %bb.l
  br i1 %i.w, label %bb.o, label %.outer._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %.not16.i = icmp eq ptr %.sroa.038.2.i, null
  br i1 %.not16.i, label %bb.p, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #55
          to label %.noexc5 unwind label %.body.thread23

.noexc5:                                          ; preds = %bb.p
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31: ; preds = %bb.o
  store atomic ptr %.sroa.038.2.i, ptr %i.c release, align 8, !noalias !29454
  %i.ao = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !29454 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 4464
  store atomic ptr %.sroa.038.2.i, ptr %i.ap release, align 8, !noalias !29454
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa_idx35, i64 120, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.m, %bb.k, %bb.j
  %.sroa.038.0.ph.be.i = phi ptr [ %i.ae, %bb.k ], [ %i.ae, %bb.j ], [ %.sroa.038.2.i, %bb.m ], [ %.sroa.038.2.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.077.i.lcssa, %bb.k ], [ %.sroa.0.077.i.lcssa, %bb.j ], [ 1, %bb.m ], [ %i.an, %._crit_edge.loopexit.i.i ]
  %i.aq = load atomic i64, ptr %i.a acquire, align 128, !noalias !29454 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29454
  %i.as = and i64 %i.aq, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i, label %.outer._crit_edge.i

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
  %i.au = icmp eq ptr %.sroa.038.1.ph.i, null
  br i1 %i.au, label %.body.thread, label %.thread50.i

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 4480, i64 noundef 16) #48, !noalias !29454
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.av = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.av, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 4480, i64 noundef 16) #48, !noalias !29454
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29462)
  %i.aw = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aw, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.47.136 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ax = icmp samesign ult i64 %.sroa.9.137, 31
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [144 x i8], ptr %.sroa.47.136, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.ay, align 16, !noalias !29459
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5, i64 120, i1 false), !noalias !29459
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.ba = atomicrmw or ptr %i.az, i64 1 release, align 8, !noalias !29464 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bb) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5, i64 120, i1 false), !alias.scope !29464
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
  %i.bc = landingpad { ptr, i32 }
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
end_hunk_15
begin_hunk_16_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv38 = phi i32 [ %loop-unroll.iv.next39, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %.sroa.0.02.i27.i = phi i32 [ %i.as, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %i.an = shl i32 %.sroa.0.02.i27.i, 1
  %i.ao = or i32 %i.an, 1
  %i.ap = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i26.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i27.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %i.aq = add i32 %loop-unroll.iv38, -1
  %xtraiter40 = and i32 %loop-unroll.iv38, 7      ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 7
  br i1 %i.ar, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter44 = and i32 %loop-unroll.iv38, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter45 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter45.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter45.next.7 = add i32 %niter45, 8           ; 2 uses
  %niter45.ncmp.7 = icmp eq i32 %niter45.next.7, %unroll_iter44
  br i1 %niter45.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod42.not = icmp eq i32 %xtraiter40, 0
  br i1 %lcmp.mod42.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod43 = icmp ne i32 %xtraiter40, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter41 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter41.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter41.next = add i32 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i32 %epil.iter41.next, %xtraiter40
  br i1 %epil.iter41.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29467

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.as = add i32 %.sroa.0.02.i27.i, 1
  %i.at = load atomic ptr, ptr %i.ak acquire, align 8
  %i.au = icmp eq ptr %i.at, null
  %loop-unroll.iv.next39 = add i32 %loop-unroll.iv38, %i.ao
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.av = load atomic ptr, ptr %i.ak acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.145.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 3984, i64 noundef 16) #48
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph48.i
  %i.aw = getelementptr inbounds nuw [128 x i8], ptr %.sroa.011.145.i, i64 %i.aj ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 112 ; 2 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8
  %i.az = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBW_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %loop-unroll.iv30 = phi i32 [ %loop-unroll.iv.next31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.0.02.i29.i = phi i32 [ %i.bg, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %i.bb = shl i32 %.sroa.0.02.i29.i, 1
  %i.bc = or i32 %i.bb, 1
  %i.bd = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.be = add i32 %loop-unroll.iv30, -1
  %xtraiter32 = and i32 %loop-unroll.iv30, 7      ; 3 uses
  %i.bf = icmp ult i32 %i.be, 7
  br i1 %i.bf, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter36 = and i32 %loop-unroll.iv30, -8
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
  %niter37 = phi i32 [ 0, %.lr.ph.i.i32.i.preheader.new ], [ %niter37.next.7, %.lr.ph.i.i32.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter37.next.7 = add i32 %niter37, 8           ; 2 uses
  %niter37.ncmp.7 = icmp eq i32 %niter37.next.7, %unroll_iter36
  br i1 %niter37.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, label %.lr.ph.i.i32.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i32.i
  %lcmp.mod34.not = icmp eq i32 %xtraiter32, 0
  br i1 %lcmp.mod34.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil.preheader

.lr.ph.i.i32.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.preheader
  %lcmp.mod35 = icmp ne i32 %xtraiter32, 0
  tail call void @llvm.assume(i1 %lcmp.mod35)
  br label %.lr.ph.i.i32.i.epil

.lr.ph.i.i32.i.epil:                              ; preds = %.lr.ph.i.i32.i.epil, %.lr.ph.i.i32.i.epil.preheader
  %epil.iter33 = phi i32 [ 0, %.lr.ph.i.i32.i.epil.preheader ], [ %epil.iter33.next, %.lr.ph.i.i32.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter33.next = add i32 %epil.iter33, 1     ; 2 uses
  %epil.iter33.cmp.not = icmp eq i32 %epil.iter33.next, %xtraiter32
  br i1 %epil.iter33.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil, !llvm.loop !29468

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.epil, %bb.m, %bb.l
  %i.bg = add i32 %.sroa.0.02.i29.i, 1
  %i.bh = load atomic i64, ptr %i.ax acquire, align 8
  %i.bi = and i64 %i.bh, 1
  %i.bj = icmp eq i64 %i.bi, 0
  %loop-unroll.iv.next31 = add i32 %loop-unroll.iv30, %i.bc
  br i1 %i.bj, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBW_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBW_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, %bb.k
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.aw)
  br label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBW_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.011.2.i = phi ptr [ %.sroa.011.145.i, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBW_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.av, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.bk = add i64 %.sroa.05.046.i, 2              ; 3 uses
  %i.bl = lshr i64 %i.bk, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.bl, %i.q
  br i1 %.not.i, label %._crit_edge49.i, label %.lr.ph48.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge49.i, %bb.g
  %i.bm = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bm, ptr %0 release, align 128
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
  call void @llvm.experimental.noalias.scope.decl(metadata !29469)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !29469 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !29469 ; 8 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29469
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
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
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
  call void @llvm.x86.sse2.pause(), !noalias !29469
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29472

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
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !29469 ; 3 uses
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
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29469
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
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
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
  call void @llvm.x86.sse2.pause(), !noalias !29469
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !29473

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !29469
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.am, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i, i32 6) ; 2 uses
  %i.an = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.034.i, 0
  br i1 %.not.i23.i, label %.backedge.i.backedge, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.o
  %xtraiter = and i32 %i.an, 5                    ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.034.i, 3
  br i1 %i.ao, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %i.an, 56
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
  call void @llvm.x86.sse2.pause(), !noalias !29469
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !29474

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ap = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.034.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ap, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.aq = icmp eq i64 %i.s, 30
  br i1 %i.aq, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 3968 ; 2 uses
  %i.as = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !29469 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %.sroa.0.02.i28.i = phi i32 [ %i.az, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %i.au = shl i32 %.sroa.0.02.i28.i, 1
  %i.av = or i32 %i.au, 1
  %i.aw = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.aw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i27.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29469
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.s:                                             ; preds = %.lr.ph.i27.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i28.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.s
  %i.ax = add i32 %loop-unroll.iv, -1
  %xtraiter98 = and i32 %loop-unroll.iv, 7        ; 3 uses
  %i.ay = icmp ult i32 %i.ax, 7
  br i1 %i.ay, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter102 = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter103 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter103.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
  call void @llvm.x86.sse2.pause(), !noalias !29469
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
  call void @llvm.x86.sse2.pause(), !noalias !29469
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29475

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.az = add i32 %.sroa.0.02.i28.i, 1
  %i.ba = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !29469 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.av
  br i1 %i.bb, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.as, %bb.q ], [ %i.ba, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.bc = and i64 %.sroa.01.0.i, -2
  %i.bd = add i64 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 3968
  %i.bf = load atomic ptr, ptr %i.be monotonic, align 8, !noalias !29469
  %i.bg = icmp ne ptr %i.bf, null
  %i.bh = zext i1 %i.bg to i64
  %spec.select17.i = or disjoint i64 %i.bd, %i.bh
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !29469
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !29469
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  %i.bi = load i32, ptr %i.i, align 8, !range !28599, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bi, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !29469
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !29469
  %i.bj = getelementptr inbounds nuw [128 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 112 ; 3 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8, !noalias !29476
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBW_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %loop-unroll.iv104 = phi i32 [ %loop-unroll.iv.next105, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 4 uses
  %.sroa.0.02.i.i4 = phi i32 [ %i.bt, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 4 uses
  %i.bo = shl i32 %.sroa.0.02.i.i4, 1
  %i.bp = or i32 %i.bo, 1
  %i.bq = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !29476
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5

bb.v:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.v
  %i.br = add i32 %loop-unroll.iv104, -1
  %xtraiter106 = and i32 %loop-unroll.iv104, 7    ; 3 uses
  %i.bs = icmp ult i32 %i.br, 7
  br i1 %i.bs, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter110 = and i32 %loop-unroll.iv104, -8
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter111 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter111.next.7, %.lr.ph.i.i.i7 ]
  call void @llvm.x86.sse2.pause(), !noalias !29476
  call void @llvm.x86.sse2.pause(), !noalias !29476
  call void @llvm.x86.sse2.pause(), !noalias !29476
  call void @llvm.x86.sse2.pause(), !noalias !29476
  call void @llvm.x86.sse2.pause(), !noalias !29476
  call void @llvm.x86.sse2.pause(), !noalias !29476
  call void @llvm.x86.sse2.pause(), !noalias !29476
  call void @llvm.x86.sse2.pause(), !noalias !29476
  %niter111.next.7 = add i32 %niter111, 8         ; 2 uses
  %niter111.ncmp.7 = icmp eq i32 %niter111.next.7, %unroll_iter110
  br i1 %niter111.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, label %.lr.ph.i.i.i7

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7
  %lcmp.mod108.not = icmp eq i32 %xtraiter106, 0
  br i1 %lcmp.mod108.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil.preheader

.lr.ph.i.i.i7.epil.preheader:                     ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.preheader
  %lcmp.mod109 = icmp ne i32 %xtraiter106, 0
  call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph.i.i.i7.epil

.lr.ph.i.i.i7.epil:                               ; preds = %.lr.ph.i.i.i7.epil, %.lr.ph.i.i.i7.epil.preheader
  %epil.iter107 = phi i32 [ 0, %.lr.ph.i.i.i7.epil.preheader ], [ %epil.iter107.next, %.lr.ph.i.i.i7.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !29476
  %epil.iter107.next = add i32 %epil.iter107, 1   ; 2 uses
  %epil.iter107.cmp.not = icmp eq i32 %epil.iter107.next, %xtraiter106
  br i1 %epil.iter107.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !29479
end_hunk_16
begin_hunk_17_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !29480
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB1E_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ak:                                            ; preds = %bb.aq, %bb.ah
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56, !noalias !29480
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.ah, %bb.ag
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.do, %bb.ag ], [ %i.ec, %bb.ap ], [ %i.do, %bb.ah ], [ %i.ec, %bb.aq ]
  resume { ptr, i32 } %.pn.pn.i.i.i

bb.al:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !29480
  store ptr %i.dm, ptr %i.d, align 8, !noalias !29480
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store atomic i64 0, ptr %i.dw release, align 8, !noalias !29480
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store atomic ptr null, ptr %i.dx release, align 8, !noalias !29480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29480
  store ptr %i.g, ptr %i.b, align 8, !noalias !29480
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB7_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.dm)
          to label %bb.am unwind label %bb.ap, !noalias !29480

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29480
  %i.dy = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !29480, !noundef !3 ; 3 uses
  store ptr %i.dy, ptr %i.a, align 8, !noalias !29480
  store ptr %i.dm, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !29480
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ea = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !29512
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #58, !noalias !29480
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.ao, %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29480
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB1E_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ap:                                            ; preds = %bb.al
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !29521
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.ak, !noalias !29480

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelTIB1t_INtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1G_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB1G_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2d_NtNtB1G_6marker4SendEL_EEEE4recvs_0uEs0_0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.f), !noalias !29480
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB1E_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB1E_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelTIB1t_INtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29480
  br label %bb.b

bb.ar:                                            ; preds = %bb.ad
  %i.ef = extractvalue { i64, i32 } %i.df, 1      ; 2 uses
  %i.eg = icmp ult i32 %i.ef, 1000000000
  call void @llvm.assume(i1 %i.eg)
  %.not26 = icmp samesign ult i32 %i.ef, %i.bi
  br i1 %.not26, label %bb.ae, label %bb.at

bb.as:                                            ; preds = %bb.ad
  %.not25 = icmp slt i64 %i.dg, %i.de
  br i1 %.not25, label %bb.ae, label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.eh, align 8
  br label %bb.au

bb.au:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.av, %bb.at
  %storemerge = phi i64 [ -9223372036854775741, %bb.at ], [ %.sroa.018.0.copyload, %bb.av ], [ -9223372036854775741, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ei, align 8
  br label %bb.au

bb.av:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.419, i64 104, i1 false)
  br label %bb.au
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [104 x i8], align 8           ; 10 uses
  %.sroa.6 = alloca [104 x i8], align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !29528 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29528
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
  %.sroa.03.0.ph84.i = phi i64 [ %i.b, %.lr.ph.lr.ph.i ], [ %i.aq, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph83.i = phi ptr [ %i.d, %.lr.ph.lr.ph.i ], [ %i.ar, %.outer.backedge.i ]
  %.sroa.0.0.ph82.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 5 uses
  %.sroa.038.0.ph81.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.0.ph84.i, 1
  %i.i = and i64 %i.h, 31                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.k = mul i32 %.sroa.0.0.ph82.i, %.sroa.0.0.ph82.i
  %i.l = shl i32 %.sroa.0.0.ph82.i, 1
  %i.m = or i32 %i.l, 1
  br label %.lr.ph

bb.b:                                             ; preds = %.loopexit.i
  %i.n = add i32 %.sroa.0.077.i64, 1              ; 2 uses
  %i.o = lshr exact i64 %i.x, 1
  %i.p = and i64 %i.o, 31                         ; 2 uses
  %i.q = icmp eq i64 %i.p, 31
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.s
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %loop-unroll.iv = phi i32 [ %i.k, %.lr.ph.preheader ], [ %loop-unroll.iv.next, %bb.b ] ; 4 uses
  %indvar = phi i32 [ 0, %.lr.ph.preheader ], [ %indvar.next, %bb.b ] ; 2 uses
  %.sroa.0.077.i64 = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.preheader ], [ %i.n, %bb.b ] ; 3 uses
  %i.r = shl i32 %indvar, 1
  %i.s = add i32 %i.m, %i.r
  %i.t = icmp ult i32 %.sroa.0.077.i64, 7
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.loopexit59.i, !noalias !29528

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.077.i64, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.u = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.v = icmp ult i32 %i.u, 7
  br i1 %i.v, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29528
  tail call void @llvm.x86.sse2.pause(), !noalias !29528
  tail call void @llvm.x86.sse2.pause(), !noalias !29528
  tail call void @llvm.x86.sse2.pause(), !noalias !29528
  tail call void @llvm.x86.sse2.pause(), !noalias !29528
  tail call void @llvm.x86.sse2.pause(), !noalias !29528
  tail call void @llvm.x86.sse2.pause(), !noalias !29528
  tail call void @llvm.x86.sse2.pause(), !noalias !29528
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.079.i.lcssa = phi i64 [ %.sroa.03.0.ph84.i, %.lr.ph.i ], [ %i.x, %bb.b ] ; 2 uses
  %.sroa.07.078.i.lcssa = phi ptr [ %.sroa.07.0.ph83.i, %.lr.ph.i ], [ %i.y, %bb.b ] ; 2 uses
  %.sroa.0.077.i.lcssa = phi i32 [ %.sroa.0.0.ph82.i, %.lr.ph.i ], [ %i.n, %bb.b ] ; 6 uses
  %.lcssa = phi i64 [ %i.i, %.lr.ph.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.w = icmp eq i64 %.lcssa, 30                  ; 2 uses
  %.not.i = icmp eq ptr %.sroa.038.0.ph81.i, null
  %or.cond.i = select i1 %i.w, i1 %.not.i, i1 false
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
  tail call void @llvm.x86.sse2.pause(), !noalias !29528
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !29531

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.x = load atomic i64, ptr %i.a acquire, align 128, !noalias !29528 ; 3 uses
  %i.y = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29528
  %i.z = and i64 %i.x, 1
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.b, label %.outer._crit_edge.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %._crit_edge
  %.sroa.038.2.i = phi ptr [ %.sroa.038.0.ph81.i, %._crit_edge ], [ %i.ac, %bb.e ] ; 9 uses
  %i.ab = icmp eq ptr %.sroa.07.078.i.lcssa, null
  br i1 %i.ab, label %bb.f, label %bb.l

bb.e:                                             ; preds = %._crit_edge
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29528
  %i.ac = tail call noalias noundef align 16 dereferenceable_or_null(3984) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3984, i64 noundef 16) #48, !noalias !29528 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.noexc21.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i, !prof !6

.noexc21.i:                                       ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3984) #55
          to label %.noexc unwind label %.body.thread23

.noexc:                                           ; preds = %.noexc21.i
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29528
  %i.ae = tail call noalias noundef align 16 dereferenceable_or_null(3984) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 4481) 3984, i64 noundef 16) #48, !noalias !29528 ; 6 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3984) #55
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !29528

.noexc22.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ag = cmpxchg ptr %i.c, ptr null, ptr %i.ae release monotonic, align 8, !noalias !29528
  %i.ah = extractvalue { ptr, i1 } %i.ag, 1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.ae, ptr %i.g release, align 8, !noalias !29528
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ai = icmp eq ptr %.sroa.038.2.i, null
  br i1 %i.ai, label %.outer.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.2.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29528
  br label %.outer.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.07.1.i = phi ptr [ %.sroa.07.078.i.lcssa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockTIBH_INtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinIB13_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2s_NtNtB4_6marker4SendEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ae, %bb.i ] ; 3 uses
  %i.aj = add i64 %.sroa.03.079.i.lcssa, 2
  %i.ak = cmpxchg weak ptr %i.a, i64 %.sroa.03.079.i.lcssa, i64 %i.aj seq_cst acquire, align 8, !noalias !29528
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.ak, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.077.i.lcssa, i32 6) ; 2 uses
  %i.al = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.077.i.lcssa, 0
  br i1 %.not.i27.i, label %.outer.backedge.i, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %bb.m
  %xtraiter156 = and i32 %i.al, 5                 ; 3 uses
  %i.am = icmp ult i32 %.sroa.0.077.i.lcssa, 3
  br i1 %i.am, label %.lr.ph.i28.i.epil.preheader, label %.lr.ph.i28.i.preheader.new

.lr.ph.i28.i.preheader.new:                       ; preds = %.lr.ph.i28.i.preheader
  %unroll_iter160 = and i32 %i.al, 56
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
  tail call void @llvm.x86.sse2.pause(), !noalias !29528
  %epil.iter157.next = add i32 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i32 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i28.i.epil, !llvm.loop !29532

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i28.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.an = add i32 %.sroa.0.077.i.lcssa, 1
  br label %.outer.backedge.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i, %.lr.ph.i28.i.preheader.new
  %niter161 = phi i32 [ 0, %.lr.ph.i28.i.preheader.new ], [ %niter161.next.7, %.lr.ph.i28.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !29528
  tail call void @llvm.x86.sse2.pause(), !noalias !29528
  tail call void @llvm.x86.sse2.pause(), !noalias !29528
  tail call void @llvm.x86.sse2.pause(), !noalias !29528
  tail call void @llvm.x86.sse2.pause(), !noalias !29528
  tail call void @llvm.x86.sse2.pause(), !noalias !29528
  tail call void @llvm.x86.sse2.pause(), !noalias !29528
  tail call void @llvm.x86.sse2.pause(), !noalias !29528
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i28.i

bb.n:                                             ; preds = %bb.l
  br i1 %i.w, label %bb.o, label %.outer._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %.not16.i = icmp eq ptr %.sroa.038.2.i, null
  br i1 %.not16.i, label %bb.p, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, !prof !6

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #55
          to label %.noexc5 unwind label %.body.thread23

.noexc5:                                          ; preds = %bb.p
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31: ; preds = %bb.o
  store atomic ptr %.sroa.038.2.i, ptr %i.c release, align 8, !noalias !29528
  %i.ao = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !29528 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 3968
  store atomic ptr %.sroa.038.2.i, ptr %i.ap release, align 8, !noalias !29528
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx35, i64 104, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.m, %bb.k, %bb.j
  %.sroa.038.0.ph.be.i = phi ptr [ %i.ae, %bb.k ], [ %i.ae, %bb.j ], [ %.sroa.038.2.i, %bb.m ], [ %.sroa.038.2.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.077.i.lcssa, %bb.k ], [ %.sroa.0.077.i.lcssa, %bb.j ], [ 1, %bb.m ], [ %i.an, %._crit_edge.loopexit.i.i ]
  %i.aq = load atomic i64, ptr %i.a acquire, align 128, !noalias !29528 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.c acquire, align 8, !noalias !29528
  %i.as = and i64 %i.aq, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i, label %.outer._crit_edge.i

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
  %i.au = icmp eq ptr %.sroa.038.1.ph.i, null
  br i1 %i.au, label %.body.thread, label %.thread50.i

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29528
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.av = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.av, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29528
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29536)
  %i.aw = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aw, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.47.136 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ax = icmp samesign ult i64 %.sroa.9.137, 31
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [128 x i8], ptr %.sroa.47.136, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.ay, align 16, !noalias !29533
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, i64 104, i1 false), !noalias !29533
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  %i.ba = atomicrmw or ptr %i.az, i64 1 release, align 8, !noalias !29538 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bb) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, i64 104, i1 false), !alias.scope !29538
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
  %i.bc = landingpad { ptr, i32 }
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
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecNtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown10PushedDownEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtB10_25ChildFilterPushdownResultENCNvMs2_B10_INtB10_25FilterPushdownPropagationINtNtB8_4sync3ArcDNtNtB12_14execution_plan13ExecutionPlanEL_EE6if_all0EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
end_hunk_17
