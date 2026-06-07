inline.NumInlined: 6802
inline.NumDeleted: 1969
begin_hunk_0_@_RINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9UInt8TypeECs14kWLkQVSKO_14deltalake_core:bb.a
  store ptr %i.c, ptr %i.a, align 8, !noalias !9368
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRhNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !9368
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.dz, align 8, !noalias !9368
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !9368
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %i.ea, align 8, !noalias !9368
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !9368
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @187, ptr noundef nonnull %i.a)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.am, !noalias !9380

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9368
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.ar unwind label %bb.aa, !noalias !9380

bb.ar:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9368
  call void @llvm.experimental.noalias.scope.decl(metadata !9406)
  call void @llvm.experimental.noalias.scope.decl(metadata !9409)
  %i.eb = load ptr, ptr %i.j, align 16, !alias.scope !9412, !noalias !9368, !nonnull !9, !noundef !9
  %i.ec = atomicrmw sub ptr %i.eb, i64 1 release, align 8, !noalias !9413
  %i.ed = icmp eq i64 %i.ec, 1
  br i1 %i.ed, label %bb.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit43.i

bb.as:                                            ; preds = %bb.ar
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit43.i unwind label %bb.at, !noalias !9380

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.at, %bb.z, %.body33.i
  %.pn31.i = phi { ptr, i32 } [ %i.ee, %bb.at ], [ %.pn.i, %bb.z ], [ %.pn.i, %.body33.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types9UInt8TypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.y) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit61 unwind label %bb.au, !noalias !9371

bb.at:                                            ; preds = %bb.as
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit43.i: ; preds = %bb.as, %bb.ar
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types9UInt8TypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.i.sroa.4, i64 24, i1 false)
  store i64 -9223372036854775794, ptr %i.u, align 8
  call void @_RNvXs2_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.au:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.am, %.body.i, %bb.z
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !9371
  unreachable

.loopexit:                                        ; preds = %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9UInt8TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9UInt8TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.us.i, %bb.ao
  %.sroa.04.i.sroa.0.0.copyload = load i64, ptr %i.i, align 8, !noalias !9368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i64 16, i1 false)
  %.sroa.04.i.sroa.4.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i.sroa.4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.04.i.sroa.4.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %i.y, i64 96, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.020.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.020.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %i.eg, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.020.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.020.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.ej = load <2 x ptr>, ptr %i.j, align 16, !noalias !9368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.020.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.i.sroa.4, i64 24, i1 false)
  store i64 1, ptr %i.v, align 8
  store i64 1, ptr %i.eh, align 8
  store i64 %.sroa.04.i.sroa.0.0.copyload, ptr %i.ei, align 8
  store <2 x ptr> %i.ej, ptr %.sroa.020.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  store i8 0, ptr %.sroa.2.0..sroa_idx21, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !9414
  %i.ek = call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 160, i64 noundef 8) #41, !noalias !9414 ; 3 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.av, label %bb.ay, !prof !10

bb.av:                                            ; preds = %.loopexit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #37
          to label %.noexc59 unwind label %bb.aw

.noexc59:                                         ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.av
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_array15DictionaryArrayNtNtB1q_5types9UInt8TypeEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.v) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit61 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ay:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ek, ptr noundef nonnull align 8 dereferenceable(160) %i.v, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ek, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @79, ptr %i.ep, align 8
  store i64 20, ptr %0, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit43.i, %bb.ay
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit61: ; preds = %bb.aw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit.i, %.body.thread87, %bb.az
  %eh.lpad-body86 = phi { ptr, i32 } [ %eh.lpad-body90, %.body.thread87 ], [ %i.em, %bb.aw ], [ %eh.lpad-body90, %bb.az ], [ %.pn31.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit.i ]
  resume { ptr, i32 } %eh.lpad-body86

.body.thread87:                                   ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %.body.thread92
  %eh.lpad-body90 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread92 ], [ %i.bs, %bb.w ], [ %i.bt, %bb.x ], [ %.pn.ph.i, %bb.u ], [ %.pn.ph.i, %bb.v ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9417)
  call void @llvm.experimental.noalias.scope.decl(metadata !9420)
  %i.eq = load ptr, ptr %i.z, align 16, !alias.scope !9423, !nonnull !9, !noundef !9
  %i.er = atomicrmw sub ptr %i.eq, i64 1 release, align 8, !noalias !9423
  %i.es = icmp eq i64 %i.er, 1
  br i1 %i.es, label %bb.az, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit61

bb.az:                                            ; preds = %.body.thread87
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit61 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsjhHCjzi9uUI_17datafusion_common6scalar17hash_nested_arrayNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1, ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 16               ; 7 uses
  store ptr %0, ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %1, ptr %i.g, align 8
  %i.h = invoke noundef i64 @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.b unwind label %bb.ac      ; 5 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !9424)
  %i.i = shl i64 %i.h, 3                          ; 4 uses
  %i.j = icmp ugt i64 %i.h, 2305843009213693951
  %.not.i.i10 = icmp ugt i64 %i.i, 9223372036854775800
  %or.cond.i.i = or i1 %i.j, %.not.i.i10
  br i1 %or.cond.i.i, label %bb.f, label %bb.c, !prof !124

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !9427
  %i.l = call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !9427 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = ptrtoint ptr %i.l to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.i) #37
          to label %.noexc11 unwind label %bb.ac

.noexc11:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.c
  %.sroa.4.0.i = phi i64 [ %i.h, %bb.e ], [ 0, %bb.c ]
  %.sroa.10.0.i = phi i64 [ %i.n, %bb.e ], [ ptrtoint (ptr inttoptr (i64 8 to ptr) to i64), %bb.c ]
  %i.o = inttoptr i64 %.sroa.10.0.i to ptr        ; 2 uses
  store i64 %.sroa.4.0.i, ptr %i.e, align 8, !alias.scope !9424
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !9424
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.h, ptr %i.q, align 8, !alias.scope !9424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 4983270260364809079, ptr %i.d, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 -4732044268327596948, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 -4563226453097033507, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 4577018097722394903, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.u = load <2 x ptr>, ptr %i.f, align 16
  %i.v = load ptr, ptr %i.f, align 16, !nonnull !9, !noundef !9 ; 2 uses
  store <2 x ptr> %i.u, ptr %i.b, align 16
  invoke void @_RINvNtCsjhHCjzi9uUI_17datafusion_common10hash_utils13create_hashesRAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_RB14_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 %i.o, i64 noundef %i.h)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %..body_crit_edge, %bb.h
  %i.x = phi ptr [ %i.v, %bb.h ], [ %.pre, %..body_crit_edge ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.ab, %..body_crit_edge ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9430)
  call void @llvm.experimental.noalias.scope.decl(metadata !9433)
  call void @llvm.experimental.noalias.scope.decl(metadata !9436)
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !9439
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ab

bb.j:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !9440)
  %i.aa = load i64, ptr %i.c, align 8, !range !546, !alias.scope !9440, !noundef !9
  %.not.i = icmp eq i64 %i.aa, 20
  br i1 %.not.i, label %bb.o, label %bb.k, !prof !70

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 46, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @153, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #37
          to label %bb.m unwind label %bb.l, !noalias !9440

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #38
          to label %..body_crit_edge unwind label %bb.n, !noalias !9440

..body_crit_edge:                                 ; preds = %bb.l
  %.pre = load ptr, ptr %i.b, align 16, !alias.scope !9439
  br label %.body

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !9440
  unreachable

