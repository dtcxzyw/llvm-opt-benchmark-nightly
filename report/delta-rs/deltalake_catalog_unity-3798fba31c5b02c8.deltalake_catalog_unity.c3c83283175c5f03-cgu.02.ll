inline.NumInlined: 553
inline.NumDeleted: 272
begin_hunk_0_@_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_BP_EE6extendINtNtNtNtB1A_11collections4hash3map7HashMapBP_BP_EECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !632
  invoke void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc.i.i.i unwind label %bb.d, !noalias !624

.noexc.i.i.i:                                     ; preds = %bb.f
  %i.r = load i64, ptr %i.a, align 8, !range !369, !alias.scope !635, !noalias !632, !noundef !3
  %i.s = icmp eq i64 %i.r, -9223372036854775808
  br i1 %i.s, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.noexc.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i unwind label %bb.h, !noalias !638

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.i, !noalias !638

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !638
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.d, !noalias !624

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !629
  br label %bb.c

bb.k:                                             ; preds = %.body.i.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !624
  unreachable

_RINvXsH_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB15_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvB1M_8for_each4callTB15_B15_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB3w_7HashMapB15_B15_NtNtNtBc_4hash6random11RandomStateEINtNtB1Q_7collect6ExtendB3c_E6extendINtB6_7HashMapB15_B15_EE0E0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.e
  call void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

.body.thread:                                     ; preds = %bb.l, %.body.i.i.i
  %eh.lpad-body9 = phi { ptr, i32 } [ %i.w, %bb.l ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %eh.lpad-body9

bb.l:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %.body.thread unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs_NtNtCs7kfTgH1B6X1_10async_lock6rwlock3rawNtB5_7RawReadNtCs4IjZJRxZMkw_23event_listener_strategy19EventListenerFuture18poll_with_strategyNtBZ_11NonBlockingECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.pr = load i64, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtNtCsbvkFyIu7lgC_4core4sync6atomic11atomic_loadjECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.a
  %i.e = phi i64 [ %storemerge, %_RINvNtNtCsbvkFyIu7lgC_4core4sync6atomic11atomic_loadjECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.pr, %bb.a ] ; 4 uses
  %i.f = trunc i64 %i.e to i1                     ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %bb.f, label %bb.e, !prof !27

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !align !4, !noundef !3 ; 5 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.i, label %bb.g, !prof !27

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3
  %i.j = add nuw i64 %i.e, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = cmpxchg ptr %i.k, i64 %i.e, i64 %i.j acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.l, 1
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.l, 0
  br i1 %.sroa.18.0.in.i, label %_RINvXs2_Cs4IjZJRxZMkw_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCseKAYRfgxGTE_14event_listener13EventListenerECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread, label %_RINvNtNtCsbvkFyIu7lgC_4core4sync6atomic11atomic_loadjECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.f:                                             ; preds = %bb.c
  call void @_RNvCs7kfTgH1B6X1_10async_lock5abort() #22
  unreachable

_RINvXs2_Cs4IjZJRxZMkw_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCseKAYRfgxGTE_14event_listener13EventListenerECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread: ; preds = %bb.g, %bb.e
  ret i1 %i.f

_RINvNtNtCsbvkFyIu7lgC_4core4sync6atomic11atomic_loadjECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.p, %bb.o, %bb.e
  %storemerge = phi i64 [ %.sroa.01.0.i, %bb.e ], [ %i.am, %bb.p ], [ %i.aj, %bb.o ] ; 2 uses
  store i64 %storemerge, ptr %i.c, align 8
  br label %bb.b

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %i.m = call noundef zeroext i1 @_RNvMsh_CseKAYRfgxGTE_14event_listenerINtB5_13InnerListeneruINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtB5_5InneruEEE13poll_internalCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.h, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %2), !noalias !639
  br i1 %i.m, label %_RINvXs2_Cs4IjZJRxZMkw_23event_listener_strategyNtB6_11NonBlockingNtB6_8Strategy4polluNtCseKAYRfgxGTE_14event_listener13EventListenerECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCseKAYRfgxGTE_14event_listener13InnerListeneruINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtBJ_5InneruEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.h)
          to label %bb.j unwind label %.body.i, !noalias !642

