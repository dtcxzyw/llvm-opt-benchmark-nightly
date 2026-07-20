inline.NumInlined: 302
inline.NumDeleted: 179
begin_hunk_0_@_RNvMs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB4_8BufferedINtNtB6_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1z_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3R_5ErrorENtNtB1z_6marker4SendEL_EENCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtB3R_11ObjectStore13delete_stream0EE3newB5e_:bb.a
bb.c:                                             ; preds = %bb.a
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x ptr> %i.b, ptr %i.f, align 8
  %.sroa.6.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.6.0.copyload15, ptr %.sroa.6.0..sroa_idx13, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %.sroa.616.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %2, ptr %i.g, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB21_5slice4iter4IterINtNtNtB21_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtB6_4sync3ArcDNtB3K_11ObjectStoreEL_EEB6m_10get_ranges00NtB3K_5ErrorINtNtB21_3pin3PinINtNtB6_5boxed3BoxDNtNtNtB21_6future6future6Futurep6OutputINtNtB21_6result6ResultBU_B72_ENtNtB21_6marker4SendEL_EEE00EE9from_iterCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !107
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !104, !noalias !109, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.d, align 8, !alias.scope !104, !noalias !109, !nonnull !3, !noundef !3
  %i.e = ptrtoint ptr %.val3.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !107
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !107
  %i.i = load i64, ptr %i.b, align 8, !range !110, !noalias !107, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !25, !noalias !107, !noundef !3 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1G_5slice4iter4IterINtNtNtB1G_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtB8_4sync3ArcDNtB3p_11ObjectStoreEL_EEB61_10get_ranges00NtB3p_5ErrorINtNtB1G_3pin3PinINtNtB8_5boxed3BoxDNtNtNtB1G_6future6future6Futurep6OutputINtNtB1G_6result6ResultBG_B6H_ENtNtB1G_6marker4SendEL_EEE00EECs7JU2D1aBbVY_15deltalake_mount.exit.i.i, !prof !103

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !107
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #23, !noalias !107
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1G_5slice4iter4IterINtNtNtB1G_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtB8_4sync3ArcDNtB3p_11ObjectStoreEL_EEB61_10get_ranges00NtB3p_5ErrorINtNtB1G_3pin3PinINtNtB8_5boxed3BoxDNtNtNtB1G_6future6future6Futurep6OutputINtNtB1G_6result6ResultBG_B6H_ENtNtB1G_6marker4SendEL_EEE00EECs7JU2D1aBbVY_15deltalake_mount.exit.i.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !107, !nonnull !3, !noundef !3 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !107
  store i64 %i.l, ptr %i.c, align 8, !noalias !107
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !107
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8, !noalias !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !111
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.s, align 8, !noalias !111
  store ptr %i.r, ptr %i.a, align 8, !noalias !111
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !noalias !111
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1Z_11ObjectStoreEL_EEB4S_10get_ranges00NtB1Z_5ErrorINtNtBc_3pin3PinINtNtB4o_5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB5y_ENtNtBc_6marker4SendEL_EEE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB8p_8for_each4callB7i_NCINvMsj_NtB4o_3vecINtB9F_3VecB7i_E14extend_trustedBN_E0E0ECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2h_5slice4iter4IterINtNtNtB2h_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtB8_4sync3ArcDNtB40_11ObjectStoreEL_EEB6C_10get_ranges00NtB40_5ErrorINtNtB2h_3pin3PinINtNtB8_5boxed3BoxDNtNtNtB2h_6future6future6Futurep6OutputINtNtB2h_6result6ResultB13_B7i_ENtNtB2h_6marker4SendEL_EEE00EE9from_iterCs7JU2D1aBbVY_15deltalake_mount.exit unwind label %bb.c, !noalias !109

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1G_5slice4iter4IterINtNtNtB1G_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtB8_4sync3ArcDNtB3p_11ObjectStoreEL_EEB61_10get_ranges00NtB3p_5ErrorINtNtB1G_3pin3PinINtNtB8_5boxed3BoxDNtNtNtB1G_6future6future6Futurep6OutputINtNtB1G_6result6ResultBG_B6H_ENtNtB1G_6marker4SendEL_EEE00EECs7JU2D1aBbVY_15deltalake_mount.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(24) %i.c) #21
          to label %bb.e unwind label %bb.d, !noalias !107

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !107
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.u

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2h_5slice4iter4IterINtNtNtB2h_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtB8_4sync3ArcDNtB40_11ObjectStoreEL_EEB6C_10get_ranges00NtB40_5ErrorINtNtB2h_3pin3PinINtNtB8_5boxed3BoxDNtNtNtB2h_6future6future6Futurep6OutputINtNtB2h_6result6ResultB13_B7i_ENtNtB2h_6marker4SendEL_EEE00EE9from_iterCs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1G_5slice4iter4IterINtNtNtB1G_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtB8_4sync3ArcDNtB3p_11ObjectStoreEL_EEB61_10get_ranges00NtB3p_5ErrorINtNtB1G_3pin3PinINtNtB8_5boxed3BoxDNtNtNtB1G_6future6future6Futurep6OutputINtNtB1G_6result6ResultBG_B6H_ENtNtB1G_6marker4SendEL_EEE00EECs7JU2D1aBbVY_15deltalake_mount.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !107
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB21_5slice4iter4IterINtNtNtB21_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtB3K_11ObjectStore10get_ranges00NtB3K_5ErrorINtNtB21_3pin3PinINtNtB6_5boxed3BoxDNtNtNtB21_6future6future6Futurep6OutputINtNtB21_6result6ResultBU_B6f_ENtNtB21_6marker4SendEL_EEE00EE9from_iterB4J_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !121
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !118, !noalias !123, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.d, align 8, !alias.scope !118, !noalias !123, !nonnull !3, !noundef !3
  %i.e = ptrtoint ptr %.val3.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !121
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !121
  %i.i = load i64, ptr %i.b, align 8, !range !110, !noalias !121, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !25, !noalias !121, !noundef !3 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1G_5slice4iter4IterINtNtNtB1G_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtB3p_11ObjectStore10get_ranges00NtB3p_5ErrorINtNtB1G_3pin3PinINtNtB8_5boxed3BoxDNtNtNtB1G_6future6future6Futurep6OutputINtNtB1G_6result6ResultBG_B5U_ENtNtB1G_6marker4SendEL_EEE00EEB4o_.exit.i.i, !prof !103

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !121
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #23, !noalias !121
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1G_5slice4iter4IterINtNtNtB1G_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtB3p_11ObjectStore10get_ranges00NtB3p_5ErrorINtNtB1G_3pin3PinINtNtB8_5boxed3BoxDNtNtNtB1G_6future6future6Futurep6OutputINtNtB1G_6result6ResultBG_B5U_ENtNtB1G_6marker4SendEL_EEE00EEB4o_.exit.i.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !121, !nonnull !3, !noundef !3 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !121
  store i64 %i.l, ptr %i.c, align 8, !noalias !121
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !121
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8, !noalias !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !124
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.s, align 8, !noalias !124
  store ptr %i.r, ptr %i.a, align 8, !noalias !124
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !noalias !124
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtB1Z_11ObjectStore10get_ranges00NtB1Z_5ErrorINtNtBc_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB4u_ENtNtBc_6marker4SendEL_EEE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7B_8for_each4callB6u_NCINvMsj_NtB51_3vecINtB8R_3VecB6u_E14extend_trustedBN_E0E0EB2Y_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2h_5slice4iter4IterINtNtNtB2h_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtB40_11ObjectStore10get_ranges00NtB40_5ErrorINtNtB2h_3pin3PinINtNtB8_5boxed3BoxDNtNtNtB2h_6future6future6Futurep6OutputINtNtB2h_6result6ResultB13_B6v_ENtNtB2h_6marker4SendEL_EEE00EE9from_iterB4Z_.exit unwind label %bb.c, !noalias !123

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1G_5slice4iter4IterINtNtNtB1G_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtB3p_11ObjectStore10get_ranges00NtB3p_5ErrorINtNtB1G_3pin3PinINtNtB8_5boxed3BoxDNtNtNtB1G_6future6future6Futurep6OutputINtNtB1G_6result6ResultBG_B5U_ENtNtB1G_6marker4SendEL_EEE00EEB4o_.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(24) %i.c) #21
          to label %bb.e unwind label %bb.d, !noalias !121

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !121
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.u

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2h_5slice4iter4IterINtNtNtB2h_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtB40_11ObjectStore10get_ranges00NtB40_5ErrorINtNtB2h_3pin3PinINtNtB8_5boxed3BoxDNtNtNtB2h_6future6future6Futurep6OutputINtNtB2h_6result6ResultB13_B6v_ENtNtB2h_6marker4SendEL_EEE00EE9from_iterB4Z_.exit: ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1G_5slice4iter4IterINtNtNtB1G_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtB3p_11ObjectStore10get_ranges00NtB3p_5ErrorINtNtB1G_3pin3PinINtNtB8_5boxed3BoxDNtNtNtB1G_6future6future6Futurep6OutputINtNtB1G_6result6ResultBG_B5U_ENtNtB1G_6marker4SendEL_EEE00EEB4o_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !121
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtB26_4sync3ArcDNtB3S_11ObjectStoreEL_EEB6T_13delete_stream0EEB2B_9poll_nextCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(104) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 5 uses
  %i.b = alloca [136 x i8], align 8               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = tail call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE28atomic_load_head_and_len_allCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %i.e)
  %i.g = extractvalue { ptr, i64 } %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %i.j = icmp ult i64 %i.i, 115292150460684698
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add i64 %i.g, %i.i
  %i.l = load i64, ptr %i.d, align 8, !noundef !3
  %i.m = icmp ult i64 %i.k, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1s_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3K_5ErrorENtNtB1s_6marker4SendEL_EENCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtB1Y_4sync3ArcDNtB3K_11ObjectStoreEL_EEB6L_13delete_stream0EEB2t_9poll_nextCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.q = load i64, ptr %i.b, align 8, !range !131, !noundef !3
  %3 = and i64 %i.q, 1
  %or.cond.not = icmp eq i64 %3, 0
  br i1 %or.cond.not, label %bb.c, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.c
  call void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB3q_13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.r = load i64, ptr %0, align 8, !range !132, !noundef !3 ; 2 uses
  switch i64 %i.r, label %bb.f [
    i64 -9223372036854775788, label %.sink.split
    i64 -9223372036854775789, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.n, i64 128, i1 false)
  %i.s = load i64, ptr %i.o, align 8, !noundef !3 ; 2 uses
  store i64 %i.s, ptr %i.p, align 8
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.o, align 8
  call void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE4pushCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE28atomic_load_head_and_len_allCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %i.e)
  %i.v = extractvalue { ptr, i64 } %i.u, 1
  %i.w = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %i.x = icmp ult i64 %i.w, 115292150460684698
  call void @llvm.assume(i1 %i.x)
  %i.y = add i64 %i.v, %i.w
  %i.z = load i64, ptr %i.d, align 8, !noundef !3
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %bb.b, label %.loopexit

