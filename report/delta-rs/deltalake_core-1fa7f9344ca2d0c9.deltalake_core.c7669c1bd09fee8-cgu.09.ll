Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.09?download=true
inline.NumInlined: 12053
inline.NumDeleted: 5555
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_3ops5range5RangejENCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch00ENvYNCNCB1v_00NtNtNtCs8CRAYtH5WmW_12futures_util6future10try_future12TryFutureExt11into_futureENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtB3h_6stream15futures_ordered14FuturesOrderedINtNtB3d_11into_future10IntoFutureB31_EENCINvXs8_B5a_B57_INtNtB4y_7collect12FromIteratorB5W_E9from_iterBN_E0EB1F_:bb.a
  %.sroa.9.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.11.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %.sroa.13.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 162
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %.sroa.79.64..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.812.64..sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.9.64..sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.11.64..sroa_idx18.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.13.64..sroa_idx22.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 98
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.s, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ %i.r, %bb.s ] ; 3 uses
  %i.r = add i64 %.sroa.0.08.i.i, 1               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !noalias !4146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4147
  %i.s = load <2 x ptr>, ptr %.sroa.0.0.copyload.i, align 8, !noalias !4147
  %i.t = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !4147, !nonnull !23, !noundef !23
  %i.u = atomicrmw add ptr %i.t, i64 1 monotonic, align 8, !noalias !4147
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store <2 x ptr> %i.s, ptr %i.e, align 16, !noalias !4147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4147
  %i.w = load ptr, ptr %i.n, align 8, !invariant.load !23, !noalias !4147, !nonnull !23
  %i.x = invoke noundef nonnull ptr %i.w(ptr noundef nonnull %.sroa.4.0.copyload.i)
          to label %bb.g unwind label %bb.f, !noalias !4147 ; 4 uses

bb.d:                                             ; preds = %bb.b
  call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit6.i.i.i.i: ; preds = %bb.l, %bb.k, %bb.f
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.ag, %bb.l ], [ %i.ag, %bb.k ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4148)
  call void @llvm.experimental.noalias.scope.decl(metadata !4149)
  %i.y = load ptr, ptr %i.e, align 16, !alias.scope !4150, !noalias !4147, !nonnull !23, !noundef !23
  %i.z = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !4151
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.e, label %bb.q

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit6.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e) #45
          to label %bb.q unwind label %bb.m, !noalias !4147

bb.f:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit6.i.i.i.i

bb.g:                                             ; preds = %bb.c
  store ptr %i.x, ptr %i.c, align 8, !noalias !4147
  %i.ac = atomicrmw add ptr %i.x, i64 1 monotonic, align 8, !noalias !4147
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.x, ptr %i.d, align 8, !noalias !4147
  %i.ae = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !4152
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #45
          to label %bb.n unwind label %bb.k, !noalias !4147

bb.j:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4153)
  call void @llvm.experimental.noalias.scope.decl(metadata !4154)
  %i.ah = load ptr, ptr %i.d, align 8, !alias.scope !4155, !noalias !4147, !nonnull !23, !noundef !23
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !4156
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit6.i.i.i.i

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit6.i.i.i.i unwind label %bb.m, !noalias !4147

bb.m:                                             ; preds = %bb.l, %bb.e
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !4147
  unreachable

bb.n:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4147
  %i.al = load ptr, ptr %i.e, align 16, !noalias !4147, !nonnull !23, !noundef !23 ; 2 uses
  %i.am = load ptr, ptr %i.m, align 8, !noalias !4147, !nonnull !23, !align !24, !noundef !23 ; 2 uses
  %i.an = load ptr, ptr %i.d, align 8, !noalias !4147, !nonnull !23, !noundef !23 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !4145
  store ptr %i.al, ptr %.sroa.79.64..sroa_idx.i.i.i, align 8, !noalias !4158
  store ptr %i.am, ptr %.sroa.812.64..sroa_idx.i.i.i, align 8, !noalias !4158
  store i64 %.sroa.0.08.i.i, ptr %.sroa.9.64..sroa_idx.i.i.i, align 8, !noalias !4158
  store ptr %i.an, ptr %.sroa.11.64..sroa_idx.i.i.i, align 8, !noalias !4158
  store i8 0, ptr %.sroa.13.64..sroa_idx.i.i.i, align 2, !noalias !4158
  call void @llvm.experimental.noalias.scope.decl(metadata !4159)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4160
  %i.ao = load i64, ptr %i.o, align 8, !alias.scope !4159, !noalias !4161, !noundef !23 ; 2 uses
  store ptr %i.al, ptr %.sroa.79.64..sroa_idx10.i.i.i, align 8, !noalias !4158
  store ptr %i.am, ptr %.sroa.812.64..sroa_idx13.i.i.i, align 8, !noalias !4158
  store i64 %.sroa.0.08.i.i, ptr %.sroa.9.64..sroa_idx15.i.i.i, align 8, !noalias !4158
  store ptr %i.an, ptr %.sroa.11.64..sroa_idx18.i.i.i, align 8, !noalias !4158
  store i8 0, ptr %.sroa.13.64..sroa_idx22.i.i.i, align 2, !noalias !4158
  store i64 %i.ao, ptr %i.p, align 8, !noalias !4160
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.o, align 8, !alias.scope !4159, !noalias !4161
  invoke void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEE4pushB3a_(ptr noundef nonnull align 8 %i.q, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.a)
          to label %bb.s unwind label %bb.o, !noalias !4161