common.resume:                                    ; preds = %bb.q, %.body.i
  %storemerge6 = phi ptr [ null, %.body.i ], [ %i.q, %bb.q ]
  %common.resume.op = phi { ptr, i32 } [ %i.n, %.body.i ], [ %i.an, %bb.q ]
  store ptr %storemerge6, ptr %i.d, align 8
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 56, i64 noundef 8) #23, !noalias !642
  br label %common.resume

bb.i:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = call noundef nonnull align 8 ptr @_RNvMs5_CseKAYRfgxGTE_14event_listenerNtB5_5Event6listenCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.p) ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !align !4, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCseKAYRfgxGTE_14event_listener13EventListenerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val)
          to label %bb.p unwind label %bb.q

bb.j:                                             ; preds = %bb.h
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 56, i64 noundef 8) #23, !noalias !642
  store ptr null, ptr %i.d, align 8, !alias.scope !639, !noalias !644
  %i.r = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.t = call noundef i64 @_RNvXsF_NtCseKAYRfgxGTE_14event_listener6notifylNtB5_16IntoNotification17into_notification(i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  call void asm sideeffect inteldialect "lock not qword ptr [${0:q}]", "r,~{memory}"(ptr nonnull %i.b) #23, !srcloc !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = load atomic ptr, ptr %i.s acquire, align 8 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !646
  %i.w = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 72, i64 noundef 8) #23, !noalias !646 ; 7 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.l, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i, !prof !27

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #22, !noalias !646
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.k
  store i64 1, ptr %i.w, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %.sroa.730.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.730.0..sroa_idx.i.i, i8 0, i64 40, i1 false)
  store i64 -1, ptr %.sroa.12.0..sroa_idx.i.i, align 8
  %i.y = cmpxchg ptr %i.s, ptr null, ptr %.sroa.5.0..sroa_idx.i.i acq_rel acquire, align 8 ; 2 uses
  %i.z = extractvalue { ptr, i1 } %i.y, 0
  %i.aa = extractvalue { ptr, i1 } %i.y, 1
  br i1 %i.aa, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtCseKAYRfgxGTE_14event_listener5InneruEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %.sroa.5.0..sroa_idx.i.i)
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %.sroa.5.0..sroa_idx.i.i, i64 %i.ac ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !649
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEE9drop_slowCs7kfTgH1B6X1_10async_lock(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #26
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i, %bb.j
  %.sroa.026.1.i.i = phi ptr [ %i.u, %bb.j ], [ %i.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ], [ %.sroa.5.0..sroa_idx.i.i, %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.1.i.i) ]
  %i.ag = call fastcc noundef i64 @_RINvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB7_5InneruE10with_innerjNCINvB2_6notifyNtNtB7_6notify6NotifyE0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %.sroa.026.1.i.i, i64 noundef %i.t) ; 0 uses
  %i.ah = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8
  br label %_RINvNtNtCsbvkFyIu7lgC_4core4sync6atomic11atomic_loadjECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.p:                                             ; preds = %bb.i
  store ptr %i.q, ptr %i.d, align 8
  %i.ak = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load atomic i64, ptr %i.al seq_cst, align 8
  br label %_RINvNtNtCsbvkFyIu7lgC_4core4sync6atomic11atomic_loadjECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.q:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %common.resume
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNCNCNvMs4_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB9_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE19do_insert_with_hash00B1L_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [280 x i8], align 8               ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 13 uses
  %.sroa.4 = alloca [47 x i8], align 1            ; 3 uses
  %i.c = alloca [40 x i8], align 8                ; 2 uses
  %i.d = alloca [256 x i8], align 8               ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !align !4, !noundef !3
  %i.j = load i64, ptr %i.i, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !align !4, !noundef !3
  call fastcc void @_RNvXs13_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB6_25TemporaryTableCredentialsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(256) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.l) #28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !align !4, !noundef !3
  %i.o = load i64, ptr %i.n, align 8, !noundef !3 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !3, !align !5, !noundef !3
  %i.r = load i32, ptr %i.q, align 4, !noundef !3 ; 2 uses
  %.val = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.s = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !noalias !654
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !654
  store i32 1, ptr %i.b, align 8, !noalias !654
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.val, ptr %i.u, align 8, !noalias !654
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.j, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !654
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 -4096, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !654
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.o, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !654
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.o, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !654
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.r, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !654
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i16 1, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !654
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 54
  store i16 0, ptr %.sroa.10.0..sroa_idx.i, align 2, !noalias !654
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 0, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !654
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !657
  %i.v = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 64, i64 noundef 8) #23, !noalias !657 ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %bb.h, !prof !27

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #22
          to label %.noexc.i unwind label %bb.d, !noalias !654

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = atomicrmw sub ptr %.val, i64 1 release, align 8, !noalias !660
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.u) #26
          to label %bb.m unwind label %bb.f, !noalias !654

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !654
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !654
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 52
  %i.ac = load atomic i16, ptr %i.ab acquire, align 4, !noalias !654
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !654
  call void @_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE3newB1J_(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(256) %i.d, ptr noundef nonnull %i.v)
  store i32 1, ptr %i.a, align 8, !noalias !654
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !671
  %i.ae = tail call noundef align 8 dereferenceable_or_null(280) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 280, i64 noundef 8) #23, !noalias !671 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.i, label %_RNvMs5_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE15new_value_entryB1H_.exit, !prof !27

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 280) #22
          to label %.noexc25.i unwind label %bb.j, !noalias !654

