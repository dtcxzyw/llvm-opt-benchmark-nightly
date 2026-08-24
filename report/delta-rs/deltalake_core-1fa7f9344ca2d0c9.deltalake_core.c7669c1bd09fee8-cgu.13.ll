Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.13?download=true
inline.NumInlined: 13443
inline.NumDeleted: 3890
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
bb.j:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.m, align 8, !noundef !4
  %i.an = add i64 %i.am, %i.v
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.an, %bb.j ], [ %i.ab, %bb.f ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27800)
  %i.ao = load i64, ptr %i.z, align 16, !range !1400, !alias.scope !27800, !noundef !4
  %i.ap = icmp eq i64 %i.ao, -9223372036854775743
  br i1 %i.ap, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !27800 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.val1.i.i = load ptr, ptr %i.ar, align 16, !alias.scope !27800, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.as = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !27800 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.as(ptr noundef nonnull %.val.i.i)
          to label %bb.n unwind label %bb.p, !noalias !27800

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !16, !invariant.load !4, !noalias !27800 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_IB1j_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2W_5error5ErrorENtNtB4_6marker4SendEL_EEB3R_EECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !range !3, !invariant.load !4, !noalias !27800
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.au, i64 noundef range(i64 1, 536870913) %i.ax) #40, !noalias !27800
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_IB1j_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2W_5error5ErrorENtNtB4_6marker4SendEL_EEB3R_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.p:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !16, !invariant.load !4, !noalias !27800 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultIBy_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2j_5error5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !3, !invariant.load !4, !noalias !27800
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.ba, i64 noundef range(i64 1, 536870913) %i.bd) #40, !noalias !27800
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultIBy_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2j_5error5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultIBy_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2j_5error5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i.i.i: ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %i.ay

bb.r:                                             ; preds = %bb.k
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.z)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_IB1j_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2W_5error5ErrorENtNtB4_6marker4SendEL_EEB3R_EECs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4recvCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [96 x i8], align 16               ; 4 uses
  %i.h = alloca [96 x i8], align 16               ; 6 uses
  %.sroa.4 = alloca [88 x i8], align 8            ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_IB2s_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB46_5error5ErrorENtNtB1D_6marker4SendEL_EEB51_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !27803)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, %bb.b
  %.sroa.0.029.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.029.i.be, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge ] ; 14 uses
  %i.u = load atomic i64, ptr %1 monotonic, align 128, !noalias !27803 ; 7 uses
  %i.v = load i64, ptr %i.m, align 16, !noalias !27803, !noundef !4
  %i.w = add i64 %i.v, -1
  %i.x = and i64 %i.w, %i.u                       ; 3 uses
  %i.y = load i64, ptr %i.n, align 8, !noalias !27803, !noundef !4
  %i.z = sub i64 0, %i.y
  %i.aa = and i64 %i.u, %i.z
  %i.ab = load ptr, ptr %i.o, align 8, !noalias !27803, !nonnull !4, !noundef !4
  %i.ac = load i64, ptr %i.p, align 32, !noalias !27803, !noundef !4
  %i.ad = icmp ult i64 %i.x, %i.ac
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [112 x i8], ptr %i.ab, i64 %i.x ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ag = load atomic i64, ptr %i.af acquire, align 8, !noalias !27803 ; 3 uses
  %i.ah = add i64 %i.u, 1
  %i.ai = icmp eq i64 %i.ah, %i.ag
  br i1 %i.ai, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.aj = icmp eq i64 %i.ag, %i.u
  br i1 %i.aj, label %bb.h, label %bb.e

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.ak = add nuw i64 %i.x, 1
  %i.al = load i64, ptr %i.r, align 128, !noalias !27803, !noundef !4
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.an = icmp ult i32 %.sroa.0.029.i, 7
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !27803
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.ao = mul nuw i32 %.sroa.0.029.i, %.sroa.0.029.i ; 2 uses
  %xtraiter = and i32 %i.ao, 7                    ; 3 uses
  %i.ap = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.ap, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ao, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !27803
  call void @llvm.x86.sse2.pause(), !noalias !27803
  call void @llvm.x86.sse2.pause(), !noalias !27803
  call void @llvm.x86.sse2.pause(), !noalias !27803
  call void @llvm.x86.sse2.pause(), !noalias !27803
  call void @llvm.x86.sse2.pause(), !noalias !27803
  call void @llvm.x86.sse2.pause(), !noalias !27803
  call void @llvm.x86.sse2.pause(), !noalias !27803
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod65 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !27803
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !27806

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.aq = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.ar = load atomic i64, ptr %i.q monotonic, align 128, !noalias !27803 ; 2 uses
  %i.as = load i64, ptr %i.m, align 16, !noalias !27803, !noundef !4 ; 2 uses
  %i.at = xor i64 %i.as, -1
  %i.au = and i64 %i.ar, %i.at
  %i.av = icmp eq i64 %i.au, %i.u
  br i1 %i.av, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter66 = and i32 %4, 5                     ; 3 uses
  %i.aw = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.aw, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter70 = and i32 %4, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod68.not = icmp eq i32 %xtraiter66, 0
  br i1 %lcmp.mod68.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod69 = icmp ne i32 %xtraiter66, 0
  call void @llvm.assume(i1 %lcmp.mod69)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter67 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter67.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !27803
  %epil.iter67.next = add i32 %epil.iter67, 1     ; 2 uses
  %epil.iter67.cmp.not = icmp eq i32 %epil.iter67.next, %xtraiter66
  br i1 %epil.iter67.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !27807

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ax = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter71 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter71.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !27803
  call void @llvm.x86.sse2.pause(), !noalias !27803
  call void @llvm.x86.sse2.pause(), !noalias !27803
  call void @llvm.x86.sse2.pause(), !noalias !27803
  call void @llvm.x86.sse2.pause(), !noalias !27803
  call void @llvm.x86.sse2.pause(), !noalias !27803
  call void @llvm.x86.sse2.pause(), !noalias !27803
  call void @llvm.x86.sse2.pause(), !noalias !27803
  %niter71.next.7 = add i32 %niter71, 8           ; 2 uses
  %niter71.ncmp.7 = icmp eq i32 %niter71.next.7, %unroll_iter70
  br i1 %niter71.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

bb.j:                                             ; preds = %bb.h
  %i.ay = and i64 %i.as, %i.ar
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_recvCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %bb.d
  %i.ba = load i64, ptr %i.n, align 8, !noalias !27803, !noundef !4
  %i.bb = add i64 %i.ba, %i.aa
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.bb, %bb.k ], [ %i.ag, %bb.d ]
  %i.bc = cmpxchg weak ptr %1, i64 %i.u, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !27803
  %i.bd = extractvalue { i64, i1 } %i.bc, 1
  br i1 %i.bd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter72 = and i32 %5, 5                     ; 3 uses
  %i.be = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.be, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter76 = and i32 %5, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod74.not = icmp eq i32 %xtraiter72, 0
  br i1 %lcmp.mod74.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod75 = icmp ne i32 %xtraiter72, 0
  call void @llvm.assume(i1 %lcmp.mod75)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter73 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter73.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !27803
  %epil.iter73.next = add i32 %epil.iter73, 1     ; 2 uses
  %epil.iter73.cmp.not = icmp eq i32 %epil.iter73.next, %xtraiter72
  br i1 %epil.iter73.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !27808

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bf = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.029.i.be = phi i32 [ %i.aq, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bf, %._crit_edge.loopexit.i20.i ], [ %i.ax, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter77 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter77.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !27803
  call void @llvm.x86.sse2.pause(), !noalias !27803
  call void @llvm.x86.sse2.pause(), !noalias !27803
  call void @llvm.x86.sse2.pause(), !noalias !27803
  call void @llvm.x86.sse2.pause(), !noalias !27803
  call void @llvm.x86.sse2.pause(), !noalias !27803
  call void @llvm.x86.sse2.pause(), !noalias !27803
  call void @llvm.x86.sse2.pause(), !noalias !27803
  %niter77.next.7 = add i32 %niter77, 8           ; 2 uses
  %niter77.ncmp.7 = icmp eq i32 %niter77.next.7, %unroll_iter76
  br i1 %niter77.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.j
  %i.bg = load i32, ptr %i.k, align 8, !range !12185, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bg, 1000000000
  br i1 %.not, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  store ptr %i.ae, ptr %i.i, align 8, !alias.scope !27803
  %i.bi = load i64, ptr %i.n, align 8, !noalias !27803, !noundef !4
  %i.bj = add i64 %i.bi, %i.u                     ; 2 uses
  store i64 %i.bj, ptr %i.l, align 8, !alias.scope !27803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !27809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.g, ptr noundef nonnull align 16 dereferenceable(96) %i.ae, i64 96, i1 false), !noalias !27809
  store atomic i64 %i.bj, ptr %i.bh release, align 16, !noalias !27809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.h, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !27809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bk)
          to label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4readCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.o, !noalias !27809

bb.o:                                             ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_IB1j_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2W_5error5ErrorENtNtB4_6marker4SendEL_EEB3R_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.h) #46
          to label %common.resume unwind label %bb.p, !noalias !27809

bb.p:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !27809
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.u, %bb.ac, %bb.ad, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.o ], [ %i.by, %bb.t ], [ %i.cm, %bb.ac ], [ %i.by, %bb.u ], [ %i.cm, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4readCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.n
  %.sroa.0.0.copyload2 = load i64, ptr %i.h, align 16 ; 2 uses
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx3, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !27809
  %i.bn = icmp eq i64 %.sroa.0.0.copyload2, -9223372036854775742
  br i1 %i.bn, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.ah

bb.q:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_recvCs14kWLkQVSKO_14deltalake_core.exit
  %i.bo = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.bp = call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.bq = extractvalue { i64, i32 } %i.bp, 0      ; 2 uses
  %i.br = icmp eq i64 %i.bq, %i.bo
  br i1 %i.br, label %.split, label %bb.ae

bb.r:                                             ; preds = %.split, %bb.ae, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_recvCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !27812
  store ptr %i.i, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.45.0..sroa_idx, align 8
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bs = load i8, ptr %i.t, align 8, !range !102, !noalias !27815, !noundef !4
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !240

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.r
  %i.bu = call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.s, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !27812 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_IB45_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB5J_5error5ErrorENtNtBZ_6marker4SendEL_EEB6E_EE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.r
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bu, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.s, %bb.r ] ; 4 uses
  %i.bw = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !27812, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !27812
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %bb.s, label %bb.y, !prof !52

bb.s:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27812
  %i.bx = call noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !27812 ; 2 uses
  store ptr %i.bx, ptr %i.e, align 8, !noalias !27812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27812
  store ptr %i.i, ptr %i.c, align 8, !noalias !27812
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_IB1S_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3v_5error5ErrorENtNtB13_6marker4SendEL_EEB4q_EE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bx)
          to label %bb.v unwind label %bb.t, !noalias !27812

bb.t:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27822)
  call void @llvm.experimental.noalias.scope.decl(metadata !27825)
  call void @llvm.experimental.noalias.scope.decl(metadata !27828)
  %i.bz = load ptr, ptr %i.e, align 8, !alias.scope !27831, !noalias !27812, !nonnull !4, !noundef !4
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !27832
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.u, label %common.resume

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %common.resume unwind label %bb.x, !noalias !27812

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27812
  call void @llvm.experimental.noalias.scope.decl(metadata !27833)
  call void @llvm.experimental.noalias.scope.decl(metadata !27836)
  call void @llvm.experimental.noalias.scope.decl(metadata !27839)
  %i.cc = load ptr, ptr %i.e, align 8, !alias.scope !27842, !noalias !27812, !nonnull !4, !noundef !4
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !27843
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45, !noalias !27812
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !27812
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_IB2s_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB46_5error5ErrorENtNtB1D_6marker4SendEL_EEB51_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %bb.ad, %bb.u
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !27812
  unreachable

bb.y:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !27812
  store ptr %i.bw, ptr %i.d, align 8, !noalias !27812
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store atomic i64 0, ptr %i.cg release, align 8, !noalias !27812
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store atomic ptr null, ptr %i.ch release, align 8, !noalias !27812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27812
  store ptr %i.i, ptr %i.b, align 8, !noalias !27812
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_IB1S_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3v_5error5ErrorENtNtB13_6marker4SendEL_EEB4q_EE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bw)
          to label %bb.z unwind label %bb.ac, !noalias !27812

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27812
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !27812, !noundef !4 ; 3 uses
  store ptr %i.ci, ptr %i.a, align 8, !noalias !27812
  store ptr %i.bw, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !27812
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !27844
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !27812
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_IB2s_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB46_5error5ErrorENtNtB1D_6marker4SendEL_EEB51_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ac:                                            ; preds = %bb.y
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !27853
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.ad, label %common.resume

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #45
          to label %common.resume unwind label %bb.x, !noalias !27812

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_IB45_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB5J_5error5ErrorENtNtBZ_6marker4SendEL_EEB6E_EE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1B_IB2u_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB48_5error5ErrorENtNtB1F_6marker4SendEL_EEB53_EE4recvs_0uEs0_0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.f), !noalias !27812
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_IB2s_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB46_5error5ErrorENtNtB1D_6marker4SendEL_EEB51_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_IB2s_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB46_5error5ErrorENtNtB1D_6marker4SendEL_EEB51_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_IB45_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB5J_5error5ErrorENtNtBZ_6marker4SendEL_EEB6E_EE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !27812
  br label %bb.b

.split:                                           ; preds = %bb.q
  %i.cp = extractvalue { i64, i32 } %i.bp, 1      ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 1000000000
  call void @llvm.assume(i1 %i.cq)
  %.not18 = icmp samesign ult i32 %i.cp, %i.bg
  br i1 %.not18, label %bb.r, label %bb.af

bb.ae:                                            ; preds = %bb.q
  %.not17 = icmp slt i64 %i.bq, %i.bo
  br i1 %.not17, label %bb.r, label %bb.af

bb.af:                                            ; preds = %.split, %bb.ae
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cr, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.ah, %bb.af
  %storemerge = phi i64 [ -9223372036854775742, %bb.af ], [ %.sroa.0.0.copyload2, %bb.ah ], [ -9223372036854775742, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cs, align 8
  br label %bb.ag

bb.ah:                                            ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, i64 88, i1 false)
  br label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !noalias !27860 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !noalias !27860, !noundef !4 ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ag
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cv, %bb.ag ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.cu, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !27863)
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bd, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ]
  %.sroa.02.034.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 8 uses
  %.sroa.0.02933.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1
  %i.aa = and i64 %i.z, %.sroa.02.034.i           ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !noalias !27863, !noundef !4
  %i.ac = sub i64 0, %i.ab
  %i.ad = and i64 %.sroa.02.034.i, %i.ac
  %i.ae = load ptr, ptr %i.r, align 8, !noalias !27863, !nonnull !4, !noundef !4
  %i.af = load i64, ptr %i.s, align 32, !noalias !27863, !noundef !4
  %i.ag = icmp ult i64 %i.aa, %i.af
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %i.aa ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8, !noalias !27863 ; 2 uses
  %i.ak = icmp eq i64 %.sroa.02.034.i, %i.aj
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = load i64, ptr %i.q, align 8, !noalias !27863, !noundef !4
  %i.am = add i64 %i.al, %i.aj
  %i.an = add i64 %.sroa.02.034.i, 1
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ap = add nuw i64 %i.aa, 1
  %i.aq = load i64, ptr %i.t, align 128, !noalias !27863, !noundef !4
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.as = icmp ult i32 %.sroa.0.02933.i, 7
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.body.thread29.loopexit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.at = mul nuw i32 %.sroa.0.02933.i, %.sroa.0.02933.i ; 2 uses
  %xtraiter = and i32 %i.at, 7                    ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.au, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.at, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !27863
  call void @llvm.x86.sse2.pause(), !noalias !27863
  call void @llvm.x86.sse2.pause(), !noalias !27863
  call void @llvm.x86.sse2.pause(), !noalias !27863
  call void @llvm.x86.sse2.pause(), !noalias !27863
  call void @llvm.x86.sse2.pause(), !noalias !27863
  call void @llvm.x86.sse2.pause(), !noalias !27863
  call void @llvm.x86.sse2.pause(), !noalias !27863
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod95 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !27863
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !27865

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.g
  %i.av = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.aw = load atomic i64, ptr %1 monotonic, align 128, !noalias !27863
  %i.ax = load i64, ptr %i.q, align 8, !noalias !27863, !noundef !4
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = icmp eq i64 %i.ay, %.sroa.02.034.i
  br i1 %i.az, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter96 = and i32 %5, 5                     ; 3 uses
  %i.ba = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.ba, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter100 = and i32 %5, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod98.not = icmp eq i32 %xtraiter96, 0
  br i1 %lcmp.mod98.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod99 = icmp ne i32 %xtraiter96, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter97 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter97.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !27863
  %epil.iter97.next = add i32 %epil.iter97, 1     ; 2 uses
  %epil.iter97.cmp.not = icmp eq i32 %epil.iter97.next, %xtraiter96
  br i1 %epil.iter97.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !27866

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.bb = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter101 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter101.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !27863
  call void @llvm.x86.sse2.pause(), !noalias !27863
  call void @llvm.x86.sse2.pause(), !noalias !27863
  call void @llvm.x86.sse2.pause(), !noalias !27863
  call void @llvm.x86.sse2.pause(), !noalias !27863
  call void @llvm.x86.sse2.pause(), !noalias !27863
  call void @llvm.x86.sse2.pause(), !noalias !27863
  call void @llvm.x86.sse2.pause(), !noalias !27863
  %niter101.next.7 = add i32 %niter101, 8         ; 2 uses
  %niter101.ncmp.7 = icmp eq i32 %niter101.next.7, %unroll_iter100
  br i1 %niter101.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bm, %._crit_edge.loopexit.i20.i ], [ %i.bb, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.bc = load atomic i64, ptr %i.k monotonic, align 128, !noalias !27863 ; 2 uses
  %i.bd = load i64, ptr %i.l, align 16, !noalias !27863, !noundef !4 ; 2 uses
  %i.be = and i64 %i.bd, %i.bc
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.b, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %i.q, align 8, !noalias !27863, !noundef !4
  %i.bh = add i64 %i.bg, %i.ad
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bi = add i64 %.sroa.02.034.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bi, %bb.k ], [ %i.bh, %bb.j ]
  %i.bj = cmpxchg weak ptr %i.k, i64 %.sroa.02.034.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !27863
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  br i1 %i.bk, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %6 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter102 = and i32 %6, 5                    ; 3 uses
  %i.bl = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.bl, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter106 = and i32 %6, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod104.not = icmp eq i32 %xtraiter102, 0
  br i1 %lcmp.mod104.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod105 = icmp ne i32 %xtraiter102, 0
  call void @llvm.assume(i1 %lcmp.mod105)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter103 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter103.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !27863
  %epil.iter103.next = add i32 %epil.iter103, 1   ; 2 uses
  %epil.iter103.cmp.not = icmp eq i32 %epil.iter103.next, %xtraiter102
  br i1 %epil.iter103.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !27867

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bm = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter107 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter107.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !27863
  call void @llvm.x86.sse2.pause(), !noalias !27863
  call void @llvm.x86.sse2.pause(), !noalias !27863
  call void @llvm.x86.sse2.pause(), !noalias !27863
  call void @llvm.x86.sse2.pause(), !noalias !27863
  call void @llvm.x86.sse2.pause(), !noalias !27863
  call void @llvm.x86.sse2.pause(), !noalias !27863
  call void @llvm.x86.sse2.pause(), !noalias !27863
  %niter107.next.7 = add i32 %niter107, 8         ; 2 uses
  %niter107.ncmp.7 = icmp eq i32 %niter107.next.7, %unroll_iter106
  br i1 %niter107.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

.body.thread29.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread29.loopexit.split-lp:                 ; preds = %bb.z, %bb.u, %bb.p, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.n, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_IB45_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB5J_5error5ErrorENtNtBZ_6marker4SendEL_EEB6E_EE4send0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h
  %i.bn = load i32, ptr %i.i, align 8, !range !12185, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bn, 1000000000
  br i1 %.not, label %bb.o, label %bb.n

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  store ptr %i.ah, ptr %i.g, align 8, !alias.scope !27863
  %i.bp = add i64 %.sroa.02.034.i, 1              ; 2 uses
  store i64 %i.bp, ptr %i.j, align 8, !alias.scope !27863
  %.sroa.018.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.018.0.copyload34, ptr %i.ah, align 16, !noalias !27868
  %.sroa.5.0..val.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..val.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx35, i64 88, i1 false)
  store atomic i64 %i.bp, ptr %i.bo release, align 16, !noalias !27871
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bq) #49
  br label %bb.ai

bb.n:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %i.br = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.bs = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %bb.ac unwind label %.body.thread29.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.split, %bb.ad, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !27873
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.421.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bt = load i8, ptr %i.v, align 8, !range !102, !noalias !27876, !noundef !4
  %i.bu = icmp eq i8 %i.bt, 1
  br i1 %i.bu, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !240

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.o
  %i.bv = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc10 unwind label %.body.thread29.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_IB45_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB5J_5error5ErrorENtNtBZ_6marker4SendEL_EEB6E_EE4send0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %.noexc10, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bv, %.noexc10 ], [ %i.u, %bb.o ] ; 4 uses
  %i.bx = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !27873, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !27873
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.w, !prof !52

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27873
  %i.by = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.q unwind label %.body.thread29.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.by, ptr %i.e, align 8, !noalias !27873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27873
  store ptr %i.g, ptr %i.c, align 8, !noalias !27873
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_IB1S_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3v_5error5ErrorENtNtB13_6marker4SendEL_EEB4q_EE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.by)
          to label %bb.t unwind label %bb.r, !noalias !27873

bb.r:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27883)
  call void @llvm.experimental.noalias.scope.decl(metadata !27886)
  call void @llvm.experimental.noalias.scope.decl(metadata !27889)
  %i.ca = load ptr, ptr %i.e, align 8, !alias.scope !27892, !noalias !27873, !nonnull !4, !noundef !4
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !27893
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.s, label %.body.thread

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %.body.thread unwind label %bb.v, !noalias !27873

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27873
  call void @llvm.experimental.noalias.scope.decl(metadata !27894)
  call void @llvm.experimental.noalias.scope.decl(metadata !27897)
  call void @llvm.experimental.noalias.scope.decl(metadata !27900)
  %i.cd = load ptr, ptr %i.e, align 8, !alias.scope !27903, !noalias !27873, !nonnull !4, !noundef !4
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !27904
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i unwind label %.body.thread29.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !27873
  br label %bb.ag

bb.v:                                             ; preds = %bb.ab, %bb.s
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !27873
  unreachable

bb.w:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !27873
  store ptr %i.bx, ptr %i.d, align 8, !noalias !27873
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store atomic i64 0, ptr %i.ch release, align 8, !noalias !27873
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store atomic ptr null, ptr %i.ci release, align 8, !noalias !27873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27873
  store ptr %i.g, ptr %i.b, align 8, !noalias !27873
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_IB1S_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3v_5error5ErrorENtNtB13_6marker4SendEL_EEB4q_EE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bx)
          to label %bb.x unwind label %bb.aa, !noalias !27873

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27873
  %i.cj = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !27873, !noundef !4 ; 3 uses
  store ptr %i.cj, ptr %i.a, align 8, !noalias !27873
  store ptr %i.bx, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !27873
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !27905
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %.body.thread29.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !27873
  br label %bb.ag

bb.aa:                                            ; preds = %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !27914
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.ab, label %.body.thread
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
bb.j:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.m, align 8, !noundef !4
  %i.an = add i64 %i.am, %i.v
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.an, %bb.j ], [ %i.ab, %bb.f ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27924)
  %i.ao = load i64, ptr %i.z, align 16, !range !1400, !alias.scope !27924, !noundef !4
  %i.ap = icmp eq i64 %i.ao, -9223372036854775743
  br i1 %i.ap, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !27924 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.val1.i.i = load ptr, ptr %i.ar, align 16, !alias.scope !27924, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.as = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !27924 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.as(ptr noundef nonnull %.val.i.i)
          to label %bb.n unwind label %bb.p, !noalias !27924

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !16, !invariant.load !4, !noalias !27924 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2O_5error5ErrorENtNtB4_6marker4SendEL_EEB3p_EECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !range !3, !invariant.load !4, !noalias !27924
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.au, i64 noundef range(i64 1, 536870913) %i.ax) #40, !noalias !27924
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2O_5error5ErrorENtNtB4_6marker4SendEL_EEB3p_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.p:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !16, !invariant.load !4, !noalias !27924 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2c_5error5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !3, !invariant.load !4, !noalias !27924
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.ba, i64 noundef range(i64 1, 536870913) %i.bd) #40, !noalias !27924
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2c_5error5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2c_5error5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i.i.i: ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %i.ay

