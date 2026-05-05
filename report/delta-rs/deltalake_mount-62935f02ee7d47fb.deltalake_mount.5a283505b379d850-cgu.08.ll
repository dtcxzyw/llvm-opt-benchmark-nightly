inline.NumInlined: 222
inline.NumDeleted: 108
begin_hunk_0_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1Z_11ObjectStoreEL_EEB4S_10get_ranges00NtB1Z_5ErrorINtNtBc_3pin3PinINtNtB4o_5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB5y_ENtNtBc_6marker4SendEL_EEE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB8p_8for_each4callB7i_NCINvMsj_NtB4o_3vecINtB9F_3VecB7i_E14extend_trustedBN_E0E0ECs7JU2D1aBbVY_15deltalake_mount:bb.a
  %lsr.iv78 = phi ptr [ %scevgep79, %bb.e ], [ %i.b, %bb.b ] ; 4 uses
  %lsr.iv77 = phi i64 [ %lsr.iv.next, %bb.e ], [ %i.m, %bb.b ]
  %lsr.iv = phi ptr [ %scevgep76, %bb.e ], [ %scevgep, %bb.b ] ; 2 uses
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.an, %bb.e ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1Z_11ObjectStoreEL_EEB4S_10get_ranges00NtB1Z_5ErrorINtNtBc_3pin3PinINtNtB4o_5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB5y_ENtNtBc_6marker4SendEL_EEE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB8p_8for_each4callB7i_NCINvMsj_NtB4o_3vecINtB9F_3VecB7i_E14extend_trustedBN_E0E0ECs7JU2D1aBbVY_15deltalake_mount:bb.a
  br i1 %i.z, label %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB8_11ObjectStoreEL_EEB31_10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB2x_5boxed3BoxDNtNtNtB3W_6future6future6Futurep6OutputINtNtB3W_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3G_ENtNtB3W_6marker4SendEL_EEE00Cs7JU2D1aBbVY_15deltalake_mount.exit.i.i, label %..invoke_crit_edge

.invokesplit:                                     ; preds = %.noexc.i
  %.val15.i.lcssa82 = phi i64 [ %.val15.i, %.noexc.i ]
  br label %.invoke

..invoke_crit_edge:                               ; preds = %bb.d
  %.val15.i.lcssa83 = phi i64 [ %.val15.i, %bb.d ]
  br label %.invoke

.invoke:                                          ; preds = %.invokesplit, %..invoke_crit_edge
  %.lcssa = phi i64 [ %i.v, %..invoke_crit_edge ], [ %i.v, %.invokesplit ]
  %.val15.i.lcssa68 = phi i64 [ %.val15.i.lcssa83, %..invoke_crit_edge ], [ %.val15.i.lcssa82, %.invokesplit ]
  %i.aa = phi i64 [ %i.y, %..invoke_crit_edge ], [ %i.w, %.invokesplit ]
  %i.ab = phi ptr [ @2, %..invoke_crit_edge ], [ @1, %.invokesplit ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.lcssa, i64 noundef %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #15
          to label %.cont unwind label %.loopexit.split-lp.i, !noalias !39

end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtB1Z_11ObjectStore10get_ranges00NtB1Z_5ErrorINtNtBc_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB4u_ENtNtBc_6marker4SendEL_EEE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7B_8for_each4callB6u_NCINvMsj_NtB51_3vecINtB8R_3VecB6u_E14extend_trustedBN_E0E0EB2Y_:bb.a
  %lsr.iv78 = phi ptr [ %scevgep79, %bb.e ], [ %i.b, %bb.b ] ; 4 uses
  %lsr.iv77 = phi i64 [ %lsr.iv.next, %bb.e ], [ %i.m, %bb.b ]
  %lsr.iv = phi ptr [ %scevgep76, %bb.e ], [ %scevgep, %bb.b ] ; 2 uses
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.an, %bb.e ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !51
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
end_hunk_2
begin_hunk_3_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtB1Z_11ObjectStore10get_ranges00NtB1Z_5ErrorINtNtBc_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB4u_ENtNtBc_6marker4SendEL_EEE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7B_8for_each4callB6u_NCINvMsj_NtB51_3vecINtB8R_3VecB6u_E14extend_trustedBN_E0E0EB2Y_:bb.a
  br i1 %i.z, label %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2S_6future6future6Futurep6OutputINtNtB2S_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB2C_ENtNtB2S_6marker4SendEL_EEE00B17_.exit.i.i, label %..invoke_crit_edge

.invokesplit:                                     ; preds = %.noexc.i
  %.val15.i.lcssa82 = phi i64 [ %.val15.i, %.noexc.i ]
  br label %.invoke

..invoke_crit_edge:                               ; preds = %bb.d
  %.val15.i.lcssa83 = phi i64 [ %.val15.i, %bb.d ]
  br label %.invoke

.invoke:                                          ; preds = %.invokesplit, %..invoke_crit_edge
  %.lcssa = phi i64 [ %i.v, %..invoke_crit_edge ], [ %i.v, %.invokesplit ]
  %.val15.i.lcssa68 = phi i64 [ %.val15.i.lcssa83, %..invoke_crit_edge ], [ %.val15.i.lcssa82, %.invokesplit ]
  %i.aa = phi i64 [ %i.y, %..invoke_crit_edge ], [ %i.w, %.invokesplit ]
  %i.ab = phi ptr [ @2, %..invoke_crit_edge ], [ @1, %.invokesplit ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.lcssa, i64 noundef %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #15
          to label %.cont unwind label %.loopexit.split-lp.i, !noalias !60

end_hunk_3
begin_hunk_4_@_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringBX_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
bb.c:                                             ; preds = %.lr.ph6
  %lsr.iv.next12 = add i64 %lsr.iv11, -1          ; 2 uses
  %scevgep17 = getelementptr i8, ptr %lsr.iv16, i64 48
  %i.q = icmp eq i64 %lsr.iv, %lsr.iv.next12
  br i1 %i.q, label %.body.loopexit, label %.lr.ph6

bb.d:                                             ; preds = %.lr.ph
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.r = landingpad { ptr, i32 }
          cleanup
end_hunk_4
begin_hunk_5_@_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringBX_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  br label %.lr.ph6

.lr.ph6:                                          ; preds = %.lr.ph6.preheader, %bb.c
  %lsr.iv16 = phi ptr [ %lsr.iv14, %.lr.ph6.preheader ], [ %scevgep17, %bb.c ] ; 2 uses
  %lsr.iv11 = phi i64 [ %i.h, %.lr.ph6.preheader ], [ %lsr.iv.next12, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringBH_EECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(48) %lsr.iv16) #14
          to label %bb.c unwind label %bb.e
end_hunk_5