bb.o:                                             ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtBN_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEB31_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b) #43
          to label %bb.t unwind label %bb.p, !noalias !4161

bb.p:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !4161
  unreachable

bb.q:                                             ; preds = %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit6.i.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtBN_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEB31_(ptr noalias noundef align 8 dereferenceable(64) %i.f) #43
          to label %bb.t unwind label %bb.r, !noalias !4145

bb.r:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !4145
  unreachable

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !4146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4145
  %exitcond.not.i.i = icmp eq i64 %i.r, %i.k
  br i1 %exitcond.not.i.i, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch00ENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB3E_6future10try_future11into_future10IntoFutureNCNCB1r_00EENCINvB6_8map_foldB5F_B4K_B3x_NvYB5F_NtB4P_12TryFutureExt11into_futureNCINvXs8_B3A_B3x_INtNtB2Y_7collect12FromIteratorB4K_E9from_iterIBO_BN_B6k_EE0E0EB1B_.exit, label %bb.b

bb.t:                                             ; preds = %bb.q, %bb.o
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.aq, %bb.o ], [ %.pn.i.i.i.i, %bb.q ]
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch00ENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB3E_6future10try_future11into_future10IntoFutureNCNCB1r_00EENCINvB6_8map_foldB5F_B4K_B3x_NvYB5F_NtB4P_12TryFutureExt11into_futureNCINvXs8_B3A_B3x_INtNtB2Y_7collect12FromIteratorB4K_E9from_iterIBO_BN_B6k_EE0E0EB1B_.exit: ; preds = %bb.s, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !noalias !4162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_3ops5range5RangejENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess0_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB36_14PrimitiveArrayNtNtB3a_5types10UInt32TypeEINtNtNtBa_6traits7collect12FromIteratorINtNtBc_6option6OptionmEE9from_iterBX_E0ENtNtB4R_8iterator8Iterator4folduNCINvNvB64_8for_each4callmNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB79_3VecmE14extend_trustedBN_E0E0EB1B_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !23, !align !24, !noundef !23 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4180)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4180, !noalias !4181, !noundef !23 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4180, !noalias !4181, !noundef !23 ; 2 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldINtNtBc_6option6OptionmEmuNCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4n_14PrimitiveArrayNtNtB4r_5types10UInt32TypeEINtNtB2X_7collect12FromIteratorB3O_E9from_iterBN_E0NCINvNvB2T_8for_each4callmNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7r_3VecmE14extend_trustedIBO_BN_B4e_EE0E0E0EB1x_.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !alias.scope !4180, !noalias !4181, !nonnull !23, !align !24, !noundef !23 ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 32
  %i.m = getelementptr i8, ptr %i.k, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjINtNtBa_6option6OptionmEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess0_0NCIB2_BV_muNCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB37_14PrimitiveArrayNtNtB3b_5types10UInt32TypeEINtNtNtB8_6traits7collect12FromIteratorBV_E9from_iterINtB4_3MapINtNtNtBa_3ops5range5RangejEB1k_EE0NCINvNvNtNtB4S_8iterator8Iterator8for_each4callmNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7i_3VecmE14extend_trustedIB5F_B5E_B2Y_EE0E0E0E0B1s_.exit.i.i, %.lr.ph.i.i
  %.val7.i.i = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.i ], [ %i.ay, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjINtNtBa_6option6OptionmEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess0_0NCIB2_BV_muNCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB37_14PrimitiveArrayNtNtB3b_5types10UInt32TypeEINtNtNtB8_6traits7collect12FromIteratorBV_E9from_iterINtB4_3MapINtNtNtBa_3ops5range5RangejEB1k_EE0NCINvNvNtNtB4S_8iterator8Iterator8for_each4callmNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7i_3VecmE14extend_trustedIB5F_B5E_B2Y_EE0E0E0E0B1s_.exit.i.i ] ; 3 uses
  %.sroa.0.015.i.i = phi i64 [ %i.g, %.lr.ph.i.i ], [ %i.r, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjINtNtBa_6option6OptionmEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess0_0NCIB2_BV_muNCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB37_14PrimitiveArrayNtNtB3b_5types10UInt32TypeEINtNtNtB8_6traits7collect12FromIteratorBV_E9from_iterINtB4_3MapINtNtNtBa_3ops5range5RangejEB1k_EE0NCINvNvNtNtB4S_8iterator8Iterator8for_each4callmNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7i_3VecmE14extend_trustedIB5F_B5E_B2Y_EE0E0E0E0B1s_.exit.i.i ] ; 4 uses
  %i.r = add nuw nsw i64 %.sroa.0.015.i.i, 1      ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !4182
  %.val1.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !4182, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4182
  store i64 %.sroa.0.015.i.i, ptr %i.c, align 8, !noalias !4182
  %i.s = lshr i64 %.val1.i.i.i.i, 2               ; 2 uses
  %i.t = icmp ult i64 %.sroa.0.015.i.i, %i.s
  br i1 %i.t, label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess0_0B7_.exit.i.i.i, label %bb.c, !prof !51

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4182
  store i64 %i.s, ptr %i.b, align 8, !noalias !4182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4182
  store ptr %i.c, ptr %i.a, align 8, !noalias !4182
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4182
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.u, align 8, !noalias !4182
  %.sroa.46.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4182
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @335, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336) #39
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !noalias !4183