bb.r:                                             ; preds = %bb.k
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.z)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2O_5error5ErrorENtNtB4_6marker4SendEL_EEB3p_EECs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4recvCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [96 x i8], align 16               ; 4 uses
  %i.h = alloca [96 x i8], align 16               ; 6 uses
  %.sroa.4 = alloca [88 x i8], align 8            ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3Y_5error5ErrorENtNtB1D_6marker4SendEL_EEB4z_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !27927)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, %bb.b
  %.sroa.0.029.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.029.i.be, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge ] ; 14 uses
  %i.u = load atomic i64, ptr %1 monotonic, align 128, !noalias !27927 ; 7 uses
  %i.v = load i64, ptr %i.m, align 16, !noalias !27927, !noundef !4
  %i.w = add i64 %i.v, -1
  %i.x = and i64 %i.w, %i.u                       ; 3 uses
  %i.y = load i64, ptr %i.n, align 8, !noalias !27927, !noundef !4
  %i.z = sub i64 0, %i.y
  %i.aa = and i64 %i.u, %i.z
  %i.ab = load ptr, ptr %i.o, align 8, !noalias !27927, !nonnull !4, !noundef !4
  %i.ac = load i64, ptr %i.p, align 32, !noalias !27927, !noundef !4
  %i.ad = icmp ult i64 %i.x, %i.ac
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [112 x i8], ptr %i.ab, i64 %i.x ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ag = load atomic i64, ptr %i.af acquire, align 8, !noalias !27927 ; 3 uses
  %i.ah = add i64 %i.u, 1
  %i.ai = icmp eq i64 %i.ah, %i.ag
  br i1 %i.ai, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.aj = icmp eq i64 %i.ag, %i.u
  br i1 %i.aj, label %bb.h, label %bb.e

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.ak = add nuw i64 %i.x, 1
  %i.al = load i64, ptr %i.r, align 128, !noalias !27927, !noundef !4
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.an = icmp ult i32 %.sroa.0.029.i, 7
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !27927
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.ao = mul nuw i32 %.sroa.0.029.i, %.sroa.0.029.i ; 2 uses
  %xtraiter = and i32 %i.ao, 7                    ; 3 uses
  %i.ap = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.ap, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ao, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !27927
  call void @llvm.x86.sse2.pause(), !noalias !27927
  call void @llvm.x86.sse2.pause(), !noalias !27927
  call void @llvm.x86.sse2.pause(), !noalias !27927
  call void @llvm.x86.sse2.pause(), !noalias !27927
  call void @llvm.x86.sse2.pause(), !noalias !27927
  call void @llvm.x86.sse2.pause(), !noalias !27927
  call void @llvm.x86.sse2.pause(), !noalias !27927
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod65 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !27927
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !27930

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.aq = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.ar = load atomic i64, ptr %i.q monotonic, align 128, !noalias !27927 ; 2 uses
  %i.as = load i64, ptr %i.m, align 16, !noalias !27927, !noundef !4 ; 2 uses
  %i.at = xor i64 %i.as, -1
  %i.au = and i64 %i.ar, %i.at
  %i.av = icmp eq i64 %i.au, %i.u
  br i1 %i.av, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter66 = and i32 %4, 5                     ; 3 uses
  %i.aw = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.aw, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter70 = and i32 %4, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod68.not = icmp eq i32 %xtraiter66, 0
  br i1 %lcmp.mod68.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod69 = icmp ne i32 %xtraiter66, 0
  call void @llvm.assume(i1 %lcmp.mod69)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter67 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter67.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !27927
  %epil.iter67.next = add i32 %epil.iter67, 1     ; 2 uses
  %epil.iter67.cmp.not = icmp eq i32 %epil.iter67.next, %xtraiter66
  br i1 %epil.iter67.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !27931

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ax = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter71 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter71.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !27927
  call void @llvm.x86.sse2.pause(), !noalias !27927
  call void @llvm.x86.sse2.pause(), !noalias !27927
  call void @llvm.x86.sse2.pause(), !noalias !27927
  call void @llvm.x86.sse2.pause(), !noalias !27927
  call void @llvm.x86.sse2.pause(), !noalias !27927
  call void @llvm.x86.sse2.pause(), !noalias !27927
  call void @llvm.x86.sse2.pause(), !noalias !27927
  %niter71.next.7 = add i32 %niter71, 8           ; 2 uses
  %niter71.ncmp.7 = icmp eq i32 %niter71.next.7, %unroll_iter70
  br i1 %niter71.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

bb.j:                                             ; preds = %bb.h
  %i.ay = and i64 %i.as, %i.ar
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_recvCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %bb.d
  %i.ba = load i64, ptr %i.n, align 8, !noalias !27927, !noundef !4
  %i.bb = add i64 %i.ba, %i.aa
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.bb, %bb.k ], [ %i.ag, %bb.d ]
  %i.bc = cmpxchg weak ptr %1, i64 %i.u, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !27927
  %i.bd = extractvalue { i64, i1 } %i.bc, 1
  br i1 %i.bd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter72 = and i32 %5, 5                     ; 3 uses
  %i.be = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.be, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter76 = and i32 %5, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod74.not = icmp eq i32 %xtraiter72, 0
  br i1 %lcmp.mod74.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod75 = icmp ne i32 %xtraiter72, 0
  call void @llvm.assume(i1 %lcmp.mod75)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter73 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter73.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !27927
  %epil.iter73.next = add i32 %epil.iter73, 1     ; 2 uses
  %epil.iter73.cmp.not = icmp eq i32 %epil.iter73.next, %xtraiter72
  br i1 %epil.iter73.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !27932

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bf = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.029.i.be = phi i32 [ %i.aq, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bf, %._crit_edge.loopexit.i20.i ], [ %i.ax, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter77 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter77.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !27927
  call void @llvm.x86.sse2.pause(), !noalias !27927
  call void @llvm.x86.sse2.pause(), !noalias !27927
  call void @llvm.x86.sse2.pause(), !noalias !27927
  call void @llvm.x86.sse2.pause(), !noalias !27927
  call void @llvm.x86.sse2.pause(), !noalias !27927
  call void @llvm.x86.sse2.pause(), !noalias !27927
  call void @llvm.x86.sse2.pause(), !noalias !27927
  %niter77.next.7 = add i32 %niter77, 8           ; 2 uses
  %niter77.ncmp.7 = icmp eq i32 %niter77.next.7, %unroll_iter76
  br i1 %niter77.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.j
  %i.bg = load i32, ptr %i.k, align 8, !range !12185, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bg, 1000000000
  br i1 %.not, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  store ptr %i.ae, ptr %i.i, align 8, !alias.scope !27927
  %i.bi = load i64, ptr %i.n, align 8, !noalias !27927, !noundef !4
  %i.bj = add i64 %i.bi, %i.u                     ; 2 uses
  store i64 %i.bj, ptr %i.l, align 8, !alias.scope !27927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !27933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.g, ptr noundef nonnull align 16 dereferenceable(96) %i.ae, i64 96, i1 false), !noalias !27933
  store atomic i64 %i.bj, ptr %i.bh release, align 16, !noalias !27933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.h, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !27933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bk)
          to label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4readCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.o, !noalias !27933

bb.o:                                             ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2O_5error5ErrorENtNtB4_6marker4SendEL_EEB3p_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.h) #46
          to label %common.resume unwind label %bb.p, !noalias !27933

bb.p:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !27933
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.u, %bb.ac, %bb.ad, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.o ], [ %i.by, %bb.t ], [ %i.cm, %bb.ac ], [ %i.by, %bb.u ], [ %i.cm, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4readCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.n
  %.sroa.0.0.copyload2 = load i64, ptr %i.h, align 16 ; 2 uses
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx3, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !27933
  %i.bn = icmp eq i64 %.sroa.0.0.copyload2, -9223372036854775742
  br i1 %i.bn, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.ah

bb.q:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_recvCs14kWLkQVSKO_14deltalake_core.exit
  %i.bo = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.bp = call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.bq = extractvalue { i64, i32 } %i.bp, 0      ; 2 uses
  %i.br = icmp eq i64 %i.bq, %i.bo
  br i1 %i.br, label %.split, label %bb.ae

bb.r:                                             ; preds = %.split, %bb.ae, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_recvCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !27936
  store ptr %i.i, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.45.0..sroa_idx, align 8
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bs = load i8, ptr %i.t, align 8, !range !102, !noalias !27939, !noundef !4
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !240

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.r
  %i.bu = call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.s, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !27936 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB5B_5error5ErrorENtNtBZ_6marker4SendEL_EEB6c_EE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.r
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bu, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.s, %bb.r ] ; 4 uses
  %i.bw = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !27936, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !27936
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %bb.s, label %bb.y, !prof !52

bb.s:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27936
  %i.bx = call noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !27936 ; 2 uses
  store ptr %i.bx, ptr %i.e, align 8, !noalias !27936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27936
  store ptr %i.i, ptr %i.c, align 8, !noalias !27936
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3n_5error5ErrorENtNtB13_6marker4SendEL_EEB3Y_EE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bx)
          to label %bb.v unwind label %bb.t, !noalias !27936

bb.t:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27946)
  call void @llvm.experimental.noalias.scope.decl(metadata !27949)
  call void @llvm.experimental.noalias.scope.decl(metadata !27952)
  %i.bz = load ptr, ptr %i.e, align 8, !alias.scope !27955, !noalias !27936, !nonnull !4, !noundef !4
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !27956
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.u, label %common.resume

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %common.resume unwind label %bb.x, !noalias !27936

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27936
  call void @llvm.experimental.noalias.scope.decl(metadata !27957)
  call void @llvm.experimental.noalias.scope.decl(metadata !27960)
  call void @llvm.experimental.noalias.scope.decl(metadata !27963)
  %i.cc = load ptr, ptr %i.e, align 8, !alias.scope !27966, !noalias !27936, !nonnull !4, !noundef !4
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !27967
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45, !noalias !27936
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !27936
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3Y_5error5ErrorENtNtB1D_6marker4SendEL_EEB4z_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %bb.ad, %bb.u
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !27936
  unreachable

bb.y:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !27936
  store ptr %i.bw, ptr %i.d, align 8, !noalias !27936
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store atomic i64 0, ptr %i.cg release, align 8, !noalias !27936
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store atomic ptr null, ptr %i.ch release, align 8, !noalias !27936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27936
  store ptr %i.i, ptr %i.b, align 8, !noalias !27936
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3n_5error5ErrorENtNtB13_6marker4SendEL_EEB3Y_EE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bw)
          to label %bb.z unwind label %bb.ac, !noalias !27936

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27936
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !27936, !noundef !4 ; 3 uses
  store ptr %i.ci, ptr %i.a, align 8, !noalias !27936
  store ptr %i.bw, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !27936
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !27968
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !27936
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3Y_5error5ErrorENtNtB1D_6marker4SendEL_EEB4z_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ac:                                            ; preds = %bb.y
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !27977
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.ad, label %common.resume

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #45
          to label %common.resume unwind label %bb.x, !noalias !27936

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB5B_5error5ErrorENtNtBZ_6marker4SendEL_EEB6c_EE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1B_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB40_5error5ErrorENtNtB1F_6marker4SendEL_EEB4B_EE4recvs_0uEs0_0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.f), !noalias !27936
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3Y_5error5ErrorENtNtB1D_6marker4SendEL_EEB4z_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3Y_5error5ErrorENtNtB1D_6marker4SendEL_EEB4z_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB5B_5error5ErrorENtNtBZ_6marker4SendEL_EEB6c_EE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !27936
  br label %bb.b

.split:                                           ; preds = %bb.q
  %i.cp = extractvalue { i64, i32 } %i.bp, 1      ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 1000000000
  call void @llvm.assume(i1 %i.cq)
  %.not18 = icmp samesign ult i32 %i.cp, %i.bg
  br i1 %.not18, label %bb.r, label %bb.af

bb.ae:                                            ; preds = %bb.q
  %.not17 = icmp slt i64 %i.bq, %i.bo
  br i1 %.not17, label %bb.r, label %bb.af

bb.af:                                            ; preds = %.split, %bb.ae
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cr, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.ah, %bb.af
  %storemerge = phi i64 [ -9223372036854775742, %bb.af ], [ %.sroa.0.0.copyload2, %bb.ah ], [ -9223372036854775742, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cs, align 8
  br label %bb.ag

bb.ah:                                            ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, i64 88, i1 false)
  br label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !noalias !27984 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !noalias !27984, !noundef !4 ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ag
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cv, %bb.ag ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.cu, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !27987)
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bd, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ]
  %.sroa.02.034.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 8 uses
  %.sroa.0.02933.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1
  %i.aa = and i64 %i.z, %.sroa.02.034.i           ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !noalias !27987, !noundef !4
  %i.ac = sub i64 0, %i.ab
  %i.ad = and i64 %.sroa.02.034.i, %i.ac
  %i.ae = load ptr, ptr %i.r, align 8, !noalias !27987, !nonnull !4, !noundef !4
  %i.af = load i64, ptr %i.s, align 32, !noalias !27987, !noundef !4
  %i.ag = icmp ult i64 %i.aa, %i.af
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %i.aa ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8, !noalias !27987 ; 2 uses
  %i.ak = icmp eq i64 %.sroa.02.034.i, %i.aj
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = load i64, ptr %i.q, align 8, !noalias !27987, !noundef !4
  %i.am = add i64 %i.al, %i.aj
  %i.an = add i64 %.sroa.02.034.i, 1
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ap = add nuw i64 %i.aa, 1
  %i.aq = load i64, ptr %i.t, align 128, !noalias !27987, !noundef !4
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.as = icmp ult i32 %.sroa.0.02933.i, 7
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.body.thread29.loopexit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.at = mul nuw i32 %.sroa.0.02933.i, %.sroa.0.02933.i ; 2 uses
  %xtraiter = and i32 %i.at, 7                    ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.au, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.at, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !27987
  call void @llvm.x86.sse2.pause(), !noalias !27987
  call void @llvm.x86.sse2.pause(), !noalias !27987
  call void @llvm.x86.sse2.pause(), !noalias !27987
  call void @llvm.x86.sse2.pause(), !noalias !27987
  call void @llvm.x86.sse2.pause(), !noalias !27987
  call void @llvm.x86.sse2.pause(), !noalias !27987
  call void @llvm.x86.sse2.pause(), !noalias !27987
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod95 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !27987
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !27989

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.g
  %i.av = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.aw = load atomic i64, ptr %1 monotonic, align 128, !noalias !27987
  %i.ax = load i64, ptr %i.q, align 8, !noalias !27987, !noundef !4
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = icmp eq i64 %i.ay, %.sroa.02.034.i
  br i1 %i.az, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter96 = and i32 %5, 5                     ; 3 uses
  %i.ba = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.ba, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter100 = and i32 %5, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod98.not = icmp eq i32 %xtraiter96, 0
  br i1 %lcmp.mod98.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod99 = icmp ne i32 %xtraiter96, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter97 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter97.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !27987
  %epil.iter97.next = add i32 %epil.iter97, 1     ; 2 uses
  %epil.iter97.cmp.not = icmp eq i32 %epil.iter97.next, %xtraiter96
  br i1 %epil.iter97.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !27990

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.bb = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter101 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter101.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !27987
  call void @llvm.x86.sse2.pause(), !noalias !27987
  call void @llvm.x86.sse2.pause(), !noalias !27987
  call void @llvm.x86.sse2.pause(), !noalias !27987
  call void @llvm.x86.sse2.pause(), !noalias !27987
  call void @llvm.x86.sse2.pause(), !noalias !27987
  call void @llvm.x86.sse2.pause(), !noalias !27987
  call void @llvm.x86.sse2.pause(), !noalias !27987
  %niter101.next.7 = add i32 %niter101, 8         ; 2 uses
  %niter101.ncmp.7 = icmp eq i32 %niter101.next.7, %unroll_iter100
  br i1 %niter101.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bm, %._crit_edge.loopexit.i20.i ], [ %i.bb, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.bc = load atomic i64, ptr %i.k monotonic, align 128, !noalias !27987 ; 2 uses
  %i.bd = load i64, ptr %i.l, align 16, !noalias !27987, !noundef !4 ; 2 uses
  %i.be = and i64 %i.bd, %i.bc
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.b, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %i.q, align 8, !noalias !27987, !noundef !4
  %i.bh = add i64 %i.bg, %i.ad
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bi = add i64 %.sroa.02.034.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bi, %bb.k ], [ %i.bh, %bb.j ]
  %i.bj = cmpxchg weak ptr %i.k, i64 %.sroa.02.034.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !27987
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  br i1 %i.bk, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %6 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter102 = and i32 %6, 5                    ; 3 uses
  %i.bl = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.bl, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter106 = and i32 %6, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod104.not = icmp eq i32 %xtraiter102, 0
  br i1 %lcmp.mod104.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod105 = icmp ne i32 %xtraiter102, 0
  call void @llvm.assume(i1 %lcmp.mod105)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter103 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter103.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !27987
  %epil.iter103.next = add i32 %epil.iter103, 1   ; 2 uses
  %epil.iter103.cmp.not = icmp eq i32 %epil.iter103.next, %xtraiter102
  br i1 %epil.iter103.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !27991

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bm = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter107 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter107.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !27987
  call void @llvm.x86.sse2.pause(), !noalias !27987
  call void @llvm.x86.sse2.pause(), !noalias !27987
  call void @llvm.x86.sse2.pause(), !noalias !27987
  call void @llvm.x86.sse2.pause(), !noalias !27987
  call void @llvm.x86.sse2.pause(), !noalias !27987
  call void @llvm.x86.sse2.pause(), !noalias !27987
  call void @llvm.x86.sse2.pause(), !noalias !27987
  %niter107.next.7 = add i32 %niter107, 8         ; 2 uses
  %niter107.ncmp.7 = icmp eq i32 %niter107.next.7, %unroll_iter106
  br i1 %niter107.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

.body.thread29.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread29.loopexit.split-lp:                 ; preds = %bb.z, %bb.u, %bb.p, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.n, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB5B_5error5ErrorENtNtBZ_6marker4SendEL_EEB6c_EE4send0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h
  %i.bn = load i32, ptr %i.i, align 8, !range !12185, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bn, 1000000000
  br i1 %.not, label %bb.o, label %bb.n

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  store ptr %i.ah, ptr %i.g, align 8, !alias.scope !27987
  %i.bp = add i64 %.sroa.02.034.i, 1              ; 2 uses
  store i64 %i.bp, ptr %i.j, align 8, !alias.scope !27987
  %.sroa.018.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.018.0.copyload34, ptr %i.ah, align 16, !noalias !27992
  %.sroa.5.0..val.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..val.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx35, i64 88, i1 false)
  store atomic i64 %i.bp, ptr %i.bo release, align 16, !noalias !27995
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bq) #49
  br label %bb.ai

bb.n:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %i.br = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.bs = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %bb.ac unwind label %.body.thread29.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.split, %bb.ad, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !27997
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.421.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bt = load i8, ptr %i.v, align 8, !range !102, !noalias !28000, !noundef !4
  %i.bu = icmp eq i8 %i.bt, 1
  br i1 %i.bu, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !240

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.o
  %i.bv = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc10 unwind label %.body.thread29.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB5B_5error5ErrorENtNtBZ_6marker4SendEL_EEB6c_EE4send0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %.noexc10, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bv, %.noexc10 ], [ %i.u, %bb.o ] ; 4 uses
  %i.bx = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !27997, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !27997
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.w, !prof !52

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27997
  %i.by = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.q unwind label %.body.thread29.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.by, ptr %i.e, align 8, !noalias !27997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27997
  store ptr %i.g, ptr %i.c, align 8, !noalias !27997
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3n_5error5ErrorENtNtB13_6marker4SendEL_EEB3Y_EE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.by)
          to label %bb.t unwind label %bb.r, !noalias !27997

bb.r:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28007)
  call void @llvm.experimental.noalias.scope.decl(metadata !28010)
  call void @llvm.experimental.noalias.scope.decl(metadata !28013)
  %i.ca = load ptr, ptr %i.e, align 8, !alias.scope !28016, !noalias !27997, !nonnull !4, !noundef !4
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !28017
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.s, label %.body.thread

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %.body.thread unwind label %bb.v, !noalias !27997

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27997
  call void @llvm.experimental.noalias.scope.decl(metadata !28018)
  call void @llvm.experimental.noalias.scope.decl(metadata !28021)
  call void @llvm.experimental.noalias.scope.decl(metadata !28024)
  %i.cd = load ptr, ptr %i.e, align 8, !alias.scope !28027, !noalias !27997, !nonnull !4, !noundef !4
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !28028
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i unwind label %.body.thread29.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !27997
  br label %bb.ag

bb.v:                                             ; preds = %bb.ab, %bb.s
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !27997
  unreachable

bb.w:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !27997
  store ptr %i.bx, ptr %i.d, align 8, !noalias !27997
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store atomic i64 0, ptr %i.ch release, align 8, !noalias !27997
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store atomic ptr null, ptr %i.ci release, align 8, !noalias !27997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27997
  store ptr %i.g, ptr %i.b, align 8, !noalias !27997
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3n_5error5ErrorENtNtB13_6marker4SendEL_EEB3Y_EE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bx)
          to label %bb.x unwind label %bb.aa, !noalias !27997

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27997
  %i.cj = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !27997, !noundef !4 ; 3 uses
  store ptr %i.cj, ptr %i.a, align 8, !noalias !27997
  store ptr %i.bx, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !27997
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !28029
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %.body.thread29.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !27997
  br label %bb.ag

bb.aa:                                            ; preds = %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !28038
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.ab, label %.body.thread
end_hunk_3
begin_hunk_4_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
bb.j:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.m, align 8, !noundef !4
  %i.an = add i64 %i.am, %i.v
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.an, %bb.j ], [ %i.ab, %bb.f ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28048)
  %i.ao = load i64, ptr %i.z, align 16, !range !1400, !alias.scope !28048, !noundef !4
  %i.ap = icmp eq i64 %i.ao, -9223372036854775743
  br i1 %i.ap, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !28048 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.val1.i.i = load ptr, ptr %i.ar, align 16, !alias.scope !28048, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.as = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !28048 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.as(ptr noundef nonnull %.val.i.i)
          to label %bb.n unwind label %bb.p, !noalias !28048

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !16, !invariant.load !4, !noalias !28048 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB3m_EECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !range !3, !invariant.load !4, !noalias !28048
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.au, i64 noundef range(i64 1, 536870913) %i.ax) #40, !noalias !28048
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB3m_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.p:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !16, !invariant.load !4, !noalias !28048 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !3, !invariant.load !4, !noalias !28048
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.ba, i64 noundef range(i64 1, 536870913) %i.bd) #40, !noalias !28048
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i.i.i: ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %i.ay