bb.o:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !9440, !nonnull !9, !align !12, !noundef !9 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !9440, !noundef !9 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !9443
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit14

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit14 unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.i, %bb.q
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.q ], [ %eh.lpad-body, %bb.i ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecyEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #38
          to label %.thread unwind label %bb.ab

bb.q:                                             ; preds = %bb.p, %bb.u
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit14: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !9450)
  call void @llvm.experimental.noalias.scope.decl(metadata !9453)
  call void @llvm.experimental.noalias.scope.decl(metadata !9456)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 16, !alias.scope !9459, !noundef !9 ; 3 uses
  %i.am = icmp ugt i8 %i.al, 64
  br i1 %i.am, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit14
  %i.an = zext i64 %i.ag to i128
  %i.ao = zext nneg i8 %i.al to i128
  %i.ap = shl nuw i128 %i.an, %i.ao
  %i.aq = load i128, ptr %2, align 16, !alias.scope !9459, !noundef !9
  %i.ar = or i128 %i.aq, %i.ap
  %i.as = add nuw i8 %i.al, 64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre28 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !9460, !noalias !9463
  br label %bb.t

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit14
  %i.at = load i128, ptr %2, align 16, !alias.scope !9459, !noundef !9 ; 2 uses
  %i.au = trunc i128 %i.at to i64
  %i.av = lshr i128 %i.at, 64
  %i.aw = trunc nuw i128 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !9459, !noundef !9
  %i.az = xor i64 %i.ay, %i.au
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = load ptr, ptr %i.ba, align 16, !alias.scope !9459, !nonnull !9, !align !12, !noundef !9
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !9459, !noundef !9
  %i.bd = xor i64 %i.bc, %i.aw
  %i.be = zext i64 %i.az to i128
  %i.bf = zext i64 %i.bd to i128
  %i.bg = mul nuw i128 %i.bf, %i.be               ; 2 uses
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = xor i128 %i.bh, %i.bg
  %i.bj = trunc i128 %i.bi to i64                 ; 2 uses
  store i64 %i.bj, ptr %i.ax, align 8, !alias.scope !9459
  %i.bk = zext i64 %i.ag to i128
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bl = phi i64 [ %i.bj, %bb.s ], [ %.pre28, %bb.r ] ; 2 uses
  %.sink.i = phi i128 [ %i.bk, %bb.s ], [ %i.ar, %bb.r ]
  %storemerge.i.i.i = phi i8 [ 64, %bb.s ], [ %i.as, %bb.r ]
  store i128 %.sink.i, ptr %2, align 16, !alias.scope !9459
  store i8 %storemerge.i.i.i, ptr %i.ak, align 16, !alias.scope !9459
  %i.bm = shl nuw nsw i64 %i.ag, 3                ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9460)
  call void @llvm.experimental.noalias.scope.decl(metadata !9463)
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bo = call noundef i64 @llvm.fshr.i64(i64 %i.bl, i64 %i.bl, i64 %i.bm) ; 4 uses
  store i64 %i.bo, ptr %i.bn, align 8, !alias.scope !9460, !noalias !9463
  %i.bp = icmp ult i64 %i.ag, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = load ptr, ptr %i.bq, align 16, !alias.scope !9460, !noalias !9463, !nonnull !9, !align !12, !noundef !9 ; 2 uses
  br i1 %i.bp, label %bb.v, label %bb.u, !prof !70

bb.u:                                             ; preds = %bb.t
  %i.bs = invoke noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef range(i64 0, -9223372036854775808) %i.bm, i64 noundef %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.br) #42
          to label %bb.w unwind label %bb.q

bb.v:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !9465)
  call void @llvm.experimental.noalias.scope.decl(metadata !9468)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !9468, !noalias !9470, !noundef !9 ; 2 uses
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.v
  %.sroa.014.0.copyload.i.i = load i64, ptr %i.ae, align 8, !alias.scope !9471, !noalias !9472
  %i.bv = xor i64 %.sroa.014.0.copyload.i.i, %i.bo
  %i.bw = getelementptr i8, ptr %i.ae, i64 %i.bm
  %i.bx = getelementptr i8, ptr %i.bw, i64 -8
  %.sroa.016.0.copyload.i.i = load i64, ptr %i.bx, align 8, !alias.scope !9471, !noalias !9472
  %i.by = xor i64 %.sroa.016.0.copyload.i.i, %i.bu
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i: ; preds = %bb.v, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.04.0.i.i = phi i64 [ %i.by, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.bu, %bb.v ]
  %.sroa.0.0.i.i = phi i64 [ %i.bv, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.bo, %bb.v ]
  %i.bz = zext i64 %.sroa.0.0.i.i to i128
  %i.ca = zext i64 %.sroa.04.0.i.i to i128
  %i.cb = mul nuw i128 %i.bz, %i.ca               ; 2 uses
  %i.cc = lshr i128 %i.cb, 64
  %i.cd = xor i128 %i.cc, %i.cb
  %i.ce = trunc i128 %i.cd to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i
  %storemerge.i = phi i64 [ %i.ce, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i ], [ %i.bs, %bb.u ]
  store i64 %storemerge.i, ptr %i.bn, align 8, !alias.scope !9460, !noalias !9463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.z unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.e, align 8, !alias.scope !9473 ; 2 uses
  %i.cg = icmp eq i64 %.val2.i, 0
  br i1 %i.cg, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val3.i = load ptr, ptr %i.p, align 8, !alias.scope !9478, !nonnull !9, !noundef !9
  %i.ch = shl nuw i64 %.val2.i, 3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.ch, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !9479
  br label %.thread

bb.z:                                             ; preds = %bb.w
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !9473 ; 2 uses
  %i.ci = icmp eq i64 %.val.i, 0
  br i1 %i.ci, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecyEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val1.i = load ptr, ptr %i.p, align 8, !alias.scope !9478, !nonnull !9, !noundef !9
  %i.cj = shl nuw i64 %.val.i, 3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.cj, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !9482
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecyEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecyEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.ab:                                            ; preds = %bb.ad, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

.thread:                                          ; preds = %bb.ac, %bb.ad, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit, %bb.y, %bb.x
  %.pn422 = phi { ptr, i32 } [ %i.cf, %bb.y ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.cf, %bb.x ], [ %i.cl, %bb.ad ], [ %i.cl, %bb.ac ]
  resume { ptr, i32 } %.pn422

bb.ac:                                            ; preds = %bb.f, %bb.a
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9485)
  call void @llvm.experimental.noalias.scope.decl(metadata !9488)
  %i.cm = load ptr, ptr %i.f, align 16, !alias.scope !9491, !nonnull !9, !noundef !9
  %i.cn = atomicrmw sub ptr %i.cm, i64 1 release, align 8, !noalias !9491
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f) #42
          to label %.thread unwind label %bb.ab
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsjhHCjzi9uUI_17datafusion_common6scalar17hash_nested_arrayNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  store ptr %0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %1, ptr %i.h, align 8
  %i.i = invoke noundef i64 @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %bb.b unwind label %bb.x       ; 5 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !9492)
  %i.j = shl i64 %i.i, 3                          ; 4 uses
  %i.k = icmp ugt i64 %i.i, 2305843009213693951
  %.not.i.i = icmp ugt i64 %i.j, 9223372036854775800
  %or.cond.i.i = or i1 %i.k, %.not.i.i
  br i1 %or.cond.i.i, label %bb.f, label %bb.c, !prof !124

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !9495
  %i.m = call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !9495 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = ptrtoint ptr %i.m to i64
  %.pre = load ptr, ptr %i.g, align 8
  %.pre19 = load ptr, ptr %i.h, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.j) #37
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.p = phi ptr [ %.pre19, %bb.e ], [ %1, %bb.c ]
  %i.q = phi ptr [ %.pre, %bb.e ], [ %0, %bb.c ]  ; 3 uses
  %.sroa.4.0.i = phi i64 [ %i.i, %bb.e ], [ 0, %bb.c ]
  %.sroa.10.0.i = phi i64 [ %i.o, %bb.e ], [ ptrtoint (ptr inttoptr (i64 8 to ptr) to i64), %bb.c ]
  %i.r = inttoptr i64 %.sroa.10.0.i to ptr        ; 2 uses
  store i64 %.sroa.4.0.i, ptr %i.f, align 8, !alias.scope !9492
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !9492
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.i, ptr %i.t, align 8, !alias.scope !9492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 4983270260364809079, ptr %i.e, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 -4732044268327596948, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 -4563226453097033507, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 4577018097722394903, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.q, ptr %i.c, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.p, ptr %i.x, align 8
  invoke void @_RINvNtCsjhHCjzi9uUI_17datafusion_common10hash_utils13create_hashesRAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_RB14_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 %i.r, i64 noundef %i.i)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %..body_crit_edge, %bb.h
  %i.z = phi ptr [ %i.q, %bb.h ], [ %.pre20, %..body_crit_edge ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.ad, %..body_crit_edge ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9498)
  call void @llvm.experimental.noalias.scope.decl(metadata !9501)
  call void @llvm.experimental.noalias.scope.decl(metadata !9504)
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !9507
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.w