.noexc.i.i:                                       ; preds = %bb.c
  unreachable

_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess0_0B7_.exit.i.i.i: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.015.i.i
  %i.w = load i32, ptr %i.v, align 4, !noalias !4182, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4182
  %i.x = load i64, ptr %i.n, align 8, !alias.scope !4184, !noalias !4185, !noundef !23 ; 3 uses
  %i.y = add i64 %i.x, 1                          ; 3 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = and i64 %i.y, 7
  %.not.i.i.i.i.i.i = icmp ne i64 %i.aa, 0
  %i.ab = zext i1 %.not.i.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i = add nuw nsw i64 %i.z, %i.ab ; 8 uses
  %i.ac = load i64, ptr %i.o, align 8, !alias.scope !4184, !noalias !4185, !noundef !23 ; 3 uses
  %i.ad = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i, %i.ac
  br i1 %i.ad, label %bb.d, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjINtNtBa_6option6OptionmEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess0_0NCIB2_BV_muNCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB37_14PrimitiveArrayNtNtB3b_5types10UInt32TypeEINtNtNtB8_6traits7collect12FromIteratorBV_E9from_iterINtB4_3MapINtNtNtBa_3ops5range5RangejEB1k_EE0NCINvNvNtNtB4S_8iterator8Iterator8for_each4callmNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7i_3VecmE14extend_trustedIB5F_B5E_B2Y_EE0E0E0E0B1s_.exit.i.i

bb.d:                                             ; preds = %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess0_0B7_.exit.i.i.i
  %i.ae = sub nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i, %i.ac
  %i.af = load i64, ptr %i.p, align 8, !alias.scope !4186, !noalias !4185, !noundef !23 ; 2 uses
  %i.ag = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i, %i.af
  br i1 %i.ag, label %bb.e, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i, !prof !50

bb.e:                                             ; preds = %bb.d
  %i.ah = and i64 %.sroa.0.0.i.i.i.i.i.i, 63
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %reass.sub.i.i.i.i.i.i.i = and i64 %.sroa.0.0.i.i.i.i.i.i, 4611686018427387840
  %i.aj = add nuw nsw i64 %reass.sub.i.i.i.i.i.i.i, 64 ; 2 uses
  %i.ak = icmp samesign ult i64 %i.aj, %.sroa.0.0.i.i.i.i.i.i
  br i1 %i.ak, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %bb.e ], [ %i.aj, %bb.f ]
  %i.al = shl nuw nsw i64 %i.af, 1
  %.sroa.0.0.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.al, i64 %.sroa.4.0.i.i.i.i.i.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i)
          to label %.noexc8.i.i unwind label %.loopexit.i.i, !noalias !4183

.noexc8.i.i:                                      ; preds = %bb.g
  %.pre.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !4184, !noalias !4185
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @327, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @329) #39
          to label %.noexc9.i.i unwind label %.loopexit.split-lp.i.i, !noalias !4183