bb.r:                                             ; preds = %bb.k
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.z)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB3m_EECs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4recvCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [96 x i8], align 16               ; 4 uses
  %i.h = alloca [96 x i8], align 16               ; 6 uses
  %.sroa.4 = alloca [88 x i8], align 8            ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1D_6marker4SendEL_EEB4w_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !28051)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, %bb.b
  %.sroa.0.029.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.029.i.be, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge ] ; 14 uses
  %i.u = load atomic i64, ptr %1 monotonic, align 128, !noalias !28051 ; 7 uses
  %i.v = load i64, ptr %i.m, align 16, !noalias !28051, !noundef !4
  %i.w = add i64 %i.v, -1
  %i.x = and i64 %i.w, %i.u                       ; 3 uses
  %i.y = load i64, ptr %i.n, align 8, !noalias !28051, !noundef !4
  %i.z = sub i64 0, %i.y
  %i.aa = and i64 %i.u, %i.z
  %i.ab = load ptr, ptr %i.o, align 8, !noalias !28051, !nonnull !4, !noundef !4
  %i.ac = load i64, ptr %i.p, align 32, !noalias !28051, !noundef !4
  %i.ad = icmp ult i64 %i.x, %i.ac
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [112 x i8], ptr %i.ab, i64 %i.x ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ag = load atomic i64, ptr %i.af acquire, align 8, !noalias !28051 ; 3 uses
  %i.ah = add i64 %i.u, 1
  %i.ai = icmp eq i64 %i.ah, %i.ag
  br i1 %i.ai, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.aj = icmp eq i64 %i.ag, %i.u
  br i1 %i.aj, label %bb.h, label %bb.e

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.ak = add nuw i64 %i.x, 1
  %i.al = load i64, ptr %i.r, align 128, !noalias !28051, !noundef !4
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.an = icmp ult i32 %.sroa.0.029.i, 7
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28051
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.ao = mul nuw i32 %.sroa.0.029.i, %.sroa.0.029.i ; 2 uses
  %xtraiter = and i32 %i.ao, 7                    ; 3 uses
  %i.ap = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.ap, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ao, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28051
  call void @llvm.x86.sse2.pause(), !noalias !28051
  call void @llvm.x86.sse2.pause(), !noalias !28051
  call void @llvm.x86.sse2.pause(), !noalias !28051
  call void @llvm.x86.sse2.pause(), !noalias !28051
  call void @llvm.x86.sse2.pause(), !noalias !28051
  call void @llvm.x86.sse2.pause(), !noalias !28051
  call void @llvm.x86.sse2.pause(), !noalias !28051
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod65 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28051
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28054

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.aq = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.ar = load atomic i64, ptr %i.q monotonic, align 128, !noalias !28051 ; 2 uses
  %i.as = load i64, ptr %i.m, align 16, !noalias !28051, !noundef !4 ; 2 uses
  %i.at = xor i64 %i.as, -1
  %i.au = and i64 %i.ar, %i.at
  %i.av = icmp eq i64 %i.au, %i.u
  br i1 %i.av, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter66 = and i32 %4, 5                     ; 3 uses
  %i.aw = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.aw, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter70 = and i32 %4, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod68.not = icmp eq i32 %xtraiter66, 0
  br i1 %lcmp.mod68.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod69 = icmp ne i32 %xtraiter66, 0
  call void @llvm.assume(i1 %lcmp.mod69)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter67 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter67.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28051
  %epil.iter67.next = add i32 %epil.iter67, 1     ; 2 uses
  %epil.iter67.cmp.not = icmp eq i32 %epil.iter67.next, %xtraiter66
  br i1 %epil.iter67.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !28055

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ax = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter71 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter71.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28051
  call void @llvm.x86.sse2.pause(), !noalias !28051
  call void @llvm.x86.sse2.pause(), !noalias !28051
  call void @llvm.x86.sse2.pause(), !noalias !28051
  call void @llvm.x86.sse2.pause(), !noalias !28051
  call void @llvm.x86.sse2.pause(), !noalias !28051
  call void @llvm.x86.sse2.pause(), !noalias !28051
  call void @llvm.x86.sse2.pause(), !noalias !28051
  %niter71.next.7 = add i32 %niter71, 8           ; 2 uses
  %niter71.ncmp.7 = icmp eq i32 %niter71.next.7, %unroll_iter70
  br i1 %niter71.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

bb.j:                                             ; preds = %bb.h
  %i.ay = and i64 %i.as, %i.ar
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_recvCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %bb.d
  %i.ba = load i64, ptr %i.n, align 8, !noalias !28051, !noundef !4
  %i.bb = add i64 %i.ba, %i.aa
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.bb, %bb.k ], [ %i.ag, %bb.d ]
  %i.bc = cmpxchg weak ptr %1, i64 %i.u, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !28051
  %i.bd = extractvalue { i64, i1 } %i.bc, 1
  br i1 %i.bd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter72 = and i32 %5, 5                     ; 3 uses
  %i.be = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.be, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter76 = and i32 %5, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod74.not = icmp eq i32 %xtraiter72, 0
  br i1 %lcmp.mod74.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod75 = icmp ne i32 %xtraiter72, 0
  call void @llvm.assume(i1 %lcmp.mod75)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter73 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter73.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28051
  %epil.iter73.next = add i32 %epil.iter73, 1     ; 2 uses
  %epil.iter73.cmp.not = icmp eq i32 %epil.iter73.next, %xtraiter72
  br i1 %epil.iter73.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !28056

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bf = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.029.i.be = phi i32 [ %i.aq, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bf, %._crit_edge.loopexit.i20.i ], [ %i.ax, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter77 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter77.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28051
  call void @llvm.x86.sse2.pause(), !noalias !28051
  call void @llvm.x86.sse2.pause(), !noalias !28051
  call void @llvm.x86.sse2.pause(), !noalias !28051
  call void @llvm.x86.sse2.pause(), !noalias !28051
  call void @llvm.x86.sse2.pause(), !noalias !28051
  call void @llvm.x86.sse2.pause(), !noalias !28051
  call void @llvm.x86.sse2.pause(), !noalias !28051
  %niter77.next.7 = add i32 %niter77, 8           ; 2 uses
  %niter77.ncmp.7 = icmp eq i32 %niter77.next.7, %unroll_iter76
  br i1 %niter77.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.j
  %i.bg = load i32, ptr %i.k, align 8, !range !12185, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bg, 1000000000
  br i1 %.not, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  store ptr %i.ae, ptr %i.i, align 8, !alias.scope !28051
  %i.bi = load i64, ptr %i.n, align 8, !noalias !28051, !noundef !4
  %i.bj = add i64 %i.bi, %i.u                     ; 2 uses
  store i64 %i.bj, ptr %i.l, align 8, !alias.scope !28051
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !28057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.g, ptr noundef nonnull align 16 dereferenceable(96) %i.ae, i64 96, i1 false), !noalias !28057
  store atomic i64 %i.bj, ptr %i.bh release, align 16, !noalias !28057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.h, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !28057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bk)
          to label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4readCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.o, !noalias !28057

bb.o:                                             ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB3m_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.h) #46
          to label %common.resume unwind label %bb.p, !noalias !28057

bb.p:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !28057
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.u, %bb.ac, %bb.ad, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.o ], [ %i.by, %bb.t ], [ %i.cm, %bb.ac ], [ %i.by, %bb.u ], [ %i.cm, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4readCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.n
  %.sroa.0.0.copyload2 = load i64, ptr %i.h, align 16 ; 2 uses
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx3, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !28057
  %i.bn = icmp eq i64 %.sroa.0.0.copyload2, -9223372036854775742
  br i1 %i.bn, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.ah

bb.q:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_recvCs14kWLkQVSKO_14deltalake_core.exit
  %i.bo = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.bp = call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.bq = extractvalue { i64, i32 } %i.bp, 0      ; 2 uses
  %i.br = icmp eq i64 %i.bq, %i.bo
  br i1 %i.br, label %.split, label %bb.ae

bb.r:                                             ; preds = %.split, %bb.ae, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_recvCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !28060
  store ptr %i.i, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.45.0..sroa_idx, align 8
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bs = load i8, ptr %i.t, align 8, !range !102, !noalias !28063, !noundef !4
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !240

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.r
  %i.bu = call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.s, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !28060 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBZ_6marker4SendEL_EEB69_EE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.r
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bu, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.s, %bb.r ] ; 4 uses
  %i.bw = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28060, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28060
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %bb.s, label %bb.y, !prof !52

bb.s:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !28060
  %i.bx = call noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !28060 ; 2 uses
  store ptr %i.bx, ptr %i.e, align 8, !noalias !28060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28060
  store ptr %i.i, ptr %i.c, align 8, !noalias !28060
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB13_6marker4SendEL_EEB3V_EE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bx)
          to label %bb.v unwind label %bb.t, !noalias !28060

bb.t:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28070)
  call void @llvm.experimental.noalias.scope.decl(metadata !28073)
  call void @llvm.experimental.noalias.scope.decl(metadata !28076)
  %i.bz = load ptr, ptr %i.e, align 8, !alias.scope !28079, !noalias !28060, !nonnull !4, !noundef !4
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !28080
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.u, label %common.resume

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %common.resume unwind label %bb.x, !noalias !28060

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28060
  call void @llvm.experimental.noalias.scope.decl(metadata !28081)
  call void @llvm.experimental.noalias.scope.decl(metadata !28084)
  call void @llvm.experimental.noalias.scope.decl(metadata !28087)
  %i.cc = load ptr, ptr %i.e, align 8, !alias.scope !28090, !noalias !28060, !nonnull !4, !noundef !4
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !28091
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45, !noalias !28060
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28060
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1D_6marker4SendEL_EEB4w_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %bb.ad, %bb.u
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !28060
  unreachable

bb.y:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28060
  store ptr %i.bw, ptr %i.d, align 8, !noalias !28060
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store atomic i64 0, ptr %i.cg release, align 8, !noalias !28060
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store atomic ptr null, ptr %i.ch release, align 8, !noalias !28060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28060
  store ptr %i.i, ptr %i.b, align 8, !noalias !28060
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB13_6marker4SendEL_EEB3V_EE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bw)
          to label %bb.z unwind label %bb.ac, !noalias !28060

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28060
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28060, !noundef !4 ; 3 uses
  store ptr %i.ci, ptr %i.a, align 8, !noalias !28060
  store ptr %i.bw, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28060
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !28092
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
end_hunk_4
begin_hunk_5_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28060
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1D_6marker4SendEL_EEB4w_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ac:                                            ; preds = %bb.y
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !28101
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.ad, label %common.resume

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #45
          to label %common.resume unwind label %bb.x, !noalias !28060

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBZ_6marker4SendEL_EEB69_EE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1B_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1F_6marker4SendEL_EEB4y_EE4recvs_0uEs0_0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.f), !noalias !28060
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1D_6marker4SendEL_EEB4w_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1D_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1D_6marker4SendEL_EEB4w_EE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBZ_6marker4SendEL_EEB69_EE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !28060
  br label %bb.b

.split:                                           ; preds = %bb.q
  %i.cp = extractvalue { i64, i32 } %i.bp, 1      ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 1000000000
  call void @llvm.assume(i1 %i.cq)
  %.not18 = icmp samesign ult i32 %i.cp, %i.bg
  br i1 %.not18, label %bb.r, label %bb.af

bb.ae:                                            ; preds = %bb.q
  %.not17 = icmp slt i64 %i.bq, %i.bo
  br i1 %.not17, label %bb.r, label %bb.af

bb.af:                                            ; preds = %.split, %bb.ae
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cr, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.ah, %bb.af
  %storemerge = phi i64 [ -9223372036854775742, %bb.af ], [ %.sroa.0.0.copyload2, %bb.ah ], [ -9223372036854775742, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cs, align 8
  br label %bb.ag

bb.ah:                                            ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, i64 88, i1 false)
  br label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !noalias !28108 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !noalias !28108, !noundef !4 ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ag
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cv, %bb.ag ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.cu, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !28111)
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bd, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ]
  %.sroa.02.034.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 8 uses
  %.sroa.0.02933.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1
  %i.aa = and i64 %i.z, %.sroa.02.034.i           ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !noalias !28111, !noundef !4
  %i.ac = sub i64 0, %i.ab
  %i.ad = and i64 %.sroa.02.034.i, %i.ac
  %i.ae = load ptr, ptr %i.r, align 8, !noalias !28111, !nonnull !4, !noundef !4
  %i.af = load i64, ptr %i.s, align 32, !noalias !28111, !noundef !4
  %i.ag = icmp ult i64 %i.aa, %i.af
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %i.aa ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8, !noalias !28111 ; 2 uses
  %i.ak = icmp eq i64 %.sroa.02.034.i, %i.aj
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = load i64, ptr %i.q, align 8, !noalias !28111, !noundef !4
  %i.am = add i64 %i.al, %i.aj
  %i.an = add i64 %.sroa.02.034.i, 1
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ap = add nuw i64 %i.aa, 1
  %i.aq = load i64, ptr %i.t, align 128, !noalias !28111, !noundef !4
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.as = icmp ult i32 %.sroa.0.02933.i, 7
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.body.thread29.loopexit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.at = mul nuw i32 %.sroa.0.02933.i, %.sroa.0.02933.i ; 2 uses
  %xtraiter = and i32 %i.at, 7                    ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.au, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.at, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28111
  call void @llvm.x86.sse2.pause(), !noalias !28111
  call void @llvm.x86.sse2.pause(), !noalias !28111
  call void @llvm.x86.sse2.pause(), !noalias !28111
  call void @llvm.x86.sse2.pause(), !noalias !28111
  call void @llvm.x86.sse2.pause(), !noalias !28111
  call void @llvm.x86.sse2.pause(), !noalias !28111
  call void @llvm.x86.sse2.pause(), !noalias !28111
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod95 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28111
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28113

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.g
  %i.av = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.aw = load atomic i64, ptr %1 monotonic, align 128, !noalias !28111
  %i.ax = load i64, ptr %i.q, align 8, !noalias !28111, !noundef !4
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = icmp eq i64 %i.ay, %.sroa.02.034.i
  br i1 %i.az, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter96 = and i32 %5, 5                     ; 3 uses
  %i.ba = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.ba, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter100 = and i32 %5, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod98.not = icmp eq i32 %xtraiter96, 0
  br i1 %lcmp.mod98.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod99 = icmp ne i32 %xtraiter96, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter97 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter97.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28111
  %epil.iter97.next = add i32 %epil.iter97, 1     ; 2 uses
  %epil.iter97.cmp.not = icmp eq i32 %epil.iter97.next, %xtraiter96
  br i1 %epil.iter97.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !28114

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.bb = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter101 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter101.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28111
  call void @llvm.x86.sse2.pause(), !noalias !28111
  call void @llvm.x86.sse2.pause(), !noalias !28111
  call void @llvm.x86.sse2.pause(), !noalias !28111
  call void @llvm.x86.sse2.pause(), !noalias !28111
  call void @llvm.x86.sse2.pause(), !noalias !28111
  call void @llvm.x86.sse2.pause(), !noalias !28111
  call void @llvm.x86.sse2.pause(), !noalias !28111
  %niter101.next.7 = add i32 %niter101, 8         ; 2 uses
  %niter101.ncmp.7 = icmp eq i32 %niter101.next.7, %unroll_iter100
  br i1 %niter101.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bm, %._crit_edge.loopexit.i20.i ], [ %i.bb, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.bc = load atomic i64, ptr %i.k monotonic, align 128, !noalias !28111 ; 2 uses
  %i.bd = load i64, ptr %i.l, align 16, !noalias !28111, !noundef !4 ; 2 uses
  %i.be = and i64 %i.bd, %i.bc
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.b, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %i.q, align 8, !noalias !28111, !noundef !4
  %i.bh = add i64 %i.bg, %i.ad
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bi = add i64 %.sroa.02.034.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bi, %bb.k ], [ %i.bh, %bb.j ]
  %i.bj = cmpxchg weak ptr %i.k, i64 %.sroa.02.034.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !28111
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  br i1 %i.bk, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %6 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter102 = and i32 %6, 5                    ; 3 uses
  %i.bl = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.bl, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter106 = and i32 %6, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod104.not = icmp eq i32 %xtraiter102, 0
  br i1 %lcmp.mod104.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod105 = icmp ne i32 %xtraiter102, 0
  call void @llvm.assume(i1 %lcmp.mod105)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter103 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter103.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28111
  %epil.iter103.next = add i32 %epil.iter103, 1   ; 2 uses
  %epil.iter103.cmp.not = icmp eq i32 %epil.iter103.next, %xtraiter102
  br i1 %epil.iter103.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !28115

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bm = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter107 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter107.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28111
  call void @llvm.x86.sse2.pause(), !noalias !28111
  call void @llvm.x86.sse2.pause(), !noalias !28111
  call void @llvm.x86.sse2.pause(), !noalias !28111
  call void @llvm.x86.sse2.pause(), !noalias !28111
  call void @llvm.x86.sse2.pause(), !noalias !28111
  call void @llvm.x86.sse2.pause(), !noalias !28111
  call void @llvm.x86.sse2.pause(), !noalias !28111
  %niter107.next.7 = add i32 %niter107, 8         ; 2 uses
  %niter107.ncmp.7 = icmp eq i32 %niter107.next.7, %unroll_iter106
  br i1 %niter107.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

.body.thread29.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread29.loopexit.split-lp:                 ; preds = %bb.z, %bb.u, %bb.p, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.n, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBZ_6marker4SendEL_EEB69_EE4send0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h
  %i.bn = load i32, ptr %i.i, align 8, !range !12185, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bn, 1000000000
  br i1 %.not, label %bb.o, label %bb.n

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  store ptr %i.ah, ptr %i.g, align 8, !alias.scope !28111
  %i.bp = add i64 %.sroa.02.034.i, 1              ; 2 uses
  store i64 %i.bp, ptr %i.j, align 8, !alias.scope !28111
  %.sroa.018.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.018.0.copyload34, ptr %i.ah, align 16, !noalias !28116
  %.sroa.5.0..val.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..val.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx35, i64 88, i1 false)
  store atomic i64 %i.bp, ptr %i.bo release, align 16, !noalias !28119
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bq) #49
  br label %bb.ai

bb.n:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %i.br = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.bs = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %bb.ac unwind label %.body.thread29.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.split, %bb.ad, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !28121
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.421.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bt = load i8, ptr %i.v, align 8, !range !102, !noalias !28124, !noundef !4
  %i.bu = icmp eq i8 %i.bt, 1
  br i1 %i.bu, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !240

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.o
  %i.bv = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc10 unwind label %.body.thread29.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBZ_6marker4SendEL_EEB69_EE4send0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %.noexc10, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bv, %.noexc10 ], [ %i.u, %bb.o ] ; 4 uses
  %i.bx = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28121, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28121
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.w, !prof !52

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !28121
  %i.by = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.q unwind label %.body.thread29.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.by, ptr %i.e, align 8, !noalias !28121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28121
  store ptr %i.g, ptr %i.c, align 8, !noalias !28121
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB13_6marker4SendEL_EEB3V_EE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.by)
          to label %bb.t unwind label %bb.r, !noalias !28121

bb.r:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28131)
  call void @llvm.experimental.noalias.scope.decl(metadata !28134)
  call void @llvm.experimental.noalias.scope.decl(metadata !28137)
  %i.ca = load ptr, ptr %i.e, align 8, !alias.scope !28140, !noalias !28121, !nonnull !4, !noundef !4
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !28141
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.s, label %.body.thread

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %.body.thread unwind label %bb.v, !noalias !28121

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28121
  call void @llvm.experimental.noalias.scope.decl(metadata !28142)
  call void @llvm.experimental.noalias.scope.decl(metadata !28145)
  call void @llvm.experimental.noalias.scope.decl(metadata !28148)
  %i.cd = load ptr, ptr %i.e, align 8, !alias.scope !28151, !noalias !28121, !nonnull !4, !noundef !4
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !28152
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i unwind label %.body.thread29.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28121
  br label %bb.ag

bb.v:                                             ; preds = %bb.ab, %bb.s
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !28121
  unreachable

bb.w:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28121
  store ptr %i.bx, ptr %i.d, align 8, !noalias !28121
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store atomic i64 0, ptr %i.ch release, align 8, !noalias !28121
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store atomic ptr null, ptr %i.ci release, align 8, !noalias !28121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28121
  store ptr %i.g, ptr %i.b, align 8, !noalias !28121
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB13_6marker4SendEL_EEB3V_EE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bx)
          to label %bb.x unwind label %bb.aa, !noalias !28121

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28121
  %i.cj = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28121, !noundef !4 ; 3 uses
  store ptr %i.cj, ptr %i.a, align 8, !noalias !28121
  store ptr %i.bx, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28121
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !28153
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %.body.thread29.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28121
  br label %bb.ag

bb.aa:                                            ; preds = %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !28162
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.ab, label %.body.thread
end_hunk_5
begin_hunk_6_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28171

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.i, %bb.h
  %i.al = add i32 %.sroa.0.07.i, 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.n, %bb.m, %bb.l, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.18.i = phi i32 [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %.sroa.0.07.i, %bb.l ], [ %.sroa.0.07.i, %bb.m ], [ %.sroa.0.07.i, %bb.n ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %.sroa.05.0.i, %bb.l ], [ %.sroa.05.0.i, %bb.m ], [ %.sroa.05.0.i, %bb.n ]
  %.pre.i = load i64, ptr %i.a, align 16
  br label %bb.d

bb.j:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.m, align 8, !noundef !4
  %i.an = add i64 %i.am, %i.v
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.an, %bb.j ], [ %i.ab, %bb.f ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28172)
  %i.ao = load i64, ptr %i.z, align 16, !range !1400, !alias.scope !28172, !noundef !4
  %i.ap = icmp eq i64 %i.ao, -9223372036854775743
  br i1 %i.ap, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28181)
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !28184, !nonnull !4, !noundef !4
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !28184
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.n:                                             ; preds = %bb.k
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.z)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4recvCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [96 x i8], align 16               ; 4 uses
  %i.h = alloca [96 x i8], align 16               ; 6 uses
  %.sroa.4 = alloca [88 x i8], align 8            ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2c_5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !28185)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, %bb.b
  %.sroa.0.029.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.029.i.be, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge ] ; 14 uses
  %i.u = load atomic i64, ptr %1 monotonic, align 128, !noalias !28185 ; 7 uses
  %i.v = load i64, ptr %i.m, align 16, !noalias !28185, !noundef !4
  %i.w = add i64 %i.v, -1
  %i.x = and i64 %i.w, %i.u                       ; 3 uses
  %i.y = load i64, ptr %i.n, align 8, !noalias !28185, !noundef !4
  %i.z = sub i64 0, %i.y
  %i.aa = and i64 %i.u, %i.z
  %i.ab = load ptr, ptr %i.o, align 8, !noalias !28185, !nonnull !4, !noundef !4
  %i.ac = load i64, ptr %i.p, align 32, !noalias !28185, !noundef !4
  %i.ad = icmp ult i64 %i.x, %i.ac
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [112 x i8], ptr %i.ab, i64 %i.x ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ag = load atomic i64, ptr %i.af acquire, align 8, !noalias !28185 ; 3 uses
  %i.ah = add i64 %i.u, 1
  %i.ai = icmp eq i64 %i.ah, %i.ag
  br i1 %i.ai, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.aj = icmp eq i64 %i.ag, %i.u
  br i1 %i.aj, label %bb.h, label %bb.e

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.ak = add nuw i64 %i.x, 1
  %i.al = load i64, ptr %i.r, align 128, !noalias !28185, !noundef !4
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.an = icmp ult i32 %.sroa.0.029.i, 7
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28185
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.ao = mul nuw i32 %.sroa.0.029.i, %.sroa.0.029.i ; 2 uses
  %xtraiter = and i32 %i.ao, 7                    ; 3 uses
  %i.ap = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.ap, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ao, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28185
  call void @llvm.x86.sse2.pause(), !noalias !28185
  call void @llvm.x86.sse2.pause(), !noalias !28185
  call void @llvm.x86.sse2.pause(), !noalias !28185
  call void @llvm.x86.sse2.pause(), !noalias !28185
  call void @llvm.x86.sse2.pause(), !noalias !28185
  call void @llvm.x86.sse2.pause(), !noalias !28185
  call void @llvm.x86.sse2.pause(), !noalias !28185
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod65 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28185
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28188

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.aq = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.ar = load atomic i64, ptr %i.q monotonic, align 128, !noalias !28185 ; 2 uses
  %i.as = load i64, ptr %i.m, align 16, !noalias !28185, !noundef !4 ; 2 uses
  %i.at = xor i64 %i.as, -1
  %i.au = and i64 %i.ar, %i.at
  %i.av = icmp eq i64 %i.au, %i.u
  br i1 %i.av, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter66 = and i32 %4, 5                     ; 3 uses
  %i.aw = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.aw, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter70 = and i32 %4, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod68.not = icmp eq i32 %xtraiter66, 0
  br i1 %lcmp.mod68.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod69 = icmp ne i32 %xtraiter66, 0
  call void @llvm.assume(i1 %lcmp.mod69)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter67 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter67.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28185
  %epil.iter67.next = add i32 %epil.iter67, 1     ; 2 uses
  %epil.iter67.cmp.not = icmp eq i32 %epil.iter67.next, %xtraiter66
  br i1 %epil.iter67.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !28189

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ax = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter71 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter71.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28185
  call void @llvm.x86.sse2.pause(), !noalias !28185
  call void @llvm.x86.sse2.pause(), !noalias !28185
  call void @llvm.x86.sse2.pause(), !noalias !28185
  call void @llvm.x86.sse2.pause(), !noalias !28185
  call void @llvm.x86.sse2.pause(), !noalias !28185
  call void @llvm.x86.sse2.pause(), !noalias !28185
  call void @llvm.x86.sse2.pause(), !noalias !28185
  %niter71.next.7 = add i32 %niter71, 8           ; 2 uses
  %niter71.ncmp.7 = icmp eq i32 %niter71.next.7, %unroll_iter70
  br i1 %niter71.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

