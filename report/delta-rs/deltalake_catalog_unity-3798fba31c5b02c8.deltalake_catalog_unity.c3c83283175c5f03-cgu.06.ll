Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_catalog_unity-3798fba31c5b02c8.deltalake_catalog_unity.c3c83283175c5f03-cgu.06?download=true
inline.NumInlined: 979
inline.NumDeleted: 478
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB1w_19UnityCatalogBuilder17execute_uc_futureNCNvB1s_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB46_B46_EENtB1w_17UnityCatalogErrorEE0B3t_EB1w_:bb.a
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(2632) %i.g) #20
          to label %.thread39 unwind label %bb.ae, !noalias !1094

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1093
  call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  %i.be = load i64, ptr %i.g, align 8, !range !9, !alias.scope !1097, !noalias !1094, !noundef !7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.bg = icmp eq i64 %i.be, 0
  br i1 %i.bg, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  %i.bh = load ptr, ptr %i.bf, align 8, !alias.scope !1100, !noalias !1094, !nonnull !7, !noundef !7
  %i.bi = atomicrmw sub ptr %i.bh, i64 1 release, align 8, !noalias !1101
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.ab, label %_RNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB8_19UnityCatalogBuilder17execute_uc_futureNCNvB4_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB2G_B2G_EENtB8_17UnityCatalogErrorEE0B8_.exit

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bf) #22
  br label %_RNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB8_19UnityCatalogBuilder17execute_uc_futureNCNvB4_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB2G_B2G_EENtB8_17UnityCatalogErrorEE0B8_.exit

bb.ac:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  %i.bk = load ptr, ptr %i.bf, align 8, !alias.scope !1104, !noalias !1094, !nonnull !7, !noundef !7
  %i.bl = atomicrmw sub ptr %i.bk, i64 1 release, align 8, !noalias !1105
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.ad, label %_RNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB8_19UnityCatalogBuilder17execute_uc_futureNCNvB4_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB2G_B2G_EENtB8_17UnityCatalogErrorEE0B8_.exit

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bf) #22
  br label %_RNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB8_19UnityCatalogBuilder17execute_uc_futureNCNvB4_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB2G_B2G_EENtB8_17UnityCatalogErrorEE0B8_.exit

bb.ae:                                            ; preds = %bb.y
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !1094
  unreachable

bb.af:                                            ; preds = %.noexc19, %.noexc18, %.noexc10, %.noexc9, %.noexc17, %bb.i
  %.sroa.031.0.ph.ph = phi i8 [ 0, %.noexc18 ], [ 0, %.noexc10 ], [ 0, %.noexc9 ], [ 0, %bb.i ], [ 1, %.noexc17 ], [ 0, %.noexc19 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bo = invoke { i1, i8 } @_RNvNtNtCskQDtHcQtBkN_5tokio4task4coop4stop()
          to label %bb.ah unwind label %.thread42 ; 2 uses

_RNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB8_19UnityCatalogBuilder17execute_uc_futureNCNvB4_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB2G_B2G_EENtB8_17UnityCatalogErrorEE0B8_.exit: ; preds = %bb.ad, %bb.ab, %bb.ac, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_place5ResetECsgO8S5jLFugx_23deltalake_catalog_unity.exit30, %_RNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB8_19UnityCatalogBuilder17execute_uc_futureNCNvB4_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB2G_B2G_EENtB8_17UnityCatalogErrorEE0B8_.exit
  ret void

bb.ah:                                            ; preds = %bb.af
  %i.bp = extractvalue { i1, i8 } %i.bo, 0
  %i.bq = extractvalue { i1, i8 } %i.bo, 1
  store i8 %.sroa.031.0.ph.ph, ptr %i.i, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.bs = zext i1 %i.bp to i8
  store i8 %i.bs, ptr %i.br, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.bq, ptr %i.bt, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2632) %i.h, ptr noundef nonnull align 8 dereferenceable(2632) %1, i64 2632, i1 false)
  %i.bu = invoke noundef i8 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE4withNCINvNtBW_10runtime_mt12exit_runtimeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2x_19UnityCatalogBuilder17execute_uc_futureNCNvB2t_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtBa_11collections4hash3map7HashMapB57_B57_EENtB2x_17UnityCatalogErrorEE0B4u_E0NtNtBW_7runtime12EnterRuntimeEB2x_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5)
          to label %bb.ai unwind label %bb.as, !noalias !1106

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1106
  store i8 %i.bu, ptr %i.c, align 1, !noalias !1106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2632) %i.b, ptr noundef nonnull align 8 dereferenceable(2632) %1, i64 2632, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1108
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2616) %i.a, ptr noundef nonnull align 8 dereferenceable(2616) %i.bv, i64 2616, i1 false)
  invoke void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB3_6Handle8block_onNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB19_19UnityCatalogBuilder25get_uc_location_and_token0EB19_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2632) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(2616) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21)
          to label %bb.ak unwind label %bb.aj, !noalias !1109