bb.j:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !9508)
  %i.ac = load i64, ptr %i.d, align 8, !range !546, !alias.scope !9508, !noundef !9
  %.not.i = icmp eq i64 %i.ac, 20
  br i1 %.not.i, label %bb.o, label %bb.k, !prof !70

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9508
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 46, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @153, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #37
          to label %bb.m unwind label %bb.l, !noalias !9508

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b) #38
          to label %..body_crit_edge unwind label %bb.n, !noalias !9508

..body_crit_edge:                                 ; preds = %bb.l
  %.pre20 = load ptr, ptr %i.c, align 8, !alias.scope !9507
  br label %.body

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !9508
  unreachable

bb.o:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !9508, !nonnull !9, !align !12, !noundef !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !9508, !noundef !9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aj = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !9511
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #42
          to label %bb.r unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.i, %bb.q
  %.pn = phi { ptr, i32 } [ %i.al, %bb.q ], [ %eh.lpad-body, %bb.i ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecyEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.f) #38
          to label %.thread unwind label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit

bb.r:                                             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9518
  store i64 %i.ai, ptr %i.a, align 8, !noalias !9518
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9518
  %i.am = shl nuw nsw i64 %i.ai, 3
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef range(i64 0, -9223372036854775808) %i.am) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.f, align 8, !alias.scope !9523 ; 2 uses
  %i.ao = icmp eq i64 %.val2.i, 0
  br i1 %i.ao, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val3.i = load ptr, ptr %i.s, align 8, !alias.scope !9528, !nonnull !9, !noundef !9
  %i.ap = shl nuw i64 %.val2.i, 3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !9529
  br label %.thread

bb.u:                                             ; preds = %bb.r
  %.val.i = load i64, ptr %i.f, align 8, !alias.scope !9523 ; 2 uses
  %i.aq = icmp eq i64 %.val.i, 0
  br i1 %i.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecyEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val1.i = load ptr, ptr %i.s, align 8, !alias.scope !9528, !nonnull !9, !noundef !9
  %i.ar = shl nuw i64 %.val.i, 3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !9532
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecyEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecyEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.w:                                             ; preds = %bb.y, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

.thread:                                          ; preds = %bb.x, %bb.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit, %bb.t, %bb.s
  %.pn414 = phi { ptr, i32 } [ %i.an, %bb.t ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.an, %bb.s ], [ %i.at, %bb.y ], [ %i.at, %bb.x ]
  resume { ptr, i32 } %.pn414

bb.x:                                             ; preds = %bb.f, %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9535)
  call void @llvm.experimental.noalias.scope.decl(metadata !9538)
  %i.au = load ptr, ptr %i.g, align 8, !alias.scope !9541, !nonnull !9, !noundef !9
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !9541
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #42
          to label %.thread unwind label %bb.w
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsjhHCjzi9uUI_17datafusion_common6scalar17hash_nested_arrayQDNtNtCsbvkFyIu7lgC_4core4hash6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1, ptr noalias noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  store ptr %0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %1, ptr %i.g, align 8
  %i.h = invoke noundef i64 @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.b unwind label %bb.y       ; 5 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !9542)
  %i.i = shl i64 %i.h, 3                          ; 4 uses
  %i.j = icmp ugt i64 %i.h, 2305843009213693951
  %.not.i.i = icmp ugt i64 %i.i, 9223372036854775800
  %or.cond.i.i = or i1 %i.j, %.not.i.i
  br i1 %or.cond.i.i, label %bb.f, label %bb.c, !prof !124

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !9545
  %i.l = call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !9545 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = ptrtoint ptr %i.l to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre19 = load ptr, ptr %i.g, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.i) #37
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.o = phi ptr [ %.pre19, %bb.e ], [ %1, %bb.c ]
  %i.p = phi ptr [ %.pre, %bb.e ], [ %0, %bb.c ]  ; 3 uses
  %.sroa.4.0.i = phi i64 [ %i.h, %bb.e ], [ 0, %bb.c ]
  %.sroa.10.0.i = phi i64 [ %i.n, %bb.e ], [ ptrtoint (ptr inttoptr (i64 8 to ptr) to i64), %bb.c ]
  %i.q = inttoptr i64 %.sroa.10.0.i to ptr        ; 2 uses
  store i64 %.sroa.4.0.i, ptr %i.e, align 8, !alias.scope !9542
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !9542
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.h, ptr %i.s, align 8, !alias.scope !9542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 4983270260364809079, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 -4732044268327596948, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 -4563226453097033507, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 4577018097722394903, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.p, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.o, ptr %i.w, align 8
  invoke void @_RINvNtCsjhHCjzi9uUI_17datafusion_common10hash_utils13create_hashesRAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_RB14_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 %i.q, i64 noundef %i.h)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %..body_crit_edge, %bb.h
  %i.y = phi ptr [ %i.p, %bb.h ], [ %.pre20, %..body_crit_edge ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.ac, %..body_crit_edge ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9548)
  call void @llvm.experimental.noalias.scope.decl(metadata !9551)
  call void @llvm.experimental.noalias.scope.decl(metadata !9554)
  %i.z = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !9557
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.x

bb.j:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !9558)
  %i.ab = load i64, ptr %i.c, align 8, !range !546, !alias.scope !9558, !noundef !9
  %.not.i = icmp eq i64 %i.ab, 20
  br i1 %.not.i, label %bb.o, label %bb.k, !prof !70

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9558
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 46, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @153, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #37
          to label %bb.m unwind label %bb.l, !noalias !9558

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #38
          to label %..body_crit_edge unwind label %bb.n, !noalias !9558

..body_crit_edge:                                 ; preds = %bb.l
  %.pre20 = load ptr, ptr %i.b, align 8, !alias.scope !9557
  br label %.body

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !9558
  unreachable

bb.o:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !9558, !nonnull !9, !align !12, !noundef !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !9558, !noundef !9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ai = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !9561
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit8

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit8 unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.i, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.q ], [ %eh.lpad-body, %bb.i ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecyEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #38
          to label %.thread unwind label %bb.x

bb.q:                                             ; preds = %bb.p, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit8
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit8: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.ah)
          to label %bb.r unwind label %bb.q

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit8
  %i.al = shl nuw nsw i64 %i.ah, 3
  invoke void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.al)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.v unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.e, align 8, !alias.scope !9568 ; 2 uses
  %i.an = icmp eq i64 %.val2.i, 0
  br i1 %i.an, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val3.i = load ptr, ptr %i.r, align 8, !alias.scope !9573, !nonnull !9, !noundef !9
  %i.ao = shl nuw i64 %.val2.i, 3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !9574
  br label %.thread

