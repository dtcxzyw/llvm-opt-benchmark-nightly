inline.NumInlined: 543
inline.NumDeleted: 246
begin_hunk_0_@_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore9get_range0Csj34PGqTgg0L_16deltalake_lakefs:bb.a

bb.am:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !514
  %.sroa.0.0.copyload34.pre.i = load i64, ptr %i.i, align 8, !noalias !520
  br label %bb.be

bb.an:                                            ; preds = %bb.ab
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #22
          to label %.noexc.i unwind label %bb.bd, !noalias !521

.noexc.i:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.ab
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #22
          to label %.noexc15.i unwind label %bb.bd, !noalias !521

.noexc15.i:                                       ; preds = %bb.ao
  unreachable
end_hunk_0
begin_hunk_1_@_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore9get_range0Csj34PGqTgg0L_16deltalake_lakefs:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECsj34PGqTgg0L_16deltalake_lakefs.exit11.i.i unwind label %bb.ba, !noalias !519

bb.ar:                                            ; preds = %bb.ap
  %i.dw = load i64, ptr %i.j, align 8, !range !451, !noalias !514, !noundef !3 ; 7 uses
  %i.dx = icmp eq i64 %i.dw, -9223372036854775788
  br i1 %i.dx, label %.thread.i, label %bb.as

end_hunk_1
begin_hunk_2_@_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore9get_range0Csj34PGqTgg0L_16deltalake_lakefs:bb.a
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i, i64 24, i1 false), !noalias !514
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 496
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.eb = load i64, ptr %i.ea, align 8, !range !6, !alias.scope !528, !noalias !514, !noundef !3
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 4 uses
  %i.ed = icmp eq i64 %i.eb, 0
  br i1 %i.ed, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !529)
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.ee = load ptr, ptr %i.ec, align 8, !alias.scope !535, !noalias !514, !nonnull !3, !noundef !3
  %i.ef = atomicrmw sub ptr %i.ee, i64 1 release, align 8, !noalias !536
  %i.eg = icmp eq i64 %i.ef, 1
  br i1 %i.eg, label %.invoke19.i.i, label %bb.be

bb.aw:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !537)
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %i.eh = load ptr, ptr %i.ec, align 8, !alias.scope !543, !noalias !514, !nonnull !3, !noundef !3
  %i.ei = atomicrmw sub ptr %i.eh, i64 1 release, align 8, !noalias !544
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %.invoke.i.i, label %bb.be

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i, i64 24, i1 false), !noalias !514
  store i64 -9223372036854775799, ptr %i.i, align 8, !alias.scope !545, !noalias !548
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 496
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  %i.el = load i64, ptr %i.ek, align 8, !range !6, !alias.scope !556, !noalias !514, !noundef !3
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 4 uses
  %i.en = icmp eq i64 %i.el, 0
  br i1 %i.en, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  %i.eo = load ptr, ptr %i.em, align 8, !alias.scope !563, !noalias !514, !nonnull !3, !noundef !3
  %i.ep = atomicrmw sub ptr %i.eo, i64 1 release, align 8, !noalias !564
  %i.eq = icmp eq i64 %i.ep, 1
  br i1 %i.eq, label %.invoke19.i.i, label %bb.be

.invoke19.i.i:                                    ; preds = %bb.ay, %bb.av
  %.sroa.0.0.copyload3463.i = phi i64 [ %i.dw, %bb.av ], [ -9223372036854775799, %bb.ay ]
  %i.er = phi ptr [ %i.ec, %bb.av ], [ %i.em, %bb.ay ]
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.er) #24
          to label %bb.be unwind label %bb.af, !noalias !519

bb.az:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !565)
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.es = load ptr, ptr %i.em, align 8, !alias.scope !571, !noalias !514, !nonnull !3, !noundef !3
  %i.et = atomicrmw sub ptr %i.es, i64 1 release, align 8, !noalias !572
  %i.eu = icmp eq i64 %i.et, 1
  br i1 %i.eu, label %.invoke.i.i, label %bb.be

