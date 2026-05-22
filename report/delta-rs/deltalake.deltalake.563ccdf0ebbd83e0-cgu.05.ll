inline.NumInlined: 6674
inline.NumDeleted: 2611
begin_hunk_0_@_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir0EB19_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !1595, !noalias !1573, !nonnull !4, !noundef !4
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !1596
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #39
  br label %bb.s

bb.l:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  call void @llvm.experimental.noalias.scope.decl(metadata !1600)
  %i.r = load ptr, ptr %i.m, align 8, !alias.scope !1603, !noalias !1573, !nonnull !4, !noundef !4
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !1604
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #39
  br label %bb.s

bb.n:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !1577
  unreachable

bb.o:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1573
  br label %bb.f

bb.p:                                             ; preds = %bb.r, %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !1605
  unreachable

bb.q:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.x = load i8, ptr %i.w, align 8, !range !602, !alias.scope !1570, !noalias !1606, !noundef !4
  %cond.i.i = icmp eq i8 %i.x, 3
  br i1 %cond.i.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream12try_for_each10TryForEachINtNtNtBN_6stream3map3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB4v_5ErrorENtNtB4_6marker4SendEL_EENCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir0s_0EINtNtNtBP_6future5ready5ReadyIB46_uB57_EENCB5K_s0_0EEB5Q_(ptr noalias noundef align 8 dereferenceable(88) %i.y)
          to label %bb.t unwind label %bb.p, !noalias !1606

bb.s:                                             ; preds = %bb.k, %bb.m, %bb.l, %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.g, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.r ], [ %i.i, %bb.e ], [ %i.j, %bb.g ], [ %lpad.thr_comm.split-lp.i, %bb.q ]
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNvNtCs7p2uQeJxui2_9deltalake5utils9walk_tree0EB19_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1607
  invoke void @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB2_7Runtime5enter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %1)
          to label %bb.b unwind label %bb.q, !noalias !1607

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !range !3, !noalias !1607, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  invoke void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onNCNvNtCs7p2uQeJxui2_9deltalake5utils9walk_tree0E0INtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB3z_5ErrorEEB2e_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %bb.o unwind label %bb.e, !noalias !1612

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB3_13CurrentThread8block_onNCNvNtCs7p2uQeJxui2_9deltalake5utils9walk_tree0EB1A_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle10EnterGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.b) #38
          to label %bb.s unwind label %bb.p, !noalias !1613

bb.f:                                             ; preds = %bb.d, %bb.o
  invoke void @_RNvXs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime7context7currentNtB5_15SetCurrentGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !1613

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #38
          to label %bb.s unwind label %bb.n, !noalias !1613

bb.h:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !1614)
  %i.k = load i64, ptr %i.b, align 8, !range !15, !alias.scope !1617, !noalias !1607, !noundef !4 ; 2 uses
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1622)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1625)
  call void @llvm.experimental.noalias.scope.decl(metadata !1628)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !1631, !noalias !1607, !nonnull !4, !noundef !4
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !1632
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #39
  br label %bb.r

bb.l:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  %i.r = load ptr, ptr %i.m, align 8, !alias.scope !1639, !noalias !1607, !nonnull !4, !noundef !4
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !1640
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #39
  br label %bb.r

bb.n:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !1613
  unreachable

bb.o:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1607
  br label %bb.f

bb.p:                                             ; preds = %bb.q, %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !1641
  unreachable

bb.q:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs7p2uQeJxui2_9deltalake5utils9walk_tree0EBM_(ptr noundef nonnull align 8 dereferenceable(48) %i.c) #38
          to label %bb.s unwind label %bb.p, !noalias !1642

bb.r:                                             ; preds = %bb.k, %bb.m, %bb.l, %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.s:                                             ; preds = %bb.q, %bb.g, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.i, %bb.e ], [ %lpad.thr_comm.split-lp.i, %bb.q ]
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBV_6string6StringEEEuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1643, !noalias !1646, !noundef !4 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1643, !noalias !1646, !noundef !4 ; 3 uses
  %3 = icmp ult i64 %i.k, 8
  %i.l = add i64 %i.k, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %3, i64 %i.k, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.o
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !1650
  %i.q = extractvalue { i64, i64 } %i.p, 0
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = call noundef i64 @llvm.umax.i64(i64 %i.r, i64 %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !1651)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1654
  call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 24, 225) 24, i64 noundef %.sroa.0.0.i5) #41
  %i.s = load ptr, ptr %i.a, align 8, !noalias !1654, !noundef !4 ; 9 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !1654 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !1654 ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1654
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit

bb.f:                                             ; preds = %._crit_edge
  %i.y = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %i.b) #38, !noalias !1657
  resume { ptr, i32 } %i.y

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !noalias !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1654
  store ptr %i.e, ptr %i.b, align 8, !noalias !1654
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1654
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1654
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.s, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !1654
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1654
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.x, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1654
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1654
  %i.z = load i64, ptr %i.f, align 8, !alias.scope !1658, !noalias !1659, !noundef !4 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %._crit_edge23, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !1658, !noalias !1659, !nonnull !4, !noundef !4 ; 2 uses
  %i.ac = load <16 x i8>, ptr %i.ab, align 16, !noalias !1660
  %i.ad = icmp sgt <16 x i8> %i.ac, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.022 = phi ptr [ %i.ab, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.021 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.020 = phi i64 [ %i.z, %.preheader.lr.ph ], [ %i.bj, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.019 = phi i16 [ %i.ae, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i214 = icmp eq i16 %.sroa.13.019, 0
  br i1 %.not.i214, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.116 = phi ptr [ %i.af, %.noexc3 ], [ %.sroa.0.022, %.preheader ] ; 2 uses
  %.sroa.5.115 = phi i64 [ %i.aj, %.noexc3 ], [ %.sroa.5.021, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.116) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.116, i64 16 ; 3 uses
  %i.ag = load <16 x i8>, ptr %i.af, align 16, !noalias !1663
  %i.ah = icmp sgt <16 x i8> %i.ag, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %i.aj = add i64 %.sroa.5.115, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ai, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge23.loopexit:                           ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !1658, !noalias !1659
  br label %._crit_edge23

._crit_edge23:                                    ; preds = %._crit_edge23.loopexit, %bb.g
  %i.ak = phi i64 [ %.pre, %._crit_edge23.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.al = sub i64 %i.x, %i.ak
  store i64 %i.al, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1654
  store i64 %i.ak, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1654
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h, !noalias !1657

bb.h:                                             ; preds = %._crit_edge23
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #40, !noalias !1657
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7p2uQeJxui2_9deltalake.exit: ; preds = %._crit_edge23
  call void @llvm.experimental.noalias.scope.decl(metadata !1666)
  call void @llvm.experimental.noalias.scope.decl(metadata !1669), !noalias !1657
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1672, !noalias !1657 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !1672, !noalias !1657 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !1672, !noalias !1657, !noundef !4 ; 3 uses
  %i.an = icmp eq i64 %.val3.i.i, 0
  br i1 %i.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7p2uQeJxui2_9deltalake.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1672, !noalias !1657
  %i.ao = add i64 %.val3.i.i, 1
  %i.ap = mul nuw i64 %.val.i.i, %i.ao            ; 2 uses
  %i.aq = add i64 %.val1.i.i, -1
  %i.ar = add i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  call void @llvm.assume(i1 %i.as), !noalias !1657
  %i.at = sub i64 0, %.val1.i.i
  %i.au = and i64 %i.ar, %i.at                    ; 3 uses
  %i.av = add i64 %.val3.i.i, 17
  %i.aw = add i64 %i.av, %i.au                    ; 4 uses
  %i.ax = icmp uge i64 %i.aw, %i.au
  %i.ay = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.az = icmp ule i64 %i.aw, %i.ay
  call void @llvm.assume(i1 %i.ax), !noalias !1657
  call void @llvm.assume(i1 %i.az), !noalias !1657
  %i.ba = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ba), !noalias !1657
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !1657
  %i.bb = icmp eq i64 %i.aw, 0
  br i1 %i.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bc = sub nsw i64 0, %i.au
  %i.bd = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bc
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #34, !noalias !1673
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7p2uQeJxui2_9deltalake.exit, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1654
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.019, %.preheader ], [ %i.ai, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.021, %.preheader ], [ %i.aj, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.022, %.preheader ], [ %i.af, %.noexc3 ]
  %i.be = add i16 %.sroa.13.1.lcssa, -1
  %i.bf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = and i16 %i.be, %.sroa.13.1.lcssa
  %i.bi = add i64 %.sroa.5.1.lcssa, %i.bg         ; 2 uses
  %i.bj = add i64 %.sroa.9.020, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1674)
  %i.bk = load ptr, ptr %0, align 8, !alias.scope !1674, !noalias !1677, !nonnull !4, !noundef !4
  %i.bl = sub nsw i64 0, %i.bi
  %i.bm = getelementptr inbounds [24 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -24
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !1679, !nonnull !4, !align !1680, !noundef !4
  %i.bo = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtBU_6option6OptionNtNtB1K_6string6StringEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn)
          to label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBX_6string6StringEEEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBX_6string6StringEEEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.v, %i.bo             ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bp, align 1, !noalias !1681
  %i.bq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.br, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !1684

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBX_6string6StringEEEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBX_6string6StringEEEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.br, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBX_6string6StringEEEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit ], [ %i.cj, %.lr.ph.i ]
  %i.bs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.0.0.lcssa.i, %i.bt
  %i.bv = and i64 %i.bu, %i.v                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !4
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.j, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !1649

bb.j:                                             ; preds = %._crit_edge.i
  %i.bz = load <16 x i8>, ptr %i.s, align 16, !noalias !1685
  %i.ca = icmp slt <16 x i8> %i.bz, zeroinitializer
  %i.cb = bitcast <16 x i1> %i.ca to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cb, 0
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true)
  %i.cd = zext nneg i16 %i.cc to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBX_6string6StringEEEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBX_6string6StringEEEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBX_6string6StringEEEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit ]
  %i.cf = add i64 %i.ce, 16                       ; 2 uses
  %i.cg = add i64 %i.cf, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.cg, %i.v             ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i7
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBV_6string6StringEEEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake:bb.a
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i64 @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBV_6string6StringEEEuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1u_E0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([544 x i8]) align 8 captures(none) dereferenceable(544) %0, ptr noalias noundef align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  %i.a = lshr i64 %2, 57
  %i.b = trunc nuw nsw i64 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1695, !noalias !1696, !noundef !4 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !alias.scope !1695, !noalias !1696, !nonnull !4, !noundef !4 ; 4 uses
  %i.f = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.d ]
  %.pn.i.i = phi i64 [ %2, %bb.a ], [ %i.y, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.d        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i21.i = load <16 x i8>, ptr %i.h, align 1, !noalias !1699 ; 2 uses
  %i.i = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i, %i.g
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %.not.i.not27.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.not27.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i28.i = phi i16 [ %i.w, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i28.i, i1 true)
  %i.l = zext nneg i16 %i.k to i64
  %i.m = add i64 %.sroa.01.0.i.i, %i.l
  %i.n = and i64 %i.m, %i.d                       ; 2 uses
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [544 x i8], ptr %i.e, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -544 ; 2 uses
  %i.r = tail call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtB2_10EquivalentBq_E10equivalentCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q), !noalias !1702
  br i1 %i.r, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1u_E0ECs7p2uQeJxui2_9deltalake.exit, label %bb.c, !prof !1705

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i, splat (i8 -1)
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.f, !prof !1649

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = add i16 %.sroa.06.0.i28.i, -1
  %i.w = and i16 %i.v, %.sroa.06.0.i28.i          ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.x = add i64 %.sroa.9.0.i.i, 16               ; 2 uses
  %i.y = add i64 %.sroa.01.0.i.i, %i.x
  br label %bb.b

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1u_E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  %.idx.neg = mul i64 %i.n, 544
  %i.z = sdiv exact i64 %.idx.neg, 544            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  %i.aa = add nsw i64 %i.z, -16
  %i.ab = and i64 %i.aa, %i.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ab ; 2 uses
  %.sroa.0.0.copyload.i20.i.i.i = load <16 x i8>, ptr %i.ac, align 1, !noalias !1715
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i20.i.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.z ; 2 uses
  %.sroa.0.0.copyload.i421.i.i.i = load <16 x i8>, ptr %i.af, align 1, !noalias !1719
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i421.i.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ae, i1 false)
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ah, i1 false)
  %narrow.i.i.i = add nuw nsw i16 %i.aj, %i.ai
  %i.ak = icmp samesign ugt i16 %narrow.i.i.i, 15
  br i1 %i.ak, label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1y_5field9SpanMatchEEE6removeCs7p2uQeJxui2_9deltalake.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1u_E0ECs7p2uQeJxui2_9deltalake.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !1722, !noalias !1723, !noundef !4
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !alias.scope !1722, !noalias !1723
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1y_5field9SpanMatchEEE6removeCs7p2uQeJxui2_9deltalake.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1y_5field9SpanMatchEEE6removeCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1u_E0ECs7p2uQeJxui2_9deltalake.exit, %bb.e
  %.sroa.0.0.i.i.i = phi i8 [ -1, %bb.e ], [ -128, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1u_E0ECs7p2uQeJxui2_9deltalake.exit ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i, ptr %i.af, align 1, !noalias !1724
  %i.ao = getelementptr i8, ptr %i.ac, i64 16
  store i8 %.sroa.0.0.i.i.i, ptr %i.ao, align 1, !noalias !1724
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !1722, !noalias !1723, !noundef !4
  %i.ar = add i64 %i.aq, -1
  store i64 %i.ar, ptr %i.ap, align 8, !alias.scope !1722, !noalias !1723
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(544) %i.q, i64 544, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.as, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1y_5field9SpanMatchEEE6removeCs7p2uQeJxui2_9deltalake.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0EB1D_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs1e4wyRlCFp2_18opentelemetry_otlp(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBU_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBU_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs8Hz2sPNgbCO_10datafusion(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBQ_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBQ_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsjhHCjzi9uUI_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0EB26_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1725, !noalias !1728, !noundef !4 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1725, !noalias !1728, !noundef !4 ; 3 uses
  %3 = icmp ult i64 %i.k, 8
  %i.l = add i64 %i.k, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %3, i64 %i.k, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.o
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !1731
  %i.q = extractvalue { i64, i64 } %i.p, 0
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = call noundef i64 @llvm.umax.i64(i64 %i.r, i64 %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !1732)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1735
  call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 24, 225) 120, i64 noundef %.sroa.0.0.i5) #41
  %i.s = load ptr, ptr %i.a, align 8, !noalias !1735, !noundef !4 ; 9 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !1735 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !1735 ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1735
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit

bb.f:                                             ; preds = %._crit_edge
  %i.y = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %i.b) #38, !noalias !1738
  resume { ptr, i32 } %i.y

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !noalias !1735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1735
  store ptr %i.e, ptr %i.b, align 8, !noalias !1735
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 120, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1735
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1735
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.s, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !1735
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1735
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.x, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1735
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1735
  %i.z = load i64, ptr %i.f, align 8, !alias.scope !1739, !noalias !1740, !noundef !4 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %._crit_edge23, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !1739, !noalias !1740, !nonnull !4, !noundef !4 ; 2 uses
  %i.ac = load <16 x i8>, ptr %i.ab, align 16, !noalias !1741
  %i.ad = icmp sgt <16 x i8> %i.ac, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.022 = phi ptr [ %i.ab, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.021 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.020 = phi i64 [ %i.z, %.preheader.lr.ph ], [ %i.bj, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.019 = phi i16 [ %i.ae, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i214 = icmp eq i16 %.sroa.13.019, 0
  br i1 %.not.i214, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.116 = phi ptr [ %i.af, %.noexc3 ], [ %.sroa.0.022, %.preheader ] ; 2 uses
  %.sroa.5.115 = phi i64 [ %i.aj, %.noexc3 ], [ %.sroa.5.021, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.116) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.116, i64 16 ; 3 uses
  %i.ag = load <16 x i8>, ptr %i.af, align 16, !noalias !1744
  %i.ah = icmp sgt <16 x i8> %i.ag, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %i.aj = add i64 %.sroa.5.115, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ai, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge23.loopexit:                           ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !1739, !noalias !1740
  br label %._crit_edge23

._crit_edge23:                                    ; preds = %._crit_edge23.loopexit, %bb.g
  %i.ak = phi i64 [ %.pre, %._crit_edge23.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.al = sub i64 %i.x, %i.ak
  store i64 %i.al, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1735
  store i64 %i.ak, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1735
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h, !noalias !1738

bb.h:                                             ; preds = %._crit_edge23
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #40, !noalias !1738
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7p2uQeJxui2_9deltalake.exit: ; preds = %._crit_edge23
  call void @llvm.experimental.noalias.scope.decl(metadata !1747)
  call void @llvm.experimental.noalias.scope.decl(metadata !1750), !noalias !1738
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1753, !noalias !1738 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !1753, !noalias !1738 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !1753, !noalias !1738, !noundef !4 ; 3 uses
  %i.an = icmp eq i64 %.val3.i.i, 0
  br i1 %i.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7p2uQeJxui2_9deltalake.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1753, !noalias !1738
  %i.ao = add i64 %.val3.i.i, 1
  %i.ap = mul nuw i64 %.val.i.i, %i.ao            ; 2 uses
  %i.aq = add i64 %.val1.i.i, -1
  %i.ar = add i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  call void @llvm.assume(i1 %i.as), !noalias !1738
  %i.at = sub i64 0, %.val1.i.i
  %i.au = and i64 %i.ar, %i.at                    ; 3 uses
  %i.av = add i64 %.val3.i.i, 17
  %i.aw = add i64 %i.av, %i.au                    ; 4 uses
  %i.ax = icmp uge i64 %i.aw, %i.au
  %i.ay = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.az = icmp ule i64 %i.aw, %i.ay
  call void @llvm.assume(i1 %i.ax), !noalias !1738
  call void @llvm.assume(i1 %i.az), !noalias !1738
  %i.ba = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ba), !noalias !1738
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !1738
  %i.bb = icmp eq i64 %i.aw, 0
  br i1 %i.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bc = sub nsw i64 0, %i.au
  %i.bd = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bc
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #34, !noalias !1754
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7p2uQeJxui2_9deltalake.exit, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1735
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.019, %.preheader ], [ %i.ai, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.021, %.preheader ], [ %i.aj, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.022, %.preheader ], [ %i.af, %.noexc3 ]
  %i.be = add i16 %.sroa.13.1.lcssa, -1
  %i.bf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = and i16 %i.be, %.sroa.13.1.lcssa
  %i.bi = add i64 %.sroa.5.1.lcssa, %i.bg         ; 2 uses
  %i.bj = add i64 %.sroa.9.020, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1755)
  %i.bk = load ptr, ptr %0, align 8, !alias.scope !1755, !noalias !1758, !nonnull !4, !noundef !4
  %i.bl = sub nsw i64 0, %i.bi
  %i.bm = getelementptr inbounds [120 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -120
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !1760, !nonnull !4, !align !1680, !noundef !4
  %i.bo = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn)
          to label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0B28_.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0B28_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.v, %i.bo             ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bp, align 1, !noalias !1761
  %i.bq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.br, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !1684

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0B28_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0B28_.exit ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.br, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0B28_.exit ], [ %i.cj, %.lr.ph.i ]
  %i.bs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.0.0.lcssa.i, %i.bt
  %i.bv = and i64 %i.bu, %i.v                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !4
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.j, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !1649

