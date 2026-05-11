inline.NumInlined: 5997
inline.NumDeleted: 1809
begin_hunk_0_@_RNvXs2_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1s_8Snapshot12commit_infos0s0_00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs7p2uQeJxui2_9deltalake:bb.a

bb.ak:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16319
  %.sroa.0.0.copyload34.pre.i.i = load i64, ptr %i.i, align 8, !noalias !16325
  br label %bb.bc

bb.al:                                            ; preds = %bb.z
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #50
          to label %.noexc.i.i unwind label %bb.bb, !noalias !16326

.noexc.i.i:                                       ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.z
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #50
          to label %.noexc15.i.i unwind label %bb.bb, !noalias !16326

.noexc15.i.i:                                     ; preds = %bb.am
  unreachable
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1s_8Snapshot12commit_infos0s0_00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs7p2uQeJxui2_9deltalake.exit11.i.i.i unwind label %bb.ay, !noalias !16324

bb.ap:                                            ; preds = %bb.an
  %i.dn = load i64, ptr %i.j, align 8, !range !5056, !noalias !16319, !noundef !19 ; 7 uses
  %i.do = icmp eq i64 %i.dn, -9223372036854775788
  br i1 %i.do, label %.thread.i.i, label %bb.aq

end_hunk_1
begin_hunk_2_@_RNvXs2_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1s_8Snapshot12commit_infos0s0_00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i.i, i64 24, i1 false), !noalias !16319
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 504
  call void @llvm.experimental.noalias.scope.decl(metadata !16327)
  call void @llvm.experimental.noalias.scope.decl(metadata !16330)
  %i.ds = load i64, ptr %i.dr, align 8, !range !98, !alias.scope !16333, !noalias !16319, !noundef !19
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 4 uses
  %i.du = icmp eq i64 %i.ds, 0
  br i1 %i.du, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !16334)
  call void @llvm.experimental.noalias.scope.decl(metadata !16337)
  %i.dv = load ptr, ptr %i.dt, align 8, !alias.scope !16340, !noalias !16319, !nonnull !19, !noundef !19
  %i.dw = atomicrmw sub ptr %i.dv, i64 1 release, align 8, !noalias !16341
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %.invoke19.i.i.i, label %bb.bc

bb.au:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !16342)
  call void @llvm.experimental.noalias.scope.decl(metadata !16345)
  %i.dy = load ptr, ptr %i.dt, align 8, !alias.scope !16348, !noalias !16319, !nonnull !19, !noundef !19
  %i.dz = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !16349
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %.invoke.i.i.i, label %bb.bc

bb.av:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i.i, i64 24, i1 false), !noalias !16319
  store i64 -9223372036854775799, ptr %i.i, align 8, !alias.scope !16350, !noalias !16353
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 504
  call void @llvm.experimental.noalias.scope.decl(metadata !16355)
  call void @llvm.experimental.noalias.scope.decl(metadata !16358)
  %i.ec = load i64, ptr %i.eb, align 8, !range !98, !alias.scope !16361, !noalias !16319, !noundef !19
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 4 uses
  %i.ee = icmp eq i64 %i.ec, 0
  br i1 %i.ee, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !16362)
  call void @llvm.experimental.noalias.scope.decl(metadata !16365)
  %i.ef = load ptr, ptr %i.ed, align 8, !alias.scope !16368, !noalias !16319, !nonnull !19, !noundef !19
  %i.eg = atomicrmw sub ptr %i.ef, i64 1 release, align 8, !noalias !16369
  %i.eh = icmp eq i64 %i.eg, 1
  br i1 %i.eh, label %.invoke19.i.i.i, label %bb.bc

.invoke19.i.i.i:                                  ; preds = %bb.aw, %bb.at
  %.sroa.0.0.copyload3463.i.i = phi i64 [ %i.dn, %bb.at ], [ -9223372036854775799, %bb.aw ]
  %i.ei = phi ptr [ %i.dt, %bb.at ], [ %i.ed, %bb.aw ]
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ei) #51
          to label %bb.bc unwind label %bb.ad, !noalias !16324

