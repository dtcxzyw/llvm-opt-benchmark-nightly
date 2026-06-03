inline.NumInlined: 1216
inline.NumDeleted: 322
begin_hunk_0_@_RNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB8_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B8_B17_B29_4copy00uE0Cs7JU2D1aBbVY_15deltalake_mount:bb.a
bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.b
  %i.g = extractvalue { ptr, ptr } %i.e, 0
  %i.h = extractvalue { ptr, ptr } %i.e, 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.h, ptr %i.j, align 8
  br label %bb.i

.body:                                            ; preds = %bb.p, %bb.o, %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.o, %bb.h ], [ %i.aa, %bb.o ], [ %i.aa, %bb.p ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2449)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2452, !nonnull !3, !noundef !3
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !2452
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7JU2D1aBbVY_15deltalake_mount.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #17
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7JU2D1aBbVY_15deltalake_mount.exit unwind label %bb.y

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #18
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #18
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.val8 = load ptr, ptr %i.q, align 8
  %i.p = getelementptr i8, ptr %1, i64 72
  %.val9 = load ptr, ptr %i.p, align 8, !nonnull !3, !align !11, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount(ptr %.val8, ptr nonnull %.val9) #16
          to label %.body unwind label %bb.y

bb.i:                                             ; preds = %bb.d, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.r = load i64, ptr %0, align 8, !range !7, !noundef !3
  %i.s = icmp eq i64 %i.r, -9223372036854775789
  br i1 %i.s, label %common.ret, label %bb.k

common.ret:                                       ; preds = %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i16
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i16 ], [ 3, %bb.j ]
  store i8 %storemerge, ptr %i.a, align 8
  ret void

bb.k:                                             ; preds = %bb.j
  %.val = load ptr, ptr %i.q, align 8             ; 5 uses
  %i.t = getelementptr i8, ptr %1, i64 72
  %.val7 = load ptr, ptr %i.t, align 8, !nonnull !3, !align !11, !noundef !3 ; 5 uses
  %i.u = load ptr, ptr %.val7, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.u(ptr noundef nonnull %.val)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.val7, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %.val7, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !5, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #14
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount.exit

bb.o:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val7, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %.val7, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !5, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #14
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.n, %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2456)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !2459, !nonnull !3, !noundef !3
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !2459
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7JU2D1aBbVY_15deltalake_mount.exit11

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ag) #17
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7JU2D1aBbVY_15deltalake_mount.exit11 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(24) %1) #16
          to label %.body12 unwind label %bb.y

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7JU2D1aBbVY_15deltalake_mount.exit11: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount.exit, %bb.q
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i unwind label %bb.s

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7JU2D1aBbVY_15deltalake_mount.exit11
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body12 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7JU2D1aBbVY_15deltalake_mount.exit11
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7JU2D1aBbVY_15deltalake_mount.exit unwind label %bb.u

.body12:                                          ; preds = %bb.u, %bb.s, %bb.r
  %.pn3 = phi { ptr, i32 } [ %i.ak, %bb.r ], [ %i.ao, %bb.u ], [ %i.al, %bb.s ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(24) %i.an) #16
          to label %.body17 unwind label %bb.y

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body12

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i16 unwind label %bb.v

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7JU2D1aBbVY_15deltalake_mount.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.body17 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i16: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7JU2D1aBbVY_15deltalake_mount.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %common.ret unwind label %bb.x

.body17:                                          ; preds = %bb.x, %bb.v, %bb.z, %.body12
  %.pn5 = phi { ptr, i32 } [ %.pn, %bb.z ], [ %.pn3, %.body12 ], [ %i.as, %bb.x ], [ %i.aq, %bb.v ]
  store i8 2, ptr %i.a, align 8
  resume { ptr, i32 } %.pn5

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i16
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body17