bb.j:                                             ; preds = %._crit_edge.i
  %i.bz = load <16 x i8>, ptr %i.s, align 16, !noalias !1764
  %i.ca = icmp slt <16 x i8> %i.bz, zeroinitializer
  %i.cb = bitcast <16 x i1> %i.ca to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cb, 0
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true)
  %i.cd = zext nneg i16 %i.cc to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0B28_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0B28_.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0B28_.exit ]
  %i.cf = add i64 %i.ce, 16                       ; 2 uses
  %i.cg = add i64 %i.cf, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.cg, %i.v             ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i7
end_hunk_1
begin_hunk_2_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECs7p2uQeJxui2_9deltalake:bb.a
  %i.a = lshr i64 %2, 57
  %i.b = trunc nuw nsw i64 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1773, !noalias !1774, !noundef !4 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !alias.scope !1773, !noalias !1774, !nonnull !4, !noundef !4 ; 4 uses
  %i.f = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.d ]
  %.pn.i.i = phi i64 [ %2, %bb.a ], [ %i.y, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.d        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i21.i = load <16 x i8>, ptr %i.h, align 1, !noalias !1777 ; 2 uses
  %i.i = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i, %i.g
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %.not.i.not27.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.not27.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i28.i = phi i16 [ %i.w, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i28.i, i1 true)
  %i.l = zext nneg i16 %i.k to i64
  %i.m = add i64 %.sroa.01.0.i.i, %i.l
  %i.n = and i64 %i.m, %i.d                       ; 2 uses
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [352 x i8], ptr %i.e, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -352 ; 2 uses
  %i.r = tail call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.q), !noalias !1780
  br i1 %i.r, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECs7p2uQeJxui2_9deltalake.exit, label %bb.c, !prof !1705

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i, splat (i8 -1)
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.f, !prof !1649

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = add i16 %.sroa.06.0.i28.i, -1
  %i.w = and i16 %i.v, %.sroa.06.0.i28.i          ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.x = add i64 %.sroa.9.0.i.i, 16               ; 2 uses
  %i.y = add i64 %.sroa.01.0.i.i, %i.x
  br label %bb.b

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1786)
  %.idx.neg = mul i64 %i.n, 352
  %i.z = sdiv exact i64 %.idx.neg, 352            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1789)
  %i.aa = add nsw i64 %i.z, -16
  %i.ab = and i64 %i.aa, %i.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ab ; 2 uses
  %.sroa.0.0.copyload.i20.i.i.i = load <16 x i8>, ptr %i.ac, align 1, !noalias !1792
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i20.i.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.z ; 2 uses
  %.sroa.0.0.copyload.i421.i.i.i = load <16 x i8>, ptr %i.af, align 1, !noalias !1796
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i421.i.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ae, i1 false)
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ah, i1 false)
  %narrow.i.i.i = add nuw nsw i16 %i.aj, %i.ai
  %i.ak = icmp samesign ugt i16 %narrow.i.i.i, 15
  br i1 %i.ak, label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE6removeCs7p2uQeJxui2_9deltalake.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECs7p2uQeJxui2_9deltalake.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !1799, !noalias !1800, !noundef !4
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !alias.scope !1799, !noalias !1800
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE6removeCs7p2uQeJxui2_9deltalake.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE6removeCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECs7p2uQeJxui2_9deltalake.exit, %bb.e
  %.sroa.0.0.i.i.i = phi i8 [ -1, %bb.e ], [ -128, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECs7p2uQeJxui2_9deltalake.exit ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i, ptr %i.af, align 1, !noalias !1801
  %i.ao = getelementptr i8, ptr %i.ac, i64 16
  store i8 %.sroa.0.0.i.i.i, ptr %i.ao, align 1, !noalias !1801
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !1799, !noalias !1800, !noundef !4
  %i.ar = add i64 %i.aq, -1
  store i64 %i.ar, ptr %i.ap, align 8, !alias.scope !1799, !noalias !1800
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(352) %i.q, i64 352, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 69, ptr %i.as, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE6removeCs7p2uQeJxui2_9deltalake.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs8Hz2sPNgbCO_10datafusion(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs8ojAJGM8ADl_16datafusion_proto(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0EB1w_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1802)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1802, !noalias !1805, !noundef !4 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1802, !noalias !1805, !noundef !4 ; 3 uses
  %3 = icmp ult i64 %i.k, 8
  %i.l = add i64 %i.k, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %3, i64 %i.k, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.o
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !1808
  %i.q = extractvalue { i64, i64 } %i.p, 0
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = call noundef i64 @llvm.umax.i64(i64 %i.r, i64 %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1812
  call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 24, 225) 144, i64 noundef %.sroa.0.0.i5) #41
  %i.s = load ptr, ptr %i.a, align 8, !noalias !1812, !noundef !4 ; 9 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !1812 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !1812 ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1812
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit

bb.f:                                             ; preds = %._crit_edge
  %i.y = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %i.b) #38, !noalias !1815
  resume { ptr, i32 } %i.y

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !noalias !1812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1812
  store ptr %i.e, ptr %i.b, align 8, !noalias !1812
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 144, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1812
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1812
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.s, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !1812
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1812
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.x, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1812
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1812
  %i.z = load i64, ptr %i.f, align 8, !alias.scope !1816, !noalias !1817, !noundef !4 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %._crit_edge23, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !1816, !noalias !1817, !nonnull !4, !noundef !4 ; 2 uses
  %i.ac = load <16 x i8>, ptr %i.ab, align 16, !noalias !1818
  %i.ad = icmp sgt <16 x i8> %i.ac, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.022 = phi ptr [ %i.ab, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.021 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.020 = phi i64 [ %i.z, %.preheader.lr.ph ], [ %i.bj, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.019 = phi i16 [ %i.ae, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i214 = icmp eq i16 %.sroa.13.019, 0
  br i1 %.not.i214, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.116 = phi ptr [ %i.af, %.noexc3 ], [ %.sroa.0.022, %.preheader ] ; 2 uses
  %.sroa.5.115 = phi i64 [ %i.aj, %.noexc3 ], [ %.sroa.5.021, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.116) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.116, i64 16 ; 3 uses
  %i.ag = load <16 x i8>, ptr %i.af, align 16, !noalias !1821
  %i.ah = icmp sgt <16 x i8> %i.ag, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %i.aj = add i64 %.sroa.5.115, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ai, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge23.loopexit:                           ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !1816, !noalias !1817
  br label %._crit_edge23

._crit_edge23:                                    ; preds = %._crit_edge23.loopexit, %bb.g
  %i.ak = phi i64 [ %.pre, %._crit_edge23.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.al = sub i64 %i.x, %i.ak
  store i64 %i.al, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1812
  store i64 %i.ak, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1812
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h, !noalias !1815

bb.h:                                             ; preds = %._crit_edge23
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #40, !noalias !1815
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7p2uQeJxui2_9deltalake.exit: ; preds = %._crit_edge23
  call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  call void @llvm.experimental.noalias.scope.decl(metadata !1827), !noalias !1815
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1830, !noalias !1815 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !1830, !noalias !1815 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !1830, !noalias !1815, !noundef !4 ; 3 uses
  %i.an = icmp eq i64 %.val3.i.i, 0
  br i1 %i.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7p2uQeJxui2_9deltalake.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1830, !noalias !1815
  %i.ao = add i64 %.val3.i.i, 1
  %i.ap = mul nuw i64 %.val.i.i, %i.ao            ; 2 uses
  %i.aq = add i64 %.val1.i.i, -1
  %i.ar = add i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  call void @llvm.assume(i1 %i.as), !noalias !1815
  %i.at = sub i64 0, %.val1.i.i
  %i.au = and i64 %i.ar, %i.at                    ; 3 uses
  %i.av = add i64 %.val3.i.i, 17
  %i.aw = add i64 %i.av, %i.au                    ; 4 uses
  %i.ax = icmp uge i64 %i.aw, %i.au
  %i.ay = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.az = icmp ule i64 %i.aw, %i.ay
  call void @llvm.assume(i1 %i.ax), !noalias !1815
  call void @llvm.assume(i1 %i.az), !noalias !1815
  %i.ba = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ba), !noalias !1815
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !1815
  %i.bb = icmp eq i64 %i.aw, 0
  br i1 %i.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bc = sub nsw i64 0, %i.au
  %i.bd = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bc
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #34, !noalias !1831
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7p2uQeJxui2_9deltalake.exit, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1812
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.019, %.preheader ], [ %i.ai, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.021, %.preheader ], [ %i.aj, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.022, %.preheader ], [ %i.af, %.noexc3 ]
  %i.be = add i16 %.sroa.13.1.lcssa, -1
  %i.bf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = and i16 %i.be, %.sroa.13.1.lcssa
  %i.bi = add i64 %.sroa.5.1.lcssa, %i.bg         ; 2 uses
  %i.bj = add i64 %.sroa.9.020, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  %i.bk = load ptr, ptr %0, align 8, !alias.scope !1832, !noalias !1835, !nonnull !4, !noundef !4
  %i.bl = sub nsw i64 0, %i.bi
  %i.bm = getelementptr inbounds [144 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -144
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !1837, !nonnull !4, !align !1680, !noundef !4
  %i.bo = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.bn)
          to label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.v, %i.bo             ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bp, align 1, !noalias !1838
  %i.bq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.br, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !1684

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.br, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit ], [ %i.cj, %.lr.ph.i ]
  %i.bs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.0.0.lcssa.i, %i.bt
  %i.bv = and i64 %i.bu, %i.v                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !4
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.j, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !1649

bb.j:                                             ; preds = %._crit_edge.i
  %i.bz = load <16 x i8>, ptr %i.s, align 16, !noalias !1841
  %i.ca = icmp slt <16 x i8> %i.bz, zeroinitializer
  %i.cb = bitcast <16 x i1> %i.ca to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cb, 0
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true)
  %i.cd = zext nneg i16 %i.cc to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit ]
  %i.cf = add i64 %i.ce, 16                       ; 2 uses
  %i.cg = add i64 %i.cf, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.cg, %i.v             ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i7
end_hunk_2
begin_hunk_3_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringxEE7reserveNCINvNtB8_3map11make_hasherBQ_xNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringxEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_xNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs387lRdTAbEW_11hdfs_native(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEE7reserveNCINvNtB8_3map11make_hasherBQ_jNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_jNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SyncNtB29_4SendEL_EEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1847)
  %i.a = lshr i64 %2, 57
  %i.b = trunc nuw nsw i64 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1850, !noalias !1851, !noundef !4 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !alias.scope !1850, !noalias !1851, !nonnull !4, !noundef !4 ; 4 uses
  %i.f = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.d ]
  %.pn.i.i = phi i64 [ %2, %bb.a ], [ %i.y, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.d        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i21.i = load <16 x i8>, ptr %i.h, align 1, !noalias !1854 ; 2 uses
  %i.i = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i, %i.g
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %.not.i.not27.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.not27.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i28.i = phi i16 [ %i.w, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i28.i, i1 true)
  %i.l = zext nneg i16 %i.k to i64
  %i.m = add i64 %.sroa.01.0.i.i, %i.l
  %i.n = and i64 %i.m, %i.d                       ; 3 uses
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [32 x i8], ptr %i.e, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -32 ; 2 uses
  %i.r = tail call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtB2_10EquivalentBq_E10equivalentCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q), !noalias !1857
  br i1 %i.r, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SyncNtB29_4SendEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECs7p2uQeJxui2_9deltalake.exit, label %bb.c, !prof !1705

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i, splat (i8 -1)
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.f, !prof !1649

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = add i16 %.sroa.06.0.i28.i, -1
  %i.w = and i16 %i.v, %.sroa.06.0.i28.i          ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.x = add i64 %.sroa.9.0.i.i, 16               ; 2 uses
  %i.y = add i64 %.sroa.01.0.i.i, %i.x
  br label %bb.b

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SyncNtB29_4SendEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  %i.z = add nsw i64 %i.n, -16
  %i.aa = and i64 %i.z, %i.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aa ; 2 uses
  %.sroa.0.0.copyload.i20.i.i.i = load <16 x i8>, ptr %i.ab, align 1, !noalias !1869
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i20.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.n ; 2 uses
  %.sroa.0.0.copyload.i421.i.i.i = load <16 x i8>, ptr %i.ae, align 1, !noalias !1873
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i421.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ad, i1 false)
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ag, i1 false)
  %narrow.i.i.i = add nuw nsw i16 %i.ai, %i.ah
  %i.aj = icmp samesign ugt i16 %narrow.i.i.i, 15
  br i1 %i.aj, label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEE6removeCs7p2uQeJxui2_9deltalake.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SyncNtB29_4SendEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECs7p2uQeJxui2_9deltalake.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !1876, !noalias !1877, !noundef !4
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !alias.scope !1876, !noalias !1877
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEE6removeCs7p2uQeJxui2_9deltalake.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEE6removeCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SyncNtB29_4SendEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECs7p2uQeJxui2_9deltalake.exit, %bb.e
  %.sroa.0.0.i.i.i = phi i8 [ -1, %bb.e ], [ -128, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SyncNtB29_4SendEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECs7p2uQeJxui2_9deltalake.exit ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i, ptr %i.ae, align 1, !noalias !1878
  %i.an = getelementptr i8, ptr %i.ab, i64 16
  store i8 %.sroa.0.0.i.i.i, ptr %i.an, align 1, !noalias !1878
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !1876, !noalias !1877, !noundef !4
  %i.aq = add i64 %i.ap, -1
  store i64 %i.aq, ptr %i.ao, align 8, !alias.scope !1876, !noalias !1877
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ar, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEE6removeCs7p2uQeJxui2_9deltalake.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SyncNtB29_4SendEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensions8IdHasherEE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SyncNtB29_4SendEL_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensions8IdHasherEE0EB48_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B26_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B26_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs8Hz2sPNgbCO_10datafusion(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1F_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1879)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1879, !noalias !1882, !noundef !4 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1879, !noalias !1882, !noundef !4 ; 3 uses
  %3 = icmp ult i64 %i.k, 8
  %i.l = add i64 %i.k, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %3, i64 %i.k, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.o
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !1885
  %i.q = extractvalue { i64, i64 } %i.p, 0
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = call noundef i64 @llvm.umax.i64(i64 %i.r, i64 %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !1886)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1889
  call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 24, 225) 224, i64 noundef %.sroa.0.0.i5) #41
  %i.s = load ptr, ptr %i.a, align 8, !noalias !1889, !noundef !4 ; 9 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !1889 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !1889 ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1889
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit

bb.f:                                             ; preds = %._crit_edge
  %i.y = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %i.b) #38, !noalias !1892
  resume { ptr, i32 } %i.y

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !noalias !1889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1889
  store ptr %i.e, ptr %i.b, align 8, !noalias !1889
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 224, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1889
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1889
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.s, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !1889
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1889
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.x, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1889
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1889
  %i.z = load i64, ptr %i.f, align 8, !alias.scope !1893, !noalias !1894, !noundef !4 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %._crit_edge23, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !1893, !noalias !1894, !nonnull !4, !noundef !4 ; 2 uses
  %i.ac = load <16 x i8>, ptr %i.ab, align 16, !noalias !1895
  %i.ad = icmp sgt <16 x i8> %i.ac, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.022 = phi ptr [ %i.ab, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.021 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.020 = phi i64 [ %i.z, %.preheader.lr.ph ], [ %i.bj, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.019 = phi i16 [ %i.ae, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i214 = icmp eq i16 %.sroa.13.019, 0
  br i1 %.not.i214, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.116 = phi ptr [ %i.af, %.noexc3 ], [ %.sroa.0.022, %.preheader ] ; 2 uses
  %.sroa.5.115 = phi i64 [ %i.aj, %.noexc3 ], [ %.sroa.5.021, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.116) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.116, i64 16 ; 3 uses
  %i.ag = load <16 x i8>, ptr %i.af, align 16, !noalias !1898
  %i.ah = icmp sgt <16 x i8> %i.ag, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %i.aj = add i64 %.sroa.5.115, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ai, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge23.loopexit:                           ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !1893, !noalias !1894
  br label %._crit_edge23

._crit_edge23:                                    ; preds = %._crit_edge23.loopexit, %bb.g
  %i.ak = phi i64 [ %.pre, %._crit_edge23.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.al = sub i64 %i.x, %i.ak
  store i64 %i.al, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1889
  store i64 %i.ak, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1889
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h, !noalias !1892

bb.h:                                             ; preds = %._crit_edge23
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #40, !noalias !1892
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7p2uQeJxui2_9deltalake.exit: ; preds = %._crit_edge23
  call void @llvm.experimental.noalias.scope.decl(metadata !1901)
  call void @llvm.experimental.noalias.scope.decl(metadata !1904), !noalias !1892
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1907, !noalias !1892 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !1907, !noalias !1892 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !1907, !noalias !1892, !noundef !4 ; 3 uses
  %i.an = icmp eq i64 %.val3.i.i, 0
  br i1 %i.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7p2uQeJxui2_9deltalake.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1907, !noalias !1892
  %i.ao = add i64 %.val3.i.i, 1
  %i.ap = mul nuw i64 %.val.i.i, %i.ao            ; 2 uses
  %i.aq = add i64 %.val1.i.i, -1
  %i.ar = add i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  call void @llvm.assume(i1 %i.as), !noalias !1892
  %i.at = sub i64 0, %.val1.i.i
  %i.au = and i64 %i.ar, %i.at                    ; 3 uses
  %i.av = add i64 %.val3.i.i, 17
  %i.aw = add i64 %i.av, %i.au                    ; 4 uses
  %i.ax = icmp uge i64 %i.aw, %i.au
  %i.ay = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.az = icmp ule i64 %i.aw, %i.ay
  call void @llvm.assume(i1 %i.ax), !noalias !1892
  call void @llvm.assume(i1 %i.az), !noalias !1892
  %i.ba = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ba), !noalias !1892
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !1892
  %i.bb = icmp eq i64 %i.aw, 0
  br i1 %i.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bc = sub nsw i64 0, %i.au
  %i.bd = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bc
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #34, !noalias !1908
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7p2uQeJxui2_9deltalake.exit, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1889
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.019, %.preheader ], [ %i.ai, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.021, %.preheader ], [ %i.aj, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.022, %.preheader ], [ %i.af, %.noexc3 ]
  %i.be = add i16 %.sroa.13.1.lcssa, -1
  %i.bf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = and i16 %i.be, %.sroa.13.1.lcssa
  %i.bi = add i64 %.sroa.5.1.lcssa, %i.bg         ; 2 uses
  %i.bj = add i64 %.sroa.9.020, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  %i.bk = load ptr, ptr %0, align 8, !alias.scope !1909, !noalias !1912, !nonnull !4, !noundef !4
  %i.bl = sub nsw i64 0, %i.bi
  %i.bm = getelementptr inbounds [224 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -224
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !1914, !nonnull !4, !align !1680, !noundef !4
  %i.bo = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(224) %i.bn)
          to label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.v, %i.bo             ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bp, align 1, !noalias !1915
  %i.bq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.br, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !1684

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.br, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit ], [ %i.cj, %.lr.ph.i ]
  %i.bs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.0.0.lcssa.i, %i.bt
  %i.bv = and i64 %i.bu, %i.v                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !4
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.j, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !1649

bb.j:                                             ; preds = %._crit_edge.i
  %i.bz = load <16 x i8>, ptr %i.s, align 16, !noalias !1918
  %i.ca = icmp slt <16 x i8> %i.bz, zeroinitializer
  %i.cb = bitcast <16 x i1> %i.ca to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cb, 0
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true)
  %i.cd = zext nneg i16 %i.cc to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit ]
  %i.cf = add i64 %i.ce, 16                       ; 2 uses
  %i.cg = add i64 %i.cf, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.cg, %i.v             ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i7
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ch, align 1, !noalias !1915
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cj = bitcast <16 x i1> %i.ci to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cj, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !1688

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cd, %bb.j ], [ %i.bv, %._crit_edge.i ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i5.i
  %i.cl = lshr i64 %i.bo, 57
  %i.cm = trunc nuw nsw i64 %i.cl to i8           ; 2 uses
  %i.cn = add i64 %.sroa.0.0.i5.i, -16
  %i.co = and i64 %i.cn, %i.v
  store i8 %i.cm, ptr %i.ck, align 1, !noalias !1892
  %i.cp = getelementptr i8, ptr %i.s, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 16
  store i8 %i.cm, ptr %i.cq, align 1, !noalias !1892
  %i.cr = load ptr, ptr %0, align 8, !alias.scope !1893, !noalias !1894, !nonnull !4, !noundef !4
  %.neg.i.i = xor i64 %i.bi, -1
  %.neg61.i.i = mul i64 %.neg.i.i, 224
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = mul i64 %.neg62.i.i, 224
  %i.ct = getelementptr inbounds i8, ptr %i.s, i64 %.neg63.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(224) %i.ct, ptr noundef nonnull align 1 dereferenceable(224) %i.cs, i64 range(i64 24, 225) 224, i1 false), !noalias !1892
  %i.cu = icmp eq i64 %i.bj, 0
  br i1 %i.cu, label %._crit_edge23.loopexit, label %.preheader

bb.k:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr nonnull @_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake, i64 noundef 224, ptr noundef nonnull @_RNvYNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtBb_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1K_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0Es_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTOhEE9call_onceCs7p2uQeJxui2_9deltalake) #41
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit, %bb.c, %bb.k
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -9223372036854775807, %bb.k ], [ %i.v, %bb.e ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE7reserveNCINvNtB8_3map11make_hasherBQ_B1F_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i64 @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1F_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs8ulvy0Wg6Ot_12delta_kernel(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTReuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs8ulvy0Wg6Ot_12delta_kernel(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTRexEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_xNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1921)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1921, !noalias !1924, !noundef !4 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1921, !noalias !1924, !noundef !4 ; 3 uses
  %3 = icmp ult i64 %i.k, 8
  %i.l = add i64 %i.k, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %3, i64 %i.k, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.o
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !1927
  %i.q = extractvalue { i64, i64 } %i.p, 0
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = call noundef i64 @llvm.umax.i64(i64 %i.r, i64 %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !1928)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1931
  call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 24, 225) 24, i64 noundef %.sroa.0.0.i5) #41
  %i.s = load ptr, ptr %i.a, align 8, !noalias !1931, !noundef !4 ; 9 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !1931 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !1931 ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1931
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit

bb.f:                                             ; preds = %._crit_edge
  %i.y = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %i.b) #38, !noalias !1934
  resume { ptr, i32 } %i.y

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !noalias !1931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1931
  store ptr %i.e, ptr %i.b, align 8, !noalias !1931
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1931
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1931
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.s, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !1931
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1931
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.x, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1931
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1931
  %i.z = load i64, ptr %i.f, align 8, !alias.scope !1935, !noalias !1936, !noundef !4 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %._crit_edge23, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !1935, !noalias !1936, !nonnull !4, !noundef !4 ; 2 uses
  %i.ac = load <16 x i8>, ptr %i.ab, align 16, !noalias !1937
  %i.ad = icmp sgt <16 x i8> %i.ac, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.022 = phi ptr [ %i.ab, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.021 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.020 = phi i64 [ %i.z, %.preheader.lr.ph ], [ %i.bj, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.019 = phi i16 [ %i.ae, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i214 = icmp eq i16 %.sroa.13.019, 0
  br i1 %.not.i214, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.116 = phi ptr [ %i.af, %.noexc3 ], [ %.sroa.0.022, %.preheader ] ; 2 uses
  %.sroa.5.115 = phi i64 [ %i.aj, %.noexc3 ], [ %.sroa.5.021, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.116) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.116, i64 16 ; 3 uses
  %i.ag = load <16 x i8>, ptr %i.af, align 16, !noalias !1940
  %i.ah = icmp sgt <16 x i8> %i.ag, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %i.aj = add i64 %.sroa.5.115, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ai, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge23.loopexit:                           ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !1935, !noalias !1936
  br label %._crit_edge23

._crit_edge23:                                    ; preds = %._crit_edge23.loopexit, %bb.g
  %i.ak = phi i64 [ %.pre, %._crit_edge23.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.al = sub i64 %i.x, %i.ak
  store i64 %i.al, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1931
  store i64 %i.ak, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1931
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h, !noalias !1934

bb.h:                                             ; preds = %._crit_edge23
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #40, !noalias !1934
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7p2uQeJxui2_9deltalake.exit: ; preds = %._crit_edge23
  call void @llvm.experimental.noalias.scope.decl(metadata !1943)
  call void @llvm.experimental.noalias.scope.decl(metadata !1946), !noalias !1934
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1949, !noalias !1934 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !1949, !noalias !1934 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !1949, !noalias !1934, !noundef !4 ; 3 uses
  %i.an = icmp eq i64 %.val3.i.i, 0
  br i1 %i.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7p2uQeJxui2_9deltalake.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1949, !noalias !1934
  %i.ao = add i64 %.val3.i.i, 1
  %i.ap = mul nuw i64 %.val.i.i, %i.ao            ; 2 uses
  %i.aq = add i64 %.val1.i.i, -1
  %i.ar = add i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  call void @llvm.assume(i1 %i.as), !noalias !1934
  %i.at = sub i64 0, %.val1.i.i
  %i.au = and i64 %i.ar, %i.at                    ; 3 uses
  %i.av = add i64 %.val3.i.i, 17
  %i.aw = add i64 %i.av, %i.au                    ; 4 uses
  %i.ax = icmp uge i64 %i.aw, %i.au
  %i.ay = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.az = icmp ule i64 %i.aw, %i.ay
  call void @llvm.assume(i1 %i.ax), !noalias !1934
  call void @llvm.assume(i1 %i.az), !noalias !1934
  %i.ba = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ba), !noalias !1934
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !1934
  %i.bb = icmp eq i64 %i.aw, 0
  br i1 %i.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bc = sub nsw i64 0, %i.au
  %i.bd = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bc
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #34, !noalias !1950
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECs7p2uQeJxui2_9deltalake.exit, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1931
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.019, %.preheader ], [ %i.ai, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.021, %.preheader ], [ %i.aj, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.022, %.preheader ], [ %i.af, %.noexc3 ]
  %i.be = add i16 %.sroa.13.1.lcssa, -1
  %i.bf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = and i16 %i.be, %.sroa.13.1.lcssa
  %i.bi = add i64 %.sroa.5.1.lcssa, %i.bg         ; 2 uses
  %i.bj = add i64 %.sroa.9.020, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1951)
  %i.bk = load ptr, ptr %0, align 8, !alias.scope !1951, !noalias !1954, !nonnull !4, !noundef !4
  %i.bl = sub nsw i64 0, %i.bi
  %i.bm = getelementptr inbounds [24 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -24
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !1956, !nonnull !4, !align !1680, !noundef !4
  %i.bo = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn)
          to label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTRexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_xNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTRexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_xNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.v, %i.bo             ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bp, align 1, !noalias !1957
  %i.bq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.br, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !1684

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTRexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_xNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTRexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_xNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.br, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTRexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_xNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit ], [ %i.cj, %.lr.ph.i ]
  %i.bs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.0.0.lcssa.i, %i.bt
  %i.bv = and i64 %i.bu, %i.v                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !4
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.j, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !1649

bb.j:                                             ; preds = %._crit_edge.i
  %i.bz = load <16 x i8>, ptr %i.s, align 16, !noalias !1960
  %i.ca = icmp slt <16 x i8> %i.bz, zeroinitializer
  %i.cb = bitcast <16 x i1> %i.ca to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cb, 0
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true)
  %i.cd = zext nneg i16 %i.cc to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTRexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_xNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTRexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_xNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit ]
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTRexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_xNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Cs7p2uQeJxui2_9deltalake.exit ]
  %i.cf = add i64 %i.ce, 16                       ; 2 uses
  %i.cg = add i64 %i.cf, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.cg, %i.v             ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i7
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake:bb.a
bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorECs7p2uQeJxui2_9deltalake.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEENCNvMsd_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs2HSpDNxY7OE_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEENCNvMsd_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.sroa.01.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.i ] ; 3 uses
  %i.a = add nuw i64 %.sroa.01.04.i.i, 1          ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.01.04.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !4
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.01.04.i.i
  %i.g = getelementptr inbounds [144 x i8], ptr %i.b, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -144 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.h)
          to label %.body.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.f, %bb.d
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.i, %bb.d ]
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 -112
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(112) %i.l) #38
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %.body.i.i.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.h:                                             ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 -112
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(112) %i.n)
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs2HSpDNxY7OE_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEENCNvMsd_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit, label %bb.b