.noexc25.i:                                       ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7ArcDataINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_(ptr noalias noundef nonnull align 8 dereferenceable(280) %i.a) #24
          to label %common.resume unwind label %bb.k, !noalias !654

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !654
  unreachable

bb.l:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.j, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %i.x, %bb.m ], [ %.pn, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.e, %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEBK_(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.d) #24
          to label %common.resume unwind label %bb.l

_RNvMs5_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE15new_value_entryB1H_.exit: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.ae, ptr noundef nonnull align 8 dereferenceable(280) %i.a, i64 280, i1 false), !noalias !654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.ae, ptr %i.e, align 8
  invoke void @_RNvMsb_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE10new_upsertB1F_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, i64 noundef %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i16 noundef %i.ac, i32 noundef 0, i32 noundef %i.r)
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.r, %bb.o
  %.pn = phi { ptr, i32 } [ %i.au, %bb.r ], [ %i.aj, %bb.o ]
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %common.resume unwind label %bb.s

bb.o:                                             ; preds = %_RNvMs5_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE15new_value_entryB1H_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %_RNvMs5_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE15new_value_entryB1H_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !3, !align !4, !noundef !3
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !3, !noundef !3
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = atomicrmw add ptr %i.an, i8 1 monotonic, align 1 ; 2 uses
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !3, !align !4, !noundef !3 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 8, !range !674, !alias.scope !675, !noundef !3
  %i.at = icmp eq i16 %i.as, 2
  br i1 %i.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionThINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2B_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2d_(ptr noalias noundef align 8 dereferenceable(40) %i.ar)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionThINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2B_.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = landingpad { ptr, i32 }
          cleanup
  store i8 %i.ao, ptr %i.aq, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.4, i64 47, i1 false)
  br label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionThINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2B_.exit: ; preds = %bb.p, %bb.q
  store i8 %i.ao, ptr %i.aq, align 8
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.5.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.4, i64 47, i1 false)
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EE6insertCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !noalias !710, !noundef !3
  %i.k = and i8 %i.j, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.n = lshr i64 %i.e, 57
  %i.o = trunc nuw nsw i64 %i.n to i8             ; 2 uses
  %i.p = add i64 %i.g, -16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !705, !noalias !708, !noundef !3
  %i.s = and i64 %i.r, %i.p
  store i8 %i.o, ptr %i.i, align 1, !noalias !710
  %i.t = getelementptr i8, ptr %i.h, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 16
  store i8 %i.o, ptr %i.u, align 1, !noalias !710
  %i.v = load <2 x i64>, ptr %i.m, align 8, !alias.scope !705, !noalias !708
  %i.w = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.l, i64 0
  %i.x = sub <2 x i64> %i.v, %i.w
  store <2 x i64> %i.x, ptr %i.m, align 8, !alias.scope !705, !noalias !708
  %i.y = sub nsw i64 0, %i.g
  %i.z = getelementptr inbounds [104 x i8], ptr %i.h, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -104 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false), !noalias !705
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !705
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !705
  store ptr %i.b, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0..sroa_idx, ptr %i.ac, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB15_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EE6insertCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !align !4, !noundef !3 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !711, !noalias !714, !nonnull !3, !noundef !3 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !noalias !716, !noundef !3
  %i.k = and i8 %i.j, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.n = lshr i64 %i.e, 57
  %i.o = trunc nuw nsw i64 %i.n to i8             ; 2 uses
  %i.p = add i64 %i.g, -16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !711, !noalias !714, !noundef !3
  %i.s = and i64 %i.r, %i.p
  store i8 %i.o, ptr %i.i, align 1, !noalias !716
  %i.t = getelementptr i8, ptr %i.h, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 16
  store i8 %i.o, ptr %i.u, align 1, !noalias !716
  %i.v = load <2 x i64>, ptr %i.m, align 8, !alias.scope !711, !noalias !714
  %i.w = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.l, i64 0
  %i.x = sub <2 x i64> %i.v, %i.w
  store <2 x i64> %i.x, ptr %i.m, align 8, !alias.scope !711, !noalias !714
  %i.y = sub nsw i64 0, %i.g
  %i.z = getelementptr inbounds [40 x i8], ptr %i.h, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -40 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !711
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !711
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !711
  store ptr %i.b, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0..sroa_idx, ptr %i.ac, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs5_CseKAYRfgxGTE_14event_listenerNtB5_5Event5innerCsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !717
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 72, i64 noundef 8) #23, !noalias !717 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !27

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #22, !noalias !717
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  store i64 1, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.730.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.730.0..sroa_idx, i8 0, i64 40, i1 false)
  store i64 -1, ptr %.sroa.12.0..sroa_idx, align 8
  %i.f = cmpxchg ptr %0, ptr null, ptr %.sroa.5.0..sroa_idx acq_rel acquire, align 8 ; 2 uses
  %i.g = extractvalue { ptr, i1 } %i.f, 0
  %i.h = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = tail call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtCseKAYRfgxGTE_14event_listener5InneruEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %.sroa.5.0..sroa_idx)
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds i8, ptr %.sroa.5.0..sroa_idx, i64 %i.j ; 2 uses
  store ptr %i.k, ptr %i.a, align 8
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !720
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEE9drop_slowCs7kfTgH1B6X1_10async_lock(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #26
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.a
  %.sroa.026.1 = phi ptr [ %i.b, %bb.a ], [ %i.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.sroa.5.0..sroa_idx, %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit ]
  ret ptr %.sroa.026.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs5_CseKAYRfgxGTE_14event_listenerNtB5_5Event6listenCsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  %i.e = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMs5_CseKAYRfgxGTE_14event_listenerNtB5_5Event5innerCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !725
  %i.g = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 72, i64 noundef 8) #23, !noalias !725 ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i, !prof !27

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #22, !noalias !725
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.b
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.730.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.730.0..sroa_idx.i, i8 0, i64 40, i1 false)
  store i64 -1, ptr %.sroa.12.0..sroa_idx.i, align 8
  %i.i = cmpxchg ptr %0, ptr null, ptr %.sroa.5.0..sroa_idx.i acq_rel acquire, align 8 ; 2 uses
  %i.j = extractvalue { ptr, i1 } %i.i, 0
  %i.k = extractvalue { ptr, i1 } %i.i, 1
  br i1 %i.k, label %_RNvMs5_CseKAYRfgxGTE_14event_listenerNtB5_5Event5innerCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.d