bb.ax:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !16370)
  call void @llvm.experimental.noalias.scope.decl(metadata !16373)
  %i.ej = load ptr, ptr %i.ed, align 8, !alias.scope !16376, !noalias !16319, !nonnull !19, !noundef !19
  %i.ek = atomicrmw sub ptr %i.ej, i64 1 release, align 8, !noalias !16377
  %i.el = icmp eq i64 %i.ek, 1
  br i1 %i.el, label %.invoke.i.i.i, label %bb.bc

.invoke.i.i.i:                                    ; preds = %bb.ax, %bb.au
  %.sroa.0.0.copyload3462.i.i = phi i64 [ %i.dn, %bb.au ], [ -9223372036854775799, %bb.ax ]
  %i.em = phi ptr [ %i.dt, %bb.au ], [ %i.ed, %bb.ax ]
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.em) #51
end_hunk_2
begin_hunk_3_@_RNvXs2_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1s_8Snapshot12commit_infos0s0_00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
  %i.eq = phi ptr [ %i.cb, %bb.ak ], [ %i.di, %bb.at ], [ %i.di, %bb.au ], [ %i.di, %bb.aw ], [ %i.di, %.invoke19.i.i.i ], [ %i.di, %bb.ax ], [ %i.di, %.invoke.i.i.i ] ; 2 uses
  %i.er = phi ptr [ %i.cc, %bb.ak ], [ %i.dj, %bb.at ], [ %i.dj, %bb.au ], [ %i.dj, %bb.aw ], [ %i.dj, %.invoke19.i.i.i ], [ %i.dj, %bb.ax ], [ %i.dj, %.invoke.i.i.i ]
  %i.es = phi ptr [ %i.cd, %bb.ak ], [ %i.dk, %bb.at ], [ %i.dk, %bb.au ], [ %i.dk, %bb.aw ], [ %i.dk, %.invoke19.i.i.i ], [ %i.dk, %bb.ax ], [ %i.dk, %.invoke.i.i.i ]
  %.sroa.0.0.copyload34.i.i = phi i64 [ %.sroa.0.0.copyload34.pre.i.i, %bb.ak ], [ %i.dn, %bb.at ], [ %i.dn, %bb.au ], [ -9223372036854775799, %bb.aw ], [ %.sroa.0.0.copyload3463.i.i, %.invoke19.i.i.i ], [ -9223372036854775799, %bb.ax ], [ %.sroa.0.0.copyload3462.i.i, %.invoke.i.i.i ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 529
  store i8 0, ptr %i.et, align 1, !noalias !16319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !16319
  %.sroa.835.0..sroa_idx36.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.835.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.835.0..sroa_idx36.i.i, align 8, !noalias !16325
  %.sroa.835.sroa.6.0..sroa.835.0..sroa_idx36.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.835.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.835.sroa.6.0..sroa.835.0..sroa_idx36.sroa_idx.i.i, i64 24, i1 false), !noalias !16325
  %.sroa.835.sroa.7.0..sroa.835.0..sroa_idx36.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.835.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.835.sroa.7.0..sroa.835.0..sroa_idx36.sroa_idx.i.i, i64 32, i1 false), !noalias !16325
  store i8 1, ptr %i.er, align 8, !noalias !16319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !16315
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i)
end_hunk_3
begin_hunk_4_@_RNvXs2_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1s_8Snapshot12commit_infos0s0_00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.835.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.835.sroa.7.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util20maybe_spawn_blockingNCNCNvMs0_BN_NtBN_9GetResult5bytes00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.es)
          to label %bb.bg unwind label %bb.bf, !noalias !16326

bb.bf:                                            ; preds = %bb.be
  %i.ew = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_RNvXs2_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1s_8Snapshot12commit_infos0s0_00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.3.0.i.i = phi ptr [ %.sroa.6.2.i.i.i, %bb.dx ], [ %.sroa.835.sroa.0.0.copyload.i.i, %bb.be ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 240
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(96) %i.ez)
          to label %bb.ea unwind label %bb.dz, !noalias !16326