_RNvXs1_NtCs2HSpDNxY7OE_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEENCNvMsd_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2631)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !2631 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !2631 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !2631, !noundef !4 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !2631
  %i.f = add i64 %.val3.i, 1
  %i.g = mul nuw i64 %.val.i, %i.f                ; 2 uses
  %i.h = add i64 %.val1.i, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %.val1.i
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %.val3.i, 17
  %i.n = add i64 %i.m, %i.l                       ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp ne i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #34, !noalias !2631
  br label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2634)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !2634, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !2634
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !2634 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !2634, !noundef !4 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.0.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !2634, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !2634, !noundef !4
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.k = add i64 %.sroa.0.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !2634, !noundef !4
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !2634
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !2634, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !2634
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !2634, !nonnull !4, !noundef !4
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg7.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !2634, !inline_history !2637
  %i.s = load i64, ptr %i.e, align 8, !noalias !2634, !noundef !4
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !2634
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit, label %bb.c

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !2634, !noundef !4 ; 3 uses
  %1 = icmp ult i64 %i.v, 8
  %i.w = add i64 %i.v, 1
  %i.x = lshr i64 %i.w, 3
  %i.y = mul nuw i64 %i.x, 7
  %.sroa.04.0.i.i = select i1 %1, i64 %i.v, i64 %i.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.z = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noalias !2634, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ac = sub i64 %.sroa.04.0.i.i, %i.aa
  store i64 %i.ac, ptr %i.ab, align 8, !noalias !2634
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1W_EEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1o_EEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !4
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1o_EEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit, label %bb.b

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1o_EEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !4
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [40 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -40
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBL_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit, label %bb.b

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !4
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [40 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -40
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit, label %bb.b

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !4
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -32
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBL_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit, label %bb.b

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !4
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -32
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBL_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit, label %bb.b

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !4
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
end_hunk_4
begin_hunk_5_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake:bb.a

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter49 = and i32 %i.at, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod47.not = icmp eq i32 %xtraiter45, 0
  br i1 %lcmp.mod47.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod48 = icmp ne i32 %xtraiter45, 0
  tail call void @llvm.assume(i1 %lcmp.mod48)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter46 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter46.next, %.lr.ph.i17.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !11511
  %epil.iter46.next = add i32 %epil.iter46, 1     ; 2 uses
  %epil.iter46.cmp.not = icmp eq i32 %epil.iter46.next, %xtraiter45
  br i1 %epil.iter46.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !11516

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.av = add i32 %.sroa.0.028.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter50 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter50.next.7, %.lr.ph.i17.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !11511
  tail call void @llvm.x86.sse2.pause(), !noalias !11511
  tail call void @llvm.x86.sse2.pause(), !noalias !11511
  tail call void @llvm.x86.sse2.pause(), !noalias !11511
  tail call void @llvm.x86.sse2.pause(), !noalias !11511
  tail call void @llvm.x86.sse2.pause(), !noalias !11511
  tail call void @llvm.x86.sse2.pause(), !noalias !11511
  tail call void @llvm.x86.sse2.pause(), !noalias !11511
  %niter50.next.7 = add i32 %niter50, 8           ; 2 uses
  %niter50.ncmp.7 = icmp eq i32 %niter50.next.7, %unroll_iter49
  br i1 %niter50.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10start_recvCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.aw, align 8
  store i64 -9223372036854775808, ptr %0, align 16
  br label %bb.r

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64)
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 352
  %i.ay = load i64, ptr %i.e, align 8, !noalias !11511, !noundef !4
  %i.az = add i64 %i.ay, %.sroa.02.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %i.a, ptr noundef nonnull align 16 dereferenceable(352) %i.s, i64 352, i1 false), !noalias !11517
  store atomic i64 %i.az, ptr %i.ax release, align 8, !noalias !11517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %i.b, ptr noundef nonnull align 16 dereferenceable(352) %i.a, i64 352, i1 false), !noalias !11517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.ba)
          to label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit unwind label %bb.o, !noalias !11517

bb.o:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(352) %i.b) #38
          to label %bb.q unwind label %bb.p, !noalias !11517

bb.p:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !11517
  unreachable

bb.q:                                             ; preds = %bb.o
  resume { ptr, i32 } %i.bb

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.n
  %.sroa.02.0.copyload3 = load i64, ptr %i.b, align 16 ; 2 uses
  %.sroa.64.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.64, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.64.0..sroa_idx5, i64 344, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11517
  %i.bd = icmp eq i64 %.sroa.02.0.copyload3, -9223372036854775808
  br i1 %i.bd, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.u, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10start_recvCs7p2uQeJxui2_9deltalake.exit
  ret void

bb.s:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.thread, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.be, align 8
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.64, i64 344, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.02.0.copyload3.sink = phi i64 [ %.sroa.02.0.copyload3, %bb.t ], [ -9223372036854775808, %bb.s ]
  store i64 %.sroa.02.0.copyload3.sink, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.64)
  br label %bb.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr readonly captures(none) %.40.val, i64 noundef range(i64 24, 225) %2, ptr noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val16 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val17 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.c = add i64 %.val17, 1                       ; 6 uses
  %.not5.i = icmp eq i64 %i.c, 0
  br i1 %.not5.i, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val16, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.07.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.t, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.i = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.07.i.epil.init ; 2 uses
  %i.j = load <16 x i8>, ptr %i.i, align 16, !noalias !11520
  %.lobit.i.i.epil = ashr <16 x i8> %i.j, splat (i8 7)
  %i.k = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.l = or <2 x i64> %i.k, splat (i64 -9187201950435737472)
  store <2 x i64> %i.l, ptr %i.i, align 16, !noalias !11523
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.o = getelementptr inbounds nuw i8, ptr %.val16, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %.val16, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.m, align 8
  store i64 %2, ptr %i.n, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.07.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.t, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.07.i ; 2 uses
  %i.q = load <16 x i8>, ptr %i.p, align 16, !noalias !11520
  %.lobit.i.i = ashr <16 x i8> %i.q, splat (i8 7)
  %i.r = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.s = or <2 x i64> %i.r, splat (i64 -9187201950435737472)
  store <2 x i64> %i.s, ptr %i.p, align 16, !noalias !11523
  %i.t = add i64 %.sroa.0.07.i, 32                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.07.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load <16 x i8>, ptr %i.v, align 16, !noalias !11520
  %.lobit.i.i.1 = ashr <16 x i8> %i.w, splat (i8 7)
  %i.x = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.y = or <2 x i64> %i.x, splat (i64 -9187201950435737472)
  store <2 x i64> %i.y, ptr %i.v, align 16, !noalias !11523
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.z = lshr i64 %.pre13, 3
  %i.aa = mul nuw i64 %i.z, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.aa, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.ab = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 8
  %.sroa.04.0 = select i1 %i.ac, i64 %i.ab, i64 %.pre-phi
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = sub i64 %.sroa.04.0, %i.ae
  store i64 %i.ag, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.k
  %.sroa.0.06 = phi i64 [ %i.ah, %bb.k ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ah = add nuw i64 %.sroa.0.06, 1
  %i.ai = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.0.06
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !4
  %.not = icmp eq i8 %i.ak, -128
  br i1 %.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg12 = mul i64 %2, %.neg
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %.neg12 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %bb.c
  %i.am = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.l, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.a) #38
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %.val15 = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %.sroa.0.07.i18 = and i64 %.val15, %i.am        ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i18
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ao, align 1, !noalias !11526
  %i.ap = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i9.i, label %.lr.ph.i20, label %._crit_edge.i19, !prof !1684

._crit_edge.i19:                                  ; preds = %.lr.ph.i20, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i18, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i20 ]
  %.lcssa.i = phi i16 [ %i.aq, %bb.f ], [ %i.bi, %.lr.ph.i20 ]
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = add i64 %.sroa.0.0.lcssa.i, %i.as
  %i.au = and i64 %i.at, %.val15                  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noundef !4
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %bb.g, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !1649

bb.g:                                             ; preds = %._crit_edge.i19
  %i.ay = load <16 x i8>, ptr %.val, align 16, !noalias !11529
  %i.az = icmp slt <16 x i8> %i.ay, zeroinitializer
  %i.ba = bitcast <16 x i1> %i.az to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ba, 0
  %i.bb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ba, i1 true)
  %i.bc = zext nneg i16 %i.bb to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i20:                                       ; preds = %bb.f, %.lr.ph.i20
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i20 ], [ %.sroa.0.07.i18, %bb.f ]
  %i.bd = phi i64 [ %i.be, %.lr.ph.i20 ], [ 0, %bb.f ]
  %i.be = add i64 %i.bd, 16                       ; 2 uses
  %i.bf = add i64 %i.be, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bf, %.val15           ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bg, align 1, !noalias !11526
  %i.bh = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not.i.i, label %.lr.ph.i20, label %._crit_edge.i19, !prof !1688

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i19
  %.sroa.0.0.i5.i = phi i64 [ %i.bc, %bb.g ], [ %i.au, %._crit_edge.i19 ] ; 4 uses
  %i.bj = sub i64 %.sroa.0.06, %.sroa.0.07.i18
  %i.bk = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i18
  %i.bl = xor i64 %i.bk, %i.bj
  %.unshifted = and i64 %i.bl, %.val15
  %i.bm = icmp ult i64 %.unshifted, 16
  br i1 %i.bm, label %bb.i, label %bb.h, !prof !1705

bb.h:                                             ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg13 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg14 = mul i64 %2, %.neg13
  %i.bn = getelementptr inbounds i8, ptr %.val, i64 %.neg14 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !4
  %i.bq = lshr i64 %i.am, 57
  %i.br = trunc nuw nsw i64 %i.bq to i8           ; 2 uses
  %i.bs = add i64 %.sroa.0.0.i5.i, -16
  %i.bt = and i64 %i.bs, %.val15
  store i8 %i.br, ptr %i.bo, align 1
  %i.bu = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bt
  %i.bw = getelementptr i8, ptr %i.bv, i64 16
  store i8 %i.br, ptr %i.bw, align 1
  %i.bx = icmp eq i8 %i.bp, -1
  br i1 %i.bx, label %bb.j, label %bb.l

bb.i:                                             ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.by = lshr i64 %i.am, 57
  %i.bz = trunc nuw nsw i64 %i.by to i8           ; 2 uses
  %i.ca = add i64 %.sroa.0.06, -16
  %i.cb = and i64 %.val15, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bz, ptr %i.cc, align 1
  %i.cd = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.cb
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  store i8 %i.bz, ptr %i.cf, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cg = add i64 %.sroa.0.06, -16
  %i.ch = load i64, ptr %i.b, align 8, !noundef !4
  %i.ci = and i64 %i.ch, %i.cg
  %i.cj = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.0.06
  store i8 -1, ptr %i.ck, align 1
  %i.cl = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.cm = getelementptr i8, ptr %i.cl, i64 %i.ci
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  store i8 -1, ptr %i.cn, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bn, ptr noundef nonnull align 1 dereferenceable(1) %i.al, i64 %2, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.j, %bb.i
  %exitcond.not = icmp eq i64 %.sroa.0.06, %.val17
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph

bb.l:                                             ; preds = %bb.h
  invoke fastcc void @_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes(ptr noundef %i.al, ptr noundef %i.bn, i64 noundef %2)
          to label %bb.d unwind label %bb.e

bb.m:                                             ; preds = %bb.e
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.an
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = load <16 x i8>, ptr %1, align 16, !noalias !11532
  %i.c = icmp sgt <16 x i8> %i.b, splat (i8 -1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.c, ptr %i.e, align 8
  store ptr %2, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBY_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = load <16 x i8>, ptr %1, align 16, !noalias !11535
  %i.c = icmp sgt <16 x i8> %i.b, splat (i8 -1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.c, ptr %i.e, align 8
  store ptr %2, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = load <16 x i8>, ptr %1, align 16, !noalias !11538
  %i.c = icmp sgt <16 x i8> %i.b, splat (i8 -1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.c, ptr %i.e, align 8
  store ptr %2, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.g, align 8
end_hunk_5
begin_hunk_6_@_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.o, ptr %i.ag, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.j:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.k, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.w, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.s, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %i.o, ptr %i.aj, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.ak = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !14317
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !14320
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !14323, !noalias !14320, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !14323, !noalias !14320, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !14323, !noalias !14320
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !14323, !noalias !14320
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXs_NtCs4tdlwR1I4n2_7parquet6errorsNtB4_12ParquetErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #17 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5251, !noundef !4
  %i.b = icmp eq i64 %i.a, 5                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !1680
  %.sroa.3.0 = select i1 %i.b, ptr %i.f, ptr undef
  %.sroa.0.0 = select i1 %i.b, ptr %i.d, ptr null
  %i.g = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvXs_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engineNtB4_16DataFusionEngineNtCs8ulvy0Wg6Ot_12delta_kernel6Engine12json_handler(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @249, 1
  ret { ptr, ptr } %i.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvXs_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engineNtB4_16DataFusionEngineNtCs8ulvy0Wg6Ot_12delta_kernel6Engine15parquet_handler(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @250, 1
  ret { ptr, ptr } %i.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvXs_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engineNtB4_16DataFusionEngineNtCs8ulvy0Wg6Ot_12delta_kernel6Engine15storage_handler(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #18 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @251, 1
  ret { ptr, ptr } %i.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 144) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !1649

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 3 uses
  %i.j = add i64 %i.d, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 5 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !2207

_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i

_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14327
  %i.o = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !14327 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #42, !noalias !14327
  unreachable

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.k) #43, !noalias !14327
  unreachable

_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i
  %.sroa.0.0.i.i11.i.i = phi ptr [ %i.o, %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i11.i.i, i64 %i.i ; 3 uses
  %2 = icmp ult i64 %i.d, 8
  %i.r = lshr i64 %i.f, 3
  %i.s = mul nuw nsw i64 %i.r, 7
  %.sroa.07.0.i.i = select i1 %2, i64 %i.d, i64 %i.s
  store ptr %i.q, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.64.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14335)
  %i.t = load ptr, ptr %1, align 8, !alias.scope !14335, !noalias !14332, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.q, ptr nonnull align 1 %i.t, i64 %i.j, i1 false), !noalias !14337
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14338)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !14341, !noalias !14342, !noundef !4 ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  %i.x = load <16 x i8>, ptr %i.t, align 16, !noalias !14344
  %i.y = icmp sgt <16 x i8> %i.x, splat (i8 -1)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ac = ptrtoint ptr %i.t to i64
  br label %bb.h

bb.g:                                             ; preds = %.loopexit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.at, %bb.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEENCNvMsd_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.sroa.0.023.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.k, !noalias !14335

bb.h:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i, %.lr.ph.i
  %.sroa.0.023.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bb, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i ]
  %.sroa.14.022.i = phi i64 [ %i.v, %.lr.ph.i ], [ %i.aq, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i ]
  %.sroa.10.021.i = phi i16 [ %i.z, %.lr.ph.i ], [ %i.an, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i ] ; 2 uses
  %.sroa.6.020.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.sroa.6.1.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i ] ; 2 uses
  %.sroa.013.019.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.sroa.013.1.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i ] ; 2 uses
  %.not9.i.i = icmp eq i16 %.sroa.10.021.i, 0
  br i1 %.not9.i.i, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %i.ae = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %.sroa.6.020.i, %bb.h ] ; 2 uses
  %i.af = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %.sroa.013.019.i, %bb.h ]
  %i.ag = load <16 x i8>, ptr %i.ae, align 16, !noalias !14347
  %i.ah = icmp sgt <16 x i8> %i.ag, splat (i8 -1)
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 -2304 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.ah to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %bb.h
  %.sroa.013.1.i = phi ptr [ %.sroa.013.019.i, %bb.h ], [ %i.ai, %.lr.ph.i.i ] ; 2 uses
  %.sroa.6.1.i = phi ptr [ %.sroa.6.020.i, %bb.h ], [ %i.aj, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %.sroa.10.021.i, %bb.h ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.ak = add i16 %.lcssa.i.i, -1
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = and i16 %i.ak, %.lcssa.i.i
  %i.ao = sub nsw i64 0, %i.am
  %i.ap = getelementptr inbounds [144 x i8], ptr %.sroa.013.1.i, i64 %i.ao ; 3 uses
  %i.aq = add i64 %.sroa.14.022.i, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14337
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -144
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.ar)
          to label %.noexc.i unwind label %bb.g, !noalias !14337

.noexc.i:                                         ; preds = %.loopexit.i
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -112
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.ab, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.as)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.i, !noalias !14337

bb.i:                                             ; preds = %.noexc.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.a) #38
          to label %.body.i unwind label %bb.j, !noalias !14337

bb.j:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14337
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.noexc.i
  %i.av = ptrtoint ptr %i.ap to i64
  %i.aw = sub i64 %i.ac, %i.av
  %i.ax = sdiv exact i64 %i.aw, 144               ; 2 uses
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [144 x i8], ptr %i.q, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.ba, ptr noundef nonnull align 16 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !14337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14337
  %i.bb = add nsw i64 %i.ax, 1
  %i.bc = icmp eq i64 %i.aq, 0
  br i1 %i.bc, label %.loopexit, label %bb.h

