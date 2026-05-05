inline.NumInlined: 302
inline.NumDeleted: 179
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs7JU2D1aBbVY_15deltalake_mount:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7JU2D1aBbVY_15deltalake_mount.exit7.i.i: ; preds = %.lr.ph3
  %lsr.iv.next13 = add i64 %lsr.iv12, -1          ; 2 uses
  %scevgep18 = getelementptr i8, ptr %lsr.iv17, i64 32
  %i.n = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next13
  br i1 %i.n, label %.body.loopexit, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %lsr.iv16.lcssa = phi ptr [ %lsr.iv15, %.lr.ph ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.o = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs7JU2D1aBbVY_15deltalake_mount:bb.a
  br label %.lr.ph3

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7JU2D1aBbVY_15deltalake_mount.exit7.i.i
  %lsr.iv17 = phi ptr [ %lsr.iv16.lcssa, %.lr.ph3.preheader ], [ %scevgep18, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7JU2D1aBbVY_15deltalake_mount.exit7.i.i ] ; 5 uses
  %lsr.iv12 = phi i64 [ %i.d, %.lr.ph3.preheader ], [ %lsr.iv.next13, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7JU2D1aBbVY_15deltalake_mount.exit7.i.i ]
  %scevgep21.a = getelementptr i8, ptr %lsr.iv17, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
end_hunk_1
begin_hunk_2_@_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs7JU2D1aBbVY_15deltalake_mount.exit.i
  %lsr.iv21 = phi ptr [ %scevgep20.a, %.lr.ph.i.preheader ], [ %scevgep22, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs7JU2D1aBbVY_15deltalake_mount.exit.i ] ; 3 uses
  %lsr.iv11 = phi ptr [ %i.b, %.lr.ph.i.preheader ], [ %scevgep, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs7JU2D1aBbVY_15deltalake_mount.exit.i ] ; 7 uses
  %lsr.iv = phi i64 [ 1, %.lr.ph.i.preheader ], [ %lsr.iv.next, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs7JU2D1aBbVY_15deltalake_mount.exit.i ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.g = load i64, ptr %lsr.iv11, align 8, !range !77, !alias.scope !374, !noundef !3
end_hunk_2
begin_hunk_3_@_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
bb.d:                                             ; preds = %.lr.ph
  %lsr.iv.next19 = add i64 %lsr.iv18, -1          ; 2 uses
  %scevgep24 = getelementptr i8, ptr %lsr.iv23, i64 80
  %i.p = icmp eq i64 %lsr.iv24, %lsr.iv.next19
  br i1 %i.p, label %._crit_edge.loopexit, label %.lr.ph

bb.e:                                             ; preds = %bb.b
  %lsr.iv28.lcssa30 = phi ptr [ %lsr.iv21, %bb.b ]
  %lsr.iv.lcssa22 = phi i64 [ %lsr.iv, %bb.b ]
  %lsr.iv.lcssa16 = phi i64 [ %lsr.iv, %bb.b ]
  %lpad10 = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %lsr.iv28.lcssa = phi ptr [ %lsr.iv21, %bb.c ]
  %lsr.iv.lcssa21 = phi i64 [ %lsr.iv, %bb.c ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %bb.c ]
  %lpad = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %lsr.iv2832 = phi ptr [ %lsr.iv28.lcssa, %bb.f ], [ %lsr.iv28.lcssa30, %bb.e ]
  %lsr.iv24 = phi i64 [ %lsr.iv.lcssa21, %bb.f ], [ %lsr.iv.lcssa22, %bb.e ]
  %.lcssa = phi i64 [ %lsr.iv.lcssa, %bb.f ], [ %lsr.iv.lcssa16, %bb.e ]
  %lpad.phi = phi { ptr, i32 } [ %lpad, %bb.f ], [ %lpad10, %bb.e ]
  %i.q = icmp eq i64 %.lcssa, %i.d
end_hunk_3
begin_hunk_4_@_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %lsr.iv23 = phi ptr [ %lsr.iv2832, %.lr.ph.preheader ], [ %scevgep24, %bb.d ] ; 2 uses
  %lsr.iv18 = phi i64 [ %i.d, %.lr.ph.preheader ], [ %lsr.iv.next19, %bb.d ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(80) %lsr.iv23) #21
          to label %bb.d unwind label %bb.h
end_hunk_4
begin_hunk_5_@_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2h_5ErrorEEECs7JU2D1aBbVY_15deltalake_mount.exit.i
  %lsr.iv18 = phi ptr [ %scevgep17.a, %.lr.ph.i.preheader ], [ %scevgep19, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2h_5ErrorEEECs7JU2D1aBbVY_15deltalake_mount.exit.i ] ; 3 uses
  %lsr.iv11 = phi ptr [ %i.b, %.lr.ph.i.preheader ], [ %scevgep, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2h_5ErrorEEECs7JU2D1aBbVY_15deltalake_mount.exit.i ] ; 4 uses
  %lsr.iv = phi i64 [ 1, %.lr.ph.i.preheader ], [ %lsr.iv.next, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2h_5ErrorEEECs7JU2D1aBbVY_15deltalake_mount.exit.i ] ; 5 uses
  %i.g = load i64, ptr %lsr.iv11, align 8, !range !77, !alias.scope !386, !noundef !3
  %i.h = icmp eq i64 %i.g, -9223372036854775790
  br i1 %i.h, label %bb.b, label %bb.c
end_hunk_5
begin_hunk_6_@_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
bb.d:                                             ; preds = %.lr.ph
  %lsr.iv.next16 = add i64 %lsr.iv15, -1          ; 2 uses
  %scevgep21 = getelementptr i8, ptr %lsr.iv20, i64 80
  %i.k = icmp eq i64 %lsr.iv21, %lsr.iv.next16
  br i1 %i.k, label %._crit_edge.loopexit, label %.lr.ph

bb.e:                                             ; preds = %bb.b
  %lsr.iv25.lcssa27 = phi ptr [ %lsr.iv18, %bb.b ]
  %lsr.iv.lcssa19 = phi i64 [ %lsr.iv, %bb.b ]
  %lsr.iv.lcssa13 = phi i64 [ %lsr.iv, %bb.b ]
  %lpad10 = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %lsr.iv25.lcssa = phi ptr [ %lsr.iv18, %bb.c ]
  %lsr.iv.lcssa18 = phi i64 [ %lsr.iv, %bb.c ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %bb.c ]
  %lpad = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %lsr.iv2529 = phi ptr [ %lsr.iv25.lcssa, %bb.f ], [ %lsr.iv25.lcssa27, %bb.e ]
  %lsr.iv21 = phi i64 [ %lsr.iv.lcssa18, %bb.f ], [ %lsr.iv.lcssa19, %bb.e ]
  %.lcssa = phi i64 [ %lsr.iv.lcssa, %bb.f ], [ %lsr.iv.lcssa13, %bb.e ]
  %lpad.phi = phi { ptr, i32 } [ %lpad, %bb.f ], [ %lpad10, %bb.e ]
  %i.l = icmp eq i64 %.lcssa, %i.d
end_hunk_6
begin_hunk_7_@_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %lsr.iv20 = phi ptr [ %lsr.iv2529, %.lr.ph.preheader ], [ %scevgep21, %bb.d ] ; 2 uses
  %lsr.iv15 = phi i64 [ %i.d, %.lr.ph.preheader ], [ %lsr.iv.next16, %bb.d ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2h_5ErrorEEECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(80) %lsr.iv20) #21
          to label %bb.d unwind label %bb.h
end_hunk_7
begin_hunk_8_@_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7JU2D1aBbVY_15deltalake_mount.exit7.i: ; preds = %.lr.ph3
  %lsr.iv.next13 = add i64 %lsr.iv12, -1          ; 2 uses
  %scevgep18 = getelementptr i8, ptr %lsr.iv17, i64 32
  %i.n = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next13
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7JU2D1aBbVY_15deltalake_mount.exit7.i._crit_edge.loopexit, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %lsr.iv16.lcssa = phi ptr [ %lsr.iv15, %.lr.ph ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.o = landingpad { ptr, i32 }
          cleanup
end_hunk_8
begin_hunk_9_@_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  br label %.lr.ph3

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7JU2D1aBbVY_15deltalake_mount.exit7.i
  %lsr.iv17 = phi ptr [ %lsr.iv16.lcssa, %.lr.ph3.preheader ], [ %scevgep18, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7JU2D1aBbVY_15deltalake_mount.exit7.i ] ; 5 uses
  %lsr.iv12 = phi i64 [ %i.d, %.lr.ph3.preheader ], [ %lsr.iv.next13, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7JU2D1aBbVY_15deltalake_mount.exit7.i ]
  %scevgep21.a = getelementptr i8, ptr %lsr.iv17, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
end_hunk_9