bb.j:                                             ; preds = %bb.h
  %i.ay = and i64 %i.as, %i.ar
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %bb.d
  %i.ba = load i64, ptr %i.n, align 8, !noalias !28185, !noundef !4
  %i.bb = add i64 %i.ba, %i.aa
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.bb, %bb.k ], [ %i.ag, %bb.d ]
  %i.bc = cmpxchg weak ptr %1, i64 %i.u, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !28185
  %i.bd = extractvalue { i64, i1 } %i.bc, 1
  br i1 %i.bd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter72 = and i32 %5, 5                     ; 3 uses
  %i.be = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.be, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter76 = and i32 %5, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod74.not = icmp eq i32 %xtraiter72, 0
  br i1 %lcmp.mod74.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod75 = icmp ne i32 %xtraiter72, 0
  call void @llvm.assume(i1 %lcmp.mod75)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter73 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter73.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28185
  %epil.iter73.next = add i32 %epil.iter73, 1     ; 2 uses
  %epil.iter73.cmp.not = icmp eq i32 %epil.iter73.next, %xtraiter72
  br i1 %epil.iter73.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !28190

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bf = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.029.i.be = phi i32 [ %i.aq, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bf, %._crit_edge.loopexit.i20.i ], [ %i.ax, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter77 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter77.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28185
  call void @llvm.x86.sse2.pause(), !noalias !28185
  call void @llvm.x86.sse2.pause(), !noalias !28185
  call void @llvm.x86.sse2.pause(), !noalias !28185
  call void @llvm.x86.sse2.pause(), !noalias !28185
  call void @llvm.x86.sse2.pause(), !noalias !28185
  call void @llvm.x86.sse2.pause(), !noalias !28185
  call void @llvm.x86.sse2.pause(), !noalias !28185
  %niter77.next.7 = add i32 %niter77, 8           ; 2 uses
  %niter77.ncmp.7 = icmp eq i32 %niter77.next.7, %unroll_iter76
  br i1 %niter77.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.j
  %i.bg = load i32, ptr %i.k, align 8, !range !12185, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bg, 1000000000
  br i1 %.not, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  store ptr %i.ae, ptr %i.i, align 8, !alias.scope !28185
  %i.bi = load i64, ptr %i.n, align 8, !noalias !28185, !noundef !4
  %i.bj = add i64 %i.bi, %i.u                     ; 2 uses
  store i64 %i.bj, ptr %i.l, align 8, !alias.scope !28185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !28191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.g, ptr noundef nonnull align 16 dereferenceable(96) %i.ae, i64 96, i1 false), !noalias !28191
  store atomic i64 %i.bj, ptr %i.bh release, align 16, !noalias !28191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.h, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !28191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bk)
          to label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.o, !noalias !28191

bb.o:                                             ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.h) #46
          to label %common.resume unwind label %bb.p, !noalias !28191

bb.p:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !28191
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.u, %bb.ac, %bb.ad, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.o ], [ %i.by, %bb.t ], [ %i.cm, %bb.ac ], [ %i.by, %bb.u ], [ %i.cm, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.n
  %.sroa.0.0.copyload2 = load i64, ptr %i.h, align 16 ; 2 uses
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx3, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !28191
  %i.bn = icmp eq i64 %.sroa.0.0.copyload2, -9223372036854775742
  br i1 %i.bn, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.ah

bb.q:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit
  %i.bo = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.bp = call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.bq = extractvalue { i64, i32 } %i.bp, 0      ; 2 uses
  %i.br = icmp eq i64 %i.bq, %i.bo
  br i1 %i.br, label %.split, label %bb.ae

bb.r:                                             ; preds = %.split, %bb.ae, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !28194
  store ptr %i.i, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.45.0..sroa_idx, align 8
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bs = load i8, ptr %i.t, align 8, !range !102, !noalias !28197, !noundef !4
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !240

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.r
  %i.bu = call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.s, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !28194 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB3Q_5error5ErrorEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.r
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bu, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.s, %bb.r ] ; 4 uses
  %i.bw = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28194, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28194
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %bb.s, label %bb.y, !prof !52

bb.s:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !28194
  %i.bx = call noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !28194 ; 2 uses
  store ptr %i.bx, ptr %i.e, align 8, !noalias !28194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28194
  store ptr %i.i, ptr %i.c, align 8, !noalias !28194
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1C_5error5ErrorEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bx)
          to label %bb.v unwind label %bb.t, !noalias !28194

bb.t:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28204)
  call void @llvm.experimental.noalias.scope.decl(metadata !28207)
  call void @llvm.experimental.noalias.scope.decl(metadata !28210)
  %i.bz = load ptr, ptr %i.e, align 8, !alias.scope !28213, !noalias !28194, !nonnull !4, !noundef !4
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !28214
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.u, label %common.resume

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %common.resume unwind label %bb.x, !noalias !28194

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28194
  call void @llvm.experimental.noalias.scope.decl(metadata !28215)
  call void @llvm.experimental.noalias.scope.decl(metadata !28218)
  call void @llvm.experimental.noalias.scope.decl(metadata !28221)
  %i.cc = load ptr, ptr %i.e, align 8, !alias.scope !28224, !noalias !28194, !nonnull !4, !noundef !4
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !28225
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45, !noalias !28194
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28194
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2c_5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %bb.ad, %bb.u
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !28194
  unreachable

bb.y:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28194
  store ptr %i.bw, ptr %i.d, align 8, !noalias !28194
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store atomic i64 0, ptr %i.cg release, align 8, !noalias !28194
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store atomic ptr null, ptr %i.ch release, align 8, !noalias !28194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28194
  store ptr %i.i, ptr %i.b, align 8, !noalias !28194
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1C_5error5ErrorEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bw)
          to label %bb.z unwind label %bb.ac, !noalias !28194

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28194
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28194, !noundef !4 ; 3 uses
  store ptr %i.ci, ptr %i.a, align 8, !noalias !28194
  store ptr %i.bw, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28194
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !28226
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
end_hunk_6
begin_hunk_7_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28194
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2c_5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ac:                                            ; preds = %bb.y
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !28235
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.ad, label %common.resume

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #45
          to label %common.resume unwind label %bb.x, !noalias !28194

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB3Q_5error5ErrorEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2e_5error5ErrorEE4recvs_0uEs0_0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.f), !noalias !28194
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2c_5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB2c_5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB3Q_5error5ErrorEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !28194
  br label %bb.b

.split:                                           ; preds = %bb.q
  %i.cp = extractvalue { i64, i32 } %i.bp, 1      ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 1000000000
  call void @llvm.assume(i1 %i.cq)
  %.not18 = icmp samesign ult i32 %i.cp, %i.bg
  br i1 %.not18, label %bb.r, label %bb.af

bb.ae:                                            ; preds = %bb.q
  %.not17 = icmp slt i64 %i.bq, %i.bo
  br i1 %.not17, label %bb.r, label %bb.af

bb.af:                                            ; preds = %.split, %bb.ae
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cr, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.ah, %bb.af
  %storemerge = phi i64 [ -9223372036854775742, %bb.af ], [ %.sroa.0.0.copyload2, %bb.ah ], [ -9223372036854775742, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cs, align 8
  br label %bb.ag

bb.ah:                                            ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, i64 88, i1 false)
  br label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !noalias !28242 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !noalias !28242, !noundef !4 ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ag
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cv, %bb.ag ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.cu, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !28245)
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bd, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ]
  %.sroa.02.034.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 8 uses
  %.sroa.0.02933.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1
  %i.aa = and i64 %i.z, %.sroa.02.034.i           ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !noalias !28245, !noundef !4
  %i.ac = sub i64 0, %i.ab
  %i.ad = and i64 %.sroa.02.034.i, %i.ac
  %i.ae = load ptr, ptr %i.r, align 8, !noalias !28245, !nonnull !4, !noundef !4
  %i.af = load i64, ptr %i.s, align 32, !noalias !28245, !noundef !4
  %i.ag = icmp ult i64 %i.aa, %i.af
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %i.aa ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8, !noalias !28245 ; 2 uses
  %i.ak = icmp eq i64 %.sroa.02.034.i, %i.aj
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = load i64, ptr %i.q, align 8, !noalias !28245, !noundef !4
  %i.am = add i64 %i.al, %i.aj
  %i.an = add i64 %.sroa.02.034.i, 1
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ap = add nuw i64 %i.aa, 1
  %i.aq = load i64, ptr %i.t, align 128, !noalias !28245, !noundef !4
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.as = icmp ult i32 %.sroa.0.02933.i, 7
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.body.thread29.loopexit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.at = mul nuw i32 %.sroa.0.02933.i, %.sroa.0.02933.i ; 2 uses
  %xtraiter = and i32 %i.at, 7                    ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.au, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.at, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28245
  call void @llvm.x86.sse2.pause(), !noalias !28245
  call void @llvm.x86.sse2.pause(), !noalias !28245
  call void @llvm.x86.sse2.pause(), !noalias !28245
  call void @llvm.x86.sse2.pause(), !noalias !28245
  call void @llvm.x86.sse2.pause(), !noalias !28245
  call void @llvm.x86.sse2.pause(), !noalias !28245
  call void @llvm.x86.sse2.pause(), !noalias !28245
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod95 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28245
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28247

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.g
  %i.av = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.aw = load atomic i64, ptr %1 monotonic, align 128, !noalias !28245
  %i.ax = load i64, ptr %i.q, align 8, !noalias !28245, !noundef !4
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = icmp eq i64 %i.ay, %.sroa.02.034.i
  br i1 %i.az, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter96 = and i32 %5, 5                     ; 3 uses
  %i.ba = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.ba, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter100 = and i32 %5, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod98.not = icmp eq i32 %xtraiter96, 0
  br i1 %lcmp.mod98.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod99 = icmp ne i32 %xtraiter96, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter97 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter97.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28245
  %epil.iter97.next = add i32 %epil.iter97, 1     ; 2 uses
  %epil.iter97.cmp.not = icmp eq i32 %epil.iter97.next, %xtraiter96
  br i1 %epil.iter97.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !28248

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.bb = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter101 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter101.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28245
  call void @llvm.x86.sse2.pause(), !noalias !28245
  call void @llvm.x86.sse2.pause(), !noalias !28245
  call void @llvm.x86.sse2.pause(), !noalias !28245
  call void @llvm.x86.sse2.pause(), !noalias !28245
  call void @llvm.x86.sse2.pause(), !noalias !28245
  call void @llvm.x86.sse2.pause(), !noalias !28245
  call void @llvm.x86.sse2.pause(), !noalias !28245
  %niter101.next.7 = add i32 %niter101, 8         ; 2 uses
  %niter101.ncmp.7 = icmp eq i32 %niter101.next.7, %unroll_iter100
  br i1 %niter101.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bm, %._crit_edge.loopexit.i20.i ], [ %i.bb, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.bc = load atomic i64, ptr %i.k monotonic, align 128, !noalias !28245 ; 2 uses
  %i.bd = load i64, ptr %i.l, align 16, !noalias !28245, !noundef !4 ; 2 uses
  %i.be = and i64 %i.bd, %i.bc
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.b, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %i.q, align 8, !noalias !28245, !noundef !4
  %i.bh = add i64 %i.bg, %i.ad
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bi = add i64 %.sroa.02.034.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bi, %bb.k ], [ %i.bh, %bb.j ]
  %i.bj = cmpxchg weak ptr %i.k, i64 %.sroa.02.034.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !28245
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  br i1 %i.bk, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %6 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter102 = and i32 %6, 5                    ; 3 uses
  %i.bl = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.bl, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter106 = and i32 %6, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod104.not = icmp eq i32 %xtraiter102, 0
  br i1 %lcmp.mod104.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod105 = icmp ne i32 %xtraiter102, 0
  call void @llvm.assume(i1 %lcmp.mod105)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter103 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter103.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28245
  %epil.iter103.next = add i32 %epil.iter103, 1   ; 2 uses
  %epil.iter103.cmp.not = icmp eq i32 %epil.iter103.next, %xtraiter102
  br i1 %epil.iter103.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !28249

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bm = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter107 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter107.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28245
  call void @llvm.x86.sse2.pause(), !noalias !28245
  call void @llvm.x86.sse2.pause(), !noalias !28245
  call void @llvm.x86.sse2.pause(), !noalias !28245
  call void @llvm.x86.sse2.pause(), !noalias !28245
  call void @llvm.x86.sse2.pause(), !noalias !28245
  call void @llvm.x86.sse2.pause(), !noalias !28245
  call void @llvm.x86.sse2.pause(), !noalias !28245
  %niter107.next.7 = add i32 %niter107, 8         ; 2 uses
  %niter107.ncmp.7 = icmp eq i32 %niter107.next.7, %unroll_iter106
  br i1 %niter107.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

.body.thread29.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread29.loopexit.split-lp:                 ; preds = %bb.z, %bb.u, %bb.p, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.n, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB3Q_5error5ErrorEE4send0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h
  %i.bn = load i32, ptr %i.i, align 8, !range !12185, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bn, 1000000000
  br i1 %.not, label %bb.o, label %bb.n

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  store ptr %i.ah, ptr %i.g, align 8, !alias.scope !28245
  %i.bp = add i64 %.sroa.02.034.i, 1              ; 2 uses
  store i64 %i.bp, ptr %i.j, align 8, !alias.scope !28245
  %.sroa.018.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.018.0.copyload34, ptr %i.ah, align 16, !noalias !28250
  %.sroa.5.0..val.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..val.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx35, i64 88, i1 false)
  store atomic i64 %i.bp, ptr %i.bo release, align 16, !noalias !28253
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bq) #49
  br label %bb.ai

bb.n:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %i.br = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.bs = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %bb.ac unwind label %.body.thread29.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.split, %bb.ad, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !28255
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.421.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bt = load i8, ptr %i.v, align 8, !range !102, !noalias !28258, !noundef !4
  %i.bu = icmp eq i8 %i.bt, 1
  br i1 %i.bu, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !240

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.o
  %i.bv = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc10 unwind label %.body.thread29.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB3Q_5error5ErrorEE4send0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %.noexc10, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bv, %.noexc10 ], [ %i.u, %bb.o ] ; 4 uses
  %i.bx = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28255, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28255
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.w, !prof !52

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !28255
  %i.by = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.q unwind label %.body.thread29.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.by, ptr %i.e, align 8, !noalias !28255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28255
  store ptr %i.g, ptr %i.c, align 8, !noalias !28255
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1C_5error5ErrorEE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.by)
          to label %bb.t unwind label %bb.r, !noalias !28255

bb.r:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28265)
  call void @llvm.experimental.noalias.scope.decl(metadata !28268)
  call void @llvm.experimental.noalias.scope.decl(metadata !28271)
  %i.ca = load ptr, ptr %i.e, align 8, !alias.scope !28274, !noalias !28255, !nonnull !4, !noundef !4
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !28275
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.s, label %.body.thread

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %.body.thread unwind label %bb.v, !noalias !28255

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28255
  call void @llvm.experimental.noalias.scope.decl(metadata !28276)
  call void @llvm.experimental.noalias.scope.decl(metadata !28279)
  call void @llvm.experimental.noalias.scope.decl(metadata !28282)
  %i.cd = load ptr, ptr %i.e, align 8, !alias.scope !28285, !noalias !28255, !nonnull !4, !noundef !4
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !28286
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i unwind label %.body.thread29.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28255
  br label %bb.ag

bb.v:                                             ; preds = %bb.ab, %bb.s
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !28255
  unreachable

bb.w:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28255
  store ptr %i.bx, ptr %i.d, align 8, !noalias !28255
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store atomic i64 0, ptr %i.ch release, align 8, !noalias !28255
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store atomic ptr null, ptr %i.ci release, align 8, !noalias !28255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28255
  store ptr %i.g, ptr %i.b, align 8, !noalias !28255
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1C_5error5ErrorEE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bx)
          to label %bb.x unwind label %bb.aa, !noalias !28255

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28255
  %i.cj = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28255, !noundef !4 ; 3 uses
  store ptr %i.cj, ptr %i.a, align 8, !noalias !28255
  store ptr %i.bx, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28255
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !28287
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %.body.thread29.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28255
  br label %bb.ag

bb.aa:                                            ; preds = %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !28296
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.ab, label %.body.thread
end_hunk_7
begin_hunk_8_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28305

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.i, %bb.h
  %i.al = add i32 %.sroa.0.07.i, 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.18.i = phi i32 [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %.sroa.0.07.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.0.07.i, %bb.o ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %.sroa.05.0.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.05.0.i, %bb.o ]
  %.pre.i = load i64, ptr %i.a, align 16
  br label %bb.d

bb.j:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.m, align 8, !noundef !4
  %i.an = add i64 %i.am, %i.v
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.an, %bb.j ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ao = load i64, ptr %i.z, align 16, !range !58, !alias.scope !28306, !noundef !4
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.aq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.aq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %bb.m
  resume { ptr, i32 } %i.ar

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.l
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.aq)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.o:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.at)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4recvCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [112 x i8], align 16              ; 4 uses
  %i.h = alloca [112 x i8], align 16              ; 6 uses
  %.sroa.4 = alloca [104 x i8], align 8           ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2c_5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !28309)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, %bb.b
  %.sroa.0.029.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.029.i.be, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge ] ; 14 uses
  %i.u = load atomic i64, ptr %1 monotonic, align 128, !noalias !28309 ; 7 uses
  %i.v = load i64, ptr %i.m, align 16, !noalias !28309, !noundef !4
  %i.w = add i64 %i.v, -1
  %i.x = and i64 %i.w, %i.u                       ; 3 uses
  %i.y = load i64, ptr %i.n, align 8, !noalias !28309, !noundef !4
  %i.z = sub i64 0, %i.y
  %i.aa = and i64 %i.u, %i.z
  %i.ab = load ptr, ptr %i.o, align 8, !noalias !28309, !nonnull !4, !noundef !4
  %i.ac = load i64, ptr %i.p, align 32, !noalias !28309, !noundef !4
  %i.ad = icmp ult i64 %i.x, %i.ac
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.ab, i64 %i.x ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.ag = load atomic i64, ptr %i.af acquire, align 8, !noalias !28309 ; 3 uses
  %i.ah = add i64 %i.u, 1
  %i.ai = icmp eq i64 %i.ah, %i.ag
  br i1 %i.ai, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.aj = icmp eq i64 %i.ag, %i.u
  br i1 %i.aj, label %bb.h, label %bb.e

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.ak = add nuw i64 %i.x, 1
  %i.al = load i64, ptr %i.r, align 128, !noalias !28309, !noundef !4
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.an = icmp ult i32 %.sroa.0.029.i, 7
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28309
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.ao = mul nuw i32 %.sroa.0.029.i, %.sroa.0.029.i ; 2 uses
  %xtraiter = and i32 %i.ao, 7                    ; 3 uses
  %i.ap = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.ap, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ao, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28309
  call void @llvm.x86.sse2.pause(), !noalias !28309
  call void @llvm.x86.sse2.pause(), !noalias !28309
  call void @llvm.x86.sse2.pause(), !noalias !28309
  call void @llvm.x86.sse2.pause(), !noalias !28309
  call void @llvm.x86.sse2.pause(), !noalias !28309
  call void @llvm.x86.sse2.pause(), !noalias !28309
  call void @llvm.x86.sse2.pause(), !noalias !28309
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod65 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28309
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28312

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.aq = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.ar = load atomic i64, ptr %i.q monotonic, align 128, !noalias !28309 ; 2 uses
  %i.as = load i64, ptr %i.m, align 16, !noalias !28309, !noundef !4 ; 2 uses
  %i.at = xor i64 %i.as, -1
  %i.au = and i64 %i.ar, %i.at
  %i.av = icmp eq i64 %i.au, %i.u
  br i1 %i.av, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter66 = and i32 %4, 5                     ; 3 uses
  %i.aw = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.aw, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter70 = and i32 %4, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod68.not = icmp eq i32 %xtraiter66, 0
  br i1 %lcmp.mod68.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod69 = icmp ne i32 %xtraiter66, 0
  call void @llvm.assume(i1 %lcmp.mod69)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter67 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter67.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28309
  %epil.iter67.next = add i32 %epil.iter67, 1     ; 2 uses
  %epil.iter67.cmp.not = icmp eq i32 %epil.iter67.next, %xtraiter66
  br i1 %epil.iter67.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !28313

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ax = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter71 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter71.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28309
  call void @llvm.x86.sse2.pause(), !noalias !28309
  call void @llvm.x86.sse2.pause(), !noalias !28309
  call void @llvm.x86.sse2.pause(), !noalias !28309
  call void @llvm.x86.sse2.pause(), !noalias !28309
  call void @llvm.x86.sse2.pause(), !noalias !28309
  call void @llvm.x86.sse2.pause(), !noalias !28309
  call void @llvm.x86.sse2.pause(), !noalias !28309
  %niter71.next.7 = add i32 %niter71, 8           ; 2 uses
  %niter71.ncmp.7 = icmp eq i32 %niter71.next.7, %unroll_iter70
  br i1 %niter71.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

bb.j:                                             ; preds = %bb.h
  %i.ay = and i64 %i.as, %i.ar
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %bb.d
  %i.ba = load i64, ptr %i.n, align 8, !noalias !28309, !noundef !4
  %i.bb = add i64 %i.ba, %i.aa
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.bb, %bb.k ], [ %i.ag, %bb.d ]
  %i.bc = cmpxchg weak ptr %1, i64 %i.u, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !28309
  %i.bd = extractvalue { i64, i1 } %i.bc, 1
  br i1 %i.bd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter72 = and i32 %5, 5                     ; 3 uses
  %i.be = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.be, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter76 = and i32 %5, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod74.not = icmp eq i32 %xtraiter72, 0
  br i1 %lcmp.mod74.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod75 = icmp ne i32 %xtraiter72, 0
  call void @llvm.assume(i1 %lcmp.mod75)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter73 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter73.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28309
  %epil.iter73.next = add i32 %epil.iter73, 1     ; 2 uses
  %epil.iter73.cmp.not = icmp eq i32 %epil.iter73.next, %xtraiter72
  br i1 %epil.iter73.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !28314

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bf = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.029.i.be = phi i32 [ %i.aq, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bf, %._crit_edge.loopexit.i20.i ], [ %i.ax, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter77 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter77.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28309
  call void @llvm.x86.sse2.pause(), !noalias !28309
  call void @llvm.x86.sse2.pause(), !noalias !28309
  call void @llvm.x86.sse2.pause(), !noalias !28309
  call void @llvm.x86.sse2.pause(), !noalias !28309
  call void @llvm.x86.sse2.pause(), !noalias !28309
  call void @llvm.x86.sse2.pause(), !noalias !28309
  call void @llvm.x86.sse2.pause(), !noalias !28309
  %niter77.next.7 = add i32 %niter77, 8           ; 2 uses
  %niter77.ncmp.7 = icmp eq i32 %niter77.next.7, %unroll_iter76
  br i1 %niter77.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.j
  %i.bg = load i32, ptr %i.k, align 8, !range !12185, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bg, 1000000000
  br i1 %.not, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  store ptr %i.ae, ptr %i.i, align 8, !alias.scope !28309
  %i.bi = load i64, ptr %i.n, align 8, !noalias !28309, !noundef !4
  %i.bj = add i64 %i.bi, %i.u                     ; 2 uses
  store i64 %i.bj, ptr %i.l, align 8, !alias.scope !28309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !28315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.g, ptr noundef nonnull align 16 dereferenceable(112) %i.ae, i64 112, i1 false), !noalias !28315
  store atomic i64 %i.bj, ptr %i.bh release, align 16, !noalias !28315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.h, ptr noundef nonnull align 16 dereferenceable(112) %i.g, i64 112, i1 false), !noalias !28315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bk)
          to label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.o, !noalias !28315

bb.o:                                             ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.h) #46
          to label %common.resume unwind label %bb.p, !noalias !28315

bb.p:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !28315
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.u, %bb.ac, %bb.ad, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.o ], [ %i.by, %bb.t ], [ %i.cm, %bb.ac ], [ %i.by, %bb.u ], [ %i.cm, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.n
  %.sroa.0.0.copyload2 = load i64, ptr %i.h, align 16 ; 2 uses
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx3, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !28315
  %i.bn = icmp eq i64 %.sroa.0.0.copyload2, 2
  br i1 %i.bn, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.ah

bb.q:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit
  %i.bo = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.bp = call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.bq = extractvalue { i64, i32 } %i.bp, 0      ; 2 uses
  %i.br = icmp eq i64 %i.bq, %i.bo
  br i1 %i.br, label %.split, label %bb.ae

bb.r:                                             ; preds = %.split, %bb.ae, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !28318
  store ptr %i.i, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.45.0..sroa_idx, align 8
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bs = load i8, ptr %i.t, align 8, !range !102, !noalias !28321, !noundef !4
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !240

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.r
  %i.bu = call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.s, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !28318 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3Q_5error5ErrorEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.r
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bu, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.s, %bb.r ] ; 4 uses
  %i.bw = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28318, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28318
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %bb.s, label %bb.y, !prof !52