.invoke.i.i:                                      ; preds = %bb.az, %bb.aw
  %.sroa.0.0.copyload3462.i = phi i64 [ %i.dw, %bb.aw ], [ -9223372036854775799, %bb.az ]
  %i.ev = phi ptr [ %i.ec, %bb.aw ], [ %i.em, %bb.az ]
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ev) #24
end_hunk_2
begin_hunk_3_@_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore9get_range0Csj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.ez = phi ptr [ %i.ck, %bb.am ], [ %i.dr, %bb.av ], [ %i.dr, %bb.aw ], [ %i.dr, %bb.ay ], [ %i.dr, %.invoke19.i.i ], [ %i.dr, %bb.az ], [ %i.dr, %.invoke.i.i ] ; 2 uses
  %i.fa = phi ptr [ %i.cl, %bb.am ], [ %i.ds, %bb.av ], [ %i.ds, %bb.aw ], [ %i.ds, %bb.ay ], [ %i.ds, %.invoke19.i.i ], [ %i.ds, %bb.az ], [ %i.ds, %.invoke.i.i ]
  %i.fb = phi ptr [ %i.cm, %bb.am ], [ %i.dt, %bb.av ], [ %i.dt, %bb.aw ], [ %i.dt, %bb.ay ], [ %i.dt, %.invoke19.i.i ], [ %i.dt, %bb.az ], [ %i.dt, %.invoke.i.i ]
  %.sroa.0.0.copyload34.i = phi i64 [ %.sroa.0.0.copyload34.pre.i, %bb.am ], [ %i.dw, %bb.av ], [ %i.dw, %bb.aw ], [ -9223372036854775799, %bb.ay ], [ %.sroa.0.0.copyload3463.i, %.invoke19.i.i ], [ -9223372036854775799, %bb.az ], [ %.sroa.0.0.copyload3462.i, %.invoke.i.i ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 521
  store i8 0, ptr %i.fc, align 1, !noalias !514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !514
  %.sroa.835.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.835.sroa.0.0.copyload.i = load ptr, ptr %.sroa.835.0..sroa_idx36.i, align 8, !noalias !520
  %.sroa.835.sroa.6.0..sroa.835.0..sroa_idx36.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.835.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.835.sroa.6.0..sroa.835.0..sroa_idx36.sroa_idx.i, i64 24, i1 false), !noalias !520
  %.sroa.835.sroa.7.0..sroa.835.0..sroa_idx36.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.835.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.835.sroa.7.0..sroa.835.0..sroa_idx36.sroa_idx.i, i64 32, i1 false), !noalias !520
  store i8 1, ptr %i.fa, align 8, !noalias !514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !510
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i)
end_hunk_3
begin_hunk_4_@_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore9get_range0Csj34PGqTgg0L_16deltalake_lakefs:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.835.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.835.sroa.7.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util20maybe_spawn_blockingNCNCNvMs0_BN_NtBN_9GetResult5bytes00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %i.fb)
          to label %bb.bi unwind label %bb.bh, !noalias !521

bb.bh:                                            ; preds = %bb.bg
  %i.ff = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore9get_range0Csj34PGqTgg0L_16deltalake_lakefs:bb.a
  %.sroa.3.0.i = phi ptr [ %.sroa.6.2.i.i, %bb.eb ], [ %.sroa.835.sroa.0.0.copyload.i, %bb.bg ]
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 232
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(96) %i.fi)
          to label %bb.ee unwind label %bb.ed, !noalias !521

.body.i:                                          ; preds = %bb.bd, %bb.bb
  %i.fj = phi ptr [ %i.cp, %bb.bb ], [ %i.bn, %bb.bd ]
end_hunk_5
begin_hunk_6_@_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore9get_range0Csj34PGqTgg0L_16deltalake_lakefs:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.835.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.835.sroa.7.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util20maybe_spawn_blockingNCNCNvMs0_BN_NtBN_9GetResult5bytes00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %i.fl) #26
          to label %bb.bk unwind label %bb.bj, !noalias !521

bb.bj:                                            ; preds = %bb.eg, %.body21.i, %bb.ed, %bb.bk, %.body.i
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !521
  unreachable

bb.bk:                                            ; preds = %bb.bh, %.body.i, %.body21.i, %bb.ec
end_hunk_6
begin_hunk_7_@_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore9get_range0Csj34PGqTgg0L_16deltalake_lakefs:bb.a
  %.pn10.pn.i = phi { ptr, i32 } [ %.pn8.i, %.body21.i ], [ %i.pr, %bb.ec ], [ %i.ff, %bb.bh ], [ %.pn2.i, %.body.i ]
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 232
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(96) %i.fp) #26
          to label %bb.eg unwind label %bb.bj, !noalias !521

bb.bl:                                            ; preds = %bb.x
  %.phi.trans.insert61.i = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 5 uses
end_hunk_7
begin_hunk_8_@_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore9get_range0Csj34PGqTgg0L_16deltalake_lakefs:bb.a

bb.bo:                                            ; preds = %bb.bl
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %.noexc19.i unwind label %bb.dz, !noalias !521

.noexc19.i:                                       ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %bb.bl
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %.noexc20.i unwind label %bb.dz, !noalias !521

.noexc20.i:                                       ; preds = %bb.bp
  unreachable
end_hunk_8
begin_hunk_9_@_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore9get_range0Csj34PGqTgg0L_16deltalake_lakefs:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5104.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i16.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtBN_5ErrorENtNtB4_6marker4SendEL_EEB4b_E0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %i.pq)
          to label %bb.bi unwind label %bb.ec, !noalias !521

bb.ec:                                            ; preds = %bb.eb
  %i.pr = landingpad { ptr, i32 }
