inline.NumInlined: 13443
inline.NumDeleted: 3890
begin_hunk_0_@_RNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB6_12SessionState20create_physical_plan0Cs14kWLkQVSKO_14deltalake_core:bb.a
  %i.aa = extractvalue { ptr, ptr } %i.x, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 320
  store ptr %i.z, ptr %i.ab, align 16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 328
  store ptr %i.aa, ptr %i.ac, align 8
  br label %bb.n

.body:                                            ; preds = %bb.v, %bb.u, %bb.m, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.u ], [ %i.ad, %bb.m ], [ %i.y, %bb.f ], [ %i.ap, %bb.v ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %1) #46
          to label %bb.j unwind label %bb.x

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  br label %bb.i

common.ret:                                       ; preds = %bb.p, %bb.i
  %storemerge = phi i8 [ 3, %bb.p ], [ 1, %bb.i ]
  store i8 %storemerge, ptr %i.d, align 16
  ret void

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  br label %common.ret

bb.j:                                             ; preds = %bb.w, %bb.c, %.body
  %.pn2.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.av, %bb.w ], [ %.pn, %.body ]
  store i8 2, ptr %i.d, align 16
  resume { ptr, i32 } %.pn2.pn

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #50
  unreachable

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #50
  unreachable

bb.m:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val6 = load ptr, ptr %i.af, align 16
  %i.ae = getelementptr i8, ptr %1, i64 328
  %.val7 = load ptr, ptr %i.ae, align 8, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val6, ptr nonnull %.val7) #46
          to label %.body unwind label %bb.x