bb.aj:                                            ; preds = %bb.ai
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(2632) %i.b) #20
          to label %.body.i unwind label %bb.ap, !noalias !1110

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1108
  call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  %i.bx = load i64, ptr %i.b, align 8, !range !9, !alias.scope !1113, !noalias !1110, !noundef !7
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.bz = icmp eq i64 %i.bx, 0
  br i1 %i.bz, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %i.ca = load ptr, ptr %i.by, align 8, !alias.scope !1116, !noalias !1110, !nonnull !7, !noundef !7
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !1117
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.am, label %_RNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB8_19UnityCatalogBuilder17execute_uc_futureNCNvB4_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB2G_B2G_EENtB8_17UnityCatalogErrorEE0B8_.exit.i

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.by) #22
          to label %_RNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB8_19UnityCatalogBuilder17execute_uc_futureNCNvB4_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB2G_B2G_EENtB8_17UnityCatalogErrorEE0B8_.exit.i unwind label %bb.aq, !noalias !1106

bb.an:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  %i.cd = load ptr, ptr %i.by, align 8, !alias.scope !1120, !noalias !1110, !nonnull !7, !noundef !7
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !1121
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.ao, label %_RNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB8_19UnityCatalogBuilder17execute_uc_futureNCNvB4_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB2G_B2G_EENtB8_17UnityCatalogErrorEE0B8_.exit.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.by) #22
          to label %_RNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB8_19UnityCatalogBuilder17execute_uc_futureNCNvB4_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB2G_B2G_EENtB8_17UnityCatalogErrorEE0B8_.exit.i unwind label %bb.aq, !noalias !1106

bb.ap:                                            ; preds = %bb.aj
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !1110
  unreachable

bb.aq:                                            ; preds = %bb.ao, %bb.am
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.aq, %bb.aj
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ch, %bb.aq ], [ %i.bw, %bb.aj ]
  invoke void @_RNvXNvNtNtNtCskQDtHcQtBkN_5tokio7runtime7context10runtime_mt12exit_runtimeNtB2_5ResetNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(1) %i.c)
          to label %.body26 unwind label %bb.ar, !noalias !1106

_RNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB8_19UnityCatalogBuilder17execute_uc_futureNCNvB4_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB2G_B2G_EENtB8_17UnityCatalogErrorEE0B8_.exit.i: ; preds = %bb.ao, %bb.an, %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1106
  invoke void @_RNvXNvNtNtNtCskQDtHcQtBkN_5tokio7runtime7context10runtime_mt12exit_runtimeNtB2_5ResetNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(1) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_place5ResetECsgO8S5jLFugx_23deltalake_catalog_unity.exit30 unwind label %bb.at

bb.ar:                                            ; preds = %bb.as, %.body.i
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !1122
  unreachable

bb.as:                                            ; preds = %bb.ah
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_19UnityCatalogBuilder17execute_uc_futureNCNvBL_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB37_B37_EENtBP_17UnityCatalogErrorEE0EBP_(ptr noundef nonnull align 8 dereferenceable(2632) %i.h) #20
          to label %.body26 unwind label %bb.ar, !noalias !1122

bb.at:                                            ; preds = %_RNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB8_19UnityCatalogBuilder17execute_uc_futureNCNvB4_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB2G_B2G_EENtB8_17UnityCatalogErrorEE0B8_.exit.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body26

.body26:                                          ; preds = %.body.i, %bb.as, %bb.at
  %eh.lpad-body27 = phi { ptr, i32 } [ %i.ck, %bb.at ], [ %eh.lpad-body.i, %.body.i ], [ %i.cj, %bb.as ]
  invoke void @_RNvXNvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNtB2_5ResetNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(3) %i.i)
          to label %.thread39 unwind label %bb.au

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_place5ResetECsgO8S5jLFugx_23deltalake_catalog_unity.exit30: ; preds = %_RNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB8_19UnityCatalogBuilder17execute_uc_futureNCNvB4_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB2G_B2G_EENtB8_17UnityCatalogErrorEE0B8_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @_RNvXNvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNtB2_5ResetNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(3) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ag

