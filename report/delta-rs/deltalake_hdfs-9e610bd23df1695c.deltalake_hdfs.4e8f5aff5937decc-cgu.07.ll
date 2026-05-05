inline.NumInlined: 60
inline.NumDeleted: 41
begin_hunk_0_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB1Z_11ObjectStore10get_ranges00NtB1Z_5ErrorINtNtBc_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB4o_ENtNtBc_6marker4SendEL_EEE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7v_8for_each4callB6o_NCINvMsj_NtB4V_3vecINtB8L_3VecB6o_E14extend_trustedBN_E0E0ECs6KaIMXx2hZw_14deltalake_hdfs:bb.a
  %lsr.iv78 = phi ptr [ %scevgep79, %bb.e ], [ %i.b, %bb.b ] ; 4 uses
  %lsr.iv77 = phi i64 [ %lsr.iv.next, %bb.e ], [ %i.m, %bb.b ]
  %lsr.iv = phi ptr [ %scevgep76, %bb.e ], [ %scevgep, %bb.b ] ; 2 uses
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.an, %bb.e ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB1Z_11ObjectStore10get_ranges00NtB1Z_5ErrorINtNtBc_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB4o_ENtNtBc_6marker4SendEL_EEE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7v_8for_each4callB6o_NCINvMsj_NtB4V_3vecINtB8L_3VecB6o_E14extend_trustedBN_E0E0ECs6KaIMXx2hZw_14deltalake_hdfs:bb.a
  br i1 %i.z, label %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2M_6future6future6Futurep6OutputINtNtB2M_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB2w_ENtNtB2M_6marker4SendEL_EEE00Cs6KaIMXx2hZw_14deltalake_hdfs.exit.i.i, label %..invoke_crit_edge

.invokesplit:                                     ; preds = %.noexc.i
  %.lcssa.ph = phi i64 [ %i.v, %.noexc.i ]
  %.val15.i.lcssa82 = phi i64 [ %.val15.i, %.noexc.i ]
  %.ph = phi i64 [ %i.w, %.noexc.i ]
  %.ph76 = phi ptr [ @6, %.noexc.i ]
  br label %.invoke

..invoke_crit_edge:                               ; preds = %bb.d
  %.val15.i.lcssa79 = phi i64 [ %.val15.i, %bb.d ]
  %split = phi i64 [ %i.v, %bb.d ]
  %.val15.i.lcssa83 = phi i64 [ %.val15.i, %bb.d ] ; 0 uses
  %split74 = phi i64 [ %i.y, %bb.d ]
  %split75 = phi ptr [ @7, %bb.d ]
  br label %.invoke

.invoke:                                          ; preds = %.invokesplit, %..invoke_crit_edge
  %.lcssa = phi i64 [ %split, %..invoke_crit_edge ], [ %.lcssa.ph, %.invokesplit ]
  %.val15.i.lcssa68 = phi i64 [ %.val15.i.lcssa79, %..invoke_crit_edge ], [ %.val15.i.lcssa82, %.invokesplit ]
  %i.aa = phi i64 [ %split74, %..invoke_crit_edge ], [ %.ph, %.invokesplit ]
  %i.ab = phi ptr [ %split75, %..invoke_crit_edge ], [ %.ph76, %.invokesplit ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.lcssa, i64 noundef %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #16
          to label %.cont unwind label %.loopexit.split-lp.i, !noalias !49

end_hunk_1