.noexc9.i.i:                                      ; preds = %bb.h
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i: ; preds = %.noexc8.i.i, %bb.d
  %i.am = phi i64 [ %i.ac, %bb.d ], [ %.pre.i.i.i.i.i.i, %.noexc8.i.i ]
  %i.an = load ptr, ptr %i.q, align 8, !alias.scope !4184, !noalias !4185, !nonnull !23, !noundef !23
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ao, i8 0, i64 %i.ae, i1 false), !noalias !4185
  store i64 %.sroa.0.0.i.i.i.i.i.i, ptr %i.o, align 8, !alias.scope !4184, !noalias !4185
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjINtNtBa_6option6OptionmEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess0_0NCIB2_BV_muNCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB37_14PrimitiveArrayNtNtB3b_5types10UInt32TypeEINtNtNtB8_6traits7collect12FromIteratorBV_E9from_iterINtB4_3MapINtNtNtBa_3ops5range5RangejEB1k_EE0NCINvNvNtNtB4S_8iterator8Iterator8for_each4callmNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7i_3VecmE14extend_trustedIB5F_B5E_B2Y_EE0E0E0E0B1s_.exit.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjINtNtBa_6option6OptionmEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess0_0NCIB2_BV_muNCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB37_14PrimitiveArrayNtNtB3b_5types10UInt32TypeEINtNtNtB8_6traits7collect12FromIteratorBV_E9from_iterINtB4_3MapINtNtNtBa_3ops5range5RangejEB1k_EE0NCINvNvNtNtB4S_8iterator8Iterator8for_each4callmNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7i_3VecmE14extend_trustedIB5F_B5E_B2Y_EE0E0E0E0B1s_.exit.i.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i.i, %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess0_0B7_.exit.i.i.i
  store i64 %i.y, ptr %i.n, align 8, !alias.scope !4184, !noalias !4185
  %i.ap = load ptr, ptr %i.q, align 8, !noalias !4185, !nonnull !23, !noundef !23
  %i.aq = trunc i64 %i.x to i8
  %i.ar = and i8 %i.aq, 7
  %i.as = shl nuw i8 1, %i.ar
  %i.at = lshr i64 %i.x, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !noalias !4185, !noundef !23
  %i.aw = or i8 %i.av, %i.as
  store i8 %i.aw, ptr %i.au, align 1, !noalias !4185
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %.val7.i.i
  store i32 %i.w, ptr %i.ax, align 4, !noalias !4187
  %i.ay = add i64 %.val7.i.i, 1                   ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.r, %i.i
  br i1 %exitcond.not.i.i, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldINtNtBc_6option6OptionmEmuNCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4n_14PrimitiveArrayNtNtB4r_5types10UInt32TypeEINtNtB2X_7collect12FromIteratorB3O_E9from_iterBN_E0NCINvNvB2T_8for_each4callmNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7r_3VecmE14extend_trustedIBO_BN_B4e_EE0E0E0EB1x_.exit, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.g
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp.i.i:                           ; preds = %bb.h, %bb.c
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val7.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !4183
  resume { ptr, i32 } %lpad.phi.i.i

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldINtNtBc_6option6OptionmEmuNCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4n_14PrimitiveArrayNtNtB4r_5types10UInt32TypeEINtNtB2X_7collect12FromIteratorB3O_E9from_iterBN_E0NCINvNvB2T_8for_each4callmNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7r_3VecmE14extend_trustedIBO_BN_B4e_EE0E0E0EB1x_.exit: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjINtNtBa_6option6OptionmEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess0_0NCIB2_BV_muNCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB37_14PrimitiveArrayNtNtB3b_5types10UInt32TypeEINtNtNtB8_6traits7collect12FromIteratorBV_E9from_iterINtB4_3MapINtNtNtBa_3ops5range5RangejEB1k_EE0NCINvNvNtNtB4S_8iterator8Iterator8for_each4callmNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7i_3VecmE14extend_trustedIB5F_B5E_B2Y_EE0E0E0E0B1s_.exit.i.i, %bb.a
  %.val5.i.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.ay, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjINtNtBa_6option6OptionmEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess0_0NCIB2_BV_muNCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB37_14PrimitiveArrayNtNtB3b_5types10UInt32TypeEINtNtNtB8_6traits7collect12FromIteratorBV_E9from_iterINtB4_3MapINtNtNtBa_3ops5range5RangejEB1k_EE0NCINvNvNtNtB4S_8iterator8Iterator8for_each4callmNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7i_3VecmE14extend_trustedIB5F_B5E_B2Y_EE0E0E0E0B1s_.exit.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !4183
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj1_ENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB2J_13ProtocolInner22append_writer_featuresB1v_AB1v_B2w_E0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB4N_7HashSetB1v_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB1v_E6extendBX_E0ENtNtB6t_8iterator8Iterator4folduNCINvNvB7c_8for_each4callTB1v_uENCINvXs1i_NtB4P_3mapINtB8o_7HashMapB1v_uB5A_EIB6p_B87_E6extendBN_E0E0EB2P_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i64 40, i1 false), !noalias !4208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4209)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4210)
  %i.d = load i64, ptr %i.b, align 8, !alias.scope !4211, !noalias !4212, !noundef !23 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !4211, !noalias !4212, !noundef !23 ; 4 uses
  %i.g = icmp ule i64 %i.d, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %.not2.i.i.i = icmp eq i64 %i.d, %i.f
  br i1 %.not2.i.i.i, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj1_ENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB2F_13ProtocolInner22append_writer_featuresB1r_AB1r_B2s_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldB1r_TB1r_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5Q_7HashSetB1r_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4E_7collect6ExtendB1r_E6extendBN_E0NCINvNvB4A_8for_each4callB5z_NCINvXs1i_NtB5S_3mapINtB8J_7HashMapB1r_uB6D_EIB7s_B5z_E6extendIBO_BN_B5H_EE0E0E0EB2L_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %i.f, 1
  store i64 1, ptr %i.b, align 8, !alias.scope !4211, !noalias !4212
  %i.h = icmp eq i64 %i.d, 0
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4213
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !4208
  br i1 %.not.i.i.i, label %.lr.ph.i.us.i.i, label %.lr.ph.i.preheader2.i.i

