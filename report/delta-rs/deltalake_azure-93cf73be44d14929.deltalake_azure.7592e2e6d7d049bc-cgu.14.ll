inline.NumInlined: 218
inline.NumDeleted: 65
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder21MicrosoftAzureBuilderECsa5Qem16B4JI_15deltalake_azure:bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i224, i64 noundef %.val2.i.i.i223, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !1552
  br label %.body228

bb.dx:                                            ; preds = %bb.du
  %.val.i.i.i226 = load i64, ptr %i.hn, align 8, !range !15, !alias.scope !1544, !noundef !14 ; 2 uses
  %i.ht = icmp eq i64 %.val.i.i.i226, 0
  br i1 %i.ht, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit230, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %.val1.i.i.i227 = load ptr, ptr %i.hu, align 8, !alias.scope !1551, !nonnull !14, !noundef !14
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i227, i64 noundef %.val.i.i.i226, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !1555
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit230

.body228:                                         ; preds = %bb.dw, %bb.dv, %.body220
  %.pn48 = phi { ptr, i32 } [ %.pn46, %.body220 ], [ %i.hq, %bb.dv ], [ %i.hq, %bb.dw ]
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 1192
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hv) #19
          to label %.body236 unwind label %bb.ei

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit230: ; preds = %bb.dy, %bb.dx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit222
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 4 uses
  %i.hx = load i64, ptr %i.hw, align 8, !range !33, !alias.scope !1558, !noundef !14
  %i.hy = icmp eq i64 %i.hx, -9223372036854775808
  br i1 %i.hy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit238, label %bb.dz

bb.dz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit230
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hw)
          to label %bb.ec unwind label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.hz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i231 = load i64, ptr %i.hw, align 8, !range !15, !alias.scope !1561, !noundef !14 ; 2 uses
  %i.ia = icmp eq i64 %.val2.i.i.i231, 0
  br i1 %i.ia, label %.body236, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %.val3.i.i.i232 = load ptr, ptr %i.ib, align 8, !alias.scope !1568, !nonnull !14, !noundef !14
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i232, i64 noundef %.val2.i.i.i231, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !1569
  br label %.body236

bb.ec:                                            ; preds = %bb.dz
  %.val.i.i.i234 = load i64, ptr %i.hw, align 8, !range !15, !alias.scope !1561, !noundef !14 ; 2 uses
  %i.ic = icmp eq i64 %.val.i.i.i234, 0
  br i1 %i.ic, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit238, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %.val1.i.i.i235 = load ptr, ptr %i.id, align 8, !alias.scope !1568, !nonnull !14, !noundef !14
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i235, i64 noundef %.val.i.i.i234, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !1572
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit238

.body236:                                         ; preds = %bb.eb, %bb.ea, %.body228
  %.pn50 = phi { ptr, i32 } [ %.pn48, %.body228 ], [ %i.hz, %bb.ea ], [ %i.hz, %bb.eb ]
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  %i.if = load ptr, ptr %i.ie, align 8, !alias.scope !1575, !noundef !14 ; 2 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECsa5Qem16B4JI_15deltalake_azure.exit, label %bb.ee

bb.ee:                                            ; preds = %.body236
  %i.ih = atomicrmw sub ptr %i.if, i64 1 release, align 8, !noalias !1578
  %i.ii = icmp eq i64 %i.ih, 1
  br i1 %i.ii, label %bb.ef, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECsa5Qem16B4JI_15deltalake_azure.exit

bb.ef:                                            ; preds = %bb.ee
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_E9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ie) #22
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECsa5Qem16B4JI_15deltalake_azure.exit unwind label %bb.ei

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit238: ; preds = %bb.ed, %bb.ec, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit230
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1583)
  %i.ik = load ptr, ptr %i.ij, align 8, !alias.scope !1583, !noundef !14 ; 2 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECsa5Qem16B4JI_15deltalake_azure.exit240, label %bb.eg

bb.eg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit238
  %i.im = atomicrmw sub ptr %i.ik, i64 1 release, align 8, !noalias !1586
  %i.in = icmp eq i64 %i.im, 1
  br i1 %i.in, label %bb.eh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECsa5Qem16B4JI_15deltalake_azure.exit240

bb.eh:                                            ; preds = %bb.eg
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_E9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ij) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECsa5Qem16B4JI_15deltalake_azure.exit240

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECsa5Qem16B4JI_15deltalake_azure.exit240: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsa5Qem16B4JI_15deltalake_azure.exit238, %bb.eg, %bb.eh
  ret void