bb.v:                                             ; preds = %bb.s
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !9568 ; 2 uses
  %i.ap = icmp eq i64 %.val.i, 0
  br i1 %i.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecyEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val1.i = load ptr, ptr %i.r, align 8, !alias.scope !9573, !nonnull !9, !noundef !9
  %i.aq = shl nuw i64 %.val.i, 3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !9577
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecyEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecyEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.x:                                             ; preds = %bb.z, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

.thread:                                          ; preds = %bb.y, %bb.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit, %bb.u, %bb.t
  %.pn414 = phi { ptr, i32 } [ %i.am, %bb.u ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_ECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.am, %bb.t ], [ %i.as, %bb.z ], [ %i.as, %bb.y ]
  resume { ptr, i32 } %.pn414

bb.y:                                             ; preds = %bb.f, %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9580)
  call void @llvm.experimental.noalias.scope.decl(metadata !9583)
  %i.at = load ptr, ptr %i.f, align 8, !alias.scope !9586, !nonnull !9, !noundef !9
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !9586
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f) #42
          to label %.thread unwind label %bb.x
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable14driftsort_mainNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSBZ_7sort_byNCNCNvNtNtB17_10operations8optimize21build_compaction_plan0s0_0E0INtNtB29_3vec3VecBZ_EEB17_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 33909456017848441) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nsw i64 %1, %i.b
  %.sroa.0.0.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %1, i64 range(i64 0, -9223372036854775808) 29411)
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c)
  %.sroa.0.0.i9 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i8, i64 48)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs8_NtCs6Po7BT7Nknu_5alloc5sliceINtNtB7_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable8BufGuardBN_E13with_capacityBV_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i9)
  %i.d = invoke { ptr, i64 } @_RNvXs8_NtCs6Po7BT7Nknu_5alloc5sliceINtNtB7_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.i       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.d, 1
  %.sroa.0.0 = extractvalue { ptr, i64 } %i.d, 0
  %i.f = icmp samesign ult i64 %1, 65
  invoke void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift4sortNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSBW_7sort_byNCNCNvNtNtB14_10operations8optimize21build_compaction_plan0s0_0E0EB14_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.sroa.0.0, i64 noundef %i.e, i1 noundef zeroext %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.i

bb.c:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !9587 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4dataNtB2_11DataFactory10file_stats:bb.a
  br i1 %i.fb, label %bb.bs, label %.invoke.i, !prof !70

bb.bs:                                            ; preds = %bb.br
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ew) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !18857
  %i.fc = invoke { i32, float } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate9aggregatefNtNtCs1N9T06jgEdt_11arrow_array5types11Float32TypeINtB2_14MinAccumulatorfEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ew)
          to label %bb.bt unwind label %.loopexit.i, !noalias !18857 ; 2 uses

bb.bt:                                            ; preds = %bb.bs
  %i.fd = extractvalue { i32, float } %i.fc, 0
  %i.fe = trunc i32 %i.fd to i1
  br i1 %i.fe, label %bb.bu, label %.invoke.i, !prof !70

bb.bu:                                            ; preds = %bb.bt
  %i.ff = extractvalue { i32, float } %i.fc, 1
  store float %i.ff, ptr %i.av, align 8, !noalias !18857
  store i64 -9223372036854775804, ptr %i.v, align 16, !noalias !18857
  %i.fg = invoke { i32, float } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate9aggregatefNtNtCs1N9T06jgEdt_11arrow_array5types11Float32TypeINtB2_14MaxAccumulatorfEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ew)
          to label %bb.bw unwind label %.loopexit429.i, !noalias !18857 ; 2 uses

.loopexit429.i:                                   ; preds = %bb.bu
  %lpad.loopexit431.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit.split-lp430.i:                          ; preds = %bb.by
  %lpad.loopexit.split-lp432.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bv:                                            ; preds = %.loopexit.split-lp430.i, %.loopexit429.i
  %lpad.phi433.i = phi { ptr, i32 } [ %lpad.loopexit431.i, %.loopexit429.i ], [ %lpad.loopexit.split-lp432.i, %.loopexit.split-lp430.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.v) #38
          to label %bb.d unwind label %bb.ai, !noalias !18857

bb.bw:                                            ; preds = %bb.bu
  %i.fh = extractvalue { i32, float } %i.fg, 0
  %i.fi = extractvalue { i32, float } %i.fg, 1
  %i.fj = trunc i32 %i.fh to i1
  br i1 %i.fj, label %bb.bx, label %bb.by, !prof !70

bb.bx:                                            ; preds = %bb.bw
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !18857, !noundef !9
  %.not262.i = icmp eq ptr %i.fl, null
  br i1 %.not262.i, label %bb.ca, label %bb.bz

bb.by:                                            ; preds = %bb.bw
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #37
          to label %bb.n unwind label %.loopexit.split-lp430.i, !noalias !18857

bb.bz:                                            ; preds = %bb.bx
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ew, i64 88
  %i.fn = load i64, ptr %i.fm, align 8, !noalias !18857, !noundef !9
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bx
  %.sroa.0213.0.i = phi i64 [ %i.fn, %bb.bz ], [ 0, %bb.bx ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.12.sroa.11.i, ptr noundef nonnull align 16 dereferenceable(96) %i.v, i64 96, i1 false), !noalias !18857
  %i.fo = bitcast float %i.fi to i32              ; 3 uses
  %.sroa.12.200.extract.trunc.i = trunc i32 %i.fo to i8
  %.sroa.12.201.extract.shift.i = lshr i32 %i.fo, 8
  %.sroa.12.201.extract.trunc.i = trunc i32 %.sroa.12.201.extract.shift.i to i8
  %.sroa.12.202.extract.shift.i = lshr i32 %i.fo, 16
  %.sroa.12.202.extract.trunc.i = trunc nuw i32 %.sroa.12.202.extract.shift.i to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !18857
  br label %bb.df

bb.cb:                                            ; preds = %bb.v
  %i.fp = extractvalue { ptr, ptr } %i.ca, 0      ; 6 uses
  %i.fq = extractvalue { ptr, ptr } %i.ca, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18857
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !invariant.load !9, !noalias !18857, !nonnull !9
  invoke void %i.fs(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef %i.fp)
          to label %bb.cc unwind label %.loopexit.i, !noalias !18857

bb.cc:                                            ; preds = %bb.cb
  %i.ft = load i128, ptr %i.b, align 16, !noalias !18857, !noundef !9
  %i.fu = icmp eq i128 %i.ft, 128396745752427987779846236835172417954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18857
  br i1 %i.fu, label %bb.cd, label %.invoke.i, !prof !70

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fp) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !18857
  %i.fv = invoke { i64, double } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate9aggregatedNtNtCs1N9T06jgEdt_11arrow_array5types11Float64TypeINtB2_14MinAccumulatordEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.fp)
          to label %bb.ce unwind label %.loopexit.i, !noalias !18857 ; 2 uses

bb.ce:                                            ; preds = %bb.cd
  %i.fw = extractvalue { i64, double } %i.fv, 0
  %i.fx = trunc nuw i64 %i.fw to i1
  br i1 %i.fx, label %bb.cf, label %.invoke.i, !prof !70