.lr.ph.i.preheader2.i.i:                          ; preds = %.lr.ph.i.preheader.i.i
  %i.j = invoke noundef zeroext i1 @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc.peel.i.i unwind label %.split.loopexit.split-lp.i.i, !noalias !4214 ; 0 uses

.noexc.peel.i.i:                                  ; preds = %.lr.ph.i.preheader2.i.i
  unreachable

.lr.ph.i.us.i.i:                                  ; preds = %.lr.ph.i.preheader.i.i
  %i.k = invoke noundef zeroext i1 @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc.us.i.i unwind label %.split.us.i.i, !noalias !4214 ; 0 uses

.noexc.us.i.i:                                    ; preds = %.lr.ph.i.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4213
  br label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj1_ENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB2F_13ProtocolInner22append_writer_featuresB1r_AB1r_B2s_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldB1r_TB1r_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5Q_7HashSetB1r_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4E_7collect6ExtendB1r_E6extendBN_E0NCINvNvB4A_8for_each4callB5z_NCINvXs1i_NtB5S_3mapINtB8J_7HashMapB1r_uB6D_EIB7s_B5z_E6extendIBO_BN_B5H_EE0E0E0EB2L_.exit

.split.us.i.i:                                    ; preds = %.lr.ph.i.us.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.split.i.i

.split.loopexit.split-lp.i.i:                     ; preds = %.lr.ph.i.preheader2.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.loopexit.split-lp.i.i, %.split.us.i.i
  %.us-phi.i.i = phi { ptr, i32 } [ %i.l, %.split.us.i.i ], [ %lpad.loopexit.split-lp.i.i, %.split.loopexit.split-lp.i.i ]
  invoke void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEj1_NtB4_11PartialDrop12partial_dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1, i64 noundef %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj1_EECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.b, !noalias !4215

bb.b:                                             ; preds = %.split.i.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !4215
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj1_EECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.split.i.i
  resume { ptr, i32 } %.us-phi.i.i

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj1_ENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB2F_13ProtocolInner22append_writer_featuresB1r_AB1r_B2s_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldB1r_TB1r_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5Q_7HashSetB1r_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4E_7collect6ExtendB1r_E6extendBN_E0NCINvNvB4A_8for_each4callB5z_NCINvXs1i_NtB5S_3mapINtB8J_7HashMapB1r_uB6D_EIB7s_B5z_E6extendIBO_BN_B5H_EE0E0E0EB2L_.exit: ; preds = %bb.a, %.noexc.us.i.i
  %i.n = phi i64 [ 1, %.noexc.us.i.i ], [ %i.d, %bb.a ] ; 2 uses
  call void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEj1_NtB4_11PartialDrop12partial_dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.n, i64 noundef %i.n), !noalias !4215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4207
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj1_ENvYB1v_INtNtBc_7convert4IntoB1v_E4intoENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB3m_7HashSetB1v_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB1v_E6extendBX_E0ENtNtB52_8iterator8Iterator4folduNCINvNvB5L_8for_each4callTB1v_uENCINvXs1i_NtB3o_3mapINtB6X_7HashMapB1v_uB49_EIB4Y_B6G_E6extendBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