bb.s:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !28318
  %i.bx = call noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !28318 ; 2 uses
  store ptr %i.bx, ptr %i.e, align 8, !noalias !28318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28318
  store ptr %i.i, ptr %i.c, align 8, !noalias !28318
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1C_5error5ErrorEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bx)
          to label %bb.v unwind label %bb.t, !noalias !28318

bb.t:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28328)
  call void @llvm.experimental.noalias.scope.decl(metadata !28331)
  call void @llvm.experimental.noalias.scope.decl(metadata !28334)
  %i.bz = load ptr, ptr %i.e, align 8, !alias.scope !28337, !noalias !28318, !nonnull !4, !noundef !4
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !28338
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.u, label %common.resume

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %common.resume unwind label %bb.x, !noalias !28318

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28318
  call void @llvm.experimental.noalias.scope.decl(metadata !28339)
  call void @llvm.experimental.noalias.scope.decl(metadata !28342)
  call void @llvm.experimental.noalias.scope.decl(metadata !28345)
  %i.cc = load ptr, ptr %i.e, align 8, !alias.scope !28348, !noalias !28318, !nonnull !4, !noundef !4
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !28349
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45, !noalias !28318
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28318
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2c_5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %bb.ad, %bb.u
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !28318
  unreachable

bb.y:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28318
  store ptr %i.bw, ptr %i.d, align 8, !noalias !28318
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store atomic i64 0, ptr %i.cg release, align 8, !noalias !28318
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store atomic ptr null, ptr %i.ch release, align 8, !noalias !28318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28318
  store ptr %i.i, ptr %i.b, align 8, !noalias !28318
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1C_5error5ErrorEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bw)
          to label %bb.z unwind label %bb.ac, !noalias !28318

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28318
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28318, !noundef !4 ; 3 uses
  store ptr %i.ci, ptr %i.a, align 8, !noalias !28318
  store ptr %i.bw, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28318
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !28350
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
end_hunk_8
begin_hunk_9_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28318
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2c_5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ac:                                            ; preds = %bb.y
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !28359
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.ad, label %common.resume

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #45
          to label %common.resume unwind label %bb.x, !noalias !28318

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3Q_5error5ErrorEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2e_5error5ErrorEE4recvs_0uEs0_0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.f), !noalias !28318
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2c_5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2c_5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3Q_5error5ErrorEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !28318
  br label %bb.b

.split:                                           ; preds = %bb.q
  %i.cp = extractvalue { i64, i32 } %i.bp, 1      ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 1000000000
  call void @llvm.assume(i1 %i.cq)
  %.not18 = icmp samesign ult i32 %i.cp, %i.bg
  br i1 %.not18, label %bb.r, label %bb.af

bb.ae:                                            ; preds = %bb.q
  %.not17 = icmp slt i64 %i.bq, %i.bo
  br i1 %.not17, label %bb.r, label %bb.af

bb.af:                                            ; preds = %.split, %bb.ae
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cr, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.ah, %bb.af
  %storemerge = phi i64 [ 2, %bb.af ], [ %.sroa.0.0.copyload2, %bb.ah ], [ 2, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cs, align 8
  br label %bb.ag

bb.ah:                                            ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4, i64 104, i1 false)
  br label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !noalias !28366 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !noalias !28366, !noundef !4 ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ag
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cv, %bb.ag ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.cu, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !28369)
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bd, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ]
  %.sroa.02.034.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 8 uses
  %.sroa.0.02933.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1
  %i.aa = and i64 %i.z, %.sroa.02.034.i           ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !noalias !28369, !noundef !4
  %i.ac = sub i64 0, %i.ab
  %i.ad = and i64 %.sroa.02.034.i, %i.ac
  %i.ae = load ptr, ptr %i.r, align 8, !noalias !28369, !nonnull !4, !noundef !4
  %i.af = load i64, ptr %i.s, align 32, !noalias !28369, !noundef !4
  %i.ag = icmp ult i64 %i.aa, %i.af
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [128 x i8], ptr %i.ae, i64 %i.aa ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8, !noalias !28369 ; 2 uses
  %i.ak = icmp eq i64 %.sroa.02.034.i, %i.aj
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = load i64, ptr %i.q, align 8, !noalias !28369, !noundef !4
  %i.am = add i64 %i.al, %i.aj
  %i.an = add i64 %.sroa.02.034.i, 1
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ap = add nuw i64 %i.aa, 1
  %i.aq = load i64, ptr %i.t, align 128, !noalias !28369, !noundef !4
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.as = icmp ult i32 %.sroa.0.02933.i, 7
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.body.thread29.loopexit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.at = mul nuw i32 %.sroa.0.02933.i, %.sroa.0.02933.i ; 2 uses
  %xtraiter = and i32 %i.at, 7                    ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.au, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.at, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28369
  call void @llvm.x86.sse2.pause(), !noalias !28369
  call void @llvm.x86.sse2.pause(), !noalias !28369
  call void @llvm.x86.sse2.pause(), !noalias !28369
  call void @llvm.x86.sse2.pause(), !noalias !28369
  call void @llvm.x86.sse2.pause(), !noalias !28369
  call void @llvm.x86.sse2.pause(), !noalias !28369
  call void @llvm.x86.sse2.pause(), !noalias !28369
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod95 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28369
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28371

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.g
  %i.av = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.aw = load atomic i64, ptr %1 monotonic, align 128, !noalias !28369
  %i.ax = load i64, ptr %i.q, align 8, !noalias !28369, !noundef !4
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = icmp eq i64 %i.ay, %.sroa.02.034.i
  br i1 %i.az, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter96 = and i32 %5, 5                     ; 3 uses
  %i.ba = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.ba, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter100 = and i32 %5, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod98.not = icmp eq i32 %xtraiter96, 0
  br i1 %lcmp.mod98.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod99 = icmp ne i32 %xtraiter96, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter97 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter97.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28369
  %epil.iter97.next = add i32 %epil.iter97, 1     ; 2 uses
  %epil.iter97.cmp.not = icmp eq i32 %epil.iter97.next, %xtraiter96
  br i1 %epil.iter97.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !28372

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.bb = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter101 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter101.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28369
  call void @llvm.x86.sse2.pause(), !noalias !28369
  call void @llvm.x86.sse2.pause(), !noalias !28369
  call void @llvm.x86.sse2.pause(), !noalias !28369
  call void @llvm.x86.sse2.pause(), !noalias !28369
  call void @llvm.x86.sse2.pause(), !noalias !28369
  call void @llvm.x86.sse2.pause(), !noalias !28369
  call void @llvm.x86.sse2.pause(), !noalias !28369
  %niter101.next.7 = add i32 %niter101, 8         ; 2 uses
  %niter101.ncmp.7 = icmp eq i32 %niter101.next.7, %unroll_iter100
  br i1 %niter101.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bm, %._crit_edge.loopexit.i20.i ], [ %i.bb, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.bc = load atomic i64, ptr %i.k monotonic, align 128, !noalias !28369 ; 2 uses
  %i.bd = load i64, ptr %i.l, align 16, !noalias !28369, !noundef !4 ; 2 uses
  %i.be = and i64 %i.bd, %i.bc
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.b, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %i.q, align 8, !noalias !28369, !noundef !4
  %i.bh = add i64 %i.bg, %i.ad
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bi = add i64 %.sroa.02.034.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bi, %bb.k ], [ %i.bh, %bb.j ]
  %i.bj = cmpxchg weak ptr %i.k, i64 %.sroa.02.034.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !28369
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  br i1 %i.bk, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %6 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter102 = and i32 %6, 5                    ; 3 uses
  %i.bl = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.bl, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter106 = and i32 %6, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod104.not = icmp eq i32 %xtraiter102, 0
  br i1 %lcmp.mod104.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod105 = icmp ne i32 %xtraiter102, 0
  call void @llvm.assume(i1 %lcmp.mod105)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter103 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter103.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28369
  %epil.iter103.next = add i32 %epil.iter103, 1   ; 2 uses
  %epil.iter103.cmp.not = icmp eq i32 %epil.iter103.next, %xtraiter102
  br i1 %epil.iter103.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !28373

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bm = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter107 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter107.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28369
  call void @llvm.x86.sse2.pause(), !noalias !28369
  call void @llvm.x86.sse2.pause(), !noalias !28369
  call void @llvm.x86.sse2.pause(), !noalias !28369
  call void @llvm.x86.sse2.pause(), !noalias !28369
  call void @llvm.x86.sse2.pause(), !noalias !28369
  call void @llvm.x86.sse2.pause(), !noalias !28369
  call void @llvm.x86.sse2.pause(), !noalias !28369
  %niter107.next.7 = add i32 %niter107, 8         ; 2 uses
  %niter107.ncmp.7 = icmp eq i32 %niter107.next.7, %unroll_iter106
  br i1 %niter107.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

.body.thread29.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread29.loopexit.split-lp:                 ; preds = %bb.z, %bb.u, %bb.p, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.n, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3Q_5error5ErrorEE4send0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h
  %i.bn = load i32, ptr %i.i, align 8, !range !12185, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bn, 1000000000
  br i1 %.not, label %bb.o, label %bb.n

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  store ptr %i.ah, ptr %i.g, align 8, !alias.scope !28369
  %i.bp = add i64 %.sroa.02.034.i, 1              ; 2 uses
  store i64 %i.bp, ptr %i.j, align 8, !alias.scope !28369
  %.sroa.018.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.018.0.copyload34, ptr %i.ah, align 16, !noalias !28374
  %.sroa.5.0..val.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..val.sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx35, i64 104, i1 false)
  store atomic i64 %i.bp, ptr %i.bo release, align 16, !noalias !28377
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bq) #49
  br label %bb.ai

bb.n:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %i.br = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.bs = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %bb.ac unwind label %.body.thread29.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.split, %bb.ad, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !28379
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.421.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bt = load i8, ptr %i.v, align 8, !range !102, !noalias !28382, !noundef !4
  %i.bu = icmp eq i8 %i.bt, 1
  br i1 %i.bu, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !240

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.o
  %i.bv = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc10 unwind label %.body.thread29.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3Q_5error5ErrorEE4send0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %.noexc10, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bv, %.noexc10 ], [ %i.u, %bb.o ] ; 4 uses
  %i.bx = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28379, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28379
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.w, !prof !52

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !28379
  %i.by = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.q unwind label %.body.thread29.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.by, ptr %i.e, align 8, !noalias !28379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28379
  store ptr %i.g, ptr %i.c, align 8, !noalias !28379
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1C_5error5ErrorEE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.by)
          to label %bb.t unwind label %bb.r, !noalias !28379

bb.r:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28389)
  call void @llvm.experimental.noalias.scope.decl(metadata !28392)
  call void @llvm.experimental.noalias.scope.decl(metadata !28395)
  %i.ca = load ptr, ptr %i.e, align 8, !alias.scope !28398, !noalias !28379, !nonnull !4, !noundef !4
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !28399
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.s, label %.body.thread

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %.body.thread unwind label %bb.v, !noalias !28379

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28379
  call void @llvm.experimental.noalias.scope.decl(metadata !28400)
  call void @llvm.experimental.noalias.scope.decl(metadata !28403)
  call void @llvm.experimental.noalias.scope.decl(metadata !28406)
  %i.cd = load ptr, ptr %i.e, align 8, !alias.scope !28409, !noalias !28379, !nonnull !4, !noundef !4
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !28410
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i unwind label %.body.thread29.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28379
  br label %bb.ag

bb.v:                                             ; preds = %bb.ab, %bb.s
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !28379
  unreachable

bb.w:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28379
  store ptr %i.bx, ptr %i.d, align 8, !noalias !28379
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store atomic i64 0, ptr %i.ch release, align 8, !noalias !28379
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store atomic ptr null, ptr %i.ci release, align 8, !noalias !28379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28379
  store ptr %i.g, ptr %i.b, align 8, !noalias !28379
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1C_5error5ErrorEE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bx)
          to label %bb.x unwind label %bb.aa, !noalias !28379

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28379
  %i.cj = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28379, !noundef !4 ; 3 uses
  store ptr %i.cj, ptr %i.a, align 8, !noalias !28379
  store ptr %i.bx, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28379
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !28411
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %.body.thread29.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28379
  br label %bb.ag

bb.aa:                                            ; preds = %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !28420
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.ab, label %.body.thread
end_hunk_9
begin_hunk_10_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.aj, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28429

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.i, %bb.h
  %i.al = add i32 %.sroa.0.07.i, 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.l, %bb.k, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.18.i = phi i32 [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %.sroa.0.07.i, %bb.k ], [ %.sroa.0.07.i, %bb.l ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %.sroa.05.0.i, %bb.k ], [ %.sroa.05.0.i, %bb.l ]
  %.pre.i = load i64, ptr %i.a, align 16
  br label %bb.d

bb.j:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.m, align 8, !noundef !4
  %i.an = add i64 %i.am, %i.v
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.an, %bb.j ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ao = load i64, ptr %i.z, align 16, !range !1400, !alias.scope !28430, !noundef !4
  %i.ap = icmp eq i64 %i.ao, -9223372036854775743
  br i1 %i.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.z)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [96 x i8], align 16               ; 4 uses
  %i.h = alloca [96 x i8], align 16               ; 7 uses
  %.sroa.4 = alloca [88 x i8], align 8            ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !28433)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, %bb.b
  %.sroa.0.029.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.029.i.be, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge ] ; 14 uses
  %i.u = load atomic i64, ptr %1 monotonic, align 128, !noalias !28433 ; 7 uses
  %i.v = load i64, ptr %i.m, align 16, !noalias !28433, !noundef !4
  %i.w = add i64 %i.v, -1
  %i.x = and i64 %i.w, %i.u                       ; 3 uses
  %i.y = load i64, ptr %i.n, align 8, !noalias !28433, !noundef !4
  %i.z = sub i64 0, %i.y
  %i.aa = and i64 %i.u, %i.z
  %i.ab = load ptr, ptr %i.o, align 8, !noalias !28433, !nonnull !4, !noundef !4
  %i.ac = load i64, ptr %i.p, align 32, !noalias !28433, !noundef !4
  %i.ad = icmp ult i64 %i.x, %i.ac
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [112 x i8], ptr %i.ab, i64 %i.x ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ag = load atomic i64, ptr %i.af acquire, align 8, !noalias !28433 ; 3 uses
  %i.ah = add i64 %i.u, 1
  %i.ai = icmp eq i64 %i.ah, %i.ag
  br i1 %i.ai, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.aj = icmp eq i64 %i.ag, %i.u
  br i1 %i.aj, label %bb.h, label %bb.e

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.ak = add nuw i64 %i.x, 1
  %i.al = load i64, ptr %i.r, align 128, !noalias !28433, !noundef !4
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.an = icmp ult i32 %.sroa.0.029.i, 7
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28433
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.ao = mul nuw i32 %.sroa.0.029.i, %.sroa.0.029.i ; 2 uses
  %xtraiter = and i32 %i.ao, 7                    ; 3 uses
  %i.ap = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.ap, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ao, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28433
  call void @llvm.x86.sse2.pause(), !noalias !28433
  call void @llvm.x86.sse2.pause(), !noalias !28433
  call void @llvm.x86.sse2.pause(), !noalias !28433
  call void @llvm.x86.sse2.pause(), !noalias !28433
  call void @llvm.x86.sse2.pause(), !noalias !28433
  call void @llvm.x86.sse2.pause(), !noalias !28433
  call void @llvm.x86.sse2.pause(), !noalias !28433
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod65 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28433
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28436

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.aq = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.ar = load atomic i64, ptr %i.q monotonic, align 128, !noalias !28433 ; 2 uses
  %i.as = load i64, ptr %i.m, align 16, !noalias !28433, !noundef !4 ; 2 uses
  %i.at = xor i64 %i.as, -1
  %i.au = and i64 %i.ar, %i.at
  %i.av = icmp eq i64 %i.au, %i.u
  br i1 %i.av, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter66 = and i32 %4, 5                     ; 3 uses
  %i.aw = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.aw, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter70 = and i32 %4, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod68.not = icmp eq i32 %xtraiter66, 0
  br i1 %lcmp.mod68.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod69 = icmp ne i32 %xtraiter66, 0
  call void @llvm.assume(i1 %lcmp.mod69)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter67 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter67.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28433
  %epil.iter67.next = add i32 %epil.iter67, 1     ; 2 uses
  %epil.iter67.cmp.not = icmp eq i32 %epil.iter67.next, %xtraiter66
  br i1 %epil.iter67.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !28437

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ax = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter71 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter71.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28433
  call void @llvm.x86.sse2.pause(), !noalias !28433
  call void @llvm.x86.sse2.pause(), !noalias !28433
  call void @llvm.x86.sse2.pause(), !noalias !28433
  call void @llvm.x86.sse2.pause(), !noalias !28433
  call void @llvm.x86.sse2.pause(), !noalias !28433
  call void @llvm.x86.sse2.pause(), !noalias !28433
  call void @llvm.x86.sse2.pause(), !noalias !28433
  %niter71.next.7 = add i32 %niter71, 8           ; 2 uses
  %niter71.ncmp.7 = icmp eq i32 %niter71.next.7, %unroll_iter70
  br i1 %niter71.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

bb.j:                                             ; preds = %bb.h
  %i.ay = and i64 %i.as, %i.ar
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %bb.d
  %i.ba = load i64, ptr %i.n, align 8, !noalias !28433, !noundef !4
  %i.bb = add i64 %i.ba, %i.aa
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.bb, %bb.k ], [ %i.ag, %bb.d ]
  %i.bc = cmpxchg weak ptr %1, i64 %i.u, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !28433
  %i.bd = extractvalue { i64, i1 } %i.bc, 1
  br i1 %i.bd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter72 = and i32 %5, 5                     ; 3 uses
  %i.be = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.be, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter76 = and i32 %5, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod74.not = icmp eq i32 %xtraiter72, 0
  br i1 %lcmp.mod74.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod75 = icmp ne i32 %xtraiter72, 0
  call void @llvm.assume(i1 %lcmp.mod75)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter73 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter73.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28433
  %epil.iter73.next = add i32 %epil.iter73, 1     ; 2 uses
  %epil.iter73.cmp.not = icmp eq i32 %epil.iter73.next, %xtraiter72
  br i1 %epil.iter73.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !28438

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bf = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.029.i.be = phi i32 [ %i.aq, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bf, %._crit_edge.loopexit.i20.i ], [ %i.ax, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter77 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter77.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28433
  call void @llvm.x86.sse2.pause(), !noalias !28433
  call void @llvm.x86.sse2.pause(), !noalias !28433
  call void @llvm.x86.sse2.pause(), !noalias !28433
  call void @llvm.x86.sse2.pause(), !noalias !28433
  call void @llvm.x86.sse2.pause(), !noalias !28433
  call void @llvm.x86.sse2.pause(), !noalias !28433
  call void @llvm.x86.sse2.pause(), !noalias !28433
  %niter77.next.7 = add i32 %niter77, 8           ; 2 uses
  %niter77.ncmp.7 = icmp eq i32 %niter77.next.7, %unroll_iter76
  br i1 %niter77.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.j
  %i.bg = load i32, ptr %i.k, align 8, !range !12185, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bg, 1000000000
  br i1 %.not, label %bb.s, label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  store ptr %i.ae, ptr %i.i, align 8, !alias.scope !28433
  %i.bi = load i64, ptr %i.n, align 8, !noalias !28433, !noundef !4
  %i.bj = add i64 %i.bi, %i.u                     ; 2 uses
  store i64 %i.bj, ptr %i.l, align 8, !alias.scope !28433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !28439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.g, ptr noundef nonnull align 16 dereferenceable(96) %i.ae, i64 96, i1 false), !noalias !28439
  store atomic i64 %i.bj, ptr %i.bh release, align 16, !noalias !28439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.h, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !28439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bk)
          to label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.o, !noalias !28439

bb.o:                                             ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load i64, ptr %i.h, align 16, !range !1400, !alias.scope !28442, !noalias !28439, !noundef !4
  %i.bn = icmp eq i64 %i.bm, -9223372036854775743
  br i1 %i.bn, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.h)
          to label %common.resume unwind label %bb.q, !noalias !28439

bb.q:                                             ; preds = %bb.p
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !28439
  unreachable

common.resume:                                    ; preds = %bb.u, %bb.v, %bb.ad, %bb.ae, %bb.o, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.o ], [ %i.bl, %bb.p ], [ %i.ca, %bb.u ], [ %i.co, %bb.ad ], [ %i.ca, %bb.v ], [ %i.co, %bb.ae ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.n
  %.sroa.0.0.copyload2 = load i64, ptr %i.h, align 16 ; 2 uses
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx3, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !28439
  %i.bp = icmp eq i64 %.sroa.0.0.copyload2, -9223372036854775742
  br i1 %i.bp, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.ai

bb.r:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit
  %i.bq = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.br = call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.bs = extractvalue { i64, i32 } %i.br, 0      ; 2 uses
  %i.bt = icmp eq i64 %i.bs, %i.bq
  br i1 %i.bt, label %.split, label %bb.af

bb.s:                                             ; preds = %.split, %bb.af, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !28445
  store ptr %i.i, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.45.0..sroa_idx, align 8
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bu = load i8, ptr %i.t, align 8, !range !102, !noalias !28448, !noundef !4
  %i.bv = icmp eq i8 %i.bu, 1
  br i1 %i.bv, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !240

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.s
  %i.bw = call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.s, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !28445 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.s
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bw, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.s, %bb.s ] ; 4 uses
  %i.by = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28445, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28445
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %bb.t, label %bb.z, !prof !52

bb.t:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !28445
  %i.bz = call noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !28445 ; 2 uses
  store ptr %i.bz, ptr %i.e, align 8, !noalias !28445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28445
  store ptr %i.i, ptr %i.c, align 8, !noalias !28445
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bz)
          to label %bb.w unwind label %bb.u, !noalias !28445

bb.u:                                             ; preds = %bb.t
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28455)
  call void @llvm.experimental.noalias.scope.decl(metadata !28458)
  call void @llvm.experimental.noalias.scope.decl(metadata !28461)
  %i.cb = load ptr, ptr %i.e, align 8, !alias.scope !28464, !noalias !28445, !nonnull !4, !noundef !4
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !28465
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.v, label %common.resume

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %common.resume unwind label %bb.y, !noalias !28445

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28445
  call void @llvm.experimental.noalias.scope.decl(metadata !28466)
  call void @llvm.experimental.noalias.scope.decl(metadata !28469)
  call void @llvm.experimental.noalias.scope.decl(metadata !28472)
  %i.ce = load ptr, ptr %i.e, align 8, !alias.scope !28475, !noalias !28445, !nonnull !4, !noundef !4
  %i.cf = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !28476
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45, !noalias !28445
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28445
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.y:                                             ; preds = %bb.ae, %bb.v
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !28445
  unreachable

bb.z:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28445
  store ptr %i.by, ptr %i.d, align 8, !noalias !28445
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store atomic i64 0, ptr %i.ci release, align 8, !noalias !28445
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store atomic ptr null, ptr %i.cj release, align 8, !noalias !28445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28445
  store ptr %i.i, ptr %i.b, align 8, !noalias !28445
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.by)
          to label %bb.aa unwind label %bb.ad, !noalias !28445

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28445
  %i.ck = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28445, !noundef !4 ; 3 uses
  store ptr %i.ck, ptr %i.a, align 8, !noalias !28445
  store ptr %i.by, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28445
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
end_hunk_10
begin_hunk_11_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28445
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ad:                                            ; preds = %bb.z
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !28486
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.ae, label %common.resume

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #45
          to label %common.resume unwind label %bb.y, !noalias !28445

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0uEs0_0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.f), !noalias !28445
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !28445
  br label %bb.b

.split:                                           ; preds = %bb.r
  %i.cr = extractvalue { i64, i32 } %i.br, 1      ; 2 uses
  %i.cs = icmp ult i32 %i.cr, 1000000000
  call void @llvm.assume(i1 %i.cs)
  %.not18 = icmp samesign ult i32 %i.cr, %i.bg
  br i1 %.not18, label %bb.s, label %bb.ag

bb.af:                                            ; preds = %bb.r
  %.not17 = icmp slt i64 %i.bs, %i.bq
  br i1 %.not17, label %bb.s, label %bb.ag