bb.n:                                             ; preds = %bb.g, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  %i.ag = load i64, ptr %i.b, align 8, !range !12625, !noundef !4
  %i.ah = icmp eq i64 %i.ag, 21
  br i1 %i.ah, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.af, align 16           ; 5 uses
  %i.ai = getelementptr i8, ptr %1, i64 328
  %.val5 = load ptr, ptr %i.ai, align 8, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.aj = load ptr, ptr %.val5, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.aj(ptr noundef nonnull %.val)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !range !3, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.al, i64 noundef range(i64 1, 536870913) %i.ao) #40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.r
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.body, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.au = load i64, ptr %i.at, align 8, !range !3, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ar, i64 noundef range(i64 1, 536870913) %i.au) #40
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.t, %bb.s
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %1)
          to label %bb.i unwind label %bb.w

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.x:                                             ; preds = %bb.m, %.body
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_IB1S_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3v_5error5ErrorENtNtB13_6marker4SendEL_EEB4q_EE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !19132, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #49
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !noundef !4
  %i.m = xor i64 %i.l, -1
  %i.n = and i64 %i.j, %i.m
  %i.o = icmp eq i64 %i.n, %i.h
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.q = cmpxchg ptr %i.p, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = load atomic i64, ptr %i.i seq_cst, align 128
  %i.s = load i64, ptr %i.k, align 16, !noundef !4
  %i.t = and i64 %i.s, %i.r
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i32, ptr %i.y, align 8, !range !12185, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.z, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ac, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ad = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ad, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ae = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.af = extractvalue { i64, i32 } %i.ae, 0      ; 3 uses
  %i.ag = extractvalue { i64, i32 } %i.ae, 1      ; 2 uses
  %i.ah = icmp eq i64 %i.af, %i.x
  %i.ai = icmp slt i64 %i.af, %i.x
  %i.aj = icmp samesign ult i32 %i.ag, %i.z
  %spec.select.i3 = select i1 %i.ah, i1 %i.aj, i1 %i.ai
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = cmpxchg ptr %i.ab, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  %i.am = extractvalue { i64, i1 } %i.ak, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.am, i64 3)
  br i1 %i.al, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.an = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.x, i32 noundef range(i32 0, 1000000001) %i.z, i64 noundef %i.af, i32 noundef %i.ag) ; 2 uses
  %i.ao = extractvalue { i64, i32 } %i.an, 0
  %i.ap = extractvalue { i64, i32 } %i.an, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, i64 noundef %i.ao, i32 noundef %i.ap)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.ac, %.split.us.i ], [ %i.ac, %.split.us.i ], [ %i.ad, %.split.i ], [ %i.ad, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !19133

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #50
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #49
  %i.aq = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !52

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19143)
  %i.ar = load ptr, ptr %i.b, align 8, !alias.scope !19146, !nonnull !4, !noundef !4
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !19146
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_IB1S_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3v_5error5ErrorENtNtB13_6marker4SendEL_EEB4q_EE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !19132, !noundef !4 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #49
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.i = load atomic i64, ptr %i.h seq_cst, align 128
  %i.j = load atomic i64, ptr %i.f seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = add i64 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.o = load i64, ptr %i.n, align 16, !noundef !4
  %i.p = xor i64 %i.o, -1
  %i.q = and i64 %i.i, %i.p
  %i.r = icmp eq i64 %i.m, %i.q
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.t = cmpxchg ptr %i.s, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load atomic i64, ptr %i.h seq_cst, align 128
  %i.v = load i64, ptr %i.n, align 16, !noundef !4
  %i.w = and i64 %i.v, %i.u
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !range !12185, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ac, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 3 uses
  switch i64 %i.af, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ag = load atomic i64, ptr %i.ae acquire, align 8 ; 3 uses
  switch i64 %i.ag, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ah = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.ai = extractvalue { i64, i32 } %i.ah, 0      ; 3 uses
  %i.aj = extractvalue { i64, i32 } %i.ah, 1      ; 2 uses
  %i.ak = icmp eq i64 %i.ai, %i.aa
  %i.al = icmp slt i64 %i.ai, %i.aa
  %i.am = icmp samesign ult i32 %i.aj, %i.ac
  %spec.select.i3 = select i1 %i.ak, i1 %i.am, i1 %i.al
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = cmpxchg ptr %i.ae, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  %i.ap = extractvalue { i64, i1 } %i.an, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 3)
  br i1 %i.ao, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.aq = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.aa, i32 noundef range(i32 0, 1000000001) %i.ac, i64 noundef %i.ai, i32 noundef %i.aj) ; 2 uses
  %i.ar = extractvalue { i64, i32 } %i.aq, 0
  %i.as = extractvalue { i64, i32 } %i.aq, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, i64 noundef %i.ar, i32 noundef %i.as)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.af, %.split.us.i ], [ %i.af, %.split.us.i ], [ %i.ag, %.split.i ], [ %i.ag, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !19133

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @448) #50
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #49
  %i.at = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !52

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19156)
  %i.au = load ptr, ptr %i.b, align 8, !alias.scope !19159, !nonnull !4, !noundef !4
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !19159
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @449) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3n_5error5ErrorENtNtB13_6marker4SendEL_EEB3Y_EE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !19132, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #49
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !noundef !4
  %i.m = xor i64 %i.l, -1
  %i.n = and i64 %i.j, %i.m
  %i.o = icmp eq i64 %i.n, %i.h
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.q = cmpxchg ptr %i.p, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = load atomic i64, ptr %i.i seq_cst, align 128
  %i.s = load i64, ptr %i.k, align 16, !noundef !4
  %i.t = and i64 %i.s, %i.r
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i32, ptr %i.y, align 8, !range !12185, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.z, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ac, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ad = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ad, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ae = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.af = extractvalue { i64, i32 } %i.ae, 0      ; 3 uses
  %i.ag = extractvalue { i64, i32 } %i.ae, 1      ; 2 uses
  %i.ah = icmp eq i64 %i.af, %i.x
  %i.ai = icmp slt i64 %i.af, %i.x
  %i.aj = icmp samesign ult i32 %i.ag, %i.z
  %spec.select.i3 = select i1 %i.ah, i1 %i.aj, i1 %i.ai
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = cmpxchg ptr %i.ab, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  %i.am = extractvalue { i64, i1 } %i.ak, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.am, i64 3)
  br i1 %i.al, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.an = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.x, i32 noundef range(i32 0, 1000000001) %i.z, i64 noundef %i.af, i32 noundef %i.ag) ; 2 uses
  %i.ao = extractvalue { i64, i32 } %i.an, 0
  %i.ap = extractvalue { i64, i32 } %i.an, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, i64 noundef %i.ao, i32 noundef %i.ap)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.ac, %.split.us.i ], [ %i.ac, %.split.us.i ], [ %i.ad, %.split.i ], [ %i.ad, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !19133

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #50
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #49
  %i.aq = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !52

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19169)
  %i.ar = load ptr, ptr %i.b, align 8, !alias.scope !19172, !nonnull !4, !noundef !4
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !19172
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3n_5error5ErrorENtNtB13_6marker4SendEL_EEB3Y_EE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !19132, !noundef !4 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #49
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.i = load atomic i64, ptr %i.h seq_cst, align 128
  %i.j = load atomic i64, ptr %i.f seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = add i64 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.o = load i64, ptr %i.n, align 16, !noundef !4
  %i.p = xor i64 %i.o, -1
  %i.q = and i64 %i.i, %i.p
  %i.r = icmp eq i64 %i.m, %i.q
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.t = cmpxchg ptr %i.s, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load atomic i64, ptr %i.h seq_cst, align 128
  %i.v = load i64, ptr %i.n, align 16, !noundef !4
  %i.w = and i64 %i.v, %i.u
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !range !12185, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ac, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 3 uses
  switch i64 %i.af, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ag = load atomic i64, ptr %i.ae acquire, align 8 ; 3 uses
  switch i64 %i.ag, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ah = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.ai = extractvalue { i64, i32 } %i.ah, 0      ; 3 uses
  %i.aj = extractvalue { i64, i32 } %i.ah, 1      ; 2 uses
  %i.ak = icmp eq i64 %i.ai, %i.aa
  %i.al = icmp slt i64 %i.ai, %i.aa
  %i.am = icmp samesign ult i32 %i.aj, %i.ac
  %spec.select.i3 = select i1 %i.ak, i1 %i.am, i1 %i.al
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = cmpxchg ptr %i.ae, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  %i.ap = extractvalue { i64, i1 } %i.an, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 3)
  br i1 %i.ao, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.aq = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.aa, i32 noundef range(i32 0, 1000000001) %i.ac, i64 noundef %i.ai, i32 noundef %i.aj) ; 2 uses
  %i.ar = extractvalue { i64, i32 } %i.aq, 0
  %i.as = extractvalue { i64, i32 } %i.aq, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, i64 noundef %i.ar, i32 noundef %i.as)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.af, %.split.us.i ], [ %i.af, %.split.us.i ], [ %i.ag, %.split.i ], [ %i.ag, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !19133

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @448) #50
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #49
  %i.at = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !52

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19182)
  %i.au = load ptr, ptr %i.b, align 8, !alias.scope !19185, !nonnull !4, !noundef !4
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !19185
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @449) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB13_6marker4SendEL_EEB3V_EE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !19132, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #49
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !noundef !4
  %i.m = xor i64 %i.l, -1
  %i.n = and i64 %i.j, %i.m
  %i.o = icmp eq i64 %i.n, %i.h
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.q = cmpxchg ptr %i.p, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = load atomic i64, ptr %i.i seq_cst, align 128
  %i.s = load i64, ptr %i.k, align 16, !noundef !4
  %i.t = and i64 %i.s, %i.r
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i32, ptr %i.y, align 8, !range !12185, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.z, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ac, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ad = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ad, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ae = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.af = extractvalue { i64, i32 } %i.ae, 0      ; 3 uses
  %i.ag = extractvalue { i64, i32 } %i.ae, 1      ; 2 uses
  %i.ah = icmp eq i64 %i.af, %i.x
  %i.ai = icmp slt i64 %i.af, %i.x
  %i.aj = icmp samesign ult i32 %i.ag, %i.z
  %spec.select.i3 = select i1 %i.ah, i1 %i.aj, i1 %i.ai
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = cmpxchg ptr %i.ab, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  %i.am = extractvalue { i64, i1 } %i.ak, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.am, i64 3)
  br i1 %i.al, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.an = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.x, i32 noundef range(i32 0, 1000000001) %i.z, i64 noundef %i.af, i32 noundef %i.ag) ; 2 uses
  %i.ao = extractvalue { i64, i32 } %i.an, 0
  %i.ap = extractvalue { i64, i32 } %i.an, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, i64 noundef %i.ao, i32 noundef %i.ap)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.ac, %.split.us.i ], [ %i.ac, %.split.us.i ], [ %i.ad, %.split.i ], [ %i.ad, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !19133

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #50
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #49
  %i.aq = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !52

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19195)
  %i.ar = load ptr, ptr %i.b, align 8, !alias.scope !19198, !nonnull !4, !noundef !4
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !19198
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB13_6marker4SendEL_EEB3V_EE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !19132, !noundef !4 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #49
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.i = load atomic i64, ptr %i.h seq_cst, align 128
  %i.j = load atomic i64, ptr %i.f seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = add i64 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.o = load i64, ptr %i.n, align 16, !noundef !4
  %i.p = xor i64 %i.o, -1
  %i.q = and i64 %i.i, %i.p
  %i.r = icmp eq i64 %i.m, %i.q
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.t = cmpxchg ptr %i.s, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load atomic i64, ptr %i.h seq_cst, align 128
  %i.v = load i64, ptr %i.n, align 16, !noundef !4
  %i.w = and i64 %i.v, %i.u
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !range !12185, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ac, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 3 uses
  switch i64 %i.af, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ag = load atomic i64, ptr %i.ae acquire, align 8 ; 3 uses
  switch i64 %i.ag, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ah = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.ai = extractvalue { i64, i32 } %i.ah, 0      ; 3 uses
  %i.aj = extractvalue { i64, i32 } %i.ah, 1      ; 2 uses
  %i.ak = icmp eq i64 %i.ai, %i.aa
  %i.al = icmp slt i64 %i.ai, %i.aa
  %i.am = icmp samesign ult i32 %i.aj, %i.ac
  %spec.select.i3 = select i1 %i.ak, i1 %i.am, i1 %i.al
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = cmpxchg ptr %i.ae, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  %i.ap = extractvalue { i64, i1 } %i.an, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 3)
  br i1 %i.ao, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.aq = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.aa, i32 noundef range(i32 0, 1000000001) %i.ac, i64 noundef %i.ai, i32 noundef %i.aj) ; 2 uses
  %i.ar = extractvalue { i64, i32 } %i.aq, 0
  %i.as = extractvalue { i64, i32 } %i.aq, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, i64 noundef %i.ar, i32 noundef %i.as)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.af, %.split.us.i ], [ %i.af, %.split.us.i ], [ %i.ag, %.split.i ], [ %i.ag, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !19133

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @448) #50
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #49
  %i.at = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !52

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19208)
  %i.au = load ptr, ptr %i.b, align 8, !alias.scope !19211, !nonnull !4, !noundef !4
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !19211
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @449) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1C_5error5ErrorEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !19132, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #49
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !noundef !4
  %i.m = xor i64 %i.l, -1
  %i.n = and i64 %i.j, %i.m
  %i.o = icmp eq i64 %i.n, %i.h
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.q = cmpxchg ptr %i.p, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = load atomic i64, ptr %i.i seq_cst, align 128
  %i.s = load i64, ptr %i.k, align 16, !noundef !4
  %i.t = and i64 %i.s, %i.r
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i32, ptr %i.y, align 8, !range !12185, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.z, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ac, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ad = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ad, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ae = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.af = extractvalue { i64, i32 } %i.ae, 0      ; 3 uses
  %i.ag = extractvalue { i64, i32 } %i.ae, 1      ; 2 uses
  %i.ah = icmp eq i64 %i.af, %i.x
  %i.ai = icmp slt i64 %i.af, %i.x
  %i.aj = icmp samesign ult i32 %i.ag, %i.z
  %spec.select.i3 = select i1 %i.ah, i1 %i.aj, i1 %i.ai
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = cmpxchg ptr %i.ab, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  %i.am = extractvalue { i64, i1 } %i.ak, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.am, i64 3)
  br i1 %i.al, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.an = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.x, i32 noundef range(i32 0, 1000000001) %i.z, i64 noundef %i.af, i32 noundef %i.ag) ; 2 uses
  %i.ao = extractvalue { i64, i32 } %i.an, 0
  %i.ap = extractvalue { i64, i32 } %i.an, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, i64 noundef %i.ao, i32 noundef %i.ap)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.ac, %.split.us.i ], [ %i.ac, %.split.us.i ], [ %i.ad, %.split.i ], [ %i.ad, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !19133

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #50
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #49
  %i.aq = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !52

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19221)
  %i.ar = load ptr, ptr %i.b, align 8, !alias.scope !19224, !nonnull !4, !noundef !4
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !19224
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1C_5error5ErrorEE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !19132, !noundef !4 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #49
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.i = load atomic i64, ptr %i.h seq_cst, align 128
  %i.j = load atomic i64, ptr %i.f seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = add i64 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.o = load i64, ptr %i.n, align 16, !noundef !4
  %i.p = xor i64 %i.o, -1
  %i.q = and i64 %i.i, %i.p
  %i.r = icmp eq i64 %i.m, %i.q
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.t = cmpxchg ptr %i.s, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load atomic i64, ptr %i.h seq_cst, align 128
  %i.v = load i64, ptr %i.n, align 16, !noundef !4
  %i.w = and i64 %i.v, %i.u
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !range !12185, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ac, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 3 uses
  switch i64 %i.af, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ag = load atomic i64, ptr %i.ae acquire, align 8 ; 3 uses
  switch i64 %i.ag, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ah = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.ai = extractvalue { i64, i32 } %i.ah, 0      ; 3 uses
  %i.aj = extractvalue { i64, i32 } %i.ah, 1      ; 2 uses
  %i.ak = icmp eq i64 %i.ai, %i.aa
  %i.al = icmp slt i64 %i.ai, %i.aa
  %i.am = icmp samesign ult i32 %i.aj, %i.ac
  %spec.select.i3 = select i1 %i.ak, i1 %i.am, i1 %i.al
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = cmpxchg ptr %i.ae, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  %i.ap = extractvalue { i64, i1 } %i.an, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 3)
  br i1 %i.ao, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.aq = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.aa, i32 noundef range(i32 0, 1000000001) %i.ac, i64 noundef %i.ai, i32 noundef %i.aj) ; 2 uses
  %i.ar = extractvalue { i64, i32 } %i.aq, 0
  %i.as = extractvalue { i64, i32 } %i.aq, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, i64 noundef %i.ar, i32 noundef %i.as)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.af, %.split.us.i ], [ %i.af, %.split.us.i ], [ %i.ag, %.split.i ], [ %i.ag, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !19133

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @448) #50
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #49
  %i.at = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !52

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19234)
  %i.au = load ptr, ptr %i.b, align 8, !alias.scope !19237, !nonnull !4, !noundef !4
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !19237
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @449) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1C_5error5ErrorEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !19132, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #49
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !noundef !4
  %i.m = xor i64 %i.l, -1
  %i.n = and i64 %i.j, %i.m
  %i.o = icmp eq i64 %i.n, %i.h
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.q = cmpxchg ptr %i.p, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = load atomic i64, ptr %i.i seq_cst, align 128
  %i.s = load i64, ptr %i.k, align 16, !noundef !4
  %i.t = and i64 %i.s, %i.r
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i32, ptr %i.y, align 8, !range !12185, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.z, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ac, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ad = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ad, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ae = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.af = extractvalue { i64, i32 } %i.ae, 0      ; 3 uses
  %i.ag = extractvalue { i64, i32 } %i.ae, 1      ; 2 uses
  %i.ah = icmp eq i64 %i.af, %i.x
  %i.ai = icmp slt i64 %i.af, %i.x
  %i.aj = icmp samesign ult i32 %i.ag, %i.z
  %spec.select.i3 = select i1 %i.ah, i1 %i.aj, i1 %i.ai
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = cmpxchg ptr %i.ab, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  %i.am = extractvalue { i64, i1 } %i.ak, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.am, i64 3)
  br i1 %i.al, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.an = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.x, i32 noundef range(i32 0, 1000000001) %i.z, i64 noundef %i.af, i32 noundef %i.ag) ; 2 uses
  %i.ao = extractvalue { i64, i32 } %i.an, 0
  %i.ap = extractvalue { i64, i32 } %i.an, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, i64 noundef %i.ao, i32 noundef %i.ap)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.ac, %.split.us.i ], [ %i.ac, %.split.us.i ], [ %i.ad, %.split.i ], [ %i.ad, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !19133

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #50
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #49
  %i.aq = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !52

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19247)
  %i.ar = load ptr, ptr %i.b, align 8, !alias.scope !19250, !nonnull !4, !noundef !4
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !19250
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1C_5error5ErrorEE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !19132, !noundef !4 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #49
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.i = load atomic i64, ptr %i.h seq_cst, align 128
  %i.j = load atomic i64, ptr %i.f seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = add i64 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.o = load i64, ptr %i.n, align 16, !noundef !4
  %i.p = xor i64 %i.o, -1
  %i.q = and i64 %i.i, %i.p
  %i.r = icmp eq i64 %i.m, %i.q
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.t = cmpxchg ptr %i.s, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load atomic i64, ptr %i.h seq_cst, align 128
  %i.v = load i64, ptr %i.n, align 16, !noundef !4
  %i.w = and i64 %i.v, %i.u
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !range !12185, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ac, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 3 uses
  switch i64 %i.af, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ag = load atomic i64, ptr %i.ae acquire, align 8 ; 3 uses
  switch i64 %i.ag, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ah = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.ai = extractvalue { i64, i32 } %i.ah, 0      ; 3 uses
  %i.aj = extractvalue { i64, i32 } %i.ah, 1      ; 2 uses
  %i.ak = icmp eq i64 %i.ai, %i.aa
  %i.al = icmp slt i64 %i.ai, %i.aa
  %i.am = icmp samesign ult i32 %i.aj, %i.ac
  %spec.select.i3 = select i1 %i.ak, i1 %i.am, i1 %i.al
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = cmpxchg ptr %i.ae, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  %i.ap = extractvalue { i64, i1 } %i.an, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 3)
  br i1 %i.ao, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.aq = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.aa, i32 noundef range(i32 0, 1000000001) %i.ac, i64 noundef %i.ai, i32 noundef %i.aj) ; 2 uses
  %i.ar = extractvalue { i64, i32 } %i.aq, 0
  %i.as = extractvalue { i64, i32 } %i.aq, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, i64 noundef %i.ar, i32 noundef %i.as)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.af, %.split.us.i ], [ %i.af, %.split.us.i ], [ %i.ag, %.split.i ], [ %i.ag, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !19133

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @448) #50
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #49
  %i.at = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !52

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19260)
  %i.au = load ptr, ptr %i.b, align 8, !alias.scope !19263, !nonnull !4, !noundef !4
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !19263
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @449) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !19132, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #49
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !noundef !4
  %i.m = xor i64 %i.l, -1
  %i.n = and i64 %i.j, %i.m
  %i.o = icmp eq i64 %i.n, %i.h
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.q = cmpxchg ptr %i.p, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = load atomic i64, ptr %i.i seq_cst, align 128
  %i.s = load i64, ptr %i.k, align 16, !noundef !4
  %i.t = and i64 %i.s, %i.r
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i32, ptr %i.y, align 8, !range !12185, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.z, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ac, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ad = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ad, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ae = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.af = extractvalue { i64, i32 } %i.ae, 0      ; 3 uses
  %i.ag = extractvalue { i64, i32 } %i.ae, 1      ; 2 uses
  %i.ah = icmp eq i64 %i.af, %i.x
  %i.ai = icmp slt i64 %i.af, %i.x
  %i.aj = icmp samesign ult i32 %i.ag, %i.z
  %spec.select.i3 = select i1 %i.ah, i1 %i.aj, i1 %i.ai
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = cmpxchg ptr %i.ab, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  %i.am = extractvalue { i64, i1 } %i.ak, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.am, i64 3)
  br i1 %i.al, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.an = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.x, i32 noundef range(i32 0, 1000000001) %i.z, i64 noundef %i.af, i32 noundef %i.ag) ; 2 uses
  %i.ao = extractvalue { i64, i32 } %i.an, 0
  %i.ap = extractvalue { i64, i32 } %i.an, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, i64 noundef %i.ao, i32 noundef %i.ap)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.ac, %.split.us.i ], [ %i.ac, %.split.us.i ], [ %i.ad, %.split.i ], [ %i.ad, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !19133

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #50
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #49
  %i.aq = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !52

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19273)
  %i.ar = load ptr, ptr %i.b, align 8, !alias.scope !19276, !nonnull !4, !noundef !4
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !19276
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !19132, !noundef !4 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #49
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.i = load atomic i64, ptr %i.h seq_cst, align 128
  %i.j = load atomic i64, ptr %i.f seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = add i64 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.o = load i64, ptr %i.n, align 16, !noundef !4
  %i.p = xor i64 %i.o, -1
  %i.q = and i64 %i.i, %i.p
  %i.r = icmp eq i64 %i.m, %i.q
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.t = cmpxchg ptr %i.s, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load atomic i64, ptr %i.h seq_cst, align 128
  %i.v = load i64, ptr %i.n, align 16, !noundef !4
  %i.w = and i64 %i.v, %i.u
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !range !12185, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ac, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 3 uses
  switch i64 %i.af, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ag = load atomic i64, ptr %i.ae acquire, align 8 ; 3 uses
  switch i64 %i.ag, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ah = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.ai = extractvalue { i64, i32 } %i.ah, 0      ; 3 uses
  %i.aj = extractvalue { i64, i32 } %i.ah, 1      ; 2 uses
  %i.ak = icmp eq i64 %i.ai, %i.aa
  %i.al = icmp slt i64 %i.ai, %i.aa
  %i.am = icmp samesign ult i32 %i.aj, %i.ac
  %spec.select.i3 = select i1 %i.ak, i1 %i.am, i1 %i.al
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = cmpxchg ptr %i.ae, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  %i.ap = extractvalue { i64, i1 } %i.an, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 3)
  br i1 %i.ao, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.aq = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.aa, i32 noundef range(i32 0, 1000000001) %i.ac, i64 noundef %i.ai, i32 noundef %i.aj) ; 2 uses
  %i.ar = extractvalue { i64, i32 } %i.aq, 0
  %i.as = extractvalue { i64, i32 } %i.aq, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, i64 noundef %i.ar, i32 noundef %i.as)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.af, %.split.us.i ], [ %i.af, %.split.us.i ], [ %i.ag, %.split.i ], [ %i.ag, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !19133

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @448) #50
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #49
  %i.at = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !52

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19286)
  %i.au = load ptr, ptr %i.b, align 8, !alias.scope !19289, !nonnull !4, !noundef !4
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !19289
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @449) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2C_5error5ErrorEEINtNtB14_3pin3PinIB1Z_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !19132, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #49
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !noundef !4
  %i.m = xor i64 %i.l, -1
  %i.n = and i64 %i.j, %i.m
  %i.o = icmp eq i64 %i.n, %i.h
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.q = cmpxchg ptr %i.p, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = load atomic i64, ptr %i.i seq_cst, align 128
  %i.s = load i64, ptr %i.k, align 16, !noundef !4
  %i.t = and i64 %i.s, %i.r
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i32, ptr %i.y, align 8, !range !12185, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.z, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ac, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ad = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ad, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ae = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.af = extractvalue { i64, i32 } %i.ae, 0      ; 3 uses
  %i.ag = extractvalue { i64, i32 } %i.ae, 1      ; 2 uses
  %i.ah = icmp eq i64 %i.af, %i.x
  %i.ai = icmp slt i64 %i.af, %i.x
  %i.aj = icmp samesign ult i32 %i.ag, %i.z
  %spec.select.i3 = select i1 %i.ah, i1 %i.aj, i1 %i.ai
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = cmpxchg ptr %i.ab, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  %i.am = extractvalue { i64, i1 } %i.ak, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.am, i64 3)
  br i1 %i.al, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.an = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.x, i32 noundef range(i32 0, 1000000001) %i.z, i64 noundef %i.af, i32 noundef %i.ag) ; 2 uses
  %i.ao = extractvalue { i64, i32 } %i.an, 0
  %i.ap = extractvalue { i64, i32 } %i.an, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, i64 noundef %i.ao, i32 noundef %i.ap)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.ac, %.split.us.i ], [ %i.ac, %.split.us.i ], [ %i.ad, %.split.i ], [ %i.ad, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !19133

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #50
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #49
  %i.aq = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !52

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19299)
  %i.ar = load ptr, ptr %i.b, align 8, !alias.scope !19302, !nonnull !4, !noundef !4
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !19302
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2C_5error5ErrorEEINtNtB14_3pin3PinIB1Z_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !19132, !noundef !4 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #49
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.i = load atomic i64, ptr %i.h seq_cst, align 128
  %i.j = load atomic i64, ptr %i.f seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = add i64 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.o = load i64, ptr %i.n, align 16, !noundef !4
  %i.p = xor i64 %i.o, -1
  %i.q = and i64 %i.i, %i.p
  %i.r = icmp eq i64 %i.m, %i.q
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.t = cmpxchg ptr %i.s, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load atomic i64, ptr %i.h seq_cst, align 128
  %i.v = load i64, ptr %i.n, align 16, !noundef !4
  %i.w = and i64 %i.v, %i.u
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !range !12185, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ac, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 3 uses
  switch i64 %i.af, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ag = load atomic i64, ptr %i.ae acquire, align 8 ; 3 uses
  switch i64 %i.ag, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ah = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.ai = extractvalue { i64, i32 } %i.ah, 0      ; 3 uses
  %i.aj = extractvalue { i64, i32 } %i.ah, 1      ; 2 uses
  %i.ak = icmp eq i64 %i.ai, %i.aa
  %i.al = icmp slt i64 %i.ai, %i.aa
  %i.am = icmp samesign ult i32 %i.aj, %i.ac
  %spec.select.i3 = select i1 %i.ak, i1 %i.am, i1 %i.al
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = cmpxchg ptr %i.ae, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  %i.ap = extractvalue { i64, i1 } %i.an, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 3)
  br i1 %i.ao, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.aq = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.aa, i32 noundef range(i32 0, 1000000001) %i.ac, i64 noundef %i.ai, i32 noundef %i.aj) ; 2 uses
  %i.ar = extractvalue { i64, i32 } %i.aq, 0
  %i.as = extractvalue { i64, i32 } %i.aq, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, i64 noundef %i.ar, i32 noundef %i.as)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.af, %.split.us.i ], [ %i.af, %.split.us.i ], [ %i.ag, %.split.i ], [ %i.ag, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !19133

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @448) #50
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #49
  %i.at = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !52

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19312)
  %i.au = load ptr, ptr %i.b, align 8, !alias.scope !19315, !nonnull !4, !noundef !4
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !19315
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @449) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB20_5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !19132, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #49
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !noundef !4
  %i.m = xor i64 %i.l, -1
  %i.n = and i64 %i.j, %i.m
  %i.o = icmp eq i64 %i.n, %i.h
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.q = cmpxchg ptr %i.p, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = load atomic i64, ptr %i.i seq_cst, align 128
  %i.s = load i64, ptr %i.k, align 16, !noundef !4
  %i.t = and i64 %i.s, %i.r
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i32, ptr %i.y, align 8, !range !12185, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.z, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ac, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ad = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ad, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ae = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.af = extractvalue { i64, i32 } %i.ae, 0      ; 3 uses
  %i.ag = extractvalue { i64, i32 } %i.ae, 1      ; 2 uses
  %i.ah = icmp eq i64 %i.af, %i.x
  %i.ai = icmp slt i64 %i.af, %i.x
  %i.aj = icmp samesign ult i32 %i.ag, %i.z
  %spec.select.i3 = select i1 %i.ah, i1 %i.aj, i1 %i.ai
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = cmpxchg ptr %i.ab, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  %i.am = extractvalue { i64, i1 } %i.ak, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.am, i64 3)
  br i1 %i.al, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.an = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.x, i32 noundef range(i32 0, 1000000001) %i.z, i64 noundef %i.af, i32 noundef %i.ag) ; 2 uses
  %i.ao = extractvalue { i64, i32 } %i.an, 0
  %i.ap = extractvalue { i64, i32 } %i.an, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, i64 noundef %i.ao, i32 noundef %i.ap)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.ac, %.split.us.i ], [ %i.ac, %.split.us.i ], [ %i.ad, %.split.i ], [ %i.ad, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !19133

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #50
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #49
  %i.aq = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !52

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19325)
  %i.ar = load ptr, ptr %i.b, align 8, !alias.scope !19328, !nonnull !4, !noundef !4
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !19328
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB20_5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !19132, !noundef !4 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #49
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.i = load atomic i64, ptr %i.h seq_cst, align 128
  %i.j = load atomic i64, ptr %i.f seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = add i64 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.o = load i64, ptr %i.n, align 16, !noundef !4
  %i.p = xor i64 %i.o, -1
  %i.q = and i64 %i.i, %i.p
  %i.r = icmp eq i64 %i.m, %i.q
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.t = cmpxchg ptr %i.s, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load atomic i64, ptr %i.h seq_cst, align 128
  %i.v = load i64, ptr %i.n, align 16, !noundef !4
  %i.w = and i64 %i.v, %i.u
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !range !12185, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ac, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 3 uses
  switch i64 %i.af, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ag = load atomic i64, ptr %i.ae acquire, align 8 ; 3 uses
  switch i64 %i.ag, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ah = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.ai = extractvalue { i64, i32 } %i.ah, 0      ; 3 uses
  %i.aj = extractvalue { i64, i32 } %i.ah, 1      ; 2 uses
  %i.ak = icmp eq i64 %i.ai, %i.aa
  %i.al = icmp slt i64 %i.ai, %i.aa
  %i.am = icmp samesign ult i32 %i.aj, %i.ac
  %spec.select.i3 = select i1 %i.ak, i1 %i.am, i1 %i.al
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = cmpxchg ptr %i.ae, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  %i.ap = extractvalue { i64, i1 } %i.an, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 3)
  br i1 %i.ao, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.aq = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.aa, i32 noundef range(i32 0, 1000000001) %i.ac, i64 noundef %i.ai, i32 noundef %i.aj) ; 2 uses
  %i.ar = extractvalue { i64, i32 } %i.aq, 0
  %i.as = extractvalue { i64, i32 } %i.aq, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, i64 noundef %i.ar, i32 noundef %i.as)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.af, %.split.us.i ], [ %i.af, %.split.us.i ], [ %i.ag, %.split.i ], [ %i.ag, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !19133

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @448) #50
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #49
  %i.at = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !52

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19338)
  %i.au = load ptr, ptr %i.b, align 8, !alias.scope !19341, !nonnull !4, !noundef !4
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !19341
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @449) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !19132, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #49
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !noundef !4
  %i.m = xor i64 %i.l, -1
  %i.n = and i64 %i.j, %i.m
  %i.o = icmp eq i64 %i.n, %i.h
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.q = cmpxchg ptr %i.p, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = load atomic i64, ptr %i.i seq_cst, align 128
  %i.s = load i64, ptr %i.k, align 16, !noundef !4
  %i.t = and i64 %i.s, %i.r
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i32, ptr %i.y, align 8, !range !12185, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.z, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ac, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ad = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ad, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ae = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.af = extractvalue { i64, i32 } %i.ae, 0      ; 3 uses
  %i.ag = extractvalue { i64, i32 } %i.ae, 1      ; 2 uses
  %i.ah = icmp eq i64 %i.af, %i.x
  %i.ai = icmp slt i64 %i.af, %i.x
  %i.aj = icmp samesign ult i32 %i.ag, %i.z
  %spec.select.i3 = select i1 %i.ah, i1 %i.aj, i1 %i.ai
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = cmpxchg ptr %i.ab, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  %i.am = extractvalue { i64, i1 } %i.ak, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.am, i64 3)
  br i1 %i.al, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.an = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.x, i32 noundef range(i32 0, 1000000001) %i.z, i64 noundef %i.af, i32 noundef %i.ag) ; 2 uses
  %i.ao = extractvalue { i64, i32 } %i.an, 0
  %i.ap = extractvalue { i64, i32 } %i.an, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, i64 noundef %i.ao, i32 noundef %i.ap)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.ac, %.split.us.i ], [ %i.ac, %.split.us.i ], [ %i.ad, %.split.i ], [ %i.ad, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !19133

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #50
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #49
  %i.aq = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !52

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19351)
  %i.ar = load ptr, ptr %i.b, align 8, !alias.scope !19354, !nonnull !4, !noundef !4
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !19354
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4send0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !19132, !noundef !4 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #49
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.i = load atomic i64, ptr %i.h seq_cst, align 128
  %i.j = load atomic i64, ptr %i.f seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = add i64 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.o = load i64, ptr %i.n, align 16, !noundef !4
  %i.p = xor i64 %i.o, -1
  %i.q = and i64 %i.i, %i.p
  %i.r = icmp eq i64 %i.m, %i.q
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.t = cmpxchg ptr %i.s, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load atomic i64, ptr %i.h seq_cst, align 128
  %i.v = load i64, ptr %i.n, align 16, !noundef !4
  %i.w = and i64 %i.v, %i.u
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !range !12185, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ac, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 3 uses
  switch i64 %i.af, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ag = load atomic i64, ptr %i.ae acquire, align 8 ; 3 uses
  switch i64 %i.ag, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ah = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.ai = extractvalue { i64, i32 } %i.ah, 0      ; 3 uses
  %i.aj = extractvalue { i64, i32 } %i.ah, 1      ; 2 uses
  %i.ak = icmp eq i64 %i.ai, %i.aa
  %i.al = icmp slt i64 %i.ai, %i.aa
  %i.am = icmp samesign ult i32 %i.aj, %i.ac
  %spec.select.i3 = select i1 %i.ak, i1 %i.am, i1 %i.al
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = cmpxchg ptr %i.ae, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  %i.ap = extractvalue { i64, i1 } %i.an, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 3)
  br i1 %i.ao, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.aq = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.aa, i32 noundef range(i32 0, 1000000001) %i.ac, i64 noundef %i.ai, i32 noundef %i.aj) ; 2 uses
  %i.ar = extractvalue { i64, i32 } %i.aq, 0
  %i.as = extractvalue { i64, i32 } %i.aq, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, i64 noundef %i.ar, i32 noundef %i.as)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.af, %.split.us.i ], [ %i.af, %.split.us.i ], [ %i.ag, %.split.i ], [ %i.ag, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !19133

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @448) #50
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #49
  %i.at = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !52

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19364)
  %i.au = load ptr, ptr %i.b, align 8, !alias.scope !19367, !nonnull !4, !noundef !4
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !19367
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @449) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan7collect0Cs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 11 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 89 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !range !1165, !noundef !4
  switch i8 %i.g, label %default.unreachable57 [
    i8 0, label %bb.b
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.l
  ]