bb.cf:                                            ; preds = %bb.ce
  %i.fy = extractvalue { i64, double } %i.fv, 1
  store double %i.fy, ptr %i.au, align 8, !noalias !18857
  store i64 -9223372036854775803, ptr %i.u, align 16, !noalias !18857
  %i.fz = invoke { i64, double } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate9aggregatedNtNtCs1N9T06jgEdt_11arrow_array5types11Float64TypeINtB2_14MaxAccumulatordEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.fp)
          to label %bb.ch unwind label %.loopexit424.i, !noalias !18857 ; 2 uses

.loopexit424.i:                                   ; preds = %bb.cf
  %lpad.loopexit426.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit.split-lp425.i:                          ; preds = %bb.cj
  %lpad.loopexit.split-lp427.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cg:                                            ; preds = %.loopexit.split-lp425.i, %.loopexit424.i
  %lpad.phi428.i = phi { ptr, i32 } [ %lpad.loopexit426.i, %.loopexit424.i ], [ %lpad.loopexit.split-lp427.i, %.loopexit.split-lp425.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.u) #38
          to label %bb.d unwind label %bb.ai, !noalias !18857

bb.ch:                                            ; preds = %bb.cf
  %i.ga = extractvalue { i64, double } %i.fz, 0
  %i.gb = extractvalue { i64, double } %i.fz, 1
  %i.gc = trunc nuw i64 %i.ga to i1
  br i1 %i.gc, label %bb.ci, label %bb.cj, !prof !70

bb.ci:                                            ; preds = %bb.ch
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  %i.ge = load ptr, ptr %i.gd, align 8, !noalias !18857, !noundef !9
  %.not261.i = icmp eq ptr %i.ge, null
  br i1 %.not261.i, label %bb.cl, label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #37
          to label %bb.n unwind label %.loopexit.split-lp425.i, !noalias !18857

bb.ck:                                            ; preds = %bb.ci
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fp, i64 88
  %i.gg = load i64, ptr %i.gf, align 8, !noalias !18857, !noundef !9
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ci
  %.sroa.0215.0.i = phi i64 [ %i.gg, %bb.ck ], [ 0, %bb.ci ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.12.sroa.11.i, ptr noundef nonnull align 16 dereferenceable(96) %i.u, i64 96, i1 false), !noalias !18857
  %i.gh = bitcast double %i.gb to i64             ; 4 uses
  %.sroa.12172.200.extract.trunc.i = trunc i64 %i.gh to i8
  %.sroa.12172.201.extract.shift.i = lshr i64 %i.gh, 8
  %.sroa.12172.201.extract.trunc.i = trunc i64 %.sroa.12172.201.extract.shift.i to i8
  %.sroa.12172.202.extract.shift.i = lshr i64 %i.gh, 16
  %.sroa.12172.202.extract.trunc.i = trunc i64 %.sroa.12172.202.extract.shift.i to i16
  %.sroa.12172.204.extract.shift.i = lshr i64 %i.gh, 32
  %.sroa.12172.204.extract.trunc.i = trunc nuw i64 %.sroa.12172.204.extract.shift.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !18857
  br label %bb.df

bb.cm:                                            ; preds = %bb.w
  %i.gi = extractvalue { ptr, ptr } %i.cb, 0      ; 6 uses
  %i.gj = extractvalue { ptr, ptr } %i.cb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18857
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8, !invariant.load !9, !noalias !18857, !nonnull !9
  invoke void %i.gl(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.gi)
          to label %bb.cn unwind label %.loopexit.i, !noalias !18857

bb.cn:                                            ; preds = %bb.cm
  %i.gm = load i128, ptr %i.a, align 16, !noalias !18857, !noundef !9
  %i.gn = icmp eq i128 %i.gm, 41615882080583030659327284372293995949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18857
  br i1 %i.gn, label %bb.co, label %.invoke.i, !prof !70

bb.co:                                            ; preds = %bb.cn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gi) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !18857
  %i.go = invoke { ptr, i64 } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB15_5types17GenericStringTypelEENCINvB2_10min_stringlE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gi)
          to label %bb.cp unwind label %.loopexit.i, !noalias !18857 ; 2 uses

bb.cp:                                            ; preds = %bb.co
  %i.gp = extractvalue { ptr, i64 } %i.go, 0      ; 2 uses
  %i.gq = extractvalue { ptr, i64 } %i.go, 1      ; 7 uses
  %.not256.i = icmp eq ptr %i.gp, null
  br i1 %.not256.i, label %.invoke.i, label %bb.cq, !prof !10

bb.cq:                                            ; preds = %bb.cp
  %.not.i.i = icmp slt i64 %i.gq, 0
  br i1 %.not.i.i, label %bb.ct, label %bb.cr, !prof !124

bb.cr:                                            ; preds = %bb.cq
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit.thread359.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18876
  %i.gs = call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.gq, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18876 ; 4 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs, %bb.cq
  %.sroa.10.2.ph.i = phi i64 [ %i.gq, %bb.cs ], [ %.sroa.10.0551.i, %bb.cq ]
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.cs ], [ 0, %bb.cq ]
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.10.2.ph.i) #37
          to label %bb.n unwind label %.loopexit.split-lp.i, !noalias !18857

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit.thread359.i: ; preds = %bb.cu, %bb.cr
  %i.gu = phi ptr [ %i.gs, %bb.cu ], [ inttoptr (i64 1 to ptr), %bb.cr ]
  %.sroa.10.2364.i = phi i64 [ %i.gw, %bb.cu ], [ ptrtoint (ptr inttoptr (i64 1 to ptr) to i64), %bb.cr ]
  store i64 %i.gq, ptr %i.at, align 8, !noalias !18857
  store ptr %i.gu, ptr %.sroa.4220.0..sroa_idx.i, align 16, !noalias !18857
  store i64 %i.gq, ptr %.sroa.5221.0..sroa_idx.i, align 8, !noalias !18857
  store i64 -9223372036854775802, ptr %i.t, align 16, !noalias !18857
  %i.gv = invoke { ptr, i64 } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB15_5types17GenericStringTypelEENCINvB2_10max_stringlE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gi)
          to label %bb.cw unwind label %.loopexit419.i, !noalias !18857 ; 2 uses

bb.cu:                                            ; preds = %bb.cs
  %i.gw = ptrtoint ptr %i.gs to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gs, ptr nonnull align 1 %i.gp, i64 %i.gq, i1 false), !noalias !18857
  br label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit.thread359.i

.loopexit419.i:                                   ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit.thread359.i
  %lpad.loopexit421.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

.loopexit.split-lp420.i:                          ; preds = %bb.db, %bb.da
  %lpad.loopexit.split-lp422.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cv:                                            ; preds = %.loopexit.split-lp420.i, %.loopexit419.i
  %lpad.phi423.i = phi { ptr, i32 } [ %lpad.loopexit421.i, %.loopexit419.i ], [ %lpad.loopexit.split-lp422.i, %.loopexit.split-lp420.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.t) #38
          to label %bb.d unwind label %bb.ai, !noalias !18857

bb.cw:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit.thread359.i
  %i.gx = extractvalue { ptr, i64 } %i.gv, 0      ; 2 uses
  %i.gy = extractvalue { ptr, i64 } %i.gv, 1      ; 10 uses
  %.not258.i = icmp eq ptr %i.gx, null
  br i1 %.not258.i, label %bb.da, label %bb.cx, !prof !10

bb.cx:                                            ; preds = %bb.cw
  %.not.i279.i = icmp slt i64 %i.gy, 0
  br i1 %.not.i279.i, label %bb.db, label %bb.cy, !prof !124

bb.cy:                                            ; preds = %bb.cx
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit281.thread371.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18879
  %i.ha = call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.gy, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18879 ; 4 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.db, label %bb.dc