bb.ag:                                            ; preds = %.split, %bb.af
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ct, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.ai, %bb.ag
  %storemerge = phi i64 [ -9223372036854775742, %bb.ag ], [ %.sroa.0.0.copyload2, %bb.ai ], [ -9223372036854775742, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cu, align 8
  br label %bb.ah

bb.ai:                                            ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, i64 88, i1 false)
  br label %bb.ah
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !noalias !28493 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !noalias !28493, !noundef !4 ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ag
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cv, %bb.ag ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.cu, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !28496)
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bd, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ]
  %.sroa.02.034.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 8 uses
  %.sroa.0.02933.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1
  %i.aa = and i64 %i.z, %.sroa.02.034.i           ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !noalias !28496, !noundef !4
  %i.ac = sub i64 0, %i.ab
  %i.ad = and i64 %.sroa.02.034.i, %i.ac
  %i.ae = load ptr, ptr %i.r, align 8, !noalias !28496, !nonnull !4, !noundef !4
  %i.af = load i64, ptr %i.s, align 32, !noalias !28496, !noundef !4
  %i.ag = icmp ult i64 %i.aa, %i.af
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %i.aa ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8, !noalias !28496 ; 2 uses
  %i.ak = icmp eq i64 %.sroa.02.034.i, %i.aj
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = load i64, ptr %i.q, align 8, !noalias !28496, !noundef !4
  %i.am = add i64 %i.al, %i.aj
  %i.an = add i64 %.sroa.02.034.i, 1
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ap = add nuw i64 %i.aa, 1
  %i.aq = load i64, ptr %i.t, align 128, !noalias !28496, !noundef !4
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.as = icmp ult i32 %.sroa.0.02933.i, 7
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.body.thread30.loopexit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.at = mul nuw i32 %.sroa.0.02933.i, %.sroa.0.02933.i ; 2 uses
  %xtraiter = and i32 %i.at, 7                    ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.au, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.at, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28496
  call void @llvm.x86.sse2.pause(), !noalias !28496
  call void @llvm.x86.sse2.pause(), !noalias !28496
  call void @llvm.x86.sse2.pause(), !noalias !28496
  call void @llvm.x86.sse2.pause(), !noalias !28496
  call void @llvm.x86.sse2.pause(), !noalias !28496
  call void @llvm.x86.sse2.pause(), !noalias !28496
  call void @llvm.x86.sse2.pause(), !noalias !28496
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod96 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod96)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28496
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28498

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.g
  %i.av = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.aw = load atomic i64, ptr %1 monotonic, align 128, !noalias !28496
  %i.ax = load i64, ptr %i.q, align 8, !noalias !28496, !noundef !4
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = icmp eq i64 %i.ay, %.sroa.02.034.i
  br i1 %i.az, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter97 = and i32 %5, 5                     ; 3 uses
  %i.ba = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.ba, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter101 = and i32 %5, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod99.not = icmp eq i32 %xtraiter97, 0
  br i1 %lcmp.mod99.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod100 = icmp ne i32 %xtraiter97, 0
  call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter98 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter98.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28496
  %epil.iter98.next = add i32 %epil.iter98, 1     ; 2 uses
  %epil.iter98.cmp.not = icmp eq i32 %epil.iter98.next, %xtraiter97
  br i1 %epil.iter98.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !28499

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.bb = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter102 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter102.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28496
  call void @llvm.x86.sse2.pause(), !noalias !28496
  call void @llvm.x86.sse2.pause(), !noalias !28496
  call void @llvm.x86.sse2.pause(), !noalias !28496
  call void @llvm.x86.sse2.pause(), !noalias !28496
  call void @llvm.x86.sse2.pause(), !noalias !28496
  call void @llvm.x86.sse2.pause(), !noalias !28496
  call void @llvm.x86.sse2.pause(), !noalias !28496
  %niter102.next.7 = add i32 %niter102, 8         ; 2 uses
  %niter102.ncmp.7 = icmp eq i32 %niter102.next.7, %unroll_iter101
  br i1 %niter102.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bm, %._crit_edge.loopexit.i20.i ], [ %i.bb, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.bc = load atomic i64, ptr %i.k monotonic, align 128, !noalias !28496 ; 2 uses
  %i.bd = load i64, ptr %i.l, align 16, !noalias !28496, !noundef !4 ; 2 uses
  %i.be = and i64 %i.bd, %i.bc
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.b, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %i.q, align 8, !noalias !28496, !noundef !4
  %i.bh = add i64 %i.bg, %i.ad
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bi = add i64 %.sroa.02.034.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bi, %bb.k ], [ %i.bh, %bb.j ]
  %i.bj = cmpxchg weak ptr %i.k, i64 %.sroa.02.034.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !28496
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  br i1 %i.bk, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %6 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter103 = and i32 %6, 5                    ; 3 uses
  %i.bl = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.bl, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter107 = and i32 %6, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod105.not = icmp eq i32 %xtraiter103, 0
  br i1 %lcmp.mod105.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod106 = icmp ne i32 %xtraiter103, 0
  call void @llvm.assume(i1 %lcmp.mod106)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter104 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter104.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28496
  %epil.iter104.next = add i32 %epil.iter104, 1   ; 2 uses
  %epil.iter104.cmp.not = icmp eq i32 %epil.iter104.next, %xtraiter103
  br i1 %epil.iter104.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !28500

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bm = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter108 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter108.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28496
  call void @llvm.x86.sse2.pause(), !noalias !28496
  call void @llvm.x86.sse2.pause(), !noalias !28496
  call void @llvm.x86.sse2.pause(), !noalias !28496
  call void @llvm.x86.sse2.pause(), !noalias !28496
  call void @llvm.x86.sse2.pause(), !noalias !28496
  call void @llvm.x86.sse2.pause(), !noalias !28496
  call void @llvm.x86.sse2.pause(), !noalias !28496
  %niter108.next.7 = add i32 %niter108, 8         ; 2 uses
  %niter108.ncmp.7 = icmp eq i32 %niter108.next.7, %unroll_iter107
  br i1 %niter108.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

.body.thread30.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread30.loopexit.split-lp:                 ; preds = %bb.z, %bb.u, %bb.p, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.n, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4send0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h
  %i.bn = load i32, ptr %i.i, align 8, !range !12185, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bn, 1000000000
  br i1 %.not, label %bb.o, label %bb.n

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  store ptr %i.ah, ptr %i.g, align 8, !alias.scope !28496
  %i.bp = add i64 %.sroa.02.034.i, 1              ; 2 uses
  store i64 %i.bp, ptr %i.j, align 8, !alias.scope !28496
  %.sroa.019.0.copyload35 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.019.0.copyload35, ptr %i.ah, align 16, !noalias !28501
  %.sroa.5.0..val.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..val.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx36, i64 88, i1 false)
  store atomic i64 %i.bp, ptr %i.bo release, align 16, !noalias !28504
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bq) #49
  br label %bb.ai

bb.n:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %i.br = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.bs = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %bb.ac unwind label %.body.thread30.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.split, %bb.ad, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !28506
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.422.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bt = load i8, ptr %i.v, align 8, !range !102, !noalias !28509, !noundef !4
  %i.bu = icmp eq i8 %i.bt, 1
  br i1 %i.bu, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !240

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.o
  %i.bv = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc10 unwind label %.body.thread30.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4send0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %.noexc10, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bv, %.noexc10 ], [ %i.u, %bb.o ] ; 4 uses
  %i.bx = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28506, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28506
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.w, !prof !52

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !28506
  %i.by = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.q unwind label %.body.thread30.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.by, ptr %i.e, align 8, !noalias !28506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28506
  store ptr %i.g, ptr %i.c, align 8, !noalias !28506
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.by)
          to label %bb.t unwind label %bb.r, !noalias !28506

bb.r:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28516)
  call void @llvm.experimental.noalias.scope.decl(metadata !28519)
  call void @llvm.experimental.noalias.scope.decl(metadata !28522)
  %i.ca = load ptr, ptr %i.e, align 8, !alias.scope !28525, !noalias !28506, !nonnull !4, !noundef !4
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !28526
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.s, label %.body.thread

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %.body.thread unwind label %bb.v, !noalias !28506

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28506
  call void @llvm.experimental.noalias.scope.decl(metadata !28527)
  call void @llvm.experimental.noalias.scope.decl(metadata !28530)
  call void @llvm.experimental.noalias.scope.decl(metadata !28533)
  %i.cd = load ptr, ptr %i.e, align 8, !alias.scope !28536, !noalias !28506, !nonnull !4, !noundef !4
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !28537
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i unwind label %.body.thread30.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28506
  br label %bb.ag

bb.v:                                             ; preds = %bb.ab, %bb.s
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !28506
  unreachable

bb.w:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28506
  store ptr %i.bx, ptr %i.d, align 8, !noalias !28506
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store atomic i64 0, ptr %i.ch release, align 8, !noalias !28506
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store atomic ptr null, ptr %i.ci release, align 8, !noalias !28506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28506
  store ptr %i.g, ptr %i.b, align 8, !noalias !28506
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bx)
          to label %bb.x unwind label %bb.aa, !noalias !28506

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28506
  %i.cj = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28506, !noundef !4 ; 3 uses
  store ptr %i.cj, ptr %i.a, align 8, !noalias !28506
  store ptr %i.bx, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28506
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !28538
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %.body.thread30.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28506
  br label %bb.ag

bb.aa:                                            ; preds = %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !28547
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.ab, label %.body.thread
end_hunk_11
begin_hunk_12_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.aj = mul nuw i32 %.sroa.0.07.i, %.sroa.0.07.i ; 2 uses
  %xtraiter = and i32 %i.aj, 7                    ; 3 uses
  %i.ak = icmp ult i32 %.sroa.0.07.i, 3
  br i1 %i.ak, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.aj, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28559

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.i, %bb.h
  %i.al = add i32 %.sroa.0.07.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.18.i = phi i32 [ %.sroa.0.07.i, %bb.l ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.1.i = phi i64 [ %.sroa.05.0.i, %bb.l ], [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.pre.i = load i64, ptr %i.a, align 16
  br label %bb.d

bb.k:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.m, align 8, !noundef !4
  %i.an = add i64 %i.am, %i.v
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.an, %bb.k ], [ %i.ab, %bb.f ]
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB23_5error5ErrorEEINtNtB4_3pin3PinIB1q_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.z)
  br label %bb.j

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4recvCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [112 x i8], align 16              ; 4 uses
  %i.h = alloca [112 x i8], align 16              ; 6 uses
  %.sroa.4 = alloca [104 x i8], align 8           ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3c_5error5ErrorEEINtNtB1E_3pin3PinIB2z_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !28560)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, %bb.b
  %.sroa.0.029.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.029.i.be, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge ] ; 14 uses
  %i.u = load atomic i64, ptr %1 monotonic, align 128, !noalias !28560 ; 7 uses
  %i.v = load i64, ptr %i.m, align 16, !noalias !28560, !noundef !4
  %i.w = add i64 %i.v, -1
  %i.x = and i64 %i.w, %i.u                       ; 3 uses
  %i.y = load i64, ptr %i.n, align 8, !noalias !28560, !noundef !4
  %i.z = sub i64 0, %i.y
  %i.aa = and i64 %i.u, %i.z
  %i.ab = load ptr, ptr %i.o, align 8, !noalias !28560, !nonnull !4, !noundef !4
  %i.ac = load i64, ptr %i.p, align 32, !noalias !28560, !noundef !4
  %i.ad = icmp ult i64 %i.x, %i.ac
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.ab, i64 %i.x ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.ag = load atomic i64, ptr %i.af acquire, align 8, !noalias !28560 ; 3 uses
  %i.ah = add i64 %i.u, 1
  %i.ai = icmp eq i64 %i.ah, %i.ag
  br i1 %i.ai, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.aj = icmp eq i64 %i.ag, %i.u
  br i1 %i.aj, label %bb.h, label %bb.e

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.ak = add nuw i64 %i.x, 1
  %i.al = load i64, ptr %i.r, align 128, !noalias !28560, !noundef !4
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.an = icmp ult i32 %.sroa.0.029.i, 7
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28560
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.ao = mul nuw i32 %.sroa.0.029.i, %.sroa.0.029.i ; 2 uses
  %xtraiter = and i32 %i.ao, 7                    ; 3 uses
  %i.ap = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.ap, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ao, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28560
  call void @llvm.x86.sse2.pause(), !noalias !28560
  call void @llvm.x86.sse2.pause(), !noalias !28560
  call void @llvm.x86.sse2.pause(), !noalias !28560
  call void @llvm.x86.sse2.pause(), !noalias !28560
  call void @llvm.x86.sse2.pause(), !noalias !28560
  call void @llvm.x86.sse2.pause(), !noalias !28560
  call void @llvm.x86.sse2.pause(), !noalias !28560
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod65 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28560
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28563

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.aq = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.ar = load atomic i64, ptr %i.q monotonic, align 128, !noalias !28560 ; 2 uses
  %i.as = load i64, ptr %i.m, align 16, !noalias !28560, !noundef !4 ; 2 uses
  %i.at = xor i64 %i.as, -1
  %i.au = and i64 %i.ar, %i.at
  %i.av = icmp eq i64 %i.au, %i.u
  br i1 %i.av, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter66 = and i32 %4, 5                     ; 3 uses
  %i.aw = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.aw, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter70 = and i32 %4, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod68.not = icmp eq i32 %xtraiter66, 0
  br i1 %lcmp.mod68.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod69 = icmp ne i32 %xtraiter66, 0
  call void @llvm.assume(i1 %lcmp.mod69)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter67 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter67.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28560
  %epil.iter67.next = add i32 %epil.iter67, 1     ; 2 uses
  %epil.iter67.cmp.not = icmp eq i32 %epil.iter67.next, %xtraiter66
  br i1 %epil.iter67.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !28564

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ax = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter71 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter71.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28560
  call void @llvm.x86.sse2.pause(), !noalias !28560
  call void @llvm.x86.sse2.pause(), !noalias !28560
  call void @llvm.x86.sse2.pause(), !noalias !28560
  call void @llvm.x86.sse2.pause(), !noalias !28560
  call void @llvm.x86.sse2.pause(), !noalias !28560
  call void @llvm.x86.sse2.pause(), !noalias !28560
  call void @llvm.x86.sse2.pause(), !noalias !28560
  %niter71.next.7 = add i32 %niter71, 8           ; 2 uses
  %niter71.ncmp.7 = icmp eq i32 %niter71.next.7, %unroll_iter70
  br i1 %niter71.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

bb.j:                                             ; preds = %bb.h
  %i.ay = and i64 %i.as, %i.ar
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %bb.d
  %i.ba = load i64, ptr %i.n, align 8, !noalias !28560, !noundef !4
  %i.bb = add i64 %i.ba, %i.aa
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.bb, %bb.k ], [ %i.ag, %bb.d ]
  %i.bc = cmpxchg weak ptr %1, i64 %i.u, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !28560
  %i.bd = extractvalue { i64, i1 } %i.bc, 1
  br i1 %i.bd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter72 = and i32 %5, 5                     ; 3 uses
  %i.be = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.be, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter76 = and i32 %5, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod74.not = icmp eq i32 %xtraiter72, 0
  br i1 %lcmp.mod74.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod75 = icmp ne i32 %xtraiter72, 0
  call void @llvm.assume(i1 %lcmp.mod75)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter73 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter73.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28560
  %epil.iter73.next = add i32 %epil.iter73, 1     ; 2 uses
  %epil.iter73.cmp.not = icmp eq i32 %epil.iter73.next, %xtraiter72
  br i1 %epil.iter73.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !28565

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bf = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.029.i.be = phi i32 [ %i.aq, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bf, %._crit_edge.loopexit.i20.i ], [ %i.ax, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter77 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter77.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28560
  call void @llvm.x86.sse2.pause(), !noalias !28560
  call void @llvm.x86.sse2.pause(), !noalias !28560
  call void @llvm.x86.sse2.pause(), !noalias !28560
  call void @llvm.x86.sse2.pause(), !noalias !28560
  call void @llvm.x86.sse2.pause(), !noalias !28560
  call void @llvm.x86.sse2.pause(), !noalias !28560
  call void @llvm.x86.sse2.pause(), !noalias !28560
  %niter77.next.7 = add i32 %niter77, 8           ; 2 uses
  %niter77.ncmp.7 = icmp eq i32 %niter77.next.7, %unroll_iter76
  br i1 %niter77.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.j
  %i.bg = load i32, ptr %i.k, align 8, !range !12185, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bg, 1000000000
  br i1 %.not, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  store ptr %i.ae, ptr %i.i, align 8, !alias.scope !28560
  %i.bi = load i64, ptr %i.n, align 8, !noalias !28560, !noundef !4
  %i.bj = add i64 %i.bi, %i.u                     ; 2 uses
  store i64 %i.bj, ptr %i.l, align 8, !alias.scope !28560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !28566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.g, ptr noundef nonnull align 16 dereferenceable(112) %i.ae, i64 112, i1 false), !noalias !28566
  store atomic i64 %i.bj, ptr %i.bh release, align 16, !noalias !28566
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.h, ptr noundef nonnull align 16 dereferenceable(112) %i.g, i64 112, i1 false), !noalias !28566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bk)
          to label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.o, !noalias !28566

bb.o:                                             ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB23_5error5ErrorEEINtNtB4_3pin3PinIB1q_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.h) #46
          to label %common.resume unwind label %bb.p, !noalias !28566

bb.p:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !28566
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.u, %bb.ac, %bb.ad, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.o ], [ %i.by, %bb.t ], [ %i.cm, %bb.ac ], [ %i.by, %bb.u ], [ %i.cm, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.n
  %.sroa.0.0.copyload2 = load i64, ptr %i.h, align 16 ; 2 uses
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx3, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !28566
  %i.bn = icmp eq i64 %.sroa.0.0.copyload2, -9223372036854775741
  br i1 %i.bn, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.ah

bb.q:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit
  %i.bo = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.bp = call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.bq = extractvalue { i64, i32 } %i.bp, 0      ; 2 uses
  %i.br = icmp eq i64 %i.bq, %i.bo
  br i1 %i.br, label %.split, label %bb.ae

bb.r:                                             ; preds = %.split, %bb.ae, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !28569
  store ptr %i.i, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.45.0..sroa_idx, align 8
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bs = load i8, ptr %i.t, align 8, !range !102, !noalias !28572, !noundef !4
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !240

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.r
  %i.bu = call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.s, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !28569 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTIB1t_INtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4y_5error5ErrorEEINtNtBZ_3pin3PinIB3V_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.r
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bu, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.s, %bb.r ] ; 4 uses
  %i.bw = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28569, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28569
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %bb.s, label %bb.y, !prof !52

bb.s:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !28569
  %i.bx = call noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !28569 ; 2 uses
  store ptr %i.bx, ptr %i.e, align 8, !noalias !28569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28569
  store ptr %i.i, ptr %i.c, align 8, !noalias !28569
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2C_5error5ErrorEEINtNtB14_3pin3PinIB1Z_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bx)
          to label %bb.v unwind label %bb.t, !noalias !28569

bb.t:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28579)
  call void @llvm.experimental.noalias.scope.decl(metadata !28582)
  call void @llvm.experimental.noalias.scope.decl(metadata !28585)
  %i.bz = load ptr, ptr %i.e, align 8, !alias.scope !28588, !noalias !28569, !nonnull !4, !noundef !4
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !28589
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.u, label %common.resume

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %common.resume unwind label %bb.x, !noalias !28569

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28569
  call void @llvm.experimental.noalias.scope.decl(metadata !28590)
  call void @llvm.experimental.noalias.scope.decl(metadata !28593)
  call void @llvm.experimental.noalias.scope.decl(metadata !28596)
  %i.cc = load ptr, ptr %i.e, align 8, !alias.scope !28599, !noalias !28569, !nonnull !4, !noundef !4
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !28600
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45, !noalias !28569
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28569
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3c_5error5ErrorEEINtNtB1E_3pin3PinIB2z_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %bb.ad, %bb.u
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !28569
  unreachable

bb.y:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28569
  store ptr %i.bw, ptr %i.d, align 8, !noalias !28569
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store atomic i64 0, ptr %i.cg release, align 8, !noalias !28569
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store atomic ptr null, ptr %i.ch release, align 8, !noalias !28569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28569
  store ptr %i.i, ptr %i.b, align 8, !noalias !28569
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2C_5error5ErrorEEINtNtB14_3pin3PinIB1Z_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bw)
          to label %bb.z unwind label %bb.ac, !noalias !28569

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28569
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28569, !noundef !4 ; 3 uses
  store ptr %i.ci, ptr %i.a, align 8, !noalias !28569
  store ptr %i.bw, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28569
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !28601
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
end_hunk_12
begin_hunk_13_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28569
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3c_5error5ErrorEEINtNtB1E_3pin3PinIB2z_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ac:                                            ; preds = %bb.y
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !28610
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.ad, label %common.resume

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #45
          to label %common.resume unwind label %bb.x, !noalias !28569

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTIB1t_INtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4y_5error5ErrorEEINtNtBZ_3pin3PinIB3V_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1G_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3e_5error5ErrorEEINtNtB1G_3pin3PinIB2B_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2d_NtNtB1G_6marker4SendEL_EEEE4recvs_0uEs0_0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.f), !noalias !28569
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3c_5error5ErrorEEINtNtB1E_3pin3PinIB2z_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3c_5error5ErrorEEINtNtB1E_3pin3PinIB2z_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTIB1t_INtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4y_5error5ErrorEEINtNtBZ_3pin3PinIB3V_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !28569
  br label %bb.b

.split:                                           ; preds = %bb.q
  %i.cp = extractvalue { i64, i32 } %i.bp, 1      ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 1000000000
  call void @llvm.assume(i1 %i.cq)
  %.not18 = icmp samesign ult i32 %i.cp, %i.bg
  br i1 %.not18, label %bb.r, label %bb.af

bb.ae:                                            ; preds = %bb.q
  %.not17 = icmp slt i64 %i.bq, %i.bo
  br i1 %.not17, label %bb.r, label %bb.af

bb.af:                                            ; preds = %.split, %bb.ae
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cr, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.ah, %bb.af
  %storemerge = phi i64 [ -9223372036854775741, %bb.af ], [ %.sroa.0.0.copyload2, %bb.ah ], [ -9223372036854775741, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cs, align 8
  br label %bb.ag

bb.ah:                                            ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4, i64 104, i1 false)
  br label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !noalias !28617 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !noalias !28617, !noundef !4 ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ag
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cv, %bb.ag ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.cu, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !28620)
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bd, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ]
  %.sroa.02.034.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 8 uses
  %.sroa.0.02933.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1
  %i.aa = and i64 %i.z, %.sroa.02.034.i           ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !noalias !28620, !noundef !4
  %i.ac = sub i64 0, %i.ab
  %i.ad = and i64 %.sroa.02.034.i, %i.ac
  %i.ae = load ptr, ptr %i.r, align 8, !noalias !28620, !nonnull !4, !noundef !4
  %i.af = load i64, ptr %i.s, align 32, !noalias !28620, !noundef !4
  %i.ag = icmp ult i64 %i.aa, %i.af
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [128 x i8], ptr %i.ae, i64 %i.aa ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8, !noalias !28620 ; 2 uses
  %i.ak = icmp eq i64 %.sroa.02.034.i, %i.aj
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = load i64, ptr %i.q, align 8, !noalias !28620, !noundef !4
  %i.am = add i64 %i.al, %i.aj
  %i.an = add i64 %.sroa.02.034.i, 1
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ap = add nuw i64 %i.aa, 1
  %i.aq = load i64, ptr %i.t, align 128, !noalias !28620, !noundef !4
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.as = icmp ult i32 %.sroa.0.02933.i, 7
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.body.thread29.loopexit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.at = mul nuw i32 %.sroa.0.02933.i, %.sroa.0.02933.i ; 2 uses
  %xtraiter = and i32 %i.at, 7                    ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.au, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.at, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28620
  call void @llvm.x86.sse2.pause(), !noalias !28620
  call void @llvm.x86.sse2.pause(), !noalias !28620
  call void @llvm.x86.sse2.pause(), !noalias !28620
  call void @llvm.x86.sse2.pause(), !noalias !28620
  call void @llvm.x86.sse2.pause(), !noalias !28620
  call void @llvm.x86.sse2.pause(), !noalias !28620
  call void @llvm.x86.sse2.pause(), !noalias !28620
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod95 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28620
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28622

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.g
  %i.av = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.aw = load atomic i64, ptr %1 monotonic, align 128, !noalias !28620
  %i.ax = load i64, ptr %i.q, align 8, !noalias !28620, !noundef !4
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = icmp eq i64 %i.ay, %.sroa.02.034.i
  br i1 %i.az, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter96 = and i32 %5, 5                     ; 3 uses
  %i.ba = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.ba, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter100 = and i32 %5, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod98.not = icmp eq i32 %xtraiter96, 0
  br i1 %lcmp.mod98.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod99 = icmp ne i32 %xtraiter96, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter97 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter97.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28620
  %epil.iter97.next = add i32 %epil.iter97, 1     ; 2 uses
  %epil.iter97.cmp.not = icmp eq i32 %epil.iter97.next, %xtraiter96
  br i1 %epil.iter97.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !28623

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.bb = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter101 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter101.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28620
  call void @llvm.x86.sse2.pause(), !noalias !28620
  call void @llvm.x86.sse2.pause(), !noalias !28620
  call void @llvm.x86.sse2.pause(), !noalias !28620
  call void @llvm.x86.sse2.pause(), !noalias !28620
  call void @llvm.x86.sse2.pause(), !noalias !28620
  call void @llvm.x86.sse2.pause(), !noalias !28620
  call void @llvm.x86.sse2.pause(), !noalias !28620
  %niter101.next.7 = add i32 %niter101, 8         ; 2 uses
  %niter101.ncmp.7 = icmp eq i32 %niter101.next.7, %unroll_iter100
  br i1 %niter101.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bm, %._crit_edge.loopexit.i20.i ], [ %i.bb, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.bc = load atomic i64, ptr %i.k monotonic, align 128, !noalias !28620 ; 2 uses
  %i.bd = load i64, ptr %i.l, align 16, !noalias !28620, !noundef !4 ; 2 uses
  %i.be = and i64 %i.bd, %i.bc
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.b, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %i.q, align 8, !noalias !28620, !noundef !4
  %i.bh = add i64 %i.bg, %i.ad
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bi = add i64 %.sroa.02.034.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bi, %bb.k ], [ %i.bh, %bb.j ]
  %i.bj = cmpxchg weak ptr %i.k, i64 %.sroa.02.034.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !28620
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  br i1 %i.bk, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %6 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter102 = and i32 %6, 5                    ; 3 uses
  %i.bl = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.bl, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter106 = and i32 %6, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod104.not = icmp eq i32 %xtraiter102, 0
  br i1 %lcmp.mod104.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod105 = icmp ne i32 %xtraiter102, 0
  call void @llvm.assume(i1 %lcmp.mod105)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter103 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter103.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28620
  %epil.iter103.next = add i32 %epil.iter103, 1   ; 2 uses
  %epil.iter103.cmp.not = icmp eq i32 %epil.iter103.next, %xtraiter102
  br i1 %epil.iter103.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !28624

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bm = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter107 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter107.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28620
  call void @llvm.x86.sse2.pause(), !noalias !28620
  call void @llvm.x86.sse2.pause(), !noalias !28620
  call void @llvm.x86.sse2.pause(), !noalias !28620
  call void @llvm.x86.sse2.pause(), !noalias !28620
  call void @llvm.x86.sse2.pause(), !noalias !28620
  call void @llvm.x86.sse2.pause(), !noalias !28620
  call void @llvm.x86.sse2.pause(), !noalias !28620
  %niter107.next.7 = add i32 %niter107, 8         ; 2 uses
  %niter107.ncmp.7 = icmp eq i32 %niter107.next.7, %unroll_iter106
  br i1 %niter107.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