bb.y:                                             ; preds = %bb.e, %bb.h, %bb.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7JU2D1aBbVY_15deltalake_mount.exit, %.body12, %bb.r
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %.body, %bb.e
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(24) %1) #16
          to label %bb.z unwind label %bb.y

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7JU2D1aBbVY_15deltalake_mount.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(24) %i.au) #16
          to label %.body17 unwind label %bb.y
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2c_B3b_B3Y_13put_multipart00IB1v_DNtNtB40_6upload15MultipartUploadEL_EE0EEIB3G_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @6, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2460
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2460 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2u_B3t_B4g_13put_multipart00IB1N_DNtNtB4i_6upload15MultipartUploadEL_EE0EEIB3Y_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2c_B3b_B3Y_13put_multipart00IB1v_DNtNtB40_6upload15MultipartUploadEL_EE0EEIB3G_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @7, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2464
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2464 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2u_B3t_B4g_13put_multipart00IB1N_DNtNtB4i_6upload15MultipartUploadEL_EE0EEIB3Y_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2c_B3b_B3Y_18put_multipart_opts00IB1v_DNtNtB40_6upload15MultipartUploadEL_EE0EEIB3G_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @8, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2467
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2467 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2u_B3t_B4g_18put_multipart_opts00IB1N_DNtNtB4i_6upload15MultipartUploadEL_EE0EEIB3Y_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2c_B3b_B3Y_18put_multipart_opts00IB1v_DNtNtB40_6upload15MultipartUploadEL_EE0EEIB3G_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @9, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2470
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2470 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2u_B3t_B4g_18put_multipart_opts00IB1N_DNtNtB4i_6upload15MultipartUploadEL_EE0EEIB3Y_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2c_B3b_B3Y_3get00NtB40_9GetResultE0EEIB3G_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [384 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @10, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2473
  %i.j = tail call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 384, i64 noundef 128) #14, !noalias !2473 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2u_B3t_B4g_3get00NtB4i_9GetResultE0EEIB3Y_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(384) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.j, ptr noundef nonnull align 128 dereferenceable(384) %i.a, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2c_B3b_B3Y_3get00NtB40_9GetResultE0EEIB3G_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [384 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @11, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2476
  %i.j = tail call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 384, i64 noundef 128) #14, !noalias !2476 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2u_B3t_B4g_3get00NtB4i_9GetResultE0EEIB3Y_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(384) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.j, ptr noundef nonnull align 128 dereferenceable(384) %i.a, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2c_B3b_B3Y_3put00NtB40_9PutResultE0EEIB3G_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @12, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2479
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2479 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2u_B3t_B4g_3put00NtB4i_9PutResultE0EEIB3Y_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2c_B3b_B3Y_3put00NtB40_9PutResultE0EEIB3G_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @13, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2482
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2482 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2u_B3t_B4g_3put00NtB4i_9PutResultE0EEIB3Y_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2c_B3b_B3Y_4head00NtB40_10ObjectMetaE0EEIB3G_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @14, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2485
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2485 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2u_B3t_B4g_4head00NtB4i_10ObjectMetaE0EEIB3Y_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2c_B3b_B3Y_4head00NtB40_10ObjectMetaE0EEIB3G_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @15, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2488
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2488 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2u_B3t_B4g_4head00NtB4i_10ObjectMetaE0EEIB3Y_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2c_B3b_B3Y_6delete00uE0EEIB3G_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @16, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2491
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2491 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2u_B3t_B4g_6delete00uE0EEIB3Y_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2c_B3b_B3Y_6delete00uE0EEIB3G_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @17, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2494
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2494 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2u_B3t_B4g_6delete00uE0EEIB3Y_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2c_B3b_B3Y_8get_opts00NtB40_9GetResultE0EEIB3G_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [384 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @18, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2497
  %i.j = tail call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 384, i64 noundef 128) #14, !noalias !2497 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2u_B3t_B4g_8get_opts00NtB4i_9GetResultE0EEIB3Y_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(384) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.j, ptr noundef nonnull align 128 dereferenceable(384) %i.a, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2c_B3b_B3Y_8get_opts00NtB40_9GetResultE0EEIB3G_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [384 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @19, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2500
  %i.j = tail call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 384, i64 noundef 128) #14, !noalias !2500 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2u_B3t_B4g_8get_opts00NtB4i_9GetResultE0EEIB3Y_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(384) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.j, ptr noundef nonnull align 128 dereferenceable(384) %i.a, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2c_B3b_B3Y_8put_opts00NtB40_9PutResultE0EEIB3G_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @20, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2503
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2503 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2u_B3t_B4g_8put_opts00NtB4i_9PutResultE0EEIB3Y_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2c_B3b_B3Y_8put_opts00NtB40_9PutResultE0EEIB3G_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @21, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2506
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2506 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2u_B3t_B4g_8put_opts00NtB4i_9PutResultE0EEIB3Y_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2c_B3b_B3Y_9get_range00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0EEIB3G_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @22, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2509
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2509 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2u_B3t_B4g_9get_range00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0EEIB3Y_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2c_B3b_B3Y_9get_range00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0EEIB3G_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @23, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2512
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2512 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2u_B3t_B4g_9get_range00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0EEIB3Y_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B2c_B3b_B3Y_18copy_if_not_exists00uE0EEIB3G_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @24, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2515
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2515 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B2u_B3t_B4g_18copy_if_not_exists00uE0EEIB3Y_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B2c_B3b_B3Y_18copy_if_not_exists00uE0EEIB3G_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @25, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2518
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2518 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B2u_B3t_B4g_18copy_if_not_exists00uE0EEIB3Y_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B2c_B3b_B3Y_20rename_if_not_exists00uE0EEIB3G_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @26, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2521
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2521 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B2u_B3t_B4g_20rename_if_not_exists00uE0EEIB3Y_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B2c_B3b_B3Y_20rename_if_not_exists00uE0EEIB3G_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @27, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2524
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2524 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B2u_B3t_B4g_20rename_if_not_exists00uE0EEIB3Y_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B2c_B3b_B3Y_4copy00uE0EEIB3G_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @28, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2527
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2527 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B2u_B3t_B4g_4copy00uE0EEIB3Y_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B2c_B3b_B3Y_4copy00uE0EEIB3G_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @29, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2530
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2530 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2u_21DeltaIOStorageBackendINtNtB1R_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B2u_B3t_B4g_4copy00uE0EEIB3Y_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00EENtNtB13_8schedule16BlockingScheduleE3newB2h_(ptr noalias noundef align 8 %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @30, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %.sroa.611.0..sroa_idx, align 8
  %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %0, ptr %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2533
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2533 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !2463

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00EENtNtB1B_8schedule16BlockingScheduleEEB2P_(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00ENtNtB13_8schedule16BlockingScheduleE3newB1I_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.413 = alloca [52 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  %.sroa.413.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.413, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.sroa.413.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @31, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %.sroa.611.0..sroa_idx, align 8
  %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.413, i64 52, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2536
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2536 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !2463

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00ENtNtB1B_8schedule16BlockingScheduleEEB2g_(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B17_B26_B39_13put_multipart00INtNtB2F_5boxed3BoxDNtNtB3b_6upload15MultipartUploadEL_EE0IB2B_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [68 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @32, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.412, i64 68, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2539
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2539 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1F_B2E_B3H_13put_multipart00INtNtB3d_5boxed3BoxDNtNtB3J_6upload15MultipartUploadEL_EE0IB39_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B17_B26_B39_13put_multipart00INtNtB2F_5boxed3BoxDNtNtB3b_6upload15MultipartUploadEL_EE0IB2B_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [68 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @33, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.412, i64 68, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2542
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2542 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1F_B2E_B3H_13put_multipart00INtNtB3d_5boxed3BoxDNtNtB3J_6upload15MultipartUploadEL_EE0IB39_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B17_B26_B39_18put_multipart_opts00INtNtB2F_5boxed3BoxDNtNtB3b_6upload15MultipartUploadEL_EE0IB2B_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(144) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [148 x i8], align 4         ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %0, i64 144, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @34, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(148) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(148) %.sroa.412, i64 148, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2545
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2545 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1F_B2E_B3H_18put_multipart_opts00INtNtB3d_5boxed3BoxDNtNtB3J_6upload15MultipartUploadEL_EE0IB39_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B17_B26_B39_18put_multipart_opts00INtNtB2F_5boxed3BoxDNtNtB3b_6upload15MultipartUploadEL_EE0IB2B_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(144) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [148 x i8], align 4         ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %0, i64 144, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @35, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(148) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(148) %.sroa.412, i64 148, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2548
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2548 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1F_B2E_B3H_18put_multipart_opts00INtNtB3d_5boxed3BoxDNtNtB3J_6upload15MultipartUploadEL_EE0IB39_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B17_B26_B39_3get00NtB3b_9GetResultE0IB2B_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [68 x i8], align 4          ; 2 uses
  %i.a = alloca [384 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @36, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.412, i64 68, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2551
  %i.j = tail call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 384, i64 noundef 128) #14, !noalias !2551 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1F_B2E_B3H_3get00NtB3J_9GetResultE0IB39_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(384) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.j, ptr noundef nonnull align 128 dereferenceable(384) %i.a, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B17_B26_B39_3get00NtB3b_9GetResultE0IB2B_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [68 x i8], align 4          ; 2 uses
  %i.a = alloca [384 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @37, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.412, i64 68, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2554
  %i.j = tail call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 384, i64 noundef 128) #14, !noalias !2554 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1F_B2E_B3H_3get00NtB3J_9GetResultE0IB39_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(384) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.j, ptr noundef nonnull align 128 dereferenceable(384) %i.a, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B17_B26_B39_3put00NtB3b_9PutResultE0IB2B_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [84 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @38, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(84) %.sroa.412, i64 84, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2557
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2557 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1F_B2E_B3H_3put00NtB3J_9PutResultE0IB39_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B17_B26_B39_3put00NtB3b_9PutResultE0IB2B_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [84 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @39, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(84) %.sroa.412, i64 84, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2560
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2560 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1F_B2E_B3H_3put00NtB3J_9PutResultE0IB39_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B17_B26_B39_4head00NtB3b_10ObjectMetaE0IB2B_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [68 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @40, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.412, i64 68, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2563
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2563 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1F_B2E_B3H_4head00NtB3J_10ObjectMetaE0IB39_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B17_B26_B39_4head00NtB3b_10ObjectMetaE0IB2B_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [68 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @41, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.412, i64 68, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2566
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2566 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1F_B2E_B3H_4head00NtB3J_10ObjectMetaE0IB39_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B17_B26_B39_6delete00uE0IB2B_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [68 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @42, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.412, i64 68, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2569
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2569 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1F_B2E_B3H_6delete00uE0IB39_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B17_B26_B39_6delete00uE0IB2B_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [68 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @43, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.412, i64 68, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2572
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2572 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1F_B2E_B3H_6delete00uE0IB39_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B17_B26_B39_8get_opts00NtB3b_9GetResultE0IB2B_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(200) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [204 x i8], align 4         ; 2 uses
  %i.a = alloca [384 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(200) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(200) %0, i64 200, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @44, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(204) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(204) %.sroa.412, i64 204, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2575
  %i.j = tail call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 384, i64 noundef 128) #14, !noalias !2575 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1F_B2E_B3H_8get_opts00NtB3J_9GetResultE0IB39_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(384) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.j, ptr noundef nonnull align 128 dereferenceable(384) %i.a, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B17_B26_B39_8get_opts00NtB3b_9GetResultE0IB2B_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(200) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [204 x i8], align 4         ; 2 uses
  %i.a = alloca [384 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(200) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(200) %0, i64 200, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @45, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(204) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(204) %.sroa.412, i64 204, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2578
  %i.j = tail call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 384, i64 noundef 128) #14, !noalias !2578 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1F_B2E_B3H_8get_opts00NtB3J_9GetResultE0IB39_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(384) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.j, ptr noundef nonnull align 128 dereferenceable(384) %i.a, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B17_B26_B39_8put_opts00NtB3b_9PutResultE0IB2B_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(208) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [212 x i8], align 4         ; 2 uses
  %i.a = alloca [384 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(208) %0, i64 208, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @46, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(212) %.sroa.412, i64 212, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2581
  %i.j = tail call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 384, i64 noundef 128) #14, !noalias !2581 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1F_B2E_B3H_8put_opts00NtB3J_9PutResultE0IB39_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(384) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.j, ptr noundef nonnull align 128 dereferenceable(384) %i.a, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B17_B26_B39_8put_opts00NtB3b_9PutResultE0IB2B_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(208) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [212 x i8], align 4         ; 2 uses
  %i.a = alloca [384 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(208) %0, i64 208, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @47, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(212) %.sroa.412, i64 212, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2584
  %i.j = tail call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 384, i64 noundef 128) #14, !noalias !2584 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1F_B2E_B3H_8put_opts00NtB3J_9PutResultE0IB39_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(384) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.j, ptr noundef nonnull align 128 dereferenceable(384) %i.a, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B17_B26_B39_9get_range00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0IB2B_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [84 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @48, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(84) %.sroa.412, i64 84, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2587
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2587 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1F_B2E_B3H_9get_range00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0IB39_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B17_B26_B39_9get_range00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0IB2B_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [84 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @49, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(84) %.sroa.412, i64 84, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2590
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2590 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1F_B2E_B3H_9get_range00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0IB39_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B17_B26_B39_18copy_if_not_exists00uE0IB2B_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [92 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @50, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.412, i64 92, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 16
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2593
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2593 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B1F_B2E_B3H_18copy_if_not_exists00uE0IB39_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B17_B26_B39_18copy_if_not_exists00uE0IB2B_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [92 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @51, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.412, i64 92, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 16
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2596
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2596 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B1F_B2E_B3H_18copy_if_not_exists00uE0IB39_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B17_B26_B39_20rename_if_not_exists00uE0IB2B_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [92 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @52, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.412, i64 92, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 16
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2599
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2599 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B1F_B2E_B3H_20rename_if_not_exists00uE0IB39_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B17_B26_B39_20rename_if_not_exists00uE0IB2B_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [92 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @53, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.412, i64 92, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 16
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2602
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2602 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B1F_B2E_B3H_20rename_if_not_exists00uE0IB39_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B17_B26_B39_4copy00uE0IB2B_NtNtNtB9_9scheduler14current_thread6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [92 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @54, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.412, i64 92, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 16
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2605
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2605 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B1F_B2E_B3H_4copy00uE0IB39_NtNtNtBN_9scheduler14current_thread6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB17_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B17_B26_B39_4copy00uE0IB2B_NtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [92 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @55, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.412, i64 92, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 16
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !2608
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 256, 385) 256, i64 noundef 128) #14, !noalias !2608 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !2463

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1F_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B1F_B2E_B3H_4copy00uE0IB39_NtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #16
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2c_B3b_B3Y_13put_multipart00IB1v_DNtNtB40_6upload15MultipartUploadEL_EE0EEIB3G_NtNtNtB9_9scheduler14current_thread6HandleEE4pollCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !range !80, !noalias !2611, !noundef !3
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c, !prof !2615

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2611
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !2616, !noalias !2611, !noundef !3
  %i.j = tail call noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.i), !noalias !2611
  store i64 %i.j, ptr %i.a, align 8, !noalias !2611
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1D_21DeltaIOStorageBackendINtNtB10_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1D_B2C_B3p_13put_multipart00IBW_DNtNtB3r_6upload15MultipartUploadEL_EE0EENtB4_6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_13put_multipart00IB1x_DNtNtB42_6upload15MultipartUploadEL_EE0EEIB3I_NtNtNtBb_9scheduler14current_thread6HandleEE4poll0Cs7JU2D1aBbVY_15deltalake_mount.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #18, !noalias !2611
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %common.resume unwind label %bb.e, !noalias !2617

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15, !noalias !2617
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.n, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_13put_multipart00IB1x_DNtNtB42_6upload15MultipartUploadEL_EE0EEIB3I_NtNtNtBb_9scheduler14current_thread6HandleEE4poll0Cs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.b
  call void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !2617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2611
  %i.m = load i64, ptr %i.c, align 8, !range !7, !noundef !3
  %.not = icmp eq i64 %i.m, -9223372036854775789
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_13put_multipart00IB1x_DNtNtB42_6upload15MultipartUploadEL_EE0EEIB3I_NtNtNtBb_9scheduler14current_thread6HandleEE4poll0Cs7JU2D1aBbVY_15deltalake_mount.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 2, ptr %i.b, align 8
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2c_B3b_B3Y_13put_multipart00IB1v_DNtNtB40_6upload15MultipartUploadEL_EE0EEIB3G_NtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.b)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB25_5ErrorEEECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(72) %i.c) #16
          to label %common.resume unwind label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.i:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2e_21DeltaIOStorageBackendINtNtB1B_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2e_B3d_B40_13put_multipart00IB1x_DNtNtB42_6upload15MultipartUploadEL_EE0EEIB3I_NtNtNtBb_9scheduler14current_thread6HandleEE4poll0Cs7JU2D1aBbVY_15deltalake_mount.exit, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.j:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2c_21DeltaIOStorageBackendINtNtB1z_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2c_B3b_B3Y_13put_multipart00IB1v_DNtNtB40_6upload15MultipartUploadEL_EE0EEIB3G_NtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !2616, !noundef !3
  %i.d = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.c)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2618)
  %i.f = load i32, ptr %i.e, align 8, !range !80, !alias.scope !2618, !noundef !3
  switch i32 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2v_21DeltaIOStorageBackendINtNtB1S_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2v_B3u_B4h_13put_multipart00IB1O_DNtNtB4j_6upload15MultipartUploadEL_EE0EEEECs7JU2D1aBbVY_15deltalake_mount.exit [
    i32 0, label %bb.c
    i32 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !2618, !nonnull !3, !noundef !3 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBP_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_BP_B1O_B2Q_13put_multipart00INtNtB2m_5boxed3BoxDNtNtB2S_6upload15MultipartUploadEL_EE0ECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %.val.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1E_21DeltaIOStorageBackendINtNtB11_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1E_B2D_B3q_13put_multipart00IBX_DNtNtB3s_6upload15MultipartUploadEL_EE0EEECs7JU2D1aBbVY_15deltalake_mount.exit.i unwind label %bb.d, !noalias !2618

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 64, i64 noundef 8) #14, !noalias !2618
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB1E_21DeltaIOStorageBackendINtNtB11_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B1E_B2D_B3q_13put_multipart00IBX_DNtNtB3s_6upload15MultipartUploadEL_EE0EEECs7JU2D1aBbVY_15deltalake_mount.exit.i: ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 64, i64 noundef 8) #14, !noalias !2618
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2v_21DeltaIOStorageBackendINtNtB1S_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2v_B3u_B4h_13put_multipart00IB1O_DNtNtB4j_6upload15MultipartUploadEL_EE0EEEECs7JU2D1aBbVY_15deltalake_mount.exit

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB1K_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(72) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB2v_21DeltaIOStorageBackendINtNtB1S_4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B2v_B3u_B4h_13put_multipart00IB1O_DNtNtB4j_6upload15MultipartUploadEL_EE0EEEECs7JU2D1aBbVY_15deltalake_mount.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body
end_hunk_0
