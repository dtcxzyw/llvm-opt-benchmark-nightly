inline.NumInlined: 245
inline.NumDeleted: 142
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsa5Qem16B4JI_15deltalake_azure:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsa5Qem16B4JI_15deltalake_azure.exit7.i.i: ; preds = %.lr.ph3
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
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsa5Qem16B4JI_15deltalake_azure:bb.a
  br label %.lr.ph3

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsa5Qem16B4JI_15deltalake_azure.exit7.i.i
  %lsr.iv17 = phi ptr [ %lsr.iv16.lcssa, %.lr.ph3.preheader ], [ %scevgep18, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsa5Qem16B4JI_15deltalake_azure.exit7.i.i ] ; 5 uses
  %lsr.iv12 = phi i64 [ %i.d, %.lr.ph3.preheader ], [ %lsr.iv.next13, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsa5Qem16B4JI_15deltalake_azure.exit7.i.i ]
  %scevgep21.a = getelementptr i8, ptr %lsr.iv17, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
end_hunk_1
begin_hunk_2_@_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBL_5value11HeaderValueEECsa5Qem16B4JI_15deltalake_azure.exit7.i: ; preds = %.lr.ph3
  %lsr.iv.next13 = add i64 %lsr.iv12, -1          ; 2 uses
  %scevgep18 = getelementptr i8, ptr %lsr.iv17, i64 72
  %i.n = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next13
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBL_5value11HeaderValueEECsa5Qem16B4JI_15deltalake_azure.exit7.i._crit_edge.loopexit, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %lsr.iv16.lcssa = phi ptr [ %lsr.iv15, %.lr.ph ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.o = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
  br label %.lr.ph3

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBL_5value11HeaderValueEECsa5Qem16B4JI_15deltalake_azure.exit7.i
  %lsr.iv17 = phi ptr [ %lsr.iv16.lcssa, %.lr.ph3.preheader ], [ %scevgep18, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBL_5value11HeaderValueEECsa5Qem16B4JI_15deltalake_azure.exit7.i ] ; 5 uses
  %lsr.iv12 = phi i64 [ %i.d, %.lr.ph3.preheader ], [ %lsr.iv.next13, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBL_5value11HeaderValueEECsa5Qem16B4JI_15deltalake_azure.exit7.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %scevgep21.a = getelementptr i8, ptr %lsr.iv17, i64 -24
end_hunk_3
begin_hunk_4_@_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
bb.c:                                             ; preds = %.lr.ph3
  %lsr.iv.next9 = add i64 %lsr.iv8, -1            ; 2 uses
  %scevgep14 = getelementptr i8, ptr %lsr.iv13, i64 80
  %i.i = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next9
  br i1 %i.i, label %._crit_edge.loopexit, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %lsr.iv12.lcssa = phi ptr [ %lsr.iv11, %.lr.ph ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.j = landingpad { ptr, i32 }
          cleanup
end_hunk_4
begin_hunk_5_@_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
  br label %.lr.ph3

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %bb.c
  %lsr.iv13 = phi ptr [ %lsr.iv12.lcssa, %.lr.ph3.preheader ], [ %scevgep14, %bb.c ] ; 2 uses
  %lsr.iv8 = phi i64 [ %i.d, %.lr.ph3.preheader ], [ %lsr.iv.next9, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef align 8 dereferenceable(80) %lsr.iv13) #12
          to label %bb.c unwind label %bb.e
end_hunk_5
begin_hunk_6_@_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsa5Qem16B4JI_15deltalake_azure.exit7.i: ; preds = %.lr.ph3
  %lsr.iv.next13 = add i64 %lsr.iv12, -1          ; 2 uses
  %scevgep18 = getelementptr i8, ptr %lsr.iv17, i64 32
  %i.n = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next13
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsa5Qem16B4JI_15deltalake_azure.exit7.i._crit_edge.loopexit, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %lsr.iv16.lcssa = phi ptr [ %lsr.iv15, %.lr.ph ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.o = landingpad { ptr, i32 }
          cleanup
end_hunk_6
begin_hunk_7_@_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
  br label %.lr.ph3

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsa5Qem16B4JI_15deltalake_azure.exit7.i
  %lsr.iv17 = phi ptr [ %lsr.iv16.lcssa, %.lr.ph3.preheader ], [ %scevgep18, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsa5Qem16B4JI_15deltalake_azure.exit7.i ] ; 5 uses
  %lsr.iv12 = phi i64 [ %i.d, %.lr.ph3.preheader ], [ %lsr.iv.next13, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsa5Qem16B4JI_15deltalake_azure.exit7.i ]
  %scevgep21.a = getelementptr i8, ptr %lsr.iv17, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
end_hunk_7
begin_hunk_8_@_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateECsa5Qem16B4JI_15deltalake_azure.exit7.i: ; preds = %.lr.ph3
  %lsr.iv.next10 = add i64 %lsr.iv9, -1           ; 2 uses
  %scevgep15 = getelementptr i8, ptr %lsr.iv14, i64 32
  %i.i = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next10
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateECsa5Qem16B4JI_15deltalake_azure.exit7.i._crit_edge.loopexit, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %lsr.iv13.lcssa = phi ptr [ %lsr.iv12, %.lr.ph ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.j = landingpad { ptr, i32 }
          cleanup
end_hunk_8
begin_hunk_9_@_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure:bb.a
  br label %.lr.ph3

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateECsa5Qem16B4JI_15deltalake_azure.exit7.i
  %lsr.iv14 = phi ptr [ %lsr.iv13.lcssa, %.lr.ph3.preheader ], [ %scevgep15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateECsa5Qem16B4JI_15deltalake_azure.exit7.i ] ; 2 uses
  %lsr.iv9 = phi i64 [ %i.d, %.lr.ph3.preheader ], [ %lsr.iv.next10, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateECsa5Qem16B4JI_15deltalake_azure.exit7.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %lsr.iv14)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateECsa5Qem16B4JI_15deltalake_azure.exit7.i unwind label %bb.c
end_hunk_9