bb.k:                                             ; preds = %.body.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14337
  unreachable

bb.l:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b, ptr noalias nonnull readonly captures(address, read_provenance) poison, i64 noundef 144, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.m

.loopexit:                                        ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i, %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  store i64 %i.v, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !14332, !noalias !14335
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !14335, !noalias !14332, !noundef !4
  store i64 %i.bf, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !14332, !noalias !14335
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.m:                                             ; preds = %.body
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEENtNtB2F_5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.d, i64 24) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.d, !prof !1649

bb.d:                                             ; preds = %bb.c
  %i.g = extractvalue { i64, i1 } %i.e, 0
  %i.h = add nuw i64 %i.g, 8
  %i.i = and i64 %i.h, -16                        ; 3 uses
  %i.j = add i64 %i.b, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 5 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !2207

_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i

_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14352
  %i.o = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !14352 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #42, !noalias !14352
  unreachable

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.k) #43, !noalias !14352
  unreachable

_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i
  %.sroa.0.0.i.i11.i.i = phi ptr [ %i.o, %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i11.i.i, i64 %i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14357)
  %i.r = load ptr, ptr %1, align 8, !alias.scope !14357, !noalias !14360, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.q, ptr nonnull align 1 %i.r, i64 %i.j, i1 false), !noalias !14362
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14363)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !14366, !noalias !14367, !noundef !4 ; 3 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  %i.v = load <16 x i8>, ptr %i.r, align 16, !noalias !14369
  %i.w = icmp sgt <16 x i8> %i.v, splat (i8 -1)
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.z = ptrtoint ptr %i.r to i64
  br label %bb.g
end_hunk_6
begin_hunk_7_@_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEENtNtB2F_5clone5Clone5cloneCs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.aw, label %.loopexit, label %bb.g

bb.j:                                             ; preds = %.loopexit, %bb.b
  ret void

.loopexit:                                        ; preds = %bb.i, %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !14357, !noalias !14360, !noundef !4
  store ptr %i.q, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ay, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.t, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1                          ; 2 uses
  %or.cond.i = icmp ugt i64 %i.d, 2305843009213693950
  br i1 %or.cond.i, label %bb.e, label %bb.d, !prof !14383

bb.d:                                             ; preds = %bb.c
  %i.e = shl nuw i64 %i.d, 3
  %i.f = add nuw i64 %i.e, 8
  %i.g = and i64 %i.f, -16                        ; 3 uses
  %i.h = add nsw i64 %i.b, 17                     ; 2 uses
  %i.i = add i64 %i.h, %i.g                       ; 5 uses
  %i.j = icmp ult i64 %i.i, %i.g
  %i.k = icmp ugt i64 %i.i, 9223372036854775792
  %or.cond.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !2207

_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i

_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14384
  %i.m = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !14384 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #42, !noalias !14384
  unreachable

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.i) #43, !noalias !14384
  unreachable

_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i
  %.sroa.0.0.i.i11.i.i = phi ptr [ %i.m, %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i11.i.i, i64 %i.g ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14389)
  %i.p = load ptr, ptr %1, align 8, !alias.scope !14389, !noalias !14392, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.o, ptr nonnull align 1 %i.p, i64 %i.h, i1 false), !noalias !14394
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14395)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !14398, !noalias !14399, !noundef !4 ; 3 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  %i.t = load <16 x i8>, ptr %i.p, align 16, !noalias !14401
  %i.u = icmp sgt <16 x i8> %i.t, splat (i8 -1)
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.x = ptrtoint ptr %i.p to i64
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.sroa.14.018.i = phi i64 [ %i.r, %.lr.ph.i ], [ %i.ak, %.loopexit.i ]
  %.sroa.10.017.i = phi i16 [ %i.v, %.lr.ph.i ], [ %i.ah, %.loopexit.i ] ; 2 uses
  %.sroa.6.016.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.sroa.6.1.i, %.loopexit.i ] ; 2 uses
  %.sroa.012.015.i = phi ptr [ %i.p, %.lr.ph.i ], [ %.sroa.012.1.i, %.loopexit.i ] ; 2 uses
  %.not9.i.i = icmp eq i16 %.sroa.10.017.i, 0
  br i1 %.not9.i.i, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.y = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.sroa.6.016.i, %bb.g ] ; 2 uses
  %i.z = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.012.015.i, %bb.g ]
  %i.aa = load <16 x i8>, ptr %i.y, align 16, !noalias !14404
  %i.ab = icmp sgt <16 x i8> %i.aa, splat (i8 -1)
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -128 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.ab to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %bb.g
  %.sroa.012.1.i = phi ptr [ %.sroa.012.015.i, %bb.g ], [ %i.ac, %.lr.ph.i.i ] ; 2 uses
  %.sroa.6.1.i = phi ptr [ %.sroa.6.016.i, %bb.g ], [ %i.ad, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %.sroa.10.017.i, %bb.g ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.ae = add i16 %.lcssa.i.i, -1
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = and i16 %i.ae, %.lcssa.i.i
  %i.ai = sub nsw i64 0, %i.ag
  %i.aj = getelementptr inbounds [8 x i8], ptr %.sroa.012.1.i, i64 %i.ai ; 2 uses
  %i.ak = add i64 %.sroa.14.018.i, -1             ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !14409, !noalias !14394, !noundef !4
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.x, %i.an
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8
  store i64 %i.am, ptr %i.as, align 8, !noalias !14394
  %i.at = icmp eq i64 %i.ak, 0
  br i1 %i.at, label %.loopexit, label %bb.g

bb.h:                                             ; preds = %.loopexit, %bb.b
  ret void

.loopexit:                                        ; preds = %.loopexit.i, %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !14389, !noalias !14392, !noundef !4
  store ptr %i.o, ptr %0, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.6.0..sroa_idx3, align 8
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.av, ptr %.sroa.8.0..sroa_idx5, align 8
  %.sroa.9.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %.sroa.9.0..sroa_idx7, align 8
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 48) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !1649

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 3 uses
  %i.j = add i64 %i.d, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 5 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !2207

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14412
  %i.o = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !14412 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !14412
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !14412
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.r, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.o, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  %2 = icmp ult i64 %i.d, 8
  %i.t = lshr i64 %i.f, 3
  %i.u = mul nuw nsw i64 %i.t, 7
  %.sroa.07.0.i.i = select i1 %2, i64 %i.d, i64 %i.u
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.s, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14425)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !14427, !noalias !14428, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.v, i64 %.pre-phi, i1 false), !noalias !14429
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !14427, !noalias !14428, !noundef !4 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  %i.z = load <16 x i8>, ptr %i.v, align 16, !noalias !14430
  %i.aa = icmp sgt <16 x i8> %i.z, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ae = ptrtoint ptr %i.v to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.av, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1W_EEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.sroa.012.028.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !14427

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i, %.lr.ph.i.i
  %.sroa.012.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bd, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ]
  %.sroa.1015.027.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.as, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ]
  %.sroa.013.026.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.sroa.6.025.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.sroa.814.024.i.i = phi i16 [ %i.ab, %.lr.ph.i.i ], [ %i.ap, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.024.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ag = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.sroa.6.025.i.i, %bb.j ] ; 2 uses
  %i.ah = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.013.026.i.i, %bb.j ]
  %i.ai = load <16 x i8>, ptr %i.ag, align 16, !noalias !14435
  %i.aj = icmp sgt <16 x i8> %i.ai, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 -768 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.aj to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.025.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.026.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.024.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i, i64 %i.aq ; 3 uses
  %i.as = add i64 %.sroa.1015.027.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14429
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -48
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at)
          to label %.noexc.i.i unwind label %bb.i, !noalias !14429

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.k, !noalias !14429

bb.k:                                             ; preds = %.noexc.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #38
          to label %.body.i.i unwind label %bb.l, !noalias !14429