bb.ei:                                            ; preds = %bb.ef, %bb.cp, %.body228, %.body220, %.body212, %.body204, %.body196, %.body188, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjyY8HP3IvQ6_12object_store6client18CredentialProviderp10CredentialNtNtNtB1F_5azure10credential15AzureCredentialEL_EEECsa5Qem16B4JI_15deltalake_azure.exit, %.body178, %.body170, %.body162, %.body154, %.body146, %.body138, %.body131, %.body123, %.body115, %.body107, %.body100, %.body97, %.body89, %.body81, %.body73, %.body65, %.body57, %.body
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECsa5Qem16B4JI_15deltalake_azure.exit: ; preds = %bb.ee, %.body236, %bb.ef
  resume { ptr, i32 } %.pn50
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection23SpawnedReqwestConnectorECsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  %i.a = load i64, ptr %0, align 8, !range !761, !alias.scope !1597, !noundef !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1601)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !1604, !nonnull !14, !noundef !14
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !1604
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsa5Qem16B4JI_15deltalake_azure.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsa5Qem16B4JI_15deltalake_azure.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1608)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !1611, !nonnull !14, !noundef !14
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !1611
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsa5Qem16B4JI_15deltalake_azure.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #22
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsa5Qem16B4JI_15deltalake_azure.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsa5Qem16B4JI_15deltalake_azure.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsa5Qem16B4JI_15deltalake_azure(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !1615

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !15, !alias.scope !1612, !noundef !14 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1612
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !1612
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1612
  %i.j = load i64, ptr %i.a, align 8, !range !761, !noalias !1612, !noundef !14
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !33, !noalias !1612, !noundef !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !1612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1612
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #23
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !1612, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1612
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !1612
  %i.q = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !1612
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa5Qem16B4JI_15deltalake_azure(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0                        ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !15    ; 4 uses
  %.sroa.05.0 = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %5

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1616)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !1615

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 2 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.c, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.f, i64 range(i64 0, -1) %i.h)
  %i.i = icmp eq i64 %4, 1
  %i.j = icmp ult i64 %4, 1025
  %..i = select i1 %i.j, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.i, i64 8, i64 %..i
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1616
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.k, align 8, !alias.scope !1616
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1616
  %i.l = load i64, ptr %i.a, align 8, !range !761, !noalias !1616, !noundef !14
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.m, label %bb.e, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsa5Qem16B4JI_15deltalake_azure.exit

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.n, align 8, !range !33, !noalias !1616, !noundef !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !1616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1616
  br label %bb.f

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsa5Qem16B4JI_15deltalake_azure.exit: ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !noalias !1616, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1616
  store ptr %i.r, ptr %i.k, align 8, !alias.scope !1616
  %i.s = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.s)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !1616
  br label %6

5:                                                ; preds = %bb.a
  %spec.select = select i1 %i.b, i64 -1, i64 %i.c
  br label %6

6:                                                ; preds = %5, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsa5Qem16B4JI_15deltalake_azure.exit
  %.sroa.06.0 = phi i64 [ %spec.select, %5 ], [ %.sroa.0.0.i14.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsa5Qem16B4JI_15deltalake_azure.exit ]
  %7 = sub i64 %.sroa.06.0, %1
  %8 = icmp ule i64 %2, %7
  tail call void @llvm.assume(i1 %8)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.b, %6
  %.sroa.3.0 = phi i64 [ undef, %6 ], [ undef, %bb.c ], [ %i.q, %bb.e ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i64 [ -9223372036854775807, %6 ], [ 0, %bb.c ], [ %i.o, %bb.e ], [ 0, %bb.b ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !1619
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !1619

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #20
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %i.k = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #20
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %storemerge13 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.o, align 8
  store i64 %storemerge13, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !1619
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !1619

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  br i1 %2, label %bb.g, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20
  br label %bb.h

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %.pn10 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn10, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn10, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyINtB2_10EquivalentBq_E10equivalentCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #4 {
bb.a:
  %.val = load i8, ptr %0, align 1, !range !1620, !noundef !14 ; 3 uses
  %.val1 = load i8, ptr %1, align 1, !range !1620, !noundef !14 ; 3 uses
  %i.a = add nsw i8 %.val, -18
  %i.b = icmp samesign ugt i8 %.val, 17
  %narrow.i = select i1 %i.b, i8 %i.a, i8 23      ; 2 uses
  %i.c = add nsw i8 %.val1, -18
  %i.d = icmp samesign ugt i8 %.val1, 17
  %narrow1.i = select i1 %i.d, i8 %i.c, i8 23
  %i.e = icmp eq i8 %narrow.i, %narrow1.i
  br i1 %i.e, label %bb.b, label %_RNvXs9_NtNtCsjyY8HP3IvQ6_12object_store5azure7builderNtB5_14AzureConfigKeyNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ne i8 %narrow.i, 23
  %i.g = icmp eq i8 %.val, %.val1
  %spec.select.i = or i1 %i.g, %i.f
  br label %_RNvXs9_NtNtCsjyY8HP3IvQ6_12object_store5azure7builderNtB5_14AzureConfigKeyNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs9_NtNtCsjyY8HP3IvQ6_12object_store5azure7builderNtB5_14AzureConfigKeyNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %spec.select.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs0_NtCsjyY8HP3IvQ6_12object_store4utilNtB5_8GetRangeINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtNtBX_3ops5range5RangeyEE4fromCsa5Qem16B4JI_15deltalake_azure(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !15, !noundef !14 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5Qem16B4JI_15deltalake_azure.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !14, !noundef !14
  %i.c = mul nuw i64 %.val, 72
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5Qem16B4JI_15deltalake_azure.exit

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5Qem16B4JI_15deltalake_azure.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsa5Qem16B4JI_15deltalake_azure(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !15, !noundef !14 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsa5Qem16B4JI_15deltalake_azure.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !14, !noundef !14
  %i.c = mul nuw i64 %.val, 104
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20
end_hunk_0