bb.d:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = tail call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtCseKAYRfgxGTE_14event_listener5InneruEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %.sroa.5.0..sroa_idx.i)
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %.sroa.5.0..sroa_idx.i, i64 %i.m ; 2 uses
  store ptr %i.n, ptr %i.c, align 8
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !728
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEE9drop_slowCs7kfTgH1B6X1_10async_lock(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #26
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMs5_CseKAYRfgxGTE_14event_listenerNtB5_5Event5innerCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvMs5_CseKAYRfgxGTE_14event_listenerNtB5_5Event5innerCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %.sroa.026.1.i = phi ptr [ %i.e, %bb.a ], [ %i.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %.sroa.5.0..sroa_idx.i, %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.1.i) ]
  %i.q = call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtCseKAYRfgxGTE_14event_listener5InneruEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %.sroa.026.1.i)
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds i8, ptr %.sroa.026.1.i, i64 %i.r ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.t = atomicrmw add ptr %i.s, i64 1 monotonic, align 8
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.ac, label %bb.f

bb.f:                                             ; preds = %_RNvMs5_CseKAYRfgxGTE_14event_listenerNtB5_5Event5innerCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.s, ptr %i.v, align 8
  store i64 0, ptr %i.d, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !733
  %i.w = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 56, i64 noundef 8) #23, !noalias !733 ; 16 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.g, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtCseKAYRfgxGTE_14event_listener13InnerListeneruINtNtB4_4sync3ArcINtBH_5InneruEEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !27

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #22
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCseKAYRfgxGTE_14event_listener13InnerListeneruINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtBJ_5InneruEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #24
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.h ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtCseKAYRfgxGTE_14event_listener13InnerListeneruINtNtB4_4sync3ArcINtBH_5InneruEEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !3, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexINtNtCseKAYRfgxGTE_14event_listener3sys5InneruEE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.ac)
          to label %.noexc4 unwind label %bb.ad