end_hunk_9
begin_hunk_10_@_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore9get_range0Csj34PGqTgg0L_16deltalake_lakefs:bb.a
          cleanup
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 360
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.pt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.bj, !noalias !521

bb.ee:                                            ; preds = %bb.bi
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 360
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.pu)
          to label %bb.ej unwind label %bb.ef, !noalias !521

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.eg, %bb.ef, %bb.ed
  %i.pv = phi ptr [ %i.fg, %bb.ef ], [ %i.fg, %bb.ed ], [ %i.fn, %bb.eg ]
end_hunk_10
begin_hunk_11_@_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore9get_range0Csj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.qa = phi ptr [ %i.nw, %.body.i.i ], [ %i.fq, %bb.dz ]
  %.pn8.i = phi { ptr, i32 } [ %.pn32.i.i, %.body.i.i ], [ %i.pk, %bb.dz ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtBN_5ErrorENtNtB4_6marker4SendEL_EEB4b_E0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %i.qa) #26
          to label %bb.bk unwind label %bb.bj, !noalias !521

bb.eg:                                            ; preds = %bb.bk
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 360
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.qb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.bj, !noalias !521

bb.eh:                                            ; preds = %bb.aa, %bb.z
  %i.qc = landingpad { ptr, i32 }
end_hunk_11
begin_hunk_12_@llvm.memset.p0.i64
!517 = distinct !{!517, !516, !"_RNCINvNtCsjyY8HP3IvQ6_12object_store4util20maybe_spawn_blockingNCNCNvMs0_B6_NtB6_9GetResult5bytes00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0Csj34PGqTgg0L_16deltalake_lakefs: argument 1"}
!518 = !{!515, !517, !511}
!519 = !{!515, !511}
!520 = !{!517, !511, !513}
!521 = !{!511}
!522 = !{!523}
!523 = distinct !{!523, !524, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!524 = distinct !{!524, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsj34PGqTgg0L_16deltalake_lakefs"}
!525 = !{!526}
!526 = distinct !{!526, !527, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!527 = distinct !{!527, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECsj34PGqTgg0L_16deltalake_lakefs"}
!528 = !{!526, !523}
!529 = !{!530}
!530 = distinct !{!530, !531, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!531 = distinct !{!531, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECsj34PGqTgg0L_16deltalake_lakefs"}
!532 = !{!533}
!533 = distinct !{!533, !534, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!534 = distinct !{!534, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs"}
!535 = !{!533, !530, !526, !523}
!536 = !{!533, !530, !526, !523, !515, !511}
!537 = !{!538}
!538 = distinct !{!538, !539, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleEECsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!539 = distinct !{!539, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleEECsj34PGqTgg0L_16deltalake_lakefs"}
!540 = !{!541}
!541 = distinct !{!541, !542, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!542 = distinct !{!542, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs"}
!543 = !{!541, !538, !526, !523}
!544 = !{!541, !538, !526, !523, !515, !511}
!545 = !{!546}
!546 = distinct !{!546, !547, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEE13from_residualCsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!547 = distinct !{!547, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEE13from_residualCsj34PGqTgg0L_16deltalake_lakefs"}
!548 = !{!549, !515, !517, !511, !513}
!549 = distinct !{!549, !547, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEE13from_residualCsj34PGqTgg0L_16deltalake_lakefs: argument 1"}
!550 = !{!551}
!551 = distinct !{!551, !552, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!552 = distinct !{!552, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsj34PGqTgg0L_16deltalake_lakefs"}
!553 = !{!554}
!554 = distinct !{!554, !555, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!555 = distinct !{!555, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECsj34PGqTgg0L_16deltalake_lakefs"}
!556 = !{!554, !551}
!557 = !{!558}
!558 = distinct !{!558, !559, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!559 = distinct !{!559, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECsj34PGqTgg0L_16deltalake_lakefs"}
!560 = !{!561}
!561 = distinct !{!561, !562, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!562 = distinct !{!562, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs"}
!563 = !{!561, !558, !554, !551}
!564 = !{!561, !558, !554, !551, !515, !511}
!565 = !{!566}
!566 = distinct !{!566, !567, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleEECsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!567 = distinct !{!567, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleEECsj34PGqTgg0L_16deltalake_lakefs"}
!568 = !{!569}
!569 = distinct !{!569, !570, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!570 = distinct !{!570, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs"}
!571 = !{!569, !566, !554, !551}
!572 = !{!569, !566, !554, !551, !515, !511}
!573 = !{!574, !576, !511, !513}
!574 = distinct !{!574, !575, !"_RNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtBX_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB6_5ErrorENtNtBX_6marker4SendEL_EEB3K_E0Csj34PGqTgg0L_16deltalake_lakefs: argument 0"}
!575 = distinct !{!575, !"_RNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtBX_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB6_5ErrorENtNtBX_6marker4SendEL_EEB3K_E0Csj34PGqTgg0L_16deltalake_lakefs"}
end_hunk_12