bb.e:                                             ; preds = %.loopexit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ac = load i8, ptr %i.ab, align 8, !range !133, !noundef !3
  %i.ad = trunc nuw i8 %i.ac to i1
  %. = select i1 %i.ad, i64 -9223372036854775789, i64 -9223372036854775788
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %.loopexit
  %.sink = phi i64 [ %., %bb.e ], [ %i.r, %.loopexit ]
  store i64 %.sink, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtB26_4sync3ArcDNtB3S_11ObjectStoreEL_EEB6T_13delete_stream0EEB2B_9size_hintCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE28atomic_load_head_and_len_allCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %i.b)
  %i.d = extractvalue { ptr, i64 } %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.g = icmp ult i64 %i.f, 115292150460684698
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add i64 %i.d, %i.f                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load i8, ptr %i.i, align 8, !range !133, !noundef !3
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3mapINtB5_3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1a_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3s_5ErrorENtNtB1a_6marker4SendEL_EENCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtB1G_4sync3ArcDNtB3s_11ObjectStoreEL_EEB6t_13delete_stream0EB2b_9size_hintCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
  %i.m = load i64, ptr %i.a, align 8, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !110, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %i.h) ; 2 uses
  %i.s = trunc nuw i64 %i.o to i1
  br i1 %i.s, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0 = phi i64 [ %i.h, %bb.c ], [ %i.r, %bb.b ]
  %.sroa.6.0 = phi i64 [ 0, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %i.t = add i64 %.sroa.6.0, %i.h                 ; 2 uses
  %i.u = icmp uge i64 %i.t, %.sroa.6.0
  %.6 = zext i1 %i.u to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.4.0 = phi i64 [ %i.t, %bb.d ], [ undef, %bb.b ]
  %.sroa.05.0 = phi i64 [ %.6, %bb.d ], [ 0, %bb.b ]
  %.sroa.04.1 = phi i64 [ %.sroa.04.0, %bb.d ], [ %i.r, %bb.b ]
  store i64 %.sroa.04.1, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0, ptr %i.w, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYNtNtB3S_5local15LocalFileSystemNtB3S_11ObjectStore13delete_stream0EEB2B_9poll_nextCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(104) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 5 uses
  %i.b = alloca [136 x i8], align 8               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = tail call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %i.e)
  %i.g = extractvalue { ptr, i64 } %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %i.j = icmp ult i64 %i.i, 115292150460684698
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add i64 %i.g, %i.i
  %i.l = load i64, ptr %i.d, align 8, !noundef !3
  %i.m = icmp ult i64 %i.k, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1s_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3K_5ErrorENtNtB1s_6marker4SendEL_EENCNvYNtNtB3K_5local15LocalFileSystemNtB3K_11ObjectStore13delete_stream0EEB2t_9poll_nextCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.q = load i64, ptr %i.b, align 8, !range !131, !noundef !3
  %3 = and i64 %i.q, 1
  %or.cond.not = icmp eq i64 %3, 0
  br i1 %or.cond.not, label %bb.c, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.c
  call void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB1w_11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.r = load i64, ptr %0, align 8, !range !132, !noundef !3 ; 2 uses
  switch i64 %i.r, label %bb.f [
    i64 -9223372036854775788, label %.sink.split
    i64 -9223372036854775789, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.n, i64 128, i1 false)
  %i.s = load i64, ptr %i.o, align 8, !noundef !3 ; 2 uses
  store i64 %i.s, ptr %i.p, align 8
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.o, align 8
  call void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE4pushCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %i.e)
  %i.v = extractvalue { ptr, i64 } %i.u, 1
  %i.w = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %i.x = icmp ult i64 %i.w, 115292150460684698
  call void @llvm.assume(i1 %i.x)
  %i.y = add i64 %i.v, %i.w
  %i.z = load i64, ptr %i.d, align 8, !noundef !3
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %bb.b, label %.loopexit