default.unreachable57:                            ; preds = %.noexc.i, %bb.l, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  store i8 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !18, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan14execute_stream(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.l, ptr noundef nonnull %i.n)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !19368)
  %i.p = load i64, ptr %i.e, align 8, !range !181, !alias.scope !19371, !noalias !19368, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.p, 20
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !19373 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !19373 ; 3 uses
  br i1 %.not.i, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.h, align 8
  store ptr %i.r, ptr %1, align 8
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.t, ptr %.sroa.721.0..sroa_idx, align 8
  %.sroa.923.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %.sroa.923.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.m

bb.e:                                             ; preds = %.body
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.w = load i8, ptr %i.v, align 8, !range !178, !noundef !4
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.ad, label %bb.h

bb.f:                                             ; preds = %bb.d
  %.sroa.12.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.y = load <2 x i64>, ptr %.sroa.12.0..sroa_idx16, align 8, !alias.scope !19374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.h, align 8
  br label %bb.g

common.ret:                                       ; preds = %bb.aa, %bb.g
  %storemerge = phi i8 [ 3, %bb.aa ], [ 1, %bb.g ]
  store i8 %storemerge, ptr %i.f, align 1
  ret void

bb.g:                                             ; preds = %bb.ab, %bb.f
  %.sroa.027.0 = phi i64 [ %.sroa.025.0, %bb.ab ], [ %i.p, %bb.f ]
  %.sroa.328.0 = phi ptr [ %.sroa.926.sroa.0.0, %bb.ab ], [ %i.r, %bb.f ]
  %.sroa.529.0 = phi ptr [ %.sroa.926.sroa.7.0, %bb.ab ], [ %i.t, %bb.f ]
  %i.z = phi <2 x i64> [ %i.aw, %bb.ab ], [ %i.y, %bb.f ]
  store i64 %.sroa.027.0, ptr %0, align 8
  %.sroa.328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.328.0, ptr %.sroa.328.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.529.0, ptr %.sroa.529.0..sroa_idx, align 8
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.z, ptr %.sroa.630.0..sroa_idx, align 8
  br label %common.ret