bb.l:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14429
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.noexc.i.i
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = sub i64 %i.ae, %i.ax
  %i.az = sdiv exact i64 %i.ay, 48                ; 2 uses
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [48 x i8], ptr %.sroa.0.0, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !14429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14429
  %i.bd = add nsw i64 %i.az, 1
  %i.be = icmp eq i64 %i.as, 0
  br i1 %i.be, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %.body.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14429
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1n_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14428, !noalias !14427
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !14427, !noalias !14428, !noundef !4
  store i64 %i.bh, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !14428, !noalias !14427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 40) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !1649

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0
  %i.j = add nuw i64 %i.i, 8
  %i.k = and i64 %i.j, -16                        ; 3 uses
  %i.l = add i64 %i.d, 17                         ; 2 uses
  %i.m = add i64 %i.l, %i.k                       ; 5 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !2207

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14440
  %i.q = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !14440 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !14440
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.m), !noalias !14440
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.q, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.k
  %2 = icmp ult i64 %i.d, 8
  %i.v = lshr i64 %i.f, 3
  %i.w = mul nuw nsw i64 %i.v, 7
  %.sroa.07.0.i.i = select i1 %2, i64 %i.d, i64 %i.w
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.l, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14453)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !14455, !noalias !14456, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.x, i64 %.pre-phi, i1 false), !noalias !14457
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !14455, !noalias !14456, !noundef !4 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  %i.ab = load <16 x i8>, ptr %i.x, align 16, !noalias !14458
  %i.ac = icmp sgt <16 x i8> %i.ab, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ah = ptrtoint ptr %i.x to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.sroa.012.027.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !14455

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.012.027.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bh, %bb.l ]
  %.sroa.1015.026.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %i.av, %bb.l ]
  %.sroa.013.025.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i = phi i16 [ %i.ad, %.lr.ph.i.i ], [ %i.as, %bb.l ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.023.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.aj = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.sroa.6.024.i.i, %bb.j ] ; 2 uses
  %i.ak = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %.sroa.013.025.i.i, %bb.j ]
  %i.al = load <16 x i8>, ptr %i.aj, align 16, !noalias !14463
  %i.am = icmp sgt <16 x i8> %i.al, splat (i8 -1)
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 -640 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.am to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.024.i.i, %bb.j ], [ %i.ao, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.025.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.023.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ap = add i16 %.lcssa.i.i.i, -1
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = and i16 %i.ap, %.lcssa.i.i.i
  %i.at = sub nsw i64 0, %i.ar
  %i.au = getelementptr inbounds [40 x i8], ptr %.sroa.013.1.i.i, i64 %i.at ; 4 uses
  %i.av = add i64 %.sroa.1015.026.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14457
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14471)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aw)
          to label %.noexc.i.i unwind label %bb.i, !noalias !14457

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 -16
  %.val.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !14471, !noalias !14473, !nonnull !4, !noundef !4 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -8
  %.val1.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !14471, !noalias !14473 ; 2 uses
  %i.az = atomicrmw add ptr %.val.i.i.i, i64 1 monotonic, align 8, !noalias !14473
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  store ptr %.val.i.i.i, ptr %i.af, align 8, !alias.scope !14468, !noalias !14474
  store ptr %.val1.i.i.i, ptr %i.ag, align 8, !alias.scope !14468, !noalias !14474
  %i.bb = ptrtoint ptr %i.au to i64
  %i.bc = sub i64 %i.ah, %i.bb
  %i.bd = sdiv exact i64 %i.bc, 40                ; 2 uses
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [40 x i8], ptr %.sroa.0.0, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !14457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14457
  %i.bh = add nsw i64 %i.bd, 1
  %i.bi = icmp eq i64 %i.av, 0
  br i1 %i.bi, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14457
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14456, !noalias !14455
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !14455, !noalias !14456, !noundef !4
  store i64 %i.bl, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !14456, !noalias !14455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %i.ai
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 40) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !1649

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0
  %i.j = add nuw i64 %i.i, 8
  %i.k = and i64 %i.j, -16                        ; 3 uses
  %i.l = add i64 %i.d, 17                         ; 2 uses
  %i.m = add i64 %i.l, %i.k                       ; 5 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !2207

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14475
  %i.q = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !14475 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !14475
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.m), !noalias !14475
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.q, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.k
  %2 = icmp ult i64 %i.d, 8
  %i.v = lshr i64 %i.f, 3
  %i.w = mul nuw nsw i64 %i.v, 7
  %.sroa.07.0.i.i = select i1 %2, i64 %i.d, i64 %i.w
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.l, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14488)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !14490, !noalias !14491, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.x, i64 %.pre-phi, i1 false), !noalias !14492
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !14490, !noalias !14491, !noundef !4 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  %i.ab = load <16 x i8>, ptr %i.x, align 16, !noalias !14493
  %i.ac = icmp sgt <16 x i8> %i.ab, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ah = ptrtoint ptr %i.x to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.sroa.012.027.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !14490

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.012.027.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bh, %bb.l ]
  %.sroa.1015.026.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %i.av, %bb.l ]
  %.sroa.013.025.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i = phi i16 [ %i.ad, %.lr.ph.i.i ], [ %i.as, %bb.l ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.023.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.aj = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.sroa.6.024.i.i, %bb.j ] ; 2 uses
  %i.ak = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %.sroa.013.025.i.i, %bb.j ]
  %i.al = load <16 x i8>, ptr %i.aj, align 16, !noalias !14498
  %i.am = icmp sgt <16 x i8> %i.al, splat (i8 -1)
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 -640 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.am to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.024.i.i, %bb.j ], [ %i.ao, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.025.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.023.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ap = add i16 %.lcssa.i.i.i, -1
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = and i16 %i.ap, %.lcssa.i.i.i
  %i.at = sub nsw i64 0, %i.ar
  %i.au = getelementptr inbounds [40 x i8], ptr %.sroa.013.1.i.i, i64 %i.at ; 4 uses
  %i.av = add i64 %.sroa.1015.026.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14492
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14506)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aw)
          to label %.noexc.i.i unwind label %bb.i, !noalias !14492

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 -16
  %.val.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !14506, !noalias !14508, !nonnull !4, !noundef !4 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -8
  %.val1.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !14506, !noalias !14508 ; 2 uses
  %i.az = atomicrmw add ptr %.val.i.i.i, i64 1 monotonic, align 8, !noalias !14508
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  store ptr %.val.i.i.i, ptr %i.af, align 8, !alias.scope !14503, !noalias !14509
  store ptr %.val1.i.i.i, ptr %i.ag, align 8, !alias.scope !14503, !noalias !14509
  %i.bb = ptrtoint ptr %i.au to i64
  %i.bc = sub i64 %i.ah, %i.bb
  %i.bd = sdiv exact i64 %i.bc, 40                ; 2 uses
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [40 x i8], ptr %.sroa.0.0, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !14492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14492
  %i.bh = add nsw i64 %i.bd, 1
  %i.bi = icmp eq i64 %i.av, 0
  br i1 %i.bi, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14492
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14491, !noalias !14490
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !14490, !noalias !14491, !noundef !4
  store i64 %i.bl, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !14491, !noalias !14490
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %i.ai
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 3 uses
  %i.g = icmp ugt i64 %i.f, 576460752303423487
  br i1 %i.g, label %bb.e, label %bb.d, !prof !1649

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.f, 5                      ; 3 uses
  %i.i = add nsw i64 %i.d, 17                     ; 2 uses
  %i.j = add i64 %i.i, %i.h                       ; 5 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !2207

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14510
  %i.n = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !14510 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !14510
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.j), !noalias !14510
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.q, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.n, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.h
  %2 = icmp ult i64 %i.d, 8
  %i.s = lshr i64 %i.f, 3
  %i.t = mul nuw nsw i64 %i.s, 7
  %.sroa.07.0.i.i = select i1 %2, i64 %i.d, i64 %i.t
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.i, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14523)
  %i.u = load ptr, ptr %1, align 8, !alias.scope !14525, !noalias !14526, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.u, i64 %.pre-phi, i1 false), !noalias !14527
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !14525, !noalias !14526, !noundef !4 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  %i.y = load <16 x i8>, ptr %i.u, align 16, !noalias !14528
  %i.z = icmp sgt <16 x i8> %i.y, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = ptrtoint ptr %i.u to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.sroa.012.027.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !14525

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.012.027.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bc, %bb.l ]
  %.sroa.1015.026.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.ar, %bb.l ]
  %.sroa.013.025.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i = phi i16 [ %i.aa, %.lr.ph.i.i ], [ %i.ao, %bb.l ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.023.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.6.024.i.i, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.013.025.i.i, %bb.j ]
  %i.ah = load <16 x i8>, ptr %i.af, align 16, !noalias !14533
  %i.ai = icmp sgt <16 x i8> %i.ah, splat (i8 -1)
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -512 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ai to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.024.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.025.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.023.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.al = add i16 %.lcssa.i.i.i, -1
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = and i16 %i.al, %.lcssa.i.i.i
  %i.ap = sub nsw i64 0, %i.an
  %i.aq = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i, i64 %i.ap ; 3 uses
  %i.ar = add i64 %.sroa.1015.026.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14527
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14541)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as)
          to label %.noexc.i.i unwind label %bb.i, !noalias !14527

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %.val.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !14541, !noalias !14543, !nonnull !4, !noundef !4 ; 2 uses
  %i.au = atomicrmw add ptr %.val.i.i.i, i64 1 monotonic, align 8, !noalias !14543
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i
  store ptr %.val.i.i.i, ptr %i.ac, align 8, !alias.scope !14538, !noalias !14544
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = sub i64 %i.ad, %i.aw
  %i.ay = ashr exact i64 %i.ax, 5                 ; 2 uses
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [32 x i8], ptr %.sroa.0.0, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !14527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14527
  %i.bc = add nsw i64 %i.ay, 1
  %i.bd = icmp eq i64 %i.ar, 0
  br i1 %i.bd, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14527
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14526, !noalias !14525
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !14525, !noalias !14526, !noundef !4
  store i64 %i.bg, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !14526, !noalias !14525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 3 uses
  %i.g = icmp ugt i64 %i.f, 576460752303423487
  br i1 %i.g, label %bb.e, label %bb.d, !prof !1649

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.f, 5                      ; 3 uses
  %i.i = add nsw i64 %i.d, 17                     ; 2 uses
  %i.j = add i64 %i.i, %i.h                       ; 5 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !2207

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14545
  %i.n = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !14545 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !14545
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.j), !noalias !14545
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.q, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.n, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.h
  %2 = icmp ult i64 %i.d, 8
  %i.s = lshr i64 %i.f, 3
  %i.t = mul nuw nsw i64 %i.s, 7
  %.sroa.07.0.i.i = select i1 %2, i64 %i.d, i64 %i.t
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.i, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14558)
  %i.u = load ptr, ptr %1, align 8, !alias.scope !14560, !noalias !14561, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.u, i64 %.pre-phi, i1 false), !noalias !14562
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !14560, !noalias !14561, !noundef !4 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  %i.y = load <16 x i8>, ptr %i.u, align 16, !noalias !14563
  %i.z = icmp sgt <16 x i8> %i.y, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = ptrtoint ptr %i.u to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.sroa.012.027.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !14560

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.012.027.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bc, %bb.l ]
  %.sroa.1015.026.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.ar, %bb.l ]
  %.sroa.013.025.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i = phi i16 [ %i.aa, %.lr.ph.i.i ], [ %i.ao, %bb.l ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.023.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.6.024.i.i, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.013.025.i.i, %bb.j ]
  %i.ah = load <16 x i8>, ptr %i.af, align 16, !noalias !14568
  %i.ai = icmp sgt <16 x i8> %i.ah, splat (i8 -1)
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -512 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ai to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.024.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.025.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.023.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.al = add i16 %.lcssa.i.i.i, -1
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = and i16 %i.al, %.lcssa.i.i.i
  %i.ap = sub nsw i64 0, %i.an
  %i.aq = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i, i64 %i.ap ; 3 uses
  %i.ar = add i64 %.sroa.1015.026.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14562
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14576)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as)
          to label %.noexc.i.i unwind label %bb.i, !noalias !14562

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %.val.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !14576, !noalias !14578, !nonnull !4, !noundef !4 ; 2 uses
  %i.au = atomicrmw add ptr %.val.i.i.i, i64 1 monotonic, align 8, !noalias !14578
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i
  store ptr %.val.i.i.i, ptr %i.ac, align 8, !alias.scope !14573, !noalias !14579
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = sub i64 %i.ad, %i.aw
  %i.ay = ashr exact i64 %i.ax, 5                 ; 2 uses
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [32 x i8], ptr %.sroa.0.0, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !14562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14562
  %i.bc = add nsw i64 %i.ay, 1
  %i.bd = icmp eq i64 %i.ar, 0
  br i1 %i.bd, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14562
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14561, !noalias !14560
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !14560, !noalias !14561, !noundef !4
  store i64 %i.bg, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !14561, !noalias !14560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 3 uses
  %i.g = icmp ugt i64 %i.f, 576460752303423487
  br i1 %i.g, label %bb.e, label %bb.d, !prof !1649

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.f, 5                      ; 3 uses
  %i.i = add nsw i64 %i.d, 17                     ; 2 uses
  %i.j = add i64 %i.i, %i.h                       ; 5 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !2207

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14580
  %i.n = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !14580 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !14580
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.j), !noalias !14580
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.q, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.n, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.h
  %2 = icmp ult i64 %i.d, 8
  %i.s = lshr i64 %i.f, 3
  %i.t = mul nuw nsw i64 %i.s, 7
  %.sroa.07.0.i.i = select i1 %2, i64 %i.d, i64 %i.t
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.i, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14593)
  %i.u = load ptr, ptr %1, align 8, !alias.scope !14595, !noalias !14596, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.u, i64 %.pre-phi, i1 false), !noalias !14597
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !14595, !noalias !14596, !noundef !4 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  %i.y = load <16 x i8>, ptr %i.u, align 16, !noalias !14598
  %i.z = icmp sgt <16 x i8> %i.y, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = ptrtoint ptr %i.u to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.sroa.012.027.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !14595

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.012.027.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bc, %bb.l ]
  %.sroa.1015.026.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.ar, %bb.l ]
  %.sroa.013.025.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i = phi i16 [ %i.aa, %.lr.ph.i.i ], [ %i.ao, %bb.l ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.023.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.6.024.i.i, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.013.025.i.i, %bb.j ]
  %i.ah = load <16 x i8>, ptr %i.af, align 16, !noalias !14603
  %i.ai = icmp sgt <16 x i8> %i.ah, splat (i8 -1)
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -512 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ai to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.024.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.025.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.023.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.al = add i16 %.lcssa.i.i.i, -1
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = and i16 %i.al, %.lcssa.i.i.i
  %i.ap = sub nsw i64 0, %i.an
  %i.aq = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i, i64 %i.ap ; 3 uses
  %i.ar = add i64 %.sroa.1015.026.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14597
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14611)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as)
          to label %.noexc.i.i unwind label %bb.i, !noalias !14597

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %.val.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !14611, !noalias !14613, !nonnull !4, !noundef !4 ; 2 uses
  %i.au = atomicrmw add ptr %.val.i.i.i, i64 1 monotonic, align 8, !noalias !14613
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i
  store ptr %.val.i.i.i, ptr %i.ac, align 8, !alias.scope !14608, !noalias !14614
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = sub i64 %i.ad, %i.aw
  %i.ay = ashr exact i64 %i.ax, 5                 ; 2 uses
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [32 x i8], ptr %.sroa.0.0, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !14597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14597
  %i.bc = add nsw i64 %i.ay, 1
  %i.bd = icmp eq i64 %i.ar, 0
  br i1 %i.bd, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14597
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14596, !noalias !14595
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !14595, !noalias !14596, !noundef !4
  store i64 %i.bg, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !14596, !noalias !14595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 3 uses
  %i.g = icmp ugt i64 %i.f, 576460752303423487
  br i1 %i.g, label %bb.e, label %bb.d, !prof !1649

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.f, 5                      ; 3 uses
  %i.i = add nsw i64 %i.d, 17                     ; 2 uses
  %i.j = add i64 %i.i, %i.h                       ; 5 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !2207

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14615
  %i.n = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !14615 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !14615
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.j), !noalias !14615
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.q, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.n, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.h
  %2 = icmp ult i64 %i.d, 8
  %i.s = lshr i64 %i.f, 3
  %i.t = mul nuw nsw i64 %i.s, 7
  %.sroa.07.0.i.i = select i1 %2, i64 %i.d, i64 %i.t
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.i, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14628)
  %i.u = load ptr, ptr %1, align 8, !alias.scope !14630, !noalias !14631, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.u, i64 %.pre-phi, i1 false), !noalias !14632
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !14630, !noalias !14631, !noundef !4 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  %i.y = load <16 x i8>, ptr %i.u, align 16, !noalias !14633
  %i.z = icmp sgt <16 x i8> %i.y, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = ptrtoint ptr %i.u to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.sroa.012.027.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !14630

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.012.027.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bc, %bb.l ]
  %.sroa.1015.026.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.ar, %bb.l ]
  %.sroa.013.025.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i = phi i16 [ %i.aa, %.lr.ph.i.i ], [ %i.ao, %bb.l ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.023.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.6.024.i.i, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.013.025.i.i, %bb.j ]
  %i.ah = load <16 x i8>, ptr %i.af, align 16, !noalias !14638
  %i.ai = icmp sgt <16 x i8> %i.ah, splat (i8 -1)
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -512 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ai to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.024.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.025.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.023.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.al = add i16 %.lcssa.i.i.i, -1
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = and i16 %i.al, %.lcssa.i.i.i
  %i.ap = sub nsw i64 0, %i.an
  %i.aq = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i, i64 %i.ap ; 3 uses
  %i.ar = add i64 %.sroa.1015.026.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14632
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14646)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as)
          to label %.noexc.i.i unwind label %bb.i, !noalias !14632

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %.val.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !14646, !noalias !14648, !nonnull !4, !noundef !4 ; 2 uses
  %i.au = atomicrmw add ptr %.val.i.i.i, i64 1 monotonic, align 8, !noalias !14648
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i
  store ptr %.val.i.i.i, ptr %i.ac, align 8, !alias.scope !14643, !noalias !14649
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = sub i64 %i.ad, %i.aw
  %i.ay = ashr exact i64 %i.ax, 5                 ; 2 uses
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [32 x i8], ptr %.sroa.0.0, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !14632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14632
  %i.bc = add nsw i64 %i.ay, 1
  %i.bd = icmp eq i64 %i.ar, 0
  br i1 %i.bd, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14632
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14631, !noalias !14630
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !14630, !noalias !14631, !noundef !4
  store i64 %i.bg, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !14631, !noalias !14630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 3 uses
  %i.g = icmp ugt i64 %i.f, 576460752303423487
  br i1 %i.g, label %bb.e, label %bb.d, !prof !1649

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.f, 5                      ; 3 uses
  %i.i = add nsw i64 %i.d, 17                     ; 2 uses
  %i.j = add i64 %i.i, %i.h                       ; 5 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !2207

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14650
  %i.n = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !14650 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !14650
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.j), !noalias !14650
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.q, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.n, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.h
  %2 = icmp ult i64 %i.d, 8
  %i.s = lshr i64 %i.f, 3
  %i.t = mul nuw nsw i64 %i.s, 7
  %.sroa.07.0.i.i = select i1 %2, i64 %i.d, i64 %i.t
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.i, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14663)
  %i.u = load ptr, ptr %1, align 8, !alias.scope !14665, !noalias !14666, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.u, i64 %.pre-phi, i1 false), !noalias !14667
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !14665, !noalias !14666, !noundef !4 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  %i.y = load <16 x i8>, ptr %i.u, align 16, !noalias !14668
  %i.z = icmp sgt <16 x i8> %i.y, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = ptrtoint ptr %i.u to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.sroa.012.027.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !14665

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.012.027.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bc, %bb.l ]
  %.sroa.1015.026.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.ar, %bb.l ]
  %.sroa.013.025.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i = phi i16 [ %i.aa, %.lr.ph.i.i ], [ %i.ao, %bb.l ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.023.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.6.024.i.i, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.013.025.i.i, %bb.j ]
  %i.ah = load <16 x i8>, ptr %i.af, align 16, !noalias !14673
  %i.ai = icmp sgt <16 x i8> %i.ah, splat (i8 -1)
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -512 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ai to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.024.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.025.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.023.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.al = add i16 %.lcssa.i.i.i, -1
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = and i16 %i.al, %.lcssa.i.i.i
  %i.ap = sub nsw i64 0, %i.an
  %i.aq = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i, i64 %i.ap ; 3 uses
  %i.ar = add i64 %.sroa.1015.026.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14667
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14681)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as)
          to label %.noexc.i.i unwind label %bb.i, !noalias !14667

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %.val.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !14681, !noalias !14683, !nonnull !4, !noundef !4 ; 2 uses
  %i.au = atomicrmw add ptr %.val.i.i.i, i64 1 monotonic, align 8, !noalias !14683
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i
  store ptr %.val.i.i.i, ptr %i.ac, align 8, !alias.scope !14678, !noalias !14684
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = sub i64 %i.ad, %i.aw
  %i.ay = ashr exact i64 %i.ax, 5                 ; 2 uses
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [32 x i8], ptr %.sroa.0.0, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !14667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14667
  %i.bc = add nsw i64 %i.ay, 1
  %i.bd = icmp eq i64 %i.ar, 0
  br i1 %i.bd, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14667
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14666, !noalias !14665
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !14665, !noalias !14666, !noundef !4
  store i64 %i.bg, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !14666, !noalias !14665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 3 uses
  %i.g = icmp ugt i64 %i.f, 576460752303423487
  br i1 %i.g, label %bb.e, label %bb.d, !prof !1649

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.f, 5                      ; 3 uses
  %i.i = add nsw i64 %i.d, 17                     ; 2 uses
  %i.j = add i64 %i.i, %i.h                       ; 5 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !2207

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14685
  %i.n = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !14685 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !14685
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.j), !noalias !14685
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.q, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.n, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.h
  %2 = icmp ult i64 %i.d, 8
  %i.s = lshr i64 %i.f, 3
  %i.t = mul nuw nsw i64 %i.s, 7
  %.sroa.07.0.i.i = select i1 %2, i64 %i.d, i64 %i.t
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.i, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14698)
  %i.u = load ptr, ptr %1, align 8, !alias.scope !14700, !noalias !14701, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.u, i64 %.pre-phi, i1 false), !noalias !14702
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !14700, !noalias !14701, !noundef !4 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  %i.y = load <16 x i8>, ptr %i.u, align 16, !noalias !14703
  %i.z = icmp sgt <16 x i8> %i.y, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = ptrtoint ptr %i.u to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.sroa.012.027.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !14700

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.012.027.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bc, %bb.l ]
  %.sroa.1015.026.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.ar, %bb.l ]
  %.sroa.013.025.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i = phi i16 [ %i.aa, %.lr.ph.i.i ], [ %i.ao, %bb.l ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.023.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.6.024.i.i, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.013.025.i.i, %bb.j ]
  %i.ah = load <16 x i8>, ptr %i.af, align 16, !noalias !14708
  %i.ai = icmp sgt <16 x i8> %i.ah, splat (i8 -1)
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -512 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ai to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.024.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.025.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.023.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.al = add i16 %.lcssa.i.i.i, -1
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = and i16 %i.al, %.lcssa.i.i.i
  %i.ap = sub nsw i64 0, %i.an
  %i.aq = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i, i64 %i.ap ; 3 uses
  %i.ar = add i64 %.sroa.1015.026.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14702
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14716)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as)
          to label %.noexc.i.i unwind label %bb.i, !noalias !14702

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %.val.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !14716, !noalias !14718, !nonnull !4, !noundef !4 ; 2 uses
  %i.au = atomicrmw add ptr %.val.i.i.i, i64 1 monotonic, align 8, !noalias !14718
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i
  store ptr %.val.i.i.i, ptr %i.ac, align 8, !alias.scope !14713, !noalias !14719
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = sub i64 %i.ad, %i.aw
  %i.ay = ashr exact i64 %i.ax, 5                 ; 2 uses
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [32 x i8], ptr %.sroa.0.0, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !14702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14702
  %i.bc = add nsw i64 %i.ay, 1
  %i.bd = icmp eq i64 %i.ar, 0
  br i1 %i.bd, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14702
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14701, !noalias !14700
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !14700, !noalias !14701, !noundef !4
  store i64 %i.bg, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !14701, !noalias !14700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtB1w_5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 48) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !1649

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 3 uses
  %i.j = add i64 %i.d, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 5 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !2207

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14720
  %i.o = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !14720 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !14720
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !14720
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.r, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.o, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  %2 = icmp ult i64 %i.d, 8
  %i.t = lshr i64 %i.f, 3
  %i.u = mul nuw nsw i64 %i.t, 7
  %.sroa.07.0.i.i = select i1 %2, i64 %i.d, i64 %i.u
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.s, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14733)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !14735, !noalias !14736, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.v, i64 %.pre-phi, i1 false), !noalias !14737
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !14735, !noalias !14736, !noundef !4 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  %i.z = load <16 x i8>, ptr %i.v, align 16, !noalias !14738
  %i.aa = icmp sgt <16 x i8> %i.z, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ae = ptrtoint ptr %i.v to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.m, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.aw, %bb.m ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1W_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.sroa.012.028.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.o, !noalias !14735

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i, %.lr.ph.i.i
  %.sroa.012.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.be, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ]
  %.sroa.1015.027.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.as, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ]
  %.sroa.013.026.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.sroa.6.025.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.sroa.814.024.i.i = phi i16 [ %i.ab, %.lr.ph.i.i ], [ %i.ap, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.024.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ag = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.sroa.6.025.i.i, %bb.j ] ; 2 uses
  %i.ah = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.013.026.i.i, %bb.j ]
  %i.ai = load <16 x i8>, ptr %i.ag, align 16, !noalias !14743
  %i.aj = icmp sgt <16 x i8> %i.ai, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 -768 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.aj to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.025.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.026.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.024.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i, i64 %i.aq ; 3 uses
  %i.as = add i64 %.sroa.1015.027.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14737
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14751)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at)
          to label %.noexc.i.i unwind label %bb.i, !noalias !14737

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14756)
  %i.av = load i64, ptr %i.au, align 8, !range !2051, !alias.scope !14758, !noalias !14759, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.av, -9223372036854775808
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.m, !noalias !14737