bb.da:                                            ; preds = %bb.cw
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #37
          to label %bb.n unwind label %.loopexit.split-lp420.i, !noalias !18857

bb.db:                                            ; preds = %bb.cz, %bb.cx
  %.sroa.10302.2.ph.i = phi i64 [ %i.gy, %bb.cz ], [ %.sroa.10302.0549.i, %bb.cx ]
  %.sroa.4300.0.ph.i = phi i64 [ 1, %bb.cz ], [ 0, %bb.cx ]
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4300.0.ph.i, i64 %.sroa.10302.2.ph.i) #37
          to label %bb.n unwind label %.loopexit.split-lp420.i, !noalias !18857

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit281.thread371.i: ; preds = %bb.dc, %bb.cy
  %i.hc = phi ptr [ %i.ha, %bb.dc ], [ inttoptr (i64 1 to ptr), %bb.cy ]
  %.sroa.10302.2376.i = phi i64 [ %i.hf, %bb.dc ], [ ptrtoint (ptr inttoptr (i64 1 to ptr) to i64), %bb.cy ]
  %.sroa.0222.0.extract.trunc.i = trunc i64 %i.gy to i8
  %.sroa.0222.1.extract.shift.i = lshr i64 %i.gy, 8
  %.sroa.0222.1.extract.trunc.i = trunc i64 %.sroa.0222.1.extract.shift.i to i8
  %.sroa.0222.2.extract.shift.i = lshr i64 %i.gy, 16
  %.sroa.0222.2.extract.trunc.i = trunc i64 %.sroa.0222.2.extract.shift.i to i16
  %.sroa.0222.4.extract.shift.i = lshr i64 %i.gy, 32
  %.sroa.0222.4.extract.trunc.i = trunc nuw nsw i64 %.sroa.0222.4.extract.shift.i to i32
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gi, i64 72
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !18857, !noundef !9
  %.not260.i = icmp eq ptr %i.he, null
  br i1 %.not260.i, label %bb.de, label %bb.dd

bb.dc:                                            ; preds = %bb.cz
  %i.hf = ptrtoint ptr %i.ha to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ha, ptr nonnull align 1 %i.gx, i64 %i.gy, i1 false), !noalias !18857
  br label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit281.thread371.i

bb.dd:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit281.thread371.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gi, i64 112
  %i.hh = load i64, ptr %i.hg, align 8, !noalias !18857, !noundef !9
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit281.thread371.i
  %.sroa.0238.0.i = phi i64 [ %i.hh, %bb.dd ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit281.thread371.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.12.sroa.11.i, ptr noundef nonnull align 16 dereferenceable(96) %i.t, i64 96, i1 false), !noalias !18857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !18857
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.cl, %bb.ca, %bb.bp, %bb.be, %bb.at, %bb.ah
  %.sroa.10302.1.ph.i = phi i64 [ %.sroa.10302.2376.i, %bb.de ], [ %.sroa.10302.0549.i, %bb.cl ], [ %.sroa.10302.0549.i, %bb.ca ], [ %.sroa.10302.0549.i, %bb.bp ], [ %.sroa.10302.0549.i, %bb.be ], [ %.sroa.10302.0549.i, %bb.at ], [ %.sroa.10302.0549.i, %bb.ah ]
  %.sroa.10.1.ph.i = phi i64 [ %.sroa.10.2364.i, %bb.de ], [ %.sroa.10.0551.i, %bb.cl ], [ %.sroa.10.0551.i, %bb.ca ], [ %.sroa.10.0551.i, %bb.bp ], [ %.sroa.10.0551.i, %bb.be ], [ %.sroa.10.0551.i, %bb.at ], [ %.sroa.10.0551.i, %bb.ah ]
  %.sroa.13.sroa.11.sroa.0.1.ph.i = phi i8 [ %.sroa.0222.1.extract.trunc.i, %bb.de ], [ %.sroa.12172.201.extract.trunc.i, %bb.cl ], [ %.sroa.12.201.extract.trunc.i, %bb.ca ], [ %.sroa.12.sroa.4128.0.extract.trunc.i, %bb.bp ], [ %.sroa.12.sroa.4102.0.extract.trunc.i, %bb.be ], [ %.sroa.12.sroa.4.0.extract.trunc.i, %bb.at ], [ undef, %bb.ah ]
  %.sroa.13.sroa.11.sroa.10.sroa.0.1.ph.i = phi i16 [ %.sroa.0222.2.extract.trunc.i, %bb.de ], [ %.sroa.12172.202.extract.trunc.i, %bb.cl ], [ %.sroa.12.202.extract.trunc.i, %bb.ca ], [ %.sroa.12.sroa.5129.0.extract.trunc.i, %bb.bp ], [ %.sroa.12.sroa.5.0.extract.trunc.i, %bb.be ], [ undef, %bb.at ], [ undef, %bb.ah ]
  %.sroa.13.sroa.11.sroa.10.sroa.10.sroa.0.1.ph.i = phi i32 [ %.sroa.0222.4.extract.trunc.i, %bb.de ], [ %.sroa.12172.204.extract.trunc.i, %bb.cl ], [ undef, %bb.ca ], [ %.sroa.12.sroa.6.0.extract.trunc.i, %bb.bp ], [ undef, %bb.be ], [ undef, %bb.at ], [ undef, %bb.ah ]
  %.sroa.12.sroa.0.1.ph.i = phi i64 [ %.sroa.0238.0.i, %bb.de ], [ %.sroa.0215.0.i, %bb.cl ], [ %.sroa.0213.0.i, %bb.ca ], [ %.sroa.0211.0.i, %bb.bp ], [ %.sroa.0209.0.i, %bb.be ], [ %.sroa.0207.0.i, %bb.at ], [ %.sroa.0205.0.i, %bb.ah ]
  %.sroa.13.sroa.10.1.ph.i = phi i8 [ %.sroa.0222.0.extract.trunc.i, %bb.de ], [ %.sroa.12172.200.extract.trunc.i, %bb.cl ], [ %.sroa.12.200.extract.trunc.i, %bb.ca ], [ %.sroa.12.sroa.0127.0.extract.trunc.i, %bb.bp ], [ %.sroa.12.sroa.0101.0.extract.trunc.i, %bb.be ], [ %.sroa.12.sroa.076.0.extract.trunc.i, %bb.at ], [ %i.co, %bb.ah ]
  %.sroa.13.sroa.0.1.ph.i = phi i64 [ -9223372036854775802, %bb.de ], [ -9223372036854775803, %bb.cl ], [ -9223372036854775804, %bb.ca ], [ -9223372036854775807, %bb.bp ], [ -9223372036854775808, %bb.be ], [ -9223372036854775806, %bb.at ], [ -9223372036854775805, %bb.ah ]
  %.sroa.13.sroa.11.sroa.10.sroa.10.sroa.10.sroa.0.1.ph.i = phi ptr [ %i.hc, %bb.de ], [ undef, %bb.cl ], [ undef, %bb.ca ], [ undef, %bb.bp ], [ undef, %bb.be ], [ undef, %bb.at ], [ undef, %bb.ah ]
  %.sroa.13.sroa.11.sroa.10.sroa.10.sroa.10.sroa.10.1.ph.i = phi i64 [ %i.gy, %bb.de ], [ undef, %bb.cl ], [ undef, %bb.ca ], [ undef, %bb.bp ], [ undef, %bb.be ], [ undef, %bb.at ], [ undef, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !18857
  store i64 -9223372036854775807, ptr %i.s, align 16, !noalias !18857
  store i64 %.sroa.12.sroa.0.1.ph.i, ptr %.sroa.12.0..sroa_idx18.i, align 8, !noalias !18857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !18857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.r, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.12.sroa.11.i, i64 96, i1 false), !noalias !18857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !18857
  store i64 %.sroa.13.sroa.0.1.ph.i, ptr %i.q, align 16, !noalias !18857
  store i8 %.sroa.13.sroa.10.1.ph.i, ptr %.sroa.13.sroa.10.0..sroa_idx.i, align 8, !noalias !18857
  store i8 %.sroa.13.sroa.11.sroa.0.1.ph.i, ptr %.sroa.13.sroa.11.0..sroa_idx.i, align 1, !noalias !18857
  store i16 %.sroa.13.sroa.11.sroa.10.sroa.0.1.ph.i, ptr %.sroa.13.sroa.11.sroa.10.0..sroa.13.sroa.11.0..sroa_idx.sroa_idx.i, align 2, !noalias !18857
  store i32 %.sroa.13.sroa.11.sroa.10.sroa.10.sroa.0.1.ph.i, ptr %.sroa.13.sroa.11.sroa.10.sroa.10.0..sroa.13.sroa.11.sroa.10.0..sroa.13.sroa.11.0..sroa_idx.sroa_idx.sroa_idx.i, align 4, !noalias !18857
  store ptr %.sroa.13.sroa.11.sroa.10.sroa.10.sroa.10.sroa.0.1.ph.i, ptr %.sroa.13.sroa.11.sroa.10.sroa.10.sroa.10.0..sroa.13.sroa.11.sroa.10.sroa.10.0..sroa.13.sroa.11.sroa.10.0..sroa.13.sroa.11.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, align 16, !noalias !18857
  store i64 %.sroa.13.sroa.11.sroa.10.sroa.10.sroa.10.sroa.10.1.ph.i, ptr %.sroa.13.sroa.11.sroa.10.sroa.10.sroa.10.sroa.10.0..sroa.13.sroa.11.sroa.10.sroa.10.sroa.10.0..sroa.13.sroa.11.sroa.10.sroa.10.0..sroa.13.sroa.11.sroa.10.0..sroa.13.sroa.11.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !18857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !18857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !18857
  %i.hi = load ptr, ptr %.sroa.0.0554.i, align 8, !noalias !18857, !nonnull !9, !noundef !9 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24 ; 3 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !noalias !18857, !nonnull !9, !noundef !9
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 32 ; 3 uses
  %i.hm = load i64, ptr %i.hl, align 8, !noalias !18857, !noundef !9 ; 7 uses
  %.not.i282.i = icmp slt i64 %i.hm, 0
  br i1 %.not.i282.i, label %.invoke613.i, label %bb.dg, !prof !124