.body.i.i:                                        ; preds = %bb.bb, %bb.az
  %i.fa = phi ptr [ %i.cg, %bb.az ], [ %.phi.trans.insert.i, %bb.bb ]
end_hunk_5
begin_hunk_6_@_RNvXs2_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1s_8Snapshot12commit_infos0s0_00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.835.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.835.sroa.7.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util20maybe_spawn_blockingNCNCNvMs0_BN_NtBN_9GetResult5bytes00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.fc) #48
          to label %bb.bi unwind label %bb.bh, !noalias !16326

bb.bh:                                            ; preds = %bb.ec, %.body21.i.i, %bb.dz, %bb.bi, %.body.i.i
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !16326
  unreachable

bb.bi:                                            ; preds = %.body21.i.i, %bb.dy, %.body.i.i, %bb.bf
end_hunk_6
begin_hunk_7_@_RNvXs2_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1s_8Snapshot12commit_infos0s0_00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
  %.pn10.pn.i.i = phi { ptr, i32 } [ %.pn8.i.i, %.body21.i.i ], [ %i.ph, %bb.dy ], [ %i.ew, %bb.bf ], [ %.pn2.i.i, %.body.i.i ]
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 240
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(96) %i.fg) #48
          to label %bb.ec unwind label %bb.bh, !noalias !16326

bb.bj:                                            ; preds = %bb.v
  %.phi.trans.insert61.i.i = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 5 uses
end_hunk_7
begin_hunk_8_@_RNvXs2_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1s_8Snapshot12commit_infos0s0_00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs7p2uQeJxui2_9deltalake:bb.a

bb.bn:                                            ; preds = %bb.bj
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #50
          to label %.noexc19.i.i unwind label %bb.dv, !noalias !16326

.noexc19.i.i:                                     ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bj
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #50
          to label %.noexc20.i.i unwind label %bb.dv, !noalias !16326

.noexc20.i.i:                                     ; preds = %bb.bo
  unreachable
end_hunk_8
begin_hunk_9_@_RNvXs2_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1s_8Snapshot12commit_infos0s0_00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5110.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i16.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtBN_5ErrorENtNtB4_6marker4SendEL_EEB4b_E0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.pg)
          to label %bb.bg unwind label %bb.dy, !noalias !16326

bb.dy:                                            ; preds = %bb.dx
  %i.ph = landingpad { ptr, i32 }
end_hunk_9
begin_hunk_10_@_RNvXs2_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1s_8Snapshot12commit_infos0s0_00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
          cleanup
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 368
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.pj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.bh, !noalias !16326

bb.ea:                                            ; preds = %bb.bg
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 368
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.pk)
          to label %bb.ee unwind label %bb.eb, !noalias !16326

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.ec, %bb.eb, %bb.dz
  %i.pl = phi ptr [ %i.ex, %bb.eb ], [ %i.ex, %bb.dz ], [ %i.fe, %bb.ec ]
end_hunk_10
begin_hunk_11_@_RNvXs2_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1s_8Snapshot12commit_infos0s0_00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
  %i.pq = phi ptr [ %i.nm, %.body.i.i.i ], [ %i.fh, %bb.dv ]
  %.pn8.i.i = phi { ptr, i32 } [ %.pn32.i.i.i, %.body.i.i.i ], [ %i.pa, %bb.dv ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtBN_5ErrorENtNtB4_6marker4SendEL_EEB4b_E0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.pq) #48
          to label %bb.bi unwind label %bb.bh, !noalias !16326

bb.ec:                                            ; preds = %bb.bi
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 368
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.pr)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.bh, !noalias !16326

bb.ed:                                            ; preds = %bb.dw, %bb.bd
  %i.ps = phi ptr [ %i.ev, %bb.bd ], [ %i.pb, %bb.dw ]