bb.h:                                             ; preds = %bb.ad, %bb.c, %bb.e
  %.pn2.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %eh.lpad-body, %bb.ad ], [ %eh.lpad-body, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i8 0, ptr %i.aa, align 8
  store i8 2, ptr %i.f, align 1
  resume { ptr, i32 } %.pn2.pn

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @460) #50
  unreachable

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @460) #50
  unreachable

bb.k:                                             ; preds = %bb.s, %bb.r
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.q, %bb.k
  %.sroa.0.064 = phi ptr [ undef, %bb.k ], [ %.sroa.0.065, %bb.q ]
  %.sroa.9.060 = phi ptr [ undef, %bb.k ], [ %.sroa.9.061, %bb.q ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %bb.k ], [ %.pn.i, %bb.q ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan6common7collect0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %1) #46
          to label %bb.e unwind label %bb.ac

bb.l:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !1165, !noalias !19375
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  switch i8 %.pre, label %default.unreachable57 [
    i8 0, label %bb.m
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.n
  ]

bb.m:                                             ; preds = %.thread, %bb.l
  %i.ad = phi ptr [ %i.u, %.thread ], [ %i.ac, %bb.l ] ; 2 uses
  %.sroa.0.067 = phi ptr [ %i.r, %.thread ], [ undef, %bb.l ] ; 2 uses
  %.sroa.9.063 = phi ptr [ %i.t, %.thread ], [ undef, %bb.l ] ; 2 uses
  %i.ae = load ptr, ptr %1, align 8, !noalias !19375, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !19375, !nonnull !4, !align !18, !noundef !4
end_hunk_0