.body.thread29.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread29.loopexit.split-lp:                 ; preds = %bb.z, %bb.u, %bb.p, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.n, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTIB1t_INtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4y_5error5ErrorEEINtNtBZ_3pin3PinIB3V_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4send0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h
  %i.bn = load i32, ptr %i.i, align 8, !range !12185, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bn, 1000000000
  br i1 %.not, label %bb.o, label %bb.n

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  store ptr %i.ah, ptr %i.g, align 8, !alias.scope !28620
  %i.bp = add i64 %.sroa.02.034.i, 1              ; 2 uses
  store i64 %i.bp, ptr %i.j, align 8, !alias.scope !28620
  %.sroa.018.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.018.0.copyload34, ptr %i.ah, align 16, !noalias !28625
  %.sroa.5.0..val.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..val.sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx35, i64 104, i1 false)
  store atomic i64 %i.bp, ptr %i.bo release, align 16, !noalias !28628
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bq) #49
  br label %bb.ai

bb.n:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %i.br = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.bs = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %bb.ac unwind label %.body.thread29.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.split, %bb.ad, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !28630
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.421.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bt = load i8, ptr %i.v, align 8, !range !102, !noalias !28633, !noundef !4
  %i.bu = icmp eq i8 %i.bt, 1
  br i1 %i.bu, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !240

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.o
  %i.bv = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc10 unwind label %.body.thread29.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTIB1t_INtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4y_5error5ErrorEEINtNtBZ_3pin3PinIB3V_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4send0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %.noexc10, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bv, %.noexc10 ], [ %i.u, %bb.o ] ; 4 uses
  %i.bx = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28630, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28630
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.w, !prof !52

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !28630
  %i.by = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.q unwind label %.body.thread29.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.by, ptr %i.e, align 8, !noalias !28630
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28630
  store ptr %i.g, ptr %i.c, align 8, !noalias !28630
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2C_5error5ErrorEEINtNtB14_3pin3PinIB1Z_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.by)
          to label %bb.t unwind label %bb.r, !noalias !28630

bb.r:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28640)
  call void @llvm.experimental.noalias.scope.decl(metadata !28643)
  call void @llvm.experimental.noalias.scope.decl(metadata !28646)
  %i.ca = load ptr, ptr %i.e, align 8, !alias.scope !28649, !noalias !28630, !nonnull !4, !noundef !4
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !28650
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.s, label %.body.thread

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %.body.thread unwind label %bb.v, !noalias !28630

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28630
  call void @llvm.experimental.noalias.scope.decl(metadata !28651)
  call void @llvm.experimental.noalias.scope.decl(metadata !28654)
  call void @llvm.experimental.noalias.scope.decl(metadata !28657)
  %i.cd = load ptr, ptr %i.e, align 8, !alias.scope !28660, !noalias !28630, !nonnull !4, !noundef !4
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !28661
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i unwind label %.body.thread29.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28630
  br label %bb.ag

bb.v:                                             ; preds = %bb.ab, %bb.s
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !28630
  unreachable

bb.w:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28630
  store ptr %i.bx, ptr %i.d, align 8, !noalias !28630
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store atomic i64 0, ptr %i.ch release, align 8, !noalias !28630
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store atomic ptr null, ptr %i.ci release, align 8, !noalias !28630
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28630
  store ptr %i.g, ptr %i.b, align 8, !noalias !28630
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2C_5error5ErrorEEINtNtB14_3pin3PinIB1Z_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bx)
          to label %bb.x unwind label %bb.aa, !noalias !28630

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28630
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28630
  %i.cj = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28630, !noundef !4 ; 3 uses
  store ptr %i.cj, ptr %i.a, align 8, !noalias !28630
  store ptr %i.bx, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28630
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !28662
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %.body.thread29.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28630
  br label %bb.ag

bb.aa:                                            ; preds = %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !28671
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.ab, label %.body.thread
end_hunk_13
begin_hunk_14_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.aj = mul nuw i32 %.sroa.0.07.i, %.sroa.0.07.i ; 2 uses
  %xtraiter = and i32 %i.aj, 7                    ; 3 uses
  %i.ak = icmp ult i32 %.sroa.0.07.i, 3
  br i1 %i.ak, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.aj, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28680

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.i, %bb.h
  %i.al = add i32 %.sroa.0.07.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.18.i = phi i32 [ %.sroa.0.07.i, %bb.l ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.1.i = phi i64 [ %.sroa.05.0.i, %bb.l ], [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.pre.i = load i64, ptr %i.a, align 16
  br label %bb.d

bb.k:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.m, align 8, !noundef !4
  %i.an = add i64 %i.am, %i.v
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.an, %bb.k ], [ %i.ab, %bb.f ]
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1r_5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %i.z)
  br label %bb.j

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4recvCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [128 x i8], align 16              ; 4 uses
  %i.h = alloca [128 x i8], align 16              ; 6 uses
  %.sroa.4 = alloca [120 x i8], align 8           ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2A_5error5ErrorEEINtNtB1E_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !28681)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, %bb.b
  %.sroa.0.029.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.029.i.be, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge ] ; 14 uses
  %i.u = load atomic i64, ptr %1 monotonic, align 128, !noalias !28681 ; 7 uses
  %i.v = load i64, ptr %i.m, align 16, !noalias !28681, !noundef !4
  %i.w = add i64 %i.v, -1
  %i.x = and i64 %i.w, %i.u                       ; 3 uses
  %i.y = load i64, ptr %i.n, align 8, !noalias !28681, !noundef !4
  %i.z = sub i64 0, %i.y
  %i.aa = and i64 %i.u, %i.z
  %i.ab = load ptr, ptr %i.o, align 8, !noalias !28681, !nonnull !4, !noundef !4
  %i.ac = load i64, ptr %i.p, align 32, !noalias !28681, !noundef !4
  %i.ad = icmp ult i64 %i.x, %i.ac
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [144 x i8], ptr %i.ab, i64 %i.x ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.ag = load atomic i64, ptr %i.af acquire, align 8, !noalias !28681 ; 3 uses
  %i.ah = add i64 %i.u, 1
  %i.ai = icmp eq i64 %i.ah, %i.ag
  br i1 %i.ai, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.aj = icmp eq i64 %i.ag, %i.u
  br i1 %i.aj, label %bb.h, label %bb.e

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.ak = add nuw i64 %i.x, 1
  %i.al = load i64, ptr %i.r, align 128, !noalias !28681, !noundef !4
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.an = icmp ult i32 %.sroa.0.029.i, 7
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28681
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.ao = mul nuw i32 %.sroa.0.029.i, %.sroa.0.029.i ; 2 uses
  %xtraiter = and i32 %i.ao, 7                    ; 3 uses
  %i.ap = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.ap, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ao, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28681
  call void @llvm.x86.sse2.pause(), !noalias !28681
  call void @llvm.x86.sse2.pause(), !noalias !28681
  call void @llvm.x86.sse2.pause(), !noalias !28681
  call void @llvm.x86.sse2.pause(), !noalias !28681
  call void @llvm.x86.sse2.pause(), !noalias !28681
  call void @llvm.x86.sse2.pause(), !noalias !28681
  call void @llvm.x86.sse2.pause(), !noalias !28681
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod65 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28681
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28684

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.aq = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.ar = load atomic i64, ptr %i.q monotonic, align 128, !noalias !28681 ; 2 uses
  %i.as = load i64, ptr %i.m, align 16, !noalias !28681, !noundef !4 ; 2 uses
  %i.at = xor i64 %i.as, -1
  %i.au = and i64 %i.ar, %i.at
  %i.av = icmp eq i64 %i.au, %i.u
  br i1 %i.av, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter66 = and i32 %4, 5                     ; 3 uses
  %i.aw = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.aw, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter70 = and i32 %4, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod68.not = icmp eq i32 %xtraiter66, 0
  br i1 %lcmp.mod68.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod69 = icmp ne i32 %xtraiter66, 0
  call void @llvm.assume(i1 %lcmp.mod69)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter67 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter67.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28681
  %epil.iter67.next = add i32 %epil.iter67, 1     ; 2 uses
  %epil.iter67.cmp.not = icmp eq i32 %epil.iter67.next, %xtraiter66
  br i1 %epil.iter67.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !28685

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ax = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter71 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter71.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28681
  call void @llvm.x86.sse2.pause(), !noalias !28681
  call void @llvm.x86.sse2.pause(), !noalias !28681
  call void @llvm.x86.sse2.pause(), !noalias !28681
  call void @llvm.x86.sse2.pause(), !noalias !28681
  call void @llvm.x86.sse2.pause(), !noalias !28681
  call void @llvm.x86.sse2.pause(), !noalias !28681
  call void @llvm.x86.sse2.pause(), !noalias !28681
  %niter71.next.7 = add i32 %niter71, 8           ; 2 uses
  %niter71.ncmp.7 = icmp eq i32 %niter71.next.7, %unroll_iter70
  br i1 %niter71.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

bb.j:                                             ; preds = %bb.h
  %i.ay = and i64 %i.as, %i.ar
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %bb.d
  %i.ba = load i64, ptr %i.n, align 8, !noalias !28681, !noundef !4
  %i.bb = add i64 %i.ba, %i.aa
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.bb, %bb.k ], [ %i.ag, %bb.d ]
  %i.bc = cmpxchg weak ptr %1, i64 %i.u, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !28681
  %i.bd = extractvalue { i64, i1 } %i.bc, 1
  br i1 %i.bd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter72 = and i32 %5, 5                     ; 3 uses
  %i.be = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.be, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter76 = and i32 %5, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod74.not = icmp eq i32 %xtraiter72, 0
  br i1 %lcmp.mod74.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod75 = icmp ne i32 %xtraiter72, 0
  call void @llvm.assume(i1 %lcmp.mod75)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter73 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter73.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28681
  %epil.iter73.next = add i32 %epil.iter73, 1     ; 2 uses
  %epil.iter73.cmp.not = icmp eq i32 %epil.iter73.next, %xtraiter72
  br i1 %epil.iter73.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !28686

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bf = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.029.i.be = phi i32 [ %i.aq, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bf, %._crit_edge.loopexit.i20.i ], [ %i.ax, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter77 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter77.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28681
  call void @llvm.x86.sse2.pause(), !noalias !28681
  call void @llvm.x86.sse2.pause(), !noalias !28681
  call void @llvm.x86.sse2.pause(), !noalias !28681
  call void @llvm.x86.sse2.pause(), !noalias !28681
  call void @llvm.x86.sse2.pause(), !noalias !28681
  call void @llvm.x86.sse2.pause(), !noalias !28681
  call void @llvm.x86.sse2.pause(), !noalias !28681
  %niter77.next.7 = add i32 %niter77, 8           ; 2 uses
  %niter77.ncmp.7 = icmp eq i32 %niter77.next.7, %unroll_iter76
  br i1 %niter77.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.j
  %i.bg = load i32, ptr %i.k, align 8, !range !12185, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bg, 1000000000
  br i1 %.not, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  store ptr %i.ae, ptr %i.i, align 8, !alias.scope !28681
  %i.bi = load i64, ptr %i.n, align 8, !noalias !28681, !noundef !4
  %i.bj = add i64 %i.bi, %i.u                     ; 2 uses
  store i64 %i.bj, ptr %i.l, align 8, !alias.scope !28681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !28687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.g, ptr noundef nonnull align 16 dereferenceable(128) %i.ae, i64 128, i1 false), !noalias !28687
  store atomic i64 %i.bj, ptr %i.bh release, align 16, !noalias !28687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.h, ptr noundef nonnull align 16 dereferenceable(128) %i.g, i64 128, i1 false), !noalias !28687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bk)
          to label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.o, !noalias !28687

bb.o:                                             ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1r_5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %i.h) #46
          to label %common.resume unwind label %bb.p, !noalias !28687

bb.p:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !28687
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.u, %bb.ac, %bb.ad, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.o ], [ %i.by, %bb.t ], [ %i.cm, %bb.ac ], [ %i.by, %bb.u ], [ %i.cm, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.n
  %.sroa.0.0.copyload2 = load i64, ptr %i.h, align 16 ; 2 uses
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4.0..sroa_idx3, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !28687
  %i.bn = icmp eq i64 %.sroa.0.0.copyload2, 3
  br i1 %i.bn, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.ah

bb.q:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit
  %i.bo = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.bp = call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.bq = extractvalue { i64, i32 } %i.bp, 0      ; 2 uses
  %i.br = icmp eq i64 %i.bq, %i.bo
  br i1 %i.br, label %.split, label %bb.ae

bb.r:                                             ; preds = %.split, %bb.ae, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !28690
  store ptr %i.i, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.45.0..sroa_idx, align 8
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bs = load i8, ptr %i.t, align 8, !range !102, !noalias !28693, !noundef !4
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !240

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.r
  %i.bu = call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.s, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !28690 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTIB1t_INtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3W_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.r
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bu, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.s, %bb.r ] ; 4 uses
  %i.bw = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28690, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28690
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %bb.s, label %bb.y, !prof !52

bb.s:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !28690
  %i.bx = call noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !28690 ; 2 uses
  store ptr %i.bx, ptr %i.e, align 8, !noalias !28690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28690
  store ptr %i.i, ptr %i.c, align 8, !noalias !28690
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB20_5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bx)
          to label %bb.v unwind label %bb.t, !noalias !28690

bb.t:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28700)
  call void @llvm.experimental.noalias.scope.decl(metadata !28703)
  call void @llvm.experimental.noalias.scope.decl(metadata !28706)
  %i.bz = load ptr, ptr %i.e, align 8, !alias.scope !28709, !noalias !28690, !nonnull !4, !noundef !4
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !28710
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.u, label %common.resume

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %common.resume unwind label %bb.x, !noalias !28690

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28690
  call void @llvm.experimental.noalias.scope.decl(metadata !28711)
  call void @llvm.experimental.noalias.scope.decl(metadata !28714)
  call void @llvm.experimental.noalias.scope.decl(metadata !28717)
  %i.cc = load ptr, ptr %i.e, align 8, !alias.scope !28720, !noalias !28690, !nonnull !4, !noundef !4
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !28721
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45, !noalias !28690
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28690
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2A_5error5ErrorEEINtNtB1E_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %bb.ad, %bb.u
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !28690
  unreachable

bb.y:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28690
  store ptr %i.bw, ptr %i.d, align 8, !noalias !28690
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store atomic i64 0, ptr %i.cg release, align 8, !noalias !28690
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store atomic ptr null, ptr %i.ch release, align 8, !noalias !28690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28690
  store ptr %i.i, ptr %i.b, align 8, !noalias !28690
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB20_5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bw)
          to label %bb.z unwind label %bb.ac, !noalias !28690

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28690
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28690, !noundef !4 ; 3 uses
  store ptr %i.ci, ptr %i.a, align 8, !noalias !28690
  store ptr %i.bw, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28690
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !28722
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
end_hunk_14
begin_hunk_15_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28690
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2A_5error5ErrorEEINtNtB1E_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ac:                                            ; preds = %bb.y
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !28731
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.ad, label %common.resume

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #45
          to label %common.resume unwind label %bb.x, !noalias !28690

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTIB1t_INtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3W_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1G_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2C_5error5ErrorEEINtNtB1G_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2d_NtNtB1G_6marker4SendEL_EEEE4recvs_0uEs0_0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.f), !noalias !28690
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2A_5error5ErrorEEINtNtB1E_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2A_5error5ErrorEEINtNtB1E_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTIB1t_INtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3W_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !28690
  br label %bb.b

.split:                                           ; preds = %bb.q
  %i.cp = extractvalue { i64, i32 } %i.bp, 1      ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 1000000000
  call void @llvm.assume(i1 %i.cq)
  %.not18 = icmp samesign ult i32 %i.cp, %i.bg
  br i1 %.not18, label %bb.r, label %bb.af

bb.ae:                                            ; preds = %bb.q
  %.not17 = icmp slt i64 %i.bq, %i.bo
  br i1 %.not17, label %bb.r, label %bb.af

bb.af:                                            ; preds = %.split, %bb.ae
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cr, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.ah, %bb.af
  %storemerge = phi i64 [ 3, %bb.af ], [ %.sroa.0.0.copyload2, %bb.ah ], [ 3, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cs, align 8
  br label %bb.ag

bb.ah:                                            ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4, i64 120, i1 false)
  br label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(128) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !noalias !28738 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !noalias !28738, !noundef !4 ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ag
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cv, %bb.ag ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.cu, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !28741)
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bd, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ]
  %.sroa.02.034.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 8 uses
  %.sroa.0.02933.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1
  %i.aa = and i64 %i.z, %.sroa.02.034.i           ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !noalias !28741, !noundef !4
  %i.ac = sub i64 0, %i.ab
  %i.ad = and i64 %.sroa.02.034.i, %i.ac
  %i.ae = load ptr, ptr %i.r, align 8, !noalias !28741, !nonnull !4, !noundef !4
  %i.af = load i64, ptr %i.s, align 32, !noalias !28741, !noundef !4
  %i.ag = icmp ult i64 %i.aa, %i.af
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [144 x i8], ptr %i.ae, i64 %i.aa ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8, !noalias !28741 ; 2 uses
  %i.ak = icmp eq i64 %.sroa.02.034.i, %i.aj
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = load i64, ptr %i.q, align 8, !noalias !28741, !noundef !4
  %i.am = add i64 %i.al, %i.aj
  %i.an = add i64 %.sroa.02.034.i, 1
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ap = add nuw i64 %i.aa, 1
  %i.aq = load i64, ptr %i.t, align 128, !noalias !28741, !noundef !4
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.as = icmp ult i32 %.sroa.0.02933.i, 7
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.body.thread29.loopexit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.at = mul nuw i32 %.sroa.0.02933.i, %.sroa.0.02933.i ; 2 uses
  %xtraiter = and i32 %i.at, 7                    ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.au, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.at, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28741
  call void @llvm.x86.sse2.pause(), !noalias !28741
  call void @llvm.x86.sse2.pause(), !noalias !28741
  call void @llvm.x86.sse2.pause(), !noalias !28741
  call void @llvm.x86.sse2.pause(), !noalias !28741
  call void @llvm.x86.sse2.pause(), !noalias !28741
  call void @llvm.x86.sse2.pause(), !noalias !28741
  call void @llvm.x86.sse2.pause(), !noalias !28741
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod95 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28741
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28743

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.g
  %i.av = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.aw = load atomic i64, ptr %1 monotonic, align 128, !noalias !28741
  %i.ax = load i64, ptr %i.q, align 8, !noalias !28741, !noundef !4
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = icmp eq i64 %i.ay, %.sroa.02.034.i
  br i1 %i.az, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter96 = and i32 %5, 5                     ; 3 uses
  %i.ba = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.ba, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter100 = and i32 %5, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod98.not = icmp eq i32 %xtraiter96, 0
  br i1 %lcmp.mod98.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod99 = icmp ne i32 %xtraiter96, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter97 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter97.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28741
  %epil.iter97.next = add i32 %epil.iter97, 1     ; 2 uses
  %epil.iter97.cmp.not = icmp eq i32 %epil.iter97.next, %xtraiter96
  br i1 %epil.iter97.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !28744

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.bb = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter101 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter101.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28741
  call void @llvm.x86.sse2.pause(), !noalias !28741
  call void @llvm.x86.sse2.pause(), !noalias !28741
  call void @llvm.x86.sse2.pause(), !noalias !28741
  call void @llvm.x86.sse2.pause(), !noalias !28741
  call void @llvm.x86.sse2.pause(), !noalias !28741
  call void @llvm.x86.sse2.pause(), !noalias !28741
  call void @llvm.x86.sse2.pause(), !noalias !28741
  %niter101.next.7 = add i32 %niter101, 8         ; 2 uses
  %niter101.ncmp.7 = icmp eq i32 %niter101.next.7, %unroll_iter100
  br i1 %niter101.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bm, %._crit_edge.loopexit.i20.i ], [ %i.bb, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.bc = load atomic i64, ptr %i.k monotonic, align 128, !noalias !28741 ; 2 uses
  %i.bd = load i64, ptr %i.l, align 16, !noalias !28741, !noundef !4 ; 2 uses
  %i.be = and i64 %i.bd, %i.bc
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.b, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %i.q, align 8, !noalias !28741, !noundef !4
  %i.bh = add i64 %i.bg, %i.ad
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bi = add i64 %.sroa.02.034.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bi, %bb.k ], [ %i.bh, %bb.j ]
  %i.bj = cmpxchg weak ptr %i.k, i64 %.sroa.02.034.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !28741
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  br i1 %i.bk, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %6 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter102 = and i32 %6, 5                    ; 3 uses
  %i.bl = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.bl, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter106 = and i32 %6, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod104.not = icmp eq i32 %xtraiter102, 0
  br i1 %lcmp.mod104.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod105 = icmp ne i32 %xtraiter102, 0
  call void @llvm.assume(i1 %lcmp.mod105)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter103 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter103.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28741
  %epil.iter103.next = add i32 %epil.iter103, 1   ; 2 uses
  %epil.iter103.cmp.not = icmp eq i32 %epil.iter103.next, %xtraiter102
  br i1 %epil.iter103.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !28745

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bm = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter107 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter107.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28741
  call void @llvm.x86.sse2.pause(), !noalias !28741
  call void @llvm.x86.sse2.pause(), !noalias !28741
  call void @llvm.x86.sse2.pause(), !noalias !28741
  call void @llvm.x86.sse2.pause(), !noalias !28741
  call void @llvm.x86.sse2.pause(), !noalias !28741
  call void @llvm.x86.sse2.pause(), !noalias !28741
  call void @llvm.x86.sse2.pause(), !noalias !28741
  %niter107.next.7 = add i32 %niter107, 8         ; 2 uses
  %niter107.ncmp.7 = icmp eq i32 %niter107.next.7, %unroll_iter106
  br i1 %niter107.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