bb.l:                                             ; preds = %.noexc.i.i
  store i64 -9223372036854775808, ptr %i.ad, align 8, !alias.scope !14760, !noalias !14761
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #38
          to label %.body.i.i unwind label %bb.n, !noalias !14737

bb.n:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14737
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.l, %bb.k
  %i.ay = ptrtoint ptr %i.ar to i64
  %i.az = sub i64 %i.ae, %i.ay
  %i.ba = sdiv exact i64 %i.az, 48                ; 2 uses
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [48 x i8], ptr %.sroa.0.0, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !14737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14737
  %i.be = add nsw i64 %i.ba, 1
  %i.bf = icmp eq i64 %i.as, 0
  br i1 %i.bf, label %.loopexit, label %bb.j

bb.o:                                             ; preds = %.body.i.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14737
  unreachable

bb.p:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1n_EEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.r unwind label %bb.q

.loopexit:                                        ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14736, !noalias !14735
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !14735, !noalias !14736, !noundef !4
  store i64 %i.bi, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !14736, !noalias !14735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.q:                                             ; preds = %.body
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.r:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 144) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !1649

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 3 uses
  %i.j = add i64 %i.d, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 5 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !2207

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14762
  %i.o = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !14762 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !14762
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !14762
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.r, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.o, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  %2 = icmp ult i64 %i.d, 8
  %i.t = lshr i64 %i.f, 3
  %i.u = mul nuw nsw i64 %i.t, 7
  %.sroa.07.0.i.i = select i1 %2, i64 %i.d, i64 %i.u
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.s, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14775)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !14777, !noalias !14778, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.v, i64 %.pre-phi, i1 false), !noalias !14779
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !14777, !noalias !14778, !noundef !4 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  %i.z = load <16 x i8>, ptr %i.v, align 16, !noalias !14780
  %i.aa = icmp sgt <16 x i8> %i.z, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ae = ptrtoint ptr %i.v to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.av, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.sroa.012.028.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !14777

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i, %.lr.ph.i.i
  %.sroa.012.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bd, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ]
  %.sroa.1015.027.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.as, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ]
  %.sroa.013.026.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.sroa.6.025.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.sroa.814.024.i.i = phi i16 [ %i.ab, %.lr.ph.i.i ], [ %i.ap, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.024.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ag = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.sroa.6.025.i.i, %bb.j ] ; 2 uses
  %i.ah = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.013.026.i.i, %bb.j ]
  %i.ai = load <16 x i8>, ptr %i.ag, align 16, !noalias !14785
  %i.aj = icmp sgt <16 x i8> %i.ai, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 -2304 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.aj to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.025.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.026.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.024.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [144 x i8], ptr %.sroa.013.1.i.i, i64 %i.aq ; 3 uses
  %i.as = add i64 %.sroa.1015.027.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14779
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -144
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.at)
          to label %.noexc.i.i unwind label %bb.i, !noalias !14779

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -112
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.ad, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.au)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.k, !noalias !14779

bb.k:                                             ; preds = %.noexc.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.a) #38
          to label %.body.i.i unwind label %bb.l, !noalias !14779

bb.l:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14779
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.noexc.i.i
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = sub i64 %i.ae, %i.ax
  %i.az = sdiv exact i64 %i.ay, 144               ; 2 uses
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [144 x i8], ptr %.sroa.0.0, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.bc, ptr noundef nonnull align 16 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !14779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14779
  %i.bd = add nsw i64 %i.az, 1
  %i.be = icmp eq i64 %i.as, 0
  br i1 %i.be, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %.body.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14779
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.o

.loopexit:                                        ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14778, !noalias !14777
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !14777, !noalias !14778, !noundef !4
  store i64 %i.bh, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !14778, !noalias !14777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 6 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = add i64 %i.e, 1                          ; 2 uses
  %i.h = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.g, i64 56) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  br i1 %i.i, label %bb.e, label %bb.d, !prof !1649

bb.d:                                             ; preds = %bb.c
  %i.j = extractvalue { i64, i1 } %i.h, 0
  %i.k = add nuw i64 %i.j, 8
  %i.l = and i64 %i.k, -16                        ; 3 uses
  %i.m = add i64 %i.e, 17                         ; 2 uses
  %i.n = add i64 %i.m, %i.l                       ; 5 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !2207

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14790
  %i.r = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !14790 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !14790
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.u = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !14790
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.u, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.r, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.l
  %2 = icmp ult i64 %i.e, 8
  %i.w = lshr i64 %i.g, 3
  %i.x = mul nuw nsw i64 %i.w, 7
  %.sroa.07.0.i.i = select i1 %2, i64 %i.e, i64 %i.x
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.e, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.v, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14803)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !14805, !noalias !14806, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.y, i64 %.pre-phi, i1 false), !noalias !14807
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !14805, !noalias !14806, !noundef !4 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  %i.ac = load <16 x i8>, ptr %i.y, align 16, !noalias !14808
  %i.ad = icmp sgt <16 x i8> %i.ac, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aj = ptrtoint ptr %i.y to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.v, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ak, %bb.i ], [ %i.bh, %bb.v ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.sroa.012.030.i.i, ptr nonnull align 8 dereferenceable(32) %i.c) #38
          to label %.body unwind label %bb.x, !noalias !14805

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i, %.lr.ph.i.i
  %.sroa.012.030.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bp, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ]
  %.sroa.1015.029.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %i.ax, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ]
  %.sroa.013.028.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.sroa.6.027.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.sroa.814.026.i.i = phi i16 [ %i.ae, %.lr.ph.i.i ], [ %i.au, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.026.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.al = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.sroa.6.027.i.i, %bb.j ] ; 2 uses
  %i.am = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %.sroa.013.028.i.i, %bb.j ]
  %i.an = load <16 x i8>, ptr %i.al, align 16, !noalias !14813
  %i.ao = icmp sgt <16 x i8> %i.an, splat (i8 -1)
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 -896 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ao to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.027.i.i, %bb.j ], [ %i.aq, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.028.i.i, %bb.j ], [ %i.ap, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.026.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ar = add i16 %.lcssa.i.i.i, -1
  %i.as = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = and i16 %i.ar, %.lcssa.i.i.i
  %i.av = sub nsw i64 0, %i.at
  %i.aw = getelementptr inbounds [56 x i8], ptr %.sroa.013.1.i.i, i64 %i.av ; 7 uses
  %i.ax = add i64 %.sroa.1015.029.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14807
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -56
  call void @llvm.experimental.noalias.scope.decl(metadata !14818)
  call void @llvm.experimental.noalias.scope.decl(metadata !14821)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ay)
          to label %.noexc.i.i unwind label %bb.i, !noalias !14807

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 -32 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14823)
  call void @llvm.experimental.noalias.scope.decl(metadata !14826)
  %i.ba = load i8, ptr %i.az, align 8, !range !4008, !alias.scope !14828, !noalias !14829, !noundef !4 ; 3 uses
  %i.bb = add nsw i8 %i.ba, -6
  %i.bc = icmp samesign ugt i8 %i.ba, 5
  %narrow.i.i.i.i = select i1 %i.bc, i8 %i.bb, i8 3
  switch i8 %narrow.i.i.i.i, label %bb.k [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
  ]

bb.k:                                             ; preds = %.noexc.i.i
  unreachable

bb.l:                                             ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.az, i64 32, i1 false), !alias.scope !14830, !noalias !14807
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i

bb.m:                                             ; preds = %.noexc.i.i
  %i.bd = getelementptr inbounds i8, ptr %i.aw, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd)
          to label %.noexc.i.i.i unwind label %bb.v, !noalias !14807

.noexc.i.i.i:                                     ; preds = %bb.m
  store i8 7, ptr %i.ag, align 8, !alias.scope !14831, !noalias !14832
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i

bb.n:                                             ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.az, i64 32, i1 false), !alias.scope !14830, !noalias !14807
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i

bb.o:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14833
  call void @llvm.experimental.noalias.scope.decl(metadata !14834)
  switch i8 %i.ba, label %default.unreachable1.i.i.i.i.i [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
    i8 4, label %bb.t
    i8 5, label %bb.u
  ]

default.unreachable1.i.i.i.i.i:                   ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %i.a, align 8, !alias.scope !14837, !noalias !14839
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.az, i64 32, i1 false), !alias.scope !14840, !noalias !14829
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

bb.r:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.az, i64 32, i1 false), !alias.scope !14840, !noalias !14829
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

bb.s:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds i8, ptr %i.aw, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be)
          to label %.noexc1.i.i.i unwind label %bb.v, !noalias !14841

.noexc1.i.i.i:                                    ; preds = %bb.s
  store i8 3, ptr %i.a, align 8, !alias.scope !14837, !noalias !14839
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

bb.t:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds i8, ptr %i.aw, i64 -24
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf)
          to label %.noexc2.i.i.i unwind label %bb.v, !noalias !14841

.noexc2.i.i.i:                                    ; preds = %bb.t
  store i8 4, ptr %i.a, align 8, !alias.scope !14837, !noalias !14839
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

bb.u:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds i8, ptr %i.aw, i64 -24
  invoke void @_RNvXs0_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg)
          to label %.noexc3.i.i.i unwind label %bb.v, !noalias !14841

.noexc3.i.i.i:                                    ; preds = %bb.u
  store i8 5, ptr %i.a, align 8, !alias.scope !14837, !noalias !14839
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %.noexc3.i.i.i, %.noexc2.i.i.i, %.noexc1.i.i.i, %bb.r, %bb.q, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !14832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14833
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.m
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #38
          to label %.body.i.i unwind label %bb.w, !noalias !14807

bb.w:                                             ; preds = %bb.v
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14807
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i, %bb.n, %.noexc.i.i.i, %bb.l
  %i.bj = ptrtoint ptr %i.aw to i64
  %i.bk = sub i64 %i.aj, %i.bj
  %i.bl = sdiv exact i64 %i.bk, 56                ; 2 uses
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds [56 x i8], ptr %.sroa.0.0, i64 %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !14807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14807
  %i.bp = add nsw i64 %i.bl, 1
  %i.bq = icmp eq i64 %i.ax, 0
  br i1 %i.bq, label %.loopexit, label %bb.j

bb.x:                                             ; preds = %.body.i.i
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14807
  unreachable

bb.y:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.c) #38
          to label %bb.aa unwind label %bb.z

.loopexit:                                        ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14806, !noalias !14805
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !14805, !noalias !14806, !noundef !4
  store i64 %i.bt, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !14806, !noalias !14805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.y

bb.z:                                             ; preds = %.body
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.aa:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [136 x i8], align 8               ; 14 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 6 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = add i64 %i.h, 1                          ; 2 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.j, i64 136) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.e, label %bb.d, !prof !1649

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = add nuw i64 %i.m, 8
  %i.o = and i64 %i.n, -16                        ; 3 uses
  %i.p = add i64 %i.h, 17                         ; 2 uses
  %i.q = add i64 %i.p, %i.o                       ; 5 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %i.s = icmp ugt i64 %i.q, 9223372036854775792
  %or.cond.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !2207

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14842
  %i.u = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !14842 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !14842
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.x = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.q), !noalias !14842
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.x, %bb.f ], [ %i.w, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.u, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.o
  %2 = icmp ult i64 %i.h, 8
  %i.z = lshr i64 %i.j, 3
  %i.aa = mul nuw nsw i64 %i.z, 7
  %.sroa.07.0.i.i = select i1 %2, i64 %i.h, i64 %i.aa
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.p, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.h, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.y, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14855)
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !14857, !noalias !14858, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.ab, i64 %.pre-phi, i1 false), !noalias !14859
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !14857, !noalias !14858, !noundef !4 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  %i.af = load <16 x i8>, ptr %i.ab, align 16, !noalias !14860
  %i.ag = icmp sgt <16 x i8> %i.af, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 129
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ar = ptrtoint ptr %i.ab to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.body.i.i.i, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.as, %bb.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.sroa.012.032.i.i, ptr nonnull align 8 dereferenceable(32) %i.f) #38
          to label %.body unwind label %bb.z, !noalias !14857

bb.j:                                             ; preds = %bb.y, %.lr.ph.i.i
  %.sroa.012.032.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ci, %bb.y ]
  %.sroa.1015.031.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %i.bf, %bb.y ]
  %.sroa.013.030.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.y ] ; 2 uses
  %.sroa.6.029.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.y ] ; 2 uses
  %.sroa.814.028.i.i = phi i16 [ %i.ah, %.lr.ph.i.i ], [ %i.bc, %bb.y ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.028.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.at = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.sroa.6.029.i.i, %bb.j ] ; 2 uses
  %i.au = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %.sroa.013.030.i.i, %bb.j ]
  %i.av = load <16 x i8>, ptr %i.at, align 16, !noalias !14865
  %i.aw = icmp sgt <16 x i8> %i.av, splat (i8 -1)
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 -2176 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.aw to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.029.i.i, %bb.j ], [ %i.ay, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.030.i.i, %bb.j ], [ %i.ax, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.028.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.az = add i16 %.lcssa.i.i.i, -1
  %i.ba = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.bb = zext nneg i16 %i.ba to i64
  %i.bc = and i16 %i.az, %.lcssa.i.i.i
  %i.bd = sub nsw i64 0, %i.bb
  %i.be = getelementptr inbounds [136 x i8], ptr %.sroa.013.1.i.i, i64 %i.bd ; 10 uses
  %i.bf = add i64 %.sroa.1015.031.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14859
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14873)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(136) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.bg)
          to label %.noexc.i.i unwind label %bb.i, !noalias !14859

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14878)
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 -8
  %i.bi = load i8, ptr %i.bh, align 8, !range !1966, !alias.scope !14880, !noalias !14881, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14882
  %i.bj = getelementptr inbounds i8, ptr %i.be, i64 -80 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !range !2051, !alias.scope !14880, !noalias !14881, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.bk, -9223372036854775808
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj)
          to label %.noexc.i.i.i unwind label %bb.w, !noalias !14883

bb.l:                                             ; preds = %.noexc.i.i
  store i64 -9223372036854775808, ptr %i.d, align 8, !noalias !14882
  br label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.l, %bb.k
  %i.bl = getelementptr inbounds i8, ptr %i.be, i64 -7
  %i.bm = load i8, ptr %i.bl, align 1, !range !1966, !alias.scope !14880, !noalias !14881, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14882
  %i.bn = getelementptr inbounds i8, ptr %i.be, i64 -56 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !range !2051, !alias.scope !14880, !noalias !14881, !noundef !4
  %.not4.i.i.i.i = icmp eq i64 %i.bo, -9223372036854775808
  br i1 %.not4.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14882
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn)
          to label %bb.r unwind label %bb.q, !noalias !14881