end_hunk_11
begin_hunk_12_@llvm.umax.i64
!16322 = distinct !{!16322, !16321, !"_RNCINvNtCsjyY8HP3IvQ6_12object_store4util20maybe_spawn_blockingNCNCNvMs0_B6_NtB6_9GetResult5bytes00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0Cs7p2uQeJxui2_9deltalake: argument 1"}
!16323 = !{!16320, !16322, !16316, !16304}
!16324 = !{!16320, !16316, !16304}
!16325 = !{!16322, !16316, !16318, !16304, !16306}
!16326 = !{!16316, !16304}
!16327 = !{!16328}
!16328 = distinct !{!16328, !16329, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake: argument 0"}
!16329 = distinct !{!16329, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake"}
!16330 = !{!16331}
!16331 = distinct !{!16331, !16332, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs7p2uQeJxui2_9deltalake: argument 0"}
!16332 = distinct !{!16332, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs7p2uQeJxui2_9deltalake"}
!16333 = !{!16331, !16328}
!16334 = !{!16335}
!16335 = distinct !{!16335, !16336, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECs7p2uQeJxui2_9deltalake: argument 0"}
!16336 = distinct !{!16336, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECs7p2uQeJxui2_9deltalake"}
!16337 = !{!16338}
!16338 = distinct !{!16338, !16339, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!16339 = distinct !{!16339, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!16340 = !{!16338, !16335, !16331, !16328}
!16341 = !{!16338, !16335, !16331, !16328, !16320, !16316, !16304}
!16342 = !{!16343}
!16343 = distinct !{!16343, !16344, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleEECs7p2uQeJxui2_9deltalake: argument 0"}
!16344 = distinct !{!16344, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleEECs7p2uQeJxui2_9deltalake"}
!16345 = !{!16346}
!16346 = distinct !{!16346, !16347, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!16347 = distinct !{!16347, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!16348 = !{!16346, !16343, !16331, !16328}
!16349 = !{!16346, !16343, !16331, !16328, !16320, !16316, !16304}
!16350 = !{!16351}
!16351 = distinct !{!16351, !16352, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEE13from_residualCs7p2uQeJxui2_9deltalake: argument 0"}
!16352 = distinct !{!16352, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEE13from_residualCs7p2uQeJxui2_9deltalake"}
!16353 = !{!16354, !16320, !16322, !16316, !16318, !16304, !16306}
!16354 = distinct !{!16354, !16352, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEE13from_residualCs7p2uQeJxui2_9deltalake: argument 1"}
!16355 = !{!16356}
!16356 = distinct !{!16356, !16357, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake: argument 0"}
!16357 = distinct !{!16357, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake"}
!16358 = !{!16359}
!16359 = distinct !{!16359, !16360, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs7p2uQeJxui2_9deltalake: argument 0"}
!16360 = distinct !{!16360, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs7p2uQeJxui2_9deltalake"}
!16361 = !{!16359, !16356}
!16362 = !{!16363}
!16363 = distinct !{!16363, !16364, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECs7p2uQeJxui2_9deltalake: argument 0"}
!16364 = distinct !{!16364, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECs7p2uQeJxui2_9deltalake"}
!16365 = !{!16366}
!16366 = distinct !{!16366, !16367, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!16367 = distinct !{!16367, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!16368 = !{!16366, !16363, !16359, !16356}
!16369 = !{!16366, !16363, !16359, !16356, !16320, !16316, !16304}
!16370 = !{!16371}
!16371 = distinct !{!16371, !16372, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleEECs7p2uQeJxui2_9deltalake: argument 0"}
!16372 = distinct !{!16372, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleEECs7p2uQeJxui2_9deltalake"}
!16373 = !{!16374}
!16374 = distinct !{!16374, !16375, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!16375 = distinct !{!16375, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!16376 = !{!16374, !16371, !16359, !16356}
!16377 = !{!16374, !16371, !16359, !16356, !16320, !16316, !16304}
!16378 = !{!16379, !16381, !16316, !16318, !16304, !16306}
!16379 = distinct !{!16379, !16380, !"_RNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtBX_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB6_5ErrorENtNtBX_6marker4SendEL_EEB3K_E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!16380 = distinct !{!16380, !"_RNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtBX_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB6_5ErrorENtNtBX_6marker4SendEL_EEB3K_E0Cs7p2uQeJxui2_9deltalake"}
end_hunk_12