bb.au:                                            ; preds = %.body26, %.thread35
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread39:                                        ; preds = %.body26, %bb.y, %.thread35
  %.pn34 = phi { ptr, i32 } [ %i.bd, %bb.y ], [ %eh.lpad-body38, %.thread35 ], [ %eh.lpad-body27, %.body26 ]
  resume { ptr, i32 } %.pn34

.thread35:                                        ; preds = %bb.s, %.thread42
  %eh.lpad-body38 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread42 ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.s ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_19UnityCatalogBuilder17execute_uc_futureNCNvBL_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB37_B37_EENtBP_17UnityCatalogErrorEE0EBP_(ptr noundef nonnull align 8 %1) #20
          to label %.thread39 unwind label %bb.au
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtNtCshmPyUV8PP35_6chrono8datetime5serde15ts_millisecondsNtB5_28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_i64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = sdiv i64 %1, 1000
  %i.b = srem i64 %1, 1000                        ; 3 uses
  %.lobit.i = ashr i64 %i.b, 63
  %.sroa.0.0.i = add nsw i64 %.lobit.i, %i.a      ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  %2 = select i1 %i.c, i32 1000, i32 0
  %3 = trunc nsw i64 %i.b to i32
  %4 = add nsw i32 %2, %3
  %i.d = mul nuw nsw i32 %4, 1000000
  %i.e = sdiv i64 %.sroa.0.0.i, 86400
  %i.f = srem i64 %.sroa.0.0.i, 86400             ; 3 uses
  %.lobit.i.i = ashr i64 %i.f, 63
  %.sroa.0.0.i.i = add nsw i64 %.lobit.i.i, %i.e  ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  %5 = select i1 %i.g, i32 86400, i32 0
  %i.h = add nsw i64 %.sroa.0.0.i.i, -2146764485
  %or.cond.i = icmp ult i64 %i.h, -4294967296
  br i1 %or.cond.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %.sroa.0.0.i.i to i32
  %i.j = add i32 %i.i, 719163
  %i.k = tail call noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.j), !noalias !1125 ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = trunc nsw i64 %i.f to i32
  %6 = add nsw i32 %5, %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.k, ptr %i.m, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %6, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.n = tail call noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customINtNtCshmPyUV8PP35_6chrono5serde10SerdeErrorxEECsgO8S5jLFugx_23deltalake_catalog_unity(i64 noundef %1)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtNtCshmPyUV8PP35_6chrono8datetime5serde15ts_millisecondsNtB5_28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_u64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = udiv i64 %1, 1000
  %i.b = urem i64 %1, 1000
  %i.c = trunc nuw nsw i64 %i.b to i32
  %i.d = mul nuw nsw i32 %i.c, 1000000
  %i.e = urem i64 %i.a, 86400
  %i.f = icmp ugt i64 %1, 185480451503999999
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = udiv i64 %1, 86400000
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = add nuw nsw i32 %i.h, 719163
  %i.j = tail call noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.i), !noalias !1128 ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = trunc nuw nsw i64 %i.e to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.j, ptr %i.l, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.m = tail call noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customINtNtCshmPyUV8PP35_6chrono5serde10SerdeErroryEECsgO8S5jLFugx_23deltalake_catalog_unity(i64 noundef %1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3g_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1F_ENtB9_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_mapINtNvXs3g_NtB22_5implsINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMappppENtB22_11Deserialize11deserialize10MapVisitorNtNtCs6Po7BT7Nknu_5alloc6string6StringB55_NtNtNtB3x_4hash6random11RandomStateEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCshmPyUV8PP35_6chrono8datetime5serde28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor8visit_i8NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = sext i8 %1 to i64                        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  %.lobit.i.i = ashr i64 %i.a, 63                 ; 2 uses
  %i.b = trunc nsw i64 %.lobit.i.i to i32         ; 2 uses
  %i.c = add nsw i32 %i.b, 719163
  %i.d = tail call noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.c), !noalias !1134 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %.lobit.i.i, 0
  %2 = select i1 %i.e, i32 86400, i32 0
  %i.f = icmp slt i8 %1, 0
  %3 = select i1 %i.f, i32 1000, i32 0
  %4 = sext i8 %1 to i32
  %5 = add nsw i32 %3, %4
  %i.g = mul nuw nsw i32 %5, 1000000
  %6 = add nsw i32 %2, %i.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.d, ptr %i.h, align 4, !alias.scope !1133
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %6, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1133
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.g, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !1133
  br label %_RINvXNtNtNtCshmPyUV8PP35_6chrono8datetime5serde15ts_millisecondsNtB5_28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_i64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customINtNtCshmPyUV8PP35_6chrono5serde10SerdeErrorxEECsgO8S5jLFugx_23deltalake_catalog_unity(i64 noundef %i.a), !noalias !1133
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !1133
  br label %_RINvXNtNtNtCshmPyUV8PP35_6chrono8datetime5serde15ts_millisecondsNtB5_28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_i64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvXNtNtNtCshmPyUV8PP35_6chrono8datetime5serde15ts_millisecondsNtB5_28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_i64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  store i32 %storemerge.i, ptr %0, align 8, !alias.scope !1133
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCshmPyUV8PP35_6chrono8datetime5serde28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor8visit_u8NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  %i.a = tail call noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef 719163), !noalias !1140 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %1 to i32
  %i.c = mul nuw nsw i32 %i.b, 1000000
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.a, ptr %i.d, align 4, !alias.scope !1139
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1139
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !1139
  br label %_RINvXNtNtNtCshmPyUV8PP35_6chrono8datetime5serde15ts_millisecondsNtB5_28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_u64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.a
  %i.e = zext i8 %1 to i64
  %i.f = tail call noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customINtNtCshmPyUV8PP35_6chrono5serde10SerdeErroryEECsgO8S5jLFugx_23deltalake_catalog_unity(i64 noundef %i.e), !noalias !1139
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8, !alias.scope !1139
  br label %_RINvXNtNtNtCshmPyUV8PP35_6chrono8datetime5serde15ts_millisecondsNtB5_28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_u64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvXNtNtNtCshmPyUV8PP35_6chrono8datetime5serde15ts_millisecondsNtB5_28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_u64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  store i32 %storemerge.i, ptr %0, align 8, !alias.scope !1139
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCshmPyUV8PP35_6chrono8datetime5serde28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_i16NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, i16 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  %i.a = sdiv i16 %1, 1000
  %i.b = srem i16 %1, 1000                        ; 3 uses
  %2 = ashr i16 %i.b, 15
  %narrow = add nsw i16 %2, %i.a                  ; 3 uses
  %3 = ashr i16 %narrow, 15
  %4 = sext i16 %3 to i32
  %i.c = add nsw i32 %4, 719163
  %i.d = tail call noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.c), !noalias !1146 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i16 %narrow, 0
  %5 = select i1 %i.e, i32 86400, i32 0
  %i.f = icmp slt i16 %i.b, 0
  %6 = select i1 %i.f, i32 1000, i32 0
  %7 = sext i16 %i.b to i32
  %8 = add nsw i32 %6, %7
  %i.g = mul nuw nsw i32 %8, 1000000
  %9 = sext i16 %narrow to i32
  %10 = add nsw i32 %5, %9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.d, ptr %i.h, align 4, !alias.scope !1145
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %10, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1145
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.g, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !1145
  br label %_RINvXNtNtNtCshmPyUV8PP35_6chrono8datetime5serde15ts_millisecondsNtB5_28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_i64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.a
  %i.i = sext i16 %1 to i64
  %i.j = tail call noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customINtNtCshmPyUV8PP35_6chrono5serde10SerdeErrorxEECsgO8S5jLFugx_23deltalake_catalog_unity(i64 noundef %i.i), !noalias !1145
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !1145
  br label %_RINvXNtNtNtCshmPyUV8PP35_6chrono8datetime5serde15ts_millisecondsNtB5_28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_i64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvXNtNtNtCshmPyUV8PP35_6chrono8datetime5serde15ts_millisecondsNtB5_28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_i64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  store i32 %storemerge.i, ptr %0, align 8, !alias.scope !1145
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCshmPyUV8PP35_6chrono8datetime5serde28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_i32NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  %i.a = sdiv i32 %1, 1000
  %i.b = srem i32 %1, 1000                        ; 3 uses
  %i.c = ashr i32 %i.b, 31
  %narrow = add nsw i32 %i.c, %i.a                ; 2 uses
  %i.d = sdiv i32 %narrow, 86400
  %i.e = srem i32 %narrow, 86400                  ; 3 uses
  %i.f = ashr i32 %i.e, 31
  %i.g = add nsw i32 %i.d, 719163
  %i.h = add nsw i32 %i.g, %i.f
  %i.i = tail call noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.h), !noalias !1152 ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i32 %i.e, 0
  %i.k = select i1 %i.j, i32 86400, i32 0
  %i.l = icmp slt i32 %i.b, 0
  %i.m = select i1 %i.l, i32 1000, i32 0
  %spec.select.i.i = add nsw i32 %i.m, %i.b
  %i.n = mul nuw nsw i32 %spec.select.i.i, 1000000
  %2 = add nsw i32 %i.k, %i.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.i, ptr %i.o, align 4, !alias.scope !1151
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1151
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.n, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !1151
  br label %_RINvXNtNtNtCshmPyUV8PP35_6chrono8datetime5serde15ts_millisecondsNtB5_28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_i64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.a
  %i.p = sext i32 %1 to i64
  %i.q = tail call noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customINtNtCshmPyUV8PP35_6chrono5serde10SerdeErrorxEECsgO8S5jLFugx_23deltalake_catalog_unity(i64 noundef %i.p), !noalias !1151
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !1151
  br label %_RINvXNtNtNtCshmPyUV8PP35_6chrono8datetime5serde15ts_millisecondsNtB5_28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_i64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvXNtNtNtCshmPyUV8PP35_6chrono8datetime5serde15ts_millisecondsNtB5_28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_i64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  store i32 %storemerge.i, ptr %0, align 8, !alias.scope !1151
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCshmPyUV8PP35_6chrono8datetime5serde28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_u16NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, i16 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  %i.a = tail call noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef 719163), !noalias !1158 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = urem i16 %1, 1000
  %i.c = zext nneg i16 %i.b to i32
  %i.d = mul nuw nsw i32 %i.c, 1000000
  %i.e = udiv i16 %1, 1000
  %i.f = zext nneg i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.a, ptr %i.g, align 4, !alias.scope !1157
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.f, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1157
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !1157
  br label %_RINvXNtNtNtCshmPyUV8PP35_6chrono8datetime5serde15ts_millisecondsNtB5_28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_u64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.a
  %i.h = zext i16 %1 to i64
  %i.i = tail call noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customINtNtCshmPyUV8PP35_6chrono5serde10SerdeErroryEECsgO8S5jLFugx_23deltalake_catalog_unity(i64 noundef %i.h), !noalias !1157
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !1157
  br label %_RINvXNtNtNtCshmPyUV8PP35_6chrono8datetime5serde15ts_millisecondsNtB5_28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_u64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvXNtNtNtCshmPyUV8PP35_6chrono8datetime5serde15ts_millisecondsNtB5_28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_u64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  store i32 %storemerge.i, ptr %0, align 8, !alias.scope !1157
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCshmPyUV8PP35_6chrono8datetime5serde28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_u32NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  %i.a = udiv i32 %1, 86400000
  %i.b = add nuw nsw i32 %i.a, 719163
  %i.c = tail call noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.b), !noalias !1164 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i32 %1, 1000
  %i.e = urem i32 %i.d, 86400
  %i.f = urem i32 %1, 1000
  %i.g = mul nuw nsw i32 %i.f, 1000000
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.c, ptr %i.h, align 4, !alias.scope !1163
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1163
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.g, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !1163
  br label %_RINvXNtNtNtCshmPyUV8PP35_6chrono8datetime5serde15ts_millisecondsNtB5_28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_u64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.a
  %i.i = zext i32 %1 to i64
  %i.j = tail call noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customINtNtCshmPyUV8PP35_6chrono5serde10SerdeErroryEECsgO8S5jLFugx_23deltalake_catalog_unity(i64 noundef %i.i), !noalias !1163
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !1163
  br label %_RINvXNtNtNtCshmPyUV8PP35_6chrono8datetime5serde15ts_millisecondsNtB5_28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_u64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvXNtNtNtCshmPyUV8PP35_6chrono8datetime5serde15ts_millisecondsNtB5_28MilliSecondsTimestampVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_u64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  store i32 %storemerge.i, ptr %0, align 8, !alias.scope !1163
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtB8_12UnityCatalog42get_temp_table_credentials_with_permissionReB1M_B1M_B1M_E0B8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(256) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.625.i.sroa.6 = alloca [40 x i8], align 8 ; 6 uses
  %.sroa.625.i.sroa.7 = alloca [176 x i8], align 8 ; 6 uses
  %i.a = alloca [256 x i8], align 8               ; 11 uses
  %.sroa.517.i = alloca [16 x i8], align 8        ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 12 uses
  %i.d = alloca [272 x i8], align 8               ; 4 uses
  %i.e = alloca [272 x i8], align 8               ; 4 uses
  %i.f = alloca [272 x i8], align 8               ; 4 uses
  %i.g = alloca [272 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.625.i.sroa.5.i.sroa.6 = alloca [40 x i8], align 8 ; 8 uses
  %.sroa.625.i.sroa.6.i = alloca [168 x i8], align 8 ; 8 uses
  %i.i = alloca [248 x i8], align 8               ; 11 uses
  %.sroa.517.i.i = alloca [16 x i8], align 8      ; 7 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [32 x i8], align 8                ; 13 uses
  %i.l = alloca [272 x i8], align 8               ; 4 uses
  %i.m = alloca [272 x i8], align 8               ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.14135.i.sroa.5 = alloca [40 x i8], align 8 ; 8 uses
  %.sroa.15.i = alloca [168 x i8], align 8        ; 6 uses
  %.sroa.9122.sroa.7.i.sroa.4 = alloca [40 x i8], align 8 ; 7 uses
  %.sroa.9122.sroa.8.i = alloca [168 x i8], align 8 ; 7 uses
  %.sroa.7103.i = alloca [112 x i8], align 8      ; 6 uses
  %i.p = alloca [136 x i8], align 8               ; 9 uses
  %i.q = alloca [40 x i8], align 8                ; 5 uses
  %i.r = alloca [64 x i8], align 8                ; 12 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 9 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [312 x i8], align 8               ; 15 uses
  %i.z = alloca [136 x i8], align 8               ; 14 uses
  %.sroa.3.sroa.5.i.sroa.5 = alloca [16 x i8], align 8 ; 7 uses
  %.sroa.569.i = alloca [24 x i8], align 8        ; 6 uses
  %i.aa = alloca [72 x i8], align 8               ; 11 uses
  %i.ab = alloca [40 x i8], align 8               ; 17 uses
  %i.ac = alloca [32 x i8], align 8               ; 4 uses
  %.sroa.22.sroa.5 = alloca [40 x i8], align 8    ; 6 uses
  %.sroa.26 = alloca [176 x i8], align 8          ; 2 uses
  %.sroa.9241.sroa.8 = alloca [40 x i8], align 8  ; 2 uses
  %.sroa.9241.sroa.9 = alloca [176 x i8], align 8 ; 2 uses
  %i.ad = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.7204.sroa.3 = alloca [24 x i8], align 8  ; 2 uses
  %.sroa.7204.sroa.4 = alloca [72 x i8], align 8  ; 3 uses
  %i.ae = alloca [136 x i8], align 8              ; 11 uses
  %i.af = alloca [40 x i8], align 8               ; 5 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 9 uses
  %i.ai = alloca [24 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 5 uses
  %i.ak = alloca [312 x i8], align 8              ; 15 uses
  %.sroa.14164 = alloca [24 x i8], align 8        ; 9 uses
  %.sroa.10155.sroa.12 = alloca [24 x i8], align 8 ; 8 uses
  %i.al = alloca [136 x i8], align 8              ; 17 uses
  %.sroa.8137.sroa.3 = alloca [40 x i8], align 8  ; 3 uses
  %.sroa.9139 = alloca [168 x i8], align 8        ; 2 uses
  %.sroa.13125.sroa.6 = alloca [40 x i8], align 8 ; 7 uses
  %.sroa.14126 = alloca [168 x i8], align 8       ; 7 uses
  %.sroa.3.sroa.7 = alloca [16 x i8], align 8     ; 3 uses
  %.sroa.596 = alloca [24 x i8], align 8          ; 2 uses
  %i.am = alloca [72 x i8], align 8               ; 11 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 391 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1, !range !24, !noundef !7
  switch i8 %i.ao, label %default.unreachable343 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.h
    i8 4, label %bb.q
    i8 5, label %bb.b
    i8 6, label %bb.eh
  ]

default.unreachable343:                           ; preds = %bb.eh, %bb.bh, %bb.q, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10155.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14164)
  br label %bb.dp

bb.c:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 387
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 386
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 385
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.as, i8 0, i64 7, i1 false)
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !7, !align !12, !noundef !7 ; 2 uses
  store ptr %i.av, ptr %i.at, align 8
  store i8 1, ptr %i.ap, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !7, !noundef !7
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !noundef !7
  store ptr %i.ay, ptr %i.aw, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 400
  store i64 %i.ba, ptr %i.bb, align 8
  store i8 1, ptr %i.aq, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_0