bb.dg:                                            ; preds = %bb.df
  %i.hn = icmp eq i64 %i.hm, 0
  br i1 %i.hn, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit284.thread383.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18882
  %i.ho = call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.hm, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18882 ; 4 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %.invoke613.i, label %bb.dj

bb.di:                                            ; preds = %bb.el, %bb.ek, %bb.ej, %bb.dy, %bb.dr, %bb.dk, %.loopexit.split-lp455.i, %.loopexit454.i
  %.pn.i = phi { ptr, i32 } [ %i.hu, %bb.dk ], [ %i.it, %bb.ej ], [ %i.io, %bb.dy ], [ %i.iu, %bb.ek ], [ %i.ie, %bb.dr ], [ %i.iv, %bb.el ], [ %lpad.loopexit456.i, %.loopexit454.i ], [ %lpad.loopexit.split-lp457.i, %.loopexit.split-lp455.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.q) #38
          to label %bb.ec unwind label %bb.ai, !noalias !18857

.loopexit454.i:                                   ; preds = %bb.eb, %bb.du, %bb.dn
  %lpad.loopexit456.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

.loopexit.split-lp455.i:                          ; preds = %.invoke613.i
  %lpad.loopexit.split-lp457.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

.invoke613.i:                                     ; preds = %bb.dw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit290.i, %bb.dp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.dh, %bb.df
  %i.hq = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.df ], [ 1, %bb.dh ], [ 1, %bb.dp ], [ 1, %bb.dw ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit290.i ]
  %i.hr = phi i64 [ %.sroa.10310.0550.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.10306.0548.i, %bb.df ], [ %i.hm, %bb.dh ], [ %i.hy, %bb.dp ], [ %i.ii, %bb.dw ], [ %.sroa.10314.0553.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit290.i ]
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.hq, i64 %i.hr) #37
          to label %.cont614.i unwind label %.loopexit.split-lp455.i, !noalias !18857

.cont614.i:                                       ; preds = %.invoke613.i
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit284.thread383.i: ; preds = %bb.dj, %bb.dg
  %i.hs = phi ptr [ %i.ho, %bb.dj ], [ inttoptr (i64 1 to ptr), %bb.dg ]
  %.sroa.10306.2388.i = phi i64 [ %i.ht, %bb.dj ], [ ptrtoint (ptr inttoptr (i64 1 to ptr) to i64), %bb.dg ]
  store i64 %i.hm, ptr %i.o, align 8, !noalias !18857
  store ptr %i.hs, ptr %.sroa.4240.0..sroa_idx.i, align 8, !noalias !18857
  store i64 %i.hm, ptr %.sroa.6241.0..sroa_idx.i, align 8, !noalias !18857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !18857
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt7to_json(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.s)
          to label %bb.dl unwind label %bb.el, !noalias !18857

bb.dj:                                            ; preds = %bb.dh
  %i.ht = ptrtoint ptr %i.ho to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ho, ptr nonnull align 1 %i.hk, i64 %i.hm, i1 false), !noalias !18857
  br label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit284.thread383.i

bb.dk:                                            ; preds = %bb.dl
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dl:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit284.thread383.i
  invoke void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.n)
          to label %bb.dm unwind label %bb.dk, !noalias !18857

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !18857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !18857
  %i.hv = load i8, ptr %i.p, align 8, !range !8, !alias.scope !18885, !noalias !18857, !noundef !9
  %i.hw = icmp eq i8 %i.hv, 6
  br i1 %i.hw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %.loopexit454.i, !noalias !18857

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.dn, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !18857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !18857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !18857
  %i.hx = load ptr, ptr %i.hj, align 8, !noalias !18857, !nonnull !9, !noundef !9
  %i.hy = load i64, ptr %i.hl, align 8, !noalias !18857, !noundef !9 ; 7 uses
  %.not.i286.i = icmp slt i64 %i.hy, 0
  br i1 %.not.i286.i, label %.invoke613.i, label %bb.do, !prof !124

bb.do:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit288.thread396.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18888
  %i.ia = call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.hy, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18888 ; 4 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %.invoke613.i, label %bb.dq

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit288.thread396.i: ; preds = %bb.dq, %bb.do
  %i.ic = phi ptr [ %i.ia, %bb.dq ], [ inttoptr (i64 1 to ptr), %bb.do ]
  %.sroa.10310.2402.i = phi i64 [ %i.id, %bb.dq ], [ ptrtoint (ptr inttoptr (i64 1 to ptr) to i64), %bb.do ]
  store i64 %i.hy, ptr %i.l, align 8, !noalias !18857
  store ptr %i.ic, ptr %.sroa.4243.0..sroa_idx.i, align 8, !noalias !18857
  store i64 %i.hy, ptr %.sroa.6244.0..sroa_idx.i, align 8, !noalias !18857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !18857
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt7to_json(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.r)
          to label %bb.ds unwind label %bb.ek, !noalias !18857

bb.dq:                                            ; preds = %bb.dp
  %i.id = ptrtoint ptr %i.ia to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ia, ptr nonnull align 1 %i.hx, i64 %i.hy, i1 false), !noalias !18857
  br label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit288.thread396.i