bb.e:                                             ; preds = %.loopexit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ac = load i8, ptr %i.ab, align 8, !range !133, !noundef !3
  %i.ad = trunc nuw i8 %i.ac to i1
  %. = select i1 %i.ad, i64 -9223372036854775789, i64 -9223372036854775788
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %.loopexit
  %.sink = phi i64 [ %., %bb.e ], [ %i.r, %.loopexit ]
  store i64 %.sink, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYNtNtB3S_5local15LocalFileSystemNtB3S_11ObjectStore13delete_stream0EEB2B_9size_hintCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %i.b)
  %i.d = extractvalue { ptr, i64 } %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.g = icmp ult i64 %i.f, 115292150460684698
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add i64 %i.d, %i.f                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load i8, ptr %i.i, align 8, !range !133, !noundef !3
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3mapINtB5_3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1a_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3s_5ErrorENtNtB1a_6marker4SendEL_EENCNvYNtNtB3s_5local15LocalFileSystemNtB3s_11ObjectStore13delete_stream0EB2b_9size_hintCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
  %i.m = load i64, ptr %i.a, align 8, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !110, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %i.h) ; 2 uses
  %i.s = trunc nuw i64 %i.o to i1
  br i1 %i.s, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0 = phi i64 [ %i.h, %bb.c ], [ %i.r, %bb.b ]
  %.sroa.6.0 = phi i64 [ 0, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %i.t = add i64 %.sroa.6.0, %i.h                 ; 2 uses
  %i.u = icmp uge i64 %i.t, %.sroa.6.0
  %.6 = zext i1 %i.u to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.4.0 = phi i64 [ %i.t, %bb.d ], [ undef, %bb.b ]
  %.sroa.05.0 = phi i64 [ %.6, %bb.d ], [ 0, %bb.b ]
  %.sroa.04.1 = phi i64 [ %.sroa.04.0, %bb.d ], [ %i.r, %bb.b ]
  store i64 %.sroa.04.1, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0, ptr %i.w, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtB3S_11ObjectStore13delete_stream0EEB2B_9poll_nextB5f_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(104) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 5 uses
  %i.b = alloca [136 x i8], align 8               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = tail call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_(ptr noundef nonnull align 8 %i.e)
  %i.g = extractvalue { ptr, i64 } %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %i.j = icmp ult i64 %i.i, 115292150460684698
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add i64 %i.g, %i.i
  %i.l = load i64, ptr %i.d, align 8, !noundef !3
  %i.m = icmp ult i64 %i.k, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1s_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3K_5ErrorENtNtB1s_6marker4SendEL_EENCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtB3K_11ObjectStore13delete_stream0EEB2t_9poll_nextB57_(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.q = load i64, ptr %i.b, align 8, !range !131, !noundef !3
  %3 = and i64 %i.q, 1
  %or.cond.not = icmp eq i64 %3, 0
  br i1 %or.cond.not, label %bb.c, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.c
  call void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1w_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.r = load i64, ptr %0, align 8, !range !132, !noundef !3 ; 2 uses
  switch i64 %i.r, label %bb.f [
    i64 -9223372036854775788, label %.sink.split
    i64 -9223372036854775789, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.n, i64 128, i1 false)
  %i.s = load i64, ptr %i.o, align 8, !noundef !3 ; 2 uses
  store i64 %i.s, ptr %i.p, align 8
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.o, align 8
  call void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE4pushB2d_(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_(ptr noundef nonnull align 8 %i.e)
  %i.v = extractvalue { ptr, i64 } %i.u, 1
  %i.w = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %i.x = icmp ult i64 %i.w, 115292150460684698
  call void @llvm.assume(i1 %i.x)
  %i.y = add i64 %i.v, %i.w
  %i.z = load i64, ptr %i.d, align 8, !noundef !3
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %bb.b, label %.loopexit

bb.e:                                             ; preds = %.loopexit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ac = load i8, ptr %i.ab, align 8, !range !133, !noundef !3
  %i.ad = trunc nuw i8 %i.ac to i1
  %. = select i1 %i.ad, i64 -9223372036854775789, i64 -9223372036854775788
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %.loopexit
  %.sink = phi i64 [ %., %bb.e ], [ %i.r, %.loopexit ]
  store i64 %.sink, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1A_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3S_5ErrorENtNtB1A_6marker4SendEL_EENCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtB3S_11ObjectStore13delete_stream0EEB2B_9size_hintB5f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_(ptr noundef nonnull align 8 %i.b)
  %i.d = extractvalue { ptr, i64 } %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.g = icmp ult i64 %i.f, 115292150460684698
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add i64 %i.d, %i.f                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load i8, ptr %i.i, align 8, !range !133, !noundef !3
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3mapINtB5_3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1a_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3s_5ErrorENtNtB1a_6marker4SendEL_EENCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtB3s_11ObjectStore13delete_stream0EB2b_9size_hintB4P_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
  %i.m = load i64, ptr %i.a, align 8, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !110, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %i.h) ; 2 uses
  %i.s = trunc nuw i64 %i.o to i1
  br i1 %i.s, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0 = phi i64 [ %i.h, %bb.c ], [ %i.r, %bb.b ]
  %.sroa.6.0 = phi i64 [ 0, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %i.t = add i64 %.sroa.6.0, %i.h                 ; 2 uses
  %i.u = icmp uge i64 %i.t, %.sroa.6.0
  %.6 = zext i1 %i.u to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.4.0 = phi i64 [ %i.t, %bb.d ], [ undef, %bb.b ]
  %.sroa.05.0 = phi i64 [ %.6, %bb.d ], [ 0, %bb.b ]
  %.sroa.04.1 = phi i64 [ %.sroa.04.0, %bb.d ], [ %i.r, %bb.b ]
  store i64 %.sroa.04.1, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0, ptr %i.w, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4taskINtB5_12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00EENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollB1S_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !align !12, !noundef !3 ; 3 uses
  store ptr null, ptr %1, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !103

bb.b:                                             ; preds = %bb.a
  %i.b = invoke { i1, i8 } @_RNvNtNtCskQDtHcQtBkN_5tokio4task4coop4stop()
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00EINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBP_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 %i.a)
  ret void

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.c

bb.f:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00EEB1n_(ptr %i.a) #21
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4taskINtB5_12BlockingTaskNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollB1j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [176 x i8], align 8               ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [176 x i8], align 8               ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 13 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.sroa.01.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  store i64 -9223372036854775808, ptr %1, align 8
  %.not = icmp eq i64 %.sroa.01.0.copyload, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b, !prof !103

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.01.0.copyload, ptr %i.k, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa.0.0..sroa_idx, i64 40, i1 false)
  %i.l = invoke { i1, i8 } @_RNvNtNtCskQDtHcQtBkN_5tokio4task4coop4stop()
          to label %bb.d unwind label %bb.aj      ; 0 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !137
  invoke void @_RINvNtCs2pqxYH9ZEk8_3std2fs8metadataRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j)
          to label %bb.f unwind label %bb.e, !noalias !139

bb.e:                                             ; preds = %bb.s, %bb.r, %bb.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2pqxYH9ZEk8_3std2fs8MetadataNtNtNtB16_2io5error5ErrorEECs7JU2D1aBbVY_15deltalake_mount.exit34.i, %bb.g, %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.f:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.i, align 8, !range !131, !noalias !137, !noundef !3
  %.not.i.a = icmp eq i64 %i.n, 2
  br i1 %.not.i.a, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2pqxYH9ZEk8_3std2fs8MetadataNtNtNtB16_2io5error5ErrorEECs7JU2D1aBbVY_15deltalake_mount.exit34.i unwind label %bb.e, !noalias !139

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 24, i1 false), !noalias !139
end_hunk_0
