inline.NumInlined: 427
inline.NumDeleted: 259
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtBO_8VecDequeppENtNtNtB4_3ops4drop4Drop4drop7DropperNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit7.i.i: ; preds = %.lr.ph3
  %lsr.iv.next13 = add i64 %lsr.iv12, -1          ; 2 uses
  %scevgep18 = getelementptr i8, ptr %lsr.iv17, i64 32
  %i.j = icmp eq i64 %lsr.iv, %lsr.iv.next13
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit7.i.i._crit_edge.loopexit, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.k = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtBO_8VecDequeppENtNtNtB4_3ops4drop4Drop4drop7DropperNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br label %.lr.ph3

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit7.i.i
  %lsr.iv17 = phi ptr [ %lsr.iv15, %.lr.ph3.preheader ], [ %scevgep18, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit7.i.i ] ; 5 uses
  %lsr.iv12 = phi i64 [ %.8.val, %.lr.ph3.preheader ], [ %lsr.iv.next13, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit7.i.i ]
  %scevgep21.a = getelementptr i8, ptr %lsr.iv17, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1Z_3aws8AmazonS3NtB1Z_11ObjectStore10get_ranges00NtB1Z_5ErrorINtNtBc_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3M_ENtNtBc_6marker4SendEL_EEE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6T_8for_each4callB5M_NCINvMsj_NtB4j_3vecINtB89_3VecB5M_E14extend_trustedBN_E0E0ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %lsr.iv78 = phi ptr [ %scevgep79, %bb.e ], [ %i.b, %bb.b ] ; 4 uses
  %lsr.iv77 = phi i64 [ %lsr.iv.next, %bb.e ], [ %i.m, %bb.b ]
  %lsr.iv = phi ptr [ %scevgep76, %bb.e ], [ %scevgep, %bb.b ] ; 2 uses
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.an, %bb.e ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
end_hunk_2
begin_hunk_3_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1Z_3aws8AmazonS3NtB1Z_11ObjectStore10get_ranges00NtB1Z_5ErrorINtNtBc_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3M_ENtNtBc_6marker4SendEL_EEE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6T_8for_each4callB5M_NCINvMsj_NtB4j_3vecINtB89_3VecB5M_E14extend_trustedBN_E0E0ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br i1 %i.z, label %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB8_3aws8AmazonS3NtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB29_6future6future6Futurep6OutputINtNtB29_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB1T_ENtNtB29_6marker4SendEL_EEE00Csj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %..invoke_crit_edge

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
  %i.ab = phi ptr [ @11, %..invoke_crit_edge ], [ @10, %.invokesplit ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.lcssa, i64 noundef %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #19
          to label %.cont unwind label %.loopexit.split-lp.i, !noalias !88

end_hunk_3
begin_hunk_4_@_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB4_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit7.i: ; preds = %.lr.ph19
  %lsr.iv.next39 = add i64 %lsr.iv38, -1          ; 2 uses
  %scevgep44 = getelementptr i8, ptr %lsr.iv43, i64 32
  %i.ae = icmp eq i64 %lsr.iv, %lsr.iv.next39
  br i1 %i.ae, label %.body.loopexit, label %.lr.ph19

bb.e:                                             ; preds = %.lr.ph
  %.lcssa31 = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.af = landingpad { ptr, i32 }
          cleanup
end_hunk_4
begin_hunk_5_@_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB4_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br label %.lr.ph19

.lr.ph19:                                         ; preds = %.lr.ph19.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit7.i
  %lsr.iv43 = phi ptr [ %lsr.iv41, %.lr.ph19.preheader ], [ %scevgep44, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit7.i ] ; 5 uses
  %lsr.iv38 = phi i64 [ %i.p, %.lr.ph19.preheader ], [ %lsr.iv.next39, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit7.i ]
  %scevgep47.a = getelementptr i8, ptr %lsr.iv43, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
end_hunk_5
begin_hunk_6_@_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB4_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit7.i.i.i: ; preds = %.lr.ph23
  %lsr.iv.next57 = add i64 %lsr.iv56, -1          ; 2 uses
  %scevgep62 = getelementptr i8, ptr %lsr.iv61, i64 32
  %i.au = icmp eq i64 %lsr.iv48, %lsr.iv.next57
  br i1 %i.au, label %common.resume.loopexit, label %.lr.ph23

bb.g:                                             ; preds = %.lr.ph21
  %.lcssa = phi i64 [ %lsr.iv48, %.lr.ph21 ]
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_6
begin_hunk_7_@_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB4_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br label %.lr.ph23

.lr.ph23:                                         ; preds = %.lr.ph23.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit7.i.i.i
  %lsr.iv61 = phi ptr [ %lsr.iv59.a, %.lr.ph23.preheader ], [ %scevgep62, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit7.i.i.i ] ; 5 uses
  %lsr.iv56 = phi i64 [ %.sroa.11.0, %.lr.ph23.preheader ], [ %lsr.iv.next57, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit7.i.i.i ]
  %scevgep65 = getelementptr i8, ptr %lsr.iv61, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
end_hunk_7