bb.dr:                                            ; preds = %bb.ds
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.ds:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit288.thread396.i
  invoke void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.k)
          to label %bb.dt unwind label %bb.dr, !noalias !18857

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !18857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !18857
  %i.if = load i8, ptr %i.m, align 8, !range !8, !alias.scope !18891, !noalias !18857, !noundef !9
  %i.ig = icmp eq i8 %i.if, 6
  br i1 %i.ig, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit290.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit290.i unwind label %.loopexit454.i, !noalias !18857

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit290.i: ; preds = %bb.du, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !18857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !18857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !18857
  %i.ih = load ptr, ptr %i.hj, align 8, !noalias !18857, !nonnull !9, !noundef !9
  %i.ii = load i64, ptr %i.hl, align 8, !noalias !18857, !noundef !9 ; 7 uses
  %.not.i291.i = icmp slt i64 %i.ii, 0
  br i1 %.not.i291.i, label %.invoke613.i, label %bb.dv, !prof !124

bb.dv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit290.i
  %i.ij = icmp eq i64 %i.ii, 0
  br i1 %i.ij, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit293.thread410.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18894
  %i.ik = call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ii, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18894 ; 4 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %.invoke613.i, label %bb.dx

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit293.thread410.i: ; preds = %bb.dx, %bb.dv
  %i.im = phi ptr [ %i.ik, %bb.dx ], [ inttoptr (i64 1 to ptr), %bb.dv ]
  %.sroa.10314.2416.i = phi i64 [ %i.in, %bb.dx ], [ ptrtoint (ptr inttoptr (i64 1 to ptr) to i64), %bb.dv ]
  store i64 %i.ii, ptr %i.i, align 8, !noalias !18857
  store ptr %i.im, ptr %.sroa.4246.0..sroa_idx.i, align 8, !noalias !18857
  store i64 %i.ii, ptr %.sroa.6247.0..sroa_idx.i, align 8, !noalias !18857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !18857
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt7to_json(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.q)
          to label %bb.dz unwind label %bb.ej, !noalias !18857

bb.dx:                                            ; preds = %bb.dw
  %i.in = ptrtoint ptr %i.ik to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ik, ptr nonnull align 1 %i.ih, i64 %i.ii, i1 false), !noalias !18857
  br label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit293.thread410.i

bb.dy:                                            ; preds = %bb.dz
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dz:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit293.thread410.i
  invoke void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
          to label %bb.ea unwind label %bb.dy, !noalias !18857

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !18857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !18857
  %i.ip = load i8, ptr %i.j, align 8, !range !8, !alias.scope !18897, !noalias !18857, !noundef !9
  %i.iq = icmp eq i8 %i.ip, 6
  br i1 %i.iq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit295.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit295.i unwind label %.loopexit454.i, !noalias !18857

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit295.i: ; preds = %bb.eb, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !18857
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.q)
          to label %bb.ee unwind label %bb.ed, !noalias !18857

bb.ec:                                            ; preds = %bb.ed, %bb.di
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.di ], [ %i.ir, %bb.ed ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.r) #38
          to label %bb.ef unwind label %bb.ai, !noalias !18857

bb.ed:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit295.i
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.ee:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit295.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !18857
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.r)
          to label %bb.eh unwind label %bb.eg, !noalias !18857

bb.ef:                                            ; preds = %bb.eg, %bb.ec
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.ec ], [ %i.is, %bb.eg ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.s) #38
          to label %bb.d unwind label %bb.ai, !noalias !18857

bb.eg:                                            ; preds = %bb.ee
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.eh:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !18857
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.s)
          to label %bb.ei unwind label %.loopexit.i, !noalias !18857

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !18857
  br label %bb.em

bb.ej:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit293.thread410.i
  %i.it = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #38
          to label %bb.di unwind label %bb.ai, !noalias !18857

bb.ek:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit288.thread396.i
  %i.iu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #38
          to label %bb.di unwind label %bb.ai, !noalias !18857

bb.el:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core.exit284.thread383.i
  %i.iv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #38
          to label %bb.di unwind label %bb.ai, !noalias !18857

bb.em:                                            ; preds = %bb.ei, %bb.o
  %.sroa.10.1335.i = phi i64 [ %.sroa.10.1.ph.i, %bb.ei ], [ %.sroa.10.0551.i, %bb.o ]
  %.sroa.10302.1333.i = phi i64 [ %.sroa.10302.1.ph.i, %bb.ei ], [ %.sroa.10302.0549.i, %bb.o ]
  %.sroa.10306.1.i = phi i64 [ %.sroa.10306.2388.i, %bb.ei ], [ %.sroa.10306.0548.i, %bb.o ]
  %.sroa.10310.1.i = phi i64 [ %.sroa.10310.2402.i, %bb.ei ], [ %.sroa.10310.0550.i, %bb.o ]
  %.sroa.10314.1.i = phi i64 [ %.sroa.10314.2416.i, %bb.ei ], [ %.sroa.10314.0553.i, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.11.i)
  %i.iw = icmp eq ptr %i.bf, %i.an
  br i1 %i.iw, label %._crit_edge.loopexit.i, label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories9FileStatsEBM_.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit3.i.i
  resume { ptr, i32 } %.pn273.pn.i

_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data9get_stats.exit: ; preds = %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !18857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %i.ab, i64 152, i1 false), !noalias !18854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !18857
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4dataNtB2_11DataFactory12record_batch(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18903)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %2, ptr %i.j, align 8, !noalias !18905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !18905
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !18903, !noalias !18907, !nonnull !9, !noundef !9 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !18903, !noalias !18907, !noundef !9
  %i.o = getelementptr inbounds nuw [128 x i8], ptr %i.l, i64 %i.n
  store ptr %i.l, ptr %i.h, align 8, !noalias !18905
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.o, ptr %i.p, align 8, !noalias !18905
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %3, ptr %i.q, align 8, !noalias !18905
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.j, ptr %i.r, align 8, !noalias !18905
  call void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_batch0EINtNtB1U_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtB1U_5boxed3BoxDNtNtB6_5error5ErrorEL_EENCINvXso_B5U_IB5S_INtNtB1U_3vec3VecB4N_EB6E_EINtNtNtB4_6traits7collect12FromIteratorIB5S_B4N_B6E_EE9from_iterBQ_E0B7E_EB3t_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h), !noalias !18908
  %i.s = load i64, ptr %i.i, align 8, !range !123, !noalias !18905, !noundef !9
  %i.t = icmp eq i64 %i.s, -9223372036854775808
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load <2 x ptr>, ptr %i.u, align 8, !noalias !18905
  store <2 x ptr> %i.w, ptr %i.v, align 8, !alias.scope !18900, !noalias !18909
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !18900, !noalias !18909
  br label %_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_batch.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !18905
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !18905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18910
  invoke void @_RNvXs0_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_conversionNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaINtB5_13TryFromKernelRNtNtB9_6schema10StructTypeE15try_from_kernel(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %1)
          to label %bb.d unwind label %.body.thread17.i.i, !noalias !18915

.body.thread17.i.i:                               ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !18916)
  %i.y = load ptr, ptr %i.e, align 8, !alias.scope !18916, !noalias !18919, !noundef !9
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.e, label %bb.i, !prof !10

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18921
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.aa, i64 32, i1 false), !noalias !18919
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @149, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134) #37
          to label %bb.g unwind label %bb.f, !noalias !18922

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #38
          to label %.body.thread.i.i unwind label %bb.h, !noalias !18922

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !18922
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !18910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18910
  store i64 1, ptr %i.c, align 8, !noalias !18910
end_hunk_1