.body.thread29.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread29.loopexit.split-lp:                 ; preds = %bb.z, %bb.u, %bb.p, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.n, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTIB1t_INtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3W_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4send0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h
  %i.bn = load i32, ptr %i.i, align 8, !range !12185, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bn, 1000000000
  br i1 %.not, label %bb.o, label %bb.n

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  store ptr %i.ah, ptr %i.g, align 8, !alias.scope !28741
  %i.bp = add i64 %.sroa.02.034.i, 1              ; 2 uses
  store i64 %i.bp, ptr %i.j, align 8, !alias.scope !28741
  %.sroa.018.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.018.0.copyload34, ptr %i.ah, align 16, !noalias !28746
  %.sroa.5.0..val.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..val.sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa_idx35, i64 120, i1 false)
  store atomic i64 %i.bp, ptr %i.bo release, align 16, !noalias !28749
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bq) #49
  br label %bb.ai

bb.n:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %i.br = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.bs = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %bb.ac unwind label %.body.thread29.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.split, %bb.ad, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !28751
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.421.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bt = load i8, ptr %i.v, align 8, !range !102, !noalias !28754, !noundef !4
  %i.bu = icmp eq i8 %i.bt, 1
  br i1 %i.bu, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !240

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.o
  %i.bv = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc10 unwind label %.body.thread29.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTIB1t_INtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3W_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4send0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %.noexc10, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bv, %.noexc10 ], [ %i.u, %bb.o ] ; 4 uses
  %i.bx = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28751, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28751
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.w, !prof !52

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !28751
  %i.by = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.q unwind label %.body.thread29.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.by, ptr %i.e, align 8, !noalias !28751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28751
  store ptr %i.g, ptr %i.c, align 8, !noalias !28751
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB20_5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.by)
          to label %bb.t unwind label %bb.r, !noalias !28751

bb.r:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28761)
  call void @llvm.experimental.noalias.scope.decl(metadata !28764)
  call void @llvm.experimental.noalias.scope.decl(metadata !28767)
  %i.ca = load ptr, ptr %i.e, align 8, !alias.scope !28770, !noalias !28751, !nonnull !4, !noundef !4
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !28771
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.s, label %.body.thread

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %.body.thread unwind label %bb.v, !noalias !28751

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28751
  call void @llvm.experimental.noalias.scope.decl(metadata !28772)
  call void @llvm.experimental.noalias.scope.decl(metadata !28775)
  call void @llvm.experimental.noalias.scope.decl(metadata !28778)
  %i.cd = load ptr, ptr %i.e, align 8, !alias.scope !28781, !noalias !28751, !nonnull !4, !noundef !4
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !28782
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i unwind label %.body.thread29.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28751
  br label %bb.ag

bb.v:                                             ; preds = %bb.ab, %bb.s
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !28751
  unreachable

bb.w:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28751
  store ptr %i.bx, ptr %i.d, align 8, !noalias !28751
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store atomic i64 0, ptr %i.ch release, align 8, !noalias !28751
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store atomic ptr null, ptr %i.ci release, align 8, !noalias !28751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28751
  store ptr %i.g, ptr %i.b, align 8, !noalias !28751
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB20_5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bx)
          to label %bb.x unwind label %bb.aa, !noalias !28751

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28751
  %i.cj = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28751, !noundef !4 ; 3 uses
  store ptr %i.cj, ptr %i.a, align 8, !noalias !28751
  store ptr %i.bx, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28751
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !28783
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %.body.thread29.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28751
  br label %bb.ag

bb.aa:                                            ; preds = %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !28792
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.ab, label %.body.thread
end_hunk_15
begin_hunk_16_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core:bb.a
.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.aj = mul nuw i32 %.sroa.0.07.i, %.sroa.0.07.i ; 2 uses
  %xtraiter = and i32 %i.aj, 7                    ; 3 uses
  %i.ak = icmp ult i32 %.sroa.0.07.i, 3
  br i1 %i.ak, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.aj, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28801

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.i, %bb.h
  %i.al = add i32 %.sroa.0.07.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.18.i = phi i32 [ %.sroa.0.07.i, %bb.l ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.1.i = phi i64 [ %.sroa.05.0.i, %bb.l ], [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.pre.i = load i64, ptr %i.a, align 16
  br label %bb.d

bb.k:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.m, align 8, !noundef !4
  %i.an = add i64 %i.am, %i.v
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.an, %bb.k ], [ %i.ab, %bb.f ]
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.z)
  br label %bb.j

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4recvCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [112 x i8], align 16              ; 4 uses
  %i.h = alloca [112 x i8], align 16              ; 6 uses
  %.sroa.4 = alloca [104 x i8], align 8           ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB1E_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !28802)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, %bb.b
  %.sroa.0.029.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.029.i.be, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge ] ; 14 uses
  %i.u = load atomic i64, ptr %1 monotonic, align 128, !noalias !28802 ; 7 uses
  %i.v = load i64, ptr %i.m, align 16, !noalias !28802, !noundef !4
  %i.w = add i64 %i.v, -1
  %i.x = and i64 %i.w, %i.u                       ; 3 uses
  %i.y = load i64, ptr %i.n, align 8, !noalias !28802, !noundef !4
  %i.z = sub i64 0, %i.y
  %i.aa = and i64 %i.u, %i.z
  %i.ab = load ptr, ptr %i.o, align 8, !noalias !28802, !nonnull !4, !noundef !4
  %i.ac = load i64, ptr %i.p, align 32, !noalias !28802, !noundef !4
  %i.ad = icmp ult i64 %i.x, %i.ac
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.ab, i64 %i.x ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.ag = load atomic i64, ptr %i.af acquire, align 8, !noalias !28802 ; 3 uses
  %i.ah = add i64 %i.u, 1
  %i.ai = icmp eq i64 %i.ah, %i.ag
  br i1 %i.ai, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.aj = icmp eq i64 %i.ag, %i.u
  br i1 %i.aj, label %bb.h, label %bb.e

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.ak = add nuw i64 %i.x, 1
  %i.al = load i64, ptr %i.r, align 128, !noalias !28802, !noundef !4
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.an = icmp ult i32 %.sroa.0.029.i, 7
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !28802
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.ao = mul nuw i32 %.sroa.0.029.i, %.sroa.0.029.i ; 2 uses
  %xtraiter = and i32 %i.ao, 7                    ; 3 uses
  %i.ap = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.ap, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ao, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28802
  call void @llvm.x86.sse2.pause(), !noalias !28802
  call void @llvm.x86.sse2.pause(), !noalias !28802
  call void @llvm.x86.sse2.pause(), !noalias !28802
  call void @llvm.x86.sse2.pause(), !noalias !28802
  call void @llvm.x86.sse2.pause(), !noalias !28802
  call void @llvm.x86.sse2.pause(), !noalias !28802
  call void @llvm.x86.sse2.pause(), !noalias !28802
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod65 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28802
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28805

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.aq = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.ar = load atomic i64, ptr %i.q monotonic, align 128, !noalias !28802 ; 2 uses
  %i.as = load i64, ptr %i.m, align 16, !noalias !28802, !noundef !4 ; 2 uses
  %i.at = xor i64 %i.as, -1
  %i.au = and i64 %i.ar, %i.at
  %i.av = icmp eq i64 %i.au, %i.u
  br i1 %i.av, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter66 = and i32 %4, 5                     ; 3 uses
  %i.aw = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.aw, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter70 = and i32 %4, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod68.not = icmp eq i32 %xtraiter66, 0
  br i1 %lcmp.mod68.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod69 = icmp ne i32 %xtraiter66, 0
  call void @llvm.assume(i1 %lcmp.mod69)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter67 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter67.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28802
  %epil.iter67.next = add i32 %epil.iter67, 1     ; 2 uses
  %epil.iter67.cmp.not = icmp eq i32 %epil.iter67.next, %xtraiter66
  br i1 %epil.iter67.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !28806

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ax = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter71 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter71.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28802
  call void @llvm.x86.sse2.pause(), !noalias !28802
  call void @llvm.x86.sse2.pause(), !noalias !28802
  call void @llvm.x86.sse2.pause(), !noalias !28802
  call void @llvm.x86.sse2.pause(), !noalias !28802
  call void @llvm.x86.sse2.pause(), !noalias !28802
  call void @llvm.x86.sse2.pause(), !noalias !28802
  call void @llvm.x86.sse2.pause(), !noalias !28802
  %niter71.next.7 = add i32 %niter71, 8           ; 2 uses
  %niter71.ncmp.7 = icmp eq i32 %niter71.next.7, %unroll_iter70
  br i1 %niter71.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

bb.j:                                             ; preds = %bb.h
  %i.ay = and i64 %i.as, %i.ar
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %bb.d
  %i.ba = load i64, ptr %i.n, align 8, !noalias !28802, !noundef !4
  %i.bb = add i64 %i.ba, %i.aa
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.bb, %bb.k ], [ %i.ag, %bb.d ]
  %i.bc = cmpxchg weak ptr %1, i64 %i.u, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !28802
  %i.bd = extractvalue { i64, i1 } %i.bc, 1
  br i1 %i.bd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter72 = and i32 %5, 5                     ; 3 uses
  %i.be = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.be, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter76 = and i32 %5, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod74.not = icmp eq i32 %xtraiter72, 0
  br i1 %lcmp.mod74.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod75 = icmp ne i32 %xtraiter72, 0
  call void @llvm.assume(i1 %lcmp.mod75)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter73 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter73.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28802
  %epil.iter73.next = add i32 %epil.iter73, 1     ; 2 uses
  %epil.iter73.cmp.not = icmp eq i32 %epil.iter73.next, %xtraiter72
  br i1 %epil.iter73.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !28807

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bf = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.029.i.be = phi i32 [ %i.aq, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bf, %._crit_edge.loopexit.i20.i ], [ %i.ax, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter77 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter77.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28802
  call void @llvm.x86.sse2.pause(), !noalias !28802
  call void @llvm.x86.sse2.pause(), !noalias !28802
  call void @llvm.x86.sse2.pause(), !noalias !28802
  call void @llvm.x86.sse2.pause(), !noalias !28802
  call void @llvm.x86.sse2.pause(), !noalias !28802
  call void @llvm.x86.sse2.pause(), !noalias !28802
  call void @llvm.x86.sse2.pause(), !noalias !28802
  %niter77.next.7 = add i32 %niter77, 8           ; 2 uses
  %niter77.ncmp.7 = icmp eq i32 %niter77.next.7, %unroll_iter76
  br i1 %niter77.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.j
  %i.bg = load i32, ptr %i.k, align 8, !range !12185, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bg, 1000000000
  br i1 %.not, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  store ptr %i.ae, ptr %i.i, align 8, !alias.scope !28802
  %i.bi = load i64, ptr %i.n, align 8, !noalias !28802, !noundef !4
  %i.bj = add i64 %i.bi, %i.u                     ; 2 uses
  store i64 %i.bj, ptr %i.l, align 8, !alias.scope !28802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !28808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.g, ptr noundef nonnull align 16 dereferenceable(112) %i.ae, i64 112, i1 false), !noalias !28808
  store atomic i64 %i.bj, ptr %i.bh release, align 16, !noalias !28808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.h, ptr noundef nonnull align 16 dereferenceable(112) %i.g, i64 112, i1 false), !noalias !28808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bk)
          to label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.o, !noalias !28808

bb.o:                                             ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.h) #46
          to label %common.resume unwind label %bb.p, !noalias !28808

bb.p:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !28808
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.u, %bb.ac, %bb.ad, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.o ], [ %i.by, %bb.t ], [ %i.cm, %bb.ac ], [ %i.by, %bb.u ], [ %i.cm, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.n
  %.sroa.0.0.copyload2 = load i64, ptr %i.h, align 16 ; 2 uses
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx3, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !28808
  %i.bn = icmp eq i64 %.sroa.0.0.copyload2, -9223372036854775741
  br i1 %i.bn, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.ah

bb.q:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit
  %i.bo = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.bp = call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.bq = extractvalue { i64, i32 } %i.bp, 0      ; 2 uses
  %i.br = icmp eq i64 %i.bq, %i.bo
  br i1 %i.br, label %.split, label %bb.ae

bb.r:                                             ; preds = %.split, %bb.ae, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_recvCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !28811
  store ptr %i.i, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.45.0..sroa_idx, align 8
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bs = load i8, ptr %i.t, align 8, !range !102, !noalias !28814, !noundef !4
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !240

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.r
  %i.bu = call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.s, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !28811 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTIB1t_INtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.r
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bu, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.s, %bb.r ] ; 4 uses
  %i.bw = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28811, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28811
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %bb.s, label %bb.y, !prof !52

bb.s:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !28811
  %i.bx = call noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !28811 ; 2 uses
  store ptr %i.bx, ptr %i.e, align 8, !noalias !28811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28811
  store ptr %i.i, ptr %i.c, align 8, !noalias !28811
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bx)
          to label %bb.v unwind label %bb.t, !noalias !28811

bb.t:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28821)
  call void @llvm.experimental.noalias.scope.decl(metadata !28824)
  call void @llvm.experimental.noalias.scope.decl(metadata !28827)
  %i.bz = load ptr, ptr %i.e, align 8, !alias.scope !28830, !noalias !28811, !nonnull !4, !noundef !4
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !28831
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.u, label %common.resume

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %common.resume unwind label %bb.x, !noalias !28811

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28811
  call void @llvm.experimental.noalias.scope.decl(metadata !28832)
  call void @llvm.experimental.noalias.scope.decl(metadata !28835)
  call void @llvm.experimental.noalias.scope.decl(metadata !28838)
  %i.cc = load ptr, ptr %i.e, align 8, !alias.scope !28841, !noalias !28811, !nonnull !4, !noundef !4
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !28842
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45, !noalias !28811
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28811
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB1E_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %bb.ad, %bb.u
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !28811
  unreachable

bb.y:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28811
  store ptr %i.bw, ptr %i.d, align 8, !noalias !28811
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store atomic i64 0, ptr %i.cg release, align 8, !noalias !28811
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store atomic ptr null, ptr %i.ch release, align 8, !noalias !28811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28811
  store ptr %i.i, ptr %i.b, align 8, !noalias !28811
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bw)
          to label %bb.z unwind label %bb.ac, !noalias !28811

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28811
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28811, !noundef !4 ; 3 uses
  store ptr %i.ci, ptr %i.a, align 8, !noalias !28811
  store ptr %i.bw, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28811
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !28843
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
end_hunk_16
begin_hunk_17_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28811
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB1E_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

bb.ac:                                            ; preds = %bb.y
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !28852
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.ad, label %common.resume

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #45
          to label %common.resume unwind label %bb.x, !noalias !28811

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTIB1t_INtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1G_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB1G_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2d_NtNtB1G_6marker4SendEL_EEEE4recvs_0uEs0_0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.f), !noalias !28811
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB1E_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit

_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1E_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB1E_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB2b_NtNtB1E_6marker4SendEL_EEEE4recvs_0uECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTIB1t_INtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4recvs_0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !28811
  br label %bb.b

.split:                                           ; preds = %bb.q
  %i.cp = extractvalue { i64, i32 } %i.bp, 1      ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 1000000000
  call void @llvm.assume(i1 %i.cq)
  %.not18 = icmp samesign ult i32 %i.cp, %i.bg
  br i1 %.not18, label %bb.r, label %bb.af

bb.ae:                                            ; preds = %bb.q
  %.not17 = icmp slt i64 %i.bq, %i.bo
  br i1 %.not17, label %bb.r, label %bb.af

bb.af:                                            ; preds = %.split, %bb.ae
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cr, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.ah, %bb.af
  %storemerge = phi i64 [ -9223372036854775741, %bb.af ], [ %.sroa.0.0.copyload2, %bb.ah ], [ -9223372036854775741, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  store i64 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cs, align 8
  br label %bb.ag

bb.ah:                                            ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4readCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4, i64 104, i1 false)
  br label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4sendCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !noalias !28859 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !noalias !28859, !noundef !4 ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ag
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cv, %bb.ag ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.cu, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !28862)
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bd, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ]
  %.sroa.02.034.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 8 uses
  %.sroa.0.02933.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1
  %i.aa = and i64 %i.z, %.sroa.02.034.i           ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !noalias !28862, !noundef !4
  %i.ac = sub i64 0, %i.ab
  %i.ad = and i64 %.sroa.02.034.i, %i.ac
  %i.ae = load ptr, ptr %i.r, align 8, !noalias !28862, !nonnull !4, !noundef !4
  %i.af = load i64, ptr %i.s, align 32, !noalias !28862, !noundef !4
  %i.ag = icmp ult i64 %i.aa, %i.af
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [128 x i8], ptr %i.ae, i64 %i.aa ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8, !noalias !28862 ; 2 uses
  %i.ak = icmp eq i64 %.sroa.02.034.i, %i.aj
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = load i64, ptr %i.q, align 8, !noalias !28862, !noundef !4
  %i.am = add i64 %i.al, %i.aj
  %i.an = add i64 %.sroa.02.034.i, 1
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ap = add nuw i64 %i.aa, 1
  %i.aq = load i64, ptr %i.t, align 128, !noalias !28862, !noundef !4
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.as = icmp ult i32 %.sroa.0.02933.i, 7
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.body.thread29.loopexit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.at = mul nuw i32 %.sroa.0.02933.i, %.sroa.0.02933.i ; 2 uses
  %xtraiter = and i32 %i.at, 7                    ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.au, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.at, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28862
  call void @llvm.x86.sse2.pause(), !noalias !28862
  call void @llvm.x86.sse2.pause(), !noalias !28862
  call void @llvm.x86.sse2.pause(), !noalias !28862
  call void @llvm.x86.sse2.pause(), !noalias !28862
  call void @llvm.x86.sse2.pause(), !noalias !28862
  call void @llvm.x86.sse2.pause(), !noalias !28862
  call void @llvm.x86.sse2.pause(), !noalias !28862
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod95 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28862
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28864

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.g
  %i.av = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.aw = load atomic i64, ptr %1 monotonic, align 128, !noalias !28862
  %i.ax = load i64, ptr %i.q, align 8, !noalias !28862, !noundef !4
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = icmp eq i64 %i.ay, %.sroa.02.034.i
  br i1 %i.az, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter96 = and i32 %5, 5                     ; 3 uses
  %i.ba = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.ba, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter100 = and i32 %5, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod98.not = icmp eq i32 %xtraiter96, 0
  br i1 %lcmp.mod98.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod99 = icmp ne i32 %xtraiter96, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter97 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter97.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28862
  %epil.iter97.next = add i32 %epil.iter97, 1     ; 2 uses
  %epil.iter97.cmp.not = icmp eq i32 %epil.iter97.next, %xtraiter96
  br i1 %epil.iter97.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !28865

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.bb = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter101 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter101.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28862
  call void @llvm.x86.sse2.pause(), !noalias !28862
  call void @llvm.x86.sse2.pause(), !noalias !28862
  call void @llvm.x86.sse2.pause(), !noalias !28862
  call void @llvm.x86.sse2.pause(), !noalias !28862
  call void @llvm.x86.sse2.pause(), !noalias !28862
  call void @llvm.x86.sse2.pause(), !noalias !28862
  call void @llvm.x86.sse2.pause(), !noalias !28862
  %niter101.next.7 = add i32 %niter101, 8         ; 2 uses
  %niter101.ncmp.7 = icmp eq i32 %niter101.next.7, %unroll_iter100
  br i1 %niter101.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bm, %._crit_edge.loopexit.i20.i ], [ %i.bb, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.bc = load atomic i64, ptr %i.k monotonic, align 128, !noalias !28862 ; 2 uses
  %i.bd = load i64, ptr %i.l, align 16, !noalias !28862, !noundef !4 ; 2 uses
  %i.be = and i64 %i.bd, %i.bc
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.b, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %i.q, align 8, !noalias !28862, !noundef !4
  %i.bh = add i64 %i.bg, %i.ad
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bi = add i64 %.sroa.02.034.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bi, %bb.k ], [ %i.bh, %bb.j ]
  %i.bj = cmpxchg weak ptr %i.k, i64 %.sroa.02.034.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !28862
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  br i1 %i.bk, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %6 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter102 = and i32 %6, 5                    ; 3 uses
  %i.bl = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.bl, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter106 = and i32 %6, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod104.not = icmp eq i32 %xtraiter102, 0
  br i1 %lcmp.mod104.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod105 = icmp ne i32 %xtraiter102, 0
  call void @llvm.assume(i1 %lcmp.mod105)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter103 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter103.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !28862
  %epil.iter103.next = add i32 %epil.iter103, 1   ; 2 uses
  %epil.iter103.cmp.not = icmp eq i32 %epil.iter103.next, %xtraiter102
  br i1 %epil.iter103.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !28866

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bm = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter107 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter107.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !28862
  call void @llvm.x86.sse2.pause(), !noalias !28862
  call void @llvm.x86.sse2.pause(), !noalias !28862
  call void @llvm.x86.sse2.pause(), !noalias !28862
  call void @llvm.x86.sse2.pause(), !noalias !28862
  call void @llvm.x86.sse2.pause(), !noalias !28862
  call void @llvm.x86.sse2.pause(), !noalias !28862
  call void @llvm.x86.sse2.pause(), !noalias !28862
  %niter107.next.7 = add i32 %niter107, 8         ; 2 uses
  %niter107.ncmp.7 = icmp eq i32 %niter107.next.7, %unroll_iter106
  br i1 %niter107.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

.body.thread29.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread29.loopexit.split-lp:                 ; preds = %bb.z, %bb.u, %bb.p, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.n, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTIB1t_INtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4send0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h
  %i.bn = load i32, ptr %i.i, align 8, !range !12185, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bn, 1000000000
  br i1 %.not, label %bb.o, label %bb.n

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  store ptr %i.ah, ptr %i.g, align 8, !alias.scope !28862
  %i.bp = add i64 %.sroa.02.034.i, 1              ; 2 uses
  store i64 %i.bp, ptr %i.j, align 8, !alias.scope !28862
  %.sroa.018.0.copyload34 = load i64, ptr %2, align 16
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.018.0.copyload34, ptr %i.ah, align 16, !noalias !28867
  %.sroa.5.0..val.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..val.sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx35, i64 104, i1 false)
  store atomic i64 %i.bp, ptr %i.bo release, align 16, !noalias !28870
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bq) #49
  br label %bb.ai

bb.n:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %i.br = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.bs = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %bb.ac unwind label %.body.thread29.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.split, %bb.ad, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !28872
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.421.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bt = load i8, ptr %i.v, align 8, !range !102, !noalias !28875, !noundef !4
  %i.bu = icmp eq i8 %i.bt, 1
  br i1 %i.bu, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !240

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.o
  %i.bv = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc10 unwind label %.body.thread29.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTIB1t_INtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4send0uEs_0uECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %.noexc10, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bv, %.noexc10 ], [ %i.u, %bb.o ] ; 4 uses
  %i.bx = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28872, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28872
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.w, !prof !52

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !28872
  %i.by = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.q unwind label %.body.thread29.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.by, ptr %i.e, align 8, !noalias !28872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28872
  store ptr %i.g, ptr %i.c, align 8, !noalias !28872
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.by)
          to label %bb.t unwind label %bb.r, !noalias !28872

bb.r:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28882)
  call void @llvm.experimental.noalias.scope.decl(metadata !28885)
  call void @llvm.experimental.noalias.scope.decl(metadata !28888)
  %i.ca = load ptr, ptr %i.e, align 8, !alias.scope !28891, !noalias !28872, !nonnull !4, !noundef !4
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !28892
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.s, label %.body.thread

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %.body.thread unwind label %bb.v, !noalias !28872

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28872
  call void @llvm.experimental.noalias.scope.decl(metadata !28893)
  call void @llvm.experimental.noalias.scope.decl(metadata !28896)
  call void @llvm.experimental.noalias.scope.decl(metadata !28899)
  %i.cd = load ptr, ptr %i.e, align 8, !alias.scope !28902, !noalias !28872, !nonnull !4, !noundef !4
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !28903
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i unwind label %.body.thread29.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28872
  br label %bb.ag

bb.v:                                             ; preds = %bb.ab, %bb.s
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !28872
  unreachable

bb.w:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28872
  store ptr %i.bx, ptr %i.d, align 8, !noalias !28872
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store atomic i64 0, ptr %i.ch release, align 8, !noalias !28872
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store atomic ptr null, ptr %i.ci release, align 8, !noalias !28872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28872
  store ptr %i.g, ptr %i.b, align 8, !noalias !28872
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bx)
          to label %bb.x unwind label %bb.aa, !noalias !28872

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28872
  %i.cj = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28872, !noundef !4 ; 3 uses
  store ptr %i.cj, ptr %i.a, align 8, !noalias !28872
  store ptr %i.bx, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !28872
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !28904
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %.body.thread29.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28872
  br label %bb.ag

bb.aa:                                            ; preds = %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !28913
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.ab, label %.body.thread
end_hunk_17