bb.n:                                             ; preds = %.noexc.i.i.i
  store i64 -9223372036854775808, ptr %i.c, align 8, !noalias !14882
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %i.bp = getelementptr inbounds i8, ptr %i.be, i64 -32 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !range !2051, !alias.scope !14880, !noalias !14881, !noundef !4
  %.not5.i.i.i.i = icmp eq i64 %i.bq, -9223372036854775808
  br i1 %.not5.i.i.i.i, label %bb.y, label %bb.s

bb.p:                                             ; preds = %bb.t, %bb.q
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.bs, %bb.t ], [ %i.br, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.d) #38
          to label %.body.i.i.i unwind label %bb.v, !noalias !14881

bb.q:                                             ; preds = %bb.m
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !14882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14882
  br label %bb.o

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14882
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bp)
          to label %bb.u unwind label %bb.t, !noalias !14881

bb.t:                                             ; preds = %bb.s
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.c) #38
          to label %bb.p unwind label %bb.v, !noalias !14881

bb.u:                                             ; preds = %bb.s
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !14882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i.i, i64 16, i1 false), !noalias !14882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14882
  br label %bb.y

bb.v:                                             ; preds = %bb.t, %bb.p
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14881
  unreachable

bb.w:                                             ; preds = %bb.k
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.w, %bb.p
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bu, %bb.w ], [ %.pn.i.i.i.i, %bb.p ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.e) #38
          to label %.body.i.i unwind label %bb.x, !noalias !14859

bb.x:                                             ; preds = %.body.i.i.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14859
  unreachable

bb.y:                                             ; preds = %bb.u, %bb.o
  %.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i, %bb.u ], [ -9223372036854775808, %bb.o ]
  %i.bw = getelementptr inbounds i8, ptr %i.be, i64 -112
  %i.bx = load i64, ptr %i.bw, align 8, !range !3, !alias.scope !14880, !noalias !14881, !noundef !4
  %i.by = getelementptr inbounds i8, ptr %i.be, i64 -104
  %i.bz = load double, ptr %i.by, align 8, !alias.scope !14880, !noalias !14881
  %i.ca = getelementptr inbounds i8, ptr %i.be, i64 -96
  store i8 %i.bi, ptr %i.ak, align 8, !alias.scope !14884, !noalias !14885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !14885
  store i8 %i.bm, ptr %i.am, align 1, !alias.scope !14884, !noalias !14885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !14885
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.ao, align 8, !alias.scope !14884, !noalias !14885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !14885
  store i64 %i.bx, ptr %i.aj, align 8, !alias.scope !14884, !noalias !14885
  store double %i.bz, ptr %i.ap, align 8, !alias.scope !14884, !noalias !14885
  %i.cb = load <2 x i64>, ptr %i.ca, align 8, !alias.scope !14880, !noalias !14881
  store <2 x i64> %i.cb, ptr %i.aq, align 8, !alias.scope !14884, !noalias !14885
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14882
  %i.cc = ptrtoint ptr %i.be to i64
  %i.cd = sub i64 %i.ar, %i.cc
  %i.ce = sdiv exact i64 %i.cd, 136               ; 2 uses
  %i.cf = sub nsw i64 0, %i.ce
  %i.cg = getelementptr inbounds [136 x i8], ptr %.sroa.0.0, i64 %i.cf
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ch, ptr noundef nonnull align 8 dereferenceable(136) %i.e, i64 136, i1 false), !noalias !14859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14859
  %i.ci = add nsw i64 %i.ce, 1
  %i.cj = icmp eq i64 %i.bf, 0
  br i1 %i.cj, label %.loopexit, label %bb.j

bb.z:                                             ; preds = %.body.i.i
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14859
  unreachable

bb.aa:                                            ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.ab

.loopexit:                                        ; preds = %bb.y, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14858, !noalias !14857
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !14857, !noalias !14858, !noundef !4
  store i64 %i.cm, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !14858, !noalias !14857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aa

bb.ab:                                            ; preds = %.body
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 48) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !1649

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 3 uses
  %i.j = add i64 %i.d, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 5 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !2207

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14886
  %i.o = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !14886 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !14886
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !14886
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.r, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.o, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  %2 = icmp ult i64 %i.d, 8
  %i.t = lshr i64 %i.f, 3
  %i.u = mul nuw nsw i64 %i.t, 7
  %.sroa.07.0.i.i = select i1 %2, i64 %i.d, i64 %i.u
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.s, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14899)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !14901, !noalias !14902, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.v, i64 %.pre-phi, i1 false), !noalias !14903
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !14901, !noalias !14902, !noundef !4 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  %i.z = load <16 x i8>, ptr %i.v, align 16, !noalias !14904
  %i.aa = icmp sgt <16 x i8> %i.z, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ae = ptrtoint ptr %i.v to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.av, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.sroa.012.028.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !14901

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i, %.lr.ph.i.i
  %.sroa.012.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bd, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ]
  %.sroa.1015.027.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.as, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ]
  %.sroa.013.026.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.sroa.6.025.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.sroa.814.024.i.i = phi i16 [ %i.ab, %.lr.ph.i.i ], [ %i.ap, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.024.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ag = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.sroa.6.025.i.i, %bb.j ] ; 2 uses
  %i.ah = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.013.026.i.i, %bb.j ]
  %i.ai = load <16 x i8>, ptr %i.ag, align 16, !noalias !14909
  %i.aj = icmp sgt <16 x i8> %i.ai, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 -768 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.aj to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.025.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.026.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.024.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i, i64 %i.aq ; 3 uses
  %i.as = add i64 %.sroa.1015.027.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14903
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -48
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at)
          to label %.noexc.i.i unwind label %bb.i, !noalias !14903

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.k, !noalias !14903

bb.k:                                             ; preds = %.noexc.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #38
          to label %.body.i.i unwind label %bb.l, !noalias !14903

bb.l:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14903
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.noexc.i.i
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = sub i64 %i.ae, %i.ax
  %i.az = sdiv exact i64 %i.ay, 48                ; 2 uses
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [48 x i8], ptr %.sroa.0.0, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !14903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14903
  %i.bd = add nsw i64 %i.az, 1
  %i.be = icmp eq i64 %i.as, 0
  br i1 %i.be, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %.body.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14903
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14902, !noalias !14901
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !14901, !noalias !14902, !noundef !4
  store i64 %i.bh, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !14902, !noalias !14901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 6 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.h = add i64 %i.f, 1                          ; 2 uses
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 72) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !1649

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { i64, i1 } %i.i, 0
  %i.l = add nuw i64 %i.k, 8
  %i.m = and i64 %i.l, -16                        ; 3 uses
  %i.n = add i64 %i.f, 17                         ; 2 uses
  %i.o = add i64 %i.n, %i.m                       ; 5 uses
  %i.p = icmp ult i64 %i.o, %i.m
  %i.q = icmp ugt i64 %i.o, 9223372036854775792
  %or.cond.i.i = or i1 %i.p, %i.q
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !2207

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.r = icmp eq i64 %i.o, 0
  br i1 %i.r, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14914
  %i.s = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !14914 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !14914
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.v = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.o), !noalias !14914
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.v, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.s, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.m
  %2 = icmp ult i64 %i.f, 8
  %i.x = lshr i64 %i.h, 3
  %i.y = mul nuw nsw i64 %i.x, 7
  %.sroa.07.0.i.i = select i1 %2, i64 %i.f, i64 %i.y
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.n, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.f, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.w, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14927)
  %i.z = load ptr, ptr %1, align 8, !alias.scope !14929, !noalias !14930, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.z, i64 %.pre-phi, i1 false), !noalias !14931
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !14929, !noalias !14930, !noundef !4 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  %i.ad = load <16 x i8>, ptr %i.z, align 16, !noalias !14932
  %i.ae = icmp sgt <16 x i8> %i.ad, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.5.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.aj = ptrtoint ptr %i.z to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.body.i.i.i, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ak, %bb.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.sroa.012.030.i.i, ptr nonnull align 8 dereferenceable(32) %i.d) #38
          to label %.body unwind label %bb.r, !noalias !14929

bb.j:                                             ; preds = %bb.q, %.lr.ph.i.i
  %.sroa.012.030.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bm, %bb.q ]
  %.sroa.1015.029.i.i = phi i64 [ %i.ab, %.lr.ph.i.i ], [ %i.ax, %bb.q ]
  %.sroa.013.028.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.q ] ; 2 uses
  %.sroa.6.027.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.q ] ; 2 uses
  %.sroa.814.026.i.i = phi i16 [ %i.af, %.lr.ph.i.i ], [ %i.au, %bb.q ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.026.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.al = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.sroa.6.027.i.i, %bb.j ] ; 2 uses
  %i.am = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %.sroa.013.028.i.i, %bb.j ]
  %i.an = load <16 x i8>, ptr %i.al, align 16, !noalias !14937
  %i.ao = icmp sgt <16 x i8> %i.an, splat (i8 -1)
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 -1152 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ao to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.027.i.i, %bb.j ], [ %i.aq, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.028.i.i, %bb.j ], [ %i.ap, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.026.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ar = add i16 %.lcssa.i.i.i, -1
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = and i16 %i.ar, %.lcssa.i.i.i
  %i.av = sub nsw i64 0, %i.at
  %i.aw = getelementptr inbounds [72 x i8], ptr %.sroa.013.1.i.i, i64 %i.av ; 4 uses
  %i.ax = add i64 %.sroa.1015.029.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14931
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14945)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ay)
          to label %.noexc.i.i unwind label %bb.i, !noalias !14931

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14950)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14952
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.az)
          to label %.noexc.i.i.i unwind label %bb.o, !noalias !14953

.noexc.i.i.i:                                     ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 -24 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !range !2051, !alias.scope !14954, !noalias !14955, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.bb, -9223372036854775808
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14952
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ba)
          to label %bb.m unwind label %bb.l, !noalias !14955

bb.l:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #38
          to label %.body.i.i.i unwind label %bb.n, !noalias !14955

bb.m:                                             ; preds = %bb.k
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !14952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i.i, i64 16, i1 false), !noalias !14952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14952
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14955
  unreachable

bb.o:                                             ; preds = %.noexc.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.o, %bb.l
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.be, %bb.o ], [ %i.bc, %bb.l ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #38
          to label %.body.i.i unwind label %bb.p, !noalias !14931

bb.p:                                             ; preds = %.body.i.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14931
  unreachable

bb.q:                                             ; preds = %bb.m, %.noexc.i.i.i
  %.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i, %bb.m ], [ -9223372036854775808, %.noexc.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !14956
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.ai, align 8, !alias.scope !14957, !noalias !14956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !14956
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14952
  %i.bg = ptrtoint ptr %i.aw to i64
  %i.bh = sub i64 %i.aj, %i.bg
  %i.bi = sdiv exact i64 %i.bh, 72                ; 2 uses
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr inbounds [72 x i8], ptr %.sroa.0.0, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bl, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !14931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14931
  %i.bm = add nsw i64 %i.bi, 1
  %i.bn = icmp eq i64 %i.ax, 0
  br i1 %i.bn, label %.loopexit, label %bb.j

bb.r:                                             ; preds = %.body.i.i
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14931
  unreachable

bb.s:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.t

.loopexit:                                        ; preds = %bb.q, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  store i64 %i.ab, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14930, !noalias !14929
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !14929, !noalias !14930, !noundef !4
  store i64 %i.bq, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !14930, !noalias !14929
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.s

bb.t:                                             ; preds = %.body
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 112) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !1649

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 3 uses
  %i.j = add i64 %i.d, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 5 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !2207

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14958
  %i.o = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !14958 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !14958
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !14958
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.r, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.o, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  %2 = icmp ult i64 %i.d, 8
  %i.t = lshr i64 %i.f, 3
  %i.u = mul nuw nsw i64 %i.t, 7
  %.sroa.07.0.i.i = select i1 %2, i64 %i.d, i64 %i.u
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.s, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14971)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !14973, !noalias !14974, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.v, i64 %.pre-phi, i1 false), !noalias !14975
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !14973, !noalias !14974, !noundef !4 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  %i.z = load <16 x i8>, ptr %i.v, align 16, !noalias !14976
  %i.aa = icmp sgt <16 x i8> %i.z, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = ptrtoint ptr %i.v to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEEENCNvMse_B1D_B1A_15clone_from_impl0EECs7p2uQeJxui2_9deltalake(i64 %.sroa.012.026.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.k, !noalias !14973

bb.j:                                             ; preds = %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i, %.lr.ph.i.i
  %.sroa.012.026.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.az, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ]
  %.sroa.1015.025.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.aq, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ]
  %.sroa.013.024.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.sroa.6.023.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.sroa.814.022.i.i = phi i16 [ %i.ab, %.lr.ph.i.i ], [ %i.as, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.022.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.6.023.i.i, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.013.024.i.i, %bb.j ]
  %i.ah = load <16 x i8>, ptr %i.af, align 16, !noalias !14981
  %i.ai = icmp sgt <16 x i8> %i.ah, splat (i8 -1)
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -1792 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ai to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.023.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.024.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.022.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds [112 x i8], ptr %.sroa.013.1.i.i, i64 %i.an ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14975
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -112
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ap) #41
          to label %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.i, !noalias !14975

_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.loopexit.i.i
  %i.aq = add i64 %.sroa.1015.025.i.i, -1         ; 2 uses
  %i.ar = add i16 %.lcssa.i.i.i, -1
  %i.as = and i16 %i.ar, %.lcssa.i.i.i
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = sub i64 %i.ad, %i.at
  %i.av = sdiv exact i64 %i.au, 112               ; 2 uses
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [112 x i8], ptr %.sroa.0.0, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ay, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !14975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14975
  %i.az = add nsw i64 %i.av, 1
  %i.ba = icmp eq i64 %i.aq, 0
  br i1 %i.ba, label %.loopexit, label %bb.j

bb.k:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !14975
  unreachable

bb.l:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.n unwind label %bb.m

.loopexit:                                        ; preds = %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs7p2uQeJxui2_9deltalake.exit
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14974, !noalias !14973
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !14973, !noalias !14974, !noundef !4
  store i64 %i.bd, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !14974, !noalias !14973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.m:                                             ; preds = %.body
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @22, i64 32, i1 false)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1                          ; 2 uses
  %i.e = icmp ugt i64 %i.d, 1152921504606846975
  br i1 %i.e, label %bb.e, label %bb.d, !prof !1649

bb.d:                                             ; preds = %bb.c
  %i.f = shl nuw i64 %i.d, 4                      ; 3 uses
  %i.g = add nsw i64 %i.b, 17                     ; 2 uses
  %i.h = add i64 %i.g, %i.f                       ; 5 uses
  %i.i = icmp ult i64 %i.h, %i.f
  %i.j = icmp ugt i64 %i.h, 9223372036854775792
  %or.cond.i.i = or i1 %i.i, %i.j
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !2207

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14986
  %i.l = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !14986 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !14986
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.o = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.h), !noalias !14986
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.o, %bb.f ], [ %i.n, %bb.e ]
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %bb.j

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.l, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.f
  br label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.b
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  %.pre-phi = phi i64 [ %i.g, %bb.h ], [ %.pre, %bb.g ]
  %.sroa.09.0 = phi ptr [ %i.p, %bb.h ], [ null, %bb.g ] ; 4 uses
  %.sroa.5.0 = phi i64 [ %i.b, %bb.h ], [ %.sroa.7.0.ph.i, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14991)
  %i.q = load ptr, ptr %1, align 8, !alias.scope !14991, !noalias !14994, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.09.0, ptr nonnull align 1 %i.q, i64 %.pre-phi, i1 false), !noalias !14996
  %i.r = xor i64 %i.b, -1
  %i.s = getelementptr [16 x i8], ptr %i.q, i64 %i.r ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = xor i64 %.sroa.5.0, -1
  %i.u = getelementptr [16 x i8], ptr %.sroa.09.0, i64 %i.t ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = shl i64 %.sroa.5.0, 4
  %i.w = add i64 %i.v, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.s, i64 %i.w, i1 false), !noalias !14996
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.09.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.6.0..sroa_idx3, align 8
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_7