.noexc4:                                          ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtCseKAYRfgxGTE_14event_listener13InnerListeneruINtNtB4_4sync3ArcINtBH_5InneruEEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !3, !align !4 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ag = load i8, ptr %i.af, align 8, !range !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.ae, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i8 %i.ag, ptr %i.ai, align 8
  store ptr %i.ac, ptr %i.b, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !736, !noundef !3 ; 4 uses
  %i.am = load i64, ptr %i.w, align 8, !range !44, !noalias !739, !noundef !3
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.o, label %bb.j

.body.i:                                          ; preds = %bb.n, %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.w, align 8, !noalias !739
  store i8 0, ptr %i.ap, align 8, !noalias !739
  %.sroa.633.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.al, ptr %.sroa.633.0..sroa_idx.i.i, align 8, !noalias !739
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !739
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvMs_NtCseKAYRfgxGTE_14event_listener3sysINtBQ_5InnerpE10with_inner8ListLockuEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.b) #24
          to label %.body unwind label %bb.ab

bb.j:                                             ; preds = %.noexc4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !742), !noalias !745
  call void @llvm.experimental.noalias.scope.decl(metadata !746), !noalias !745
  call void @llvm.experimental.noalias.scope.decl(metadata !749), !noalias !745
  call void @llvm.experimental.noalias.scope.decl(metadata !752), !noalias !745
  call void @llvm.experimental.noalias.scope.decl(metadata !755), !noalias !745
  call void @llvm.experimental.noalias.scope.decl(metadata !758), !noalias !745
  %i.aq = load i8, ptr %i.ap, align 8, !range !317, !alias.scope !761, !noalias !739, !noundef !3
  %i.ar = icmp eq i8 %i.aq, 2
  br i1 %i.ar, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !762), !noalias !745
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !765, !noalias !739, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !765, !noalias !739, !noundef !3
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !766, !nonnull !3, !noundef !3
  invoke void %i.aw(ptr noundef %.val1.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.o unwind label %.body.i, !noalias !736, !inline_history !767

bb.m:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !768), !noalias !745
  call void @llvm.experimental.noalias.scope.decl(metadata !771), !noalias !745
  call void @llvm.experimental.noalias.scope.decl(metadata !774), !noalias !745
  %i.ax = load ptr, ptr %i.au, align 8, !alias.scope !777, !noalias !739, !nonnull !3, !noundef !3
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !778
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  fence acquire, !noalias !745
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtCs218QlbNgm4w_7parking5InnerE9drop_slowCseKAYRfgxGTE_14event_listener(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.au) #26
          to label %bb.o unwind label %.body.i, !noalias !736

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %.noexc4
  store i64 1, ptr %i.w, align 8, !noalias !739
  %.sroa.5.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  store i8 0, ptr %.sroa.5.0..sroa_idx29.i.i, align 8, !noalias !739
  %.sroa.633.0..sroa_idx34.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.al, ptr %.sroa.633.0..sroa_idx34.i.i, align 8, !noalias !739
  %.sroa.7.0..sroa_idx36.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store ptr null, ptr %.sroa.7.0..sroa_idx36.i.i, align 8, !noalias !739
  store ptr %.sroa.5.0..sroa_idx29.i.i, ptr %i.ak, align 8, !alias.scope !736
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %.sroa.5.0..sroa_idx29.i.i, ptr %i.ba, align 8, !noalias !736
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store ptr %.sroa.5.0..sroa_idx29.i.i, ptr %i.aj, align 8, !alias.scope !736
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !736, !noundef !3
  %.not20.i.i = icmp eq ptr %i.bc, null
  br i1 %.not20.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %.sroa.5.0..sroa_idx29.i.i, ptr %i.bb, align 8, !alias.scope !736
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !736, !noundef !3
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !alias.scope !736
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  invoke void @_RNvXs0_NvMs_NtCseKAYRfgxGTE_14event_listener3sysINtBc_5InnerpE10with_innerINtB5_8ListLockuENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !779, !nonnull !3, !align !4, !noundef !3
  %.val3.i.i = load i8, ptr %i.ai, align 8, !range !193, !alias.scope !779, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCseKAYRfgxGTE_14event_listener3sys5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val2.i.i, i8 %.val3.i.i) #24
          to label %.body unwind label %bb.aa

bb.v:                                             ; preds = %bb.t
  %.val.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !779, !nonnull !3, !align !4, !noundef !3 ; 3 uses
  %.val1.i.i = load i8, ptr %i.ai, align 8, !range !193, !alias.scope !779, !noundef !3
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 4
  %i.bi = trunc nuw i8 %.val1.i.i to i1
  br i1 %i.bi, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bj = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !779
  %i.bk = and i64 %i.bj, 9223372036854775807
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.x, !prof !192

bb.x:                                             ; preds = %bb.w
  %i.bm = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc5 unwind label %bb.ad

.noexc5:                                          ; preds = %bb.x
  br i1 %i.bm, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.noexc5
  store atomic i8 1, ptr %i.bh monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.y, %.noexc5, %bb.w, %bb.v
  %i.bn = atomicrmw xchg ptr %.val.i.i, i32 0 release, align 4
  %i.bo = icmp eq i32 %i.bn, 2
  br i1 %i.bo, label %bb.z, label %bb.ae, !prof !27

bb.z:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i.i)
          to label %bb.ae unwind label %bb.ad
end_hunk_1
