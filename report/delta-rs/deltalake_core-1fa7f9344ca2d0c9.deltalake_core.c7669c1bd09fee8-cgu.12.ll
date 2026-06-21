inline.NumInlined: 12919
inline.NumDeleted: 5719
begin_hunk_0_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB14_5types10UInt64TypeEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtB2O_6result6ResultTjNtNtB14_12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCINvNvXs_NtNtB2M_8adapters9enumerateINtB6t_9EnumeratepEB2G_8try_fold9enumerateBX_B3K_IB4l_B3K_zENCINvNtB6v_10filter_map19filter_map_try_foldTjBX_ETjINtNtNtB14_5array15primitive_array14PrimitiveArrayB2e_EEB3K_B7H_NCNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrierNtB9S_18MergeBarrierStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next0NCINvNtB6v_3map12map_try_foldB8G_B4k_B3K_B7H_NCB9M_s_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB4k_E0E0E0E0B7H_EB9Y_:bb.a

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13336
  %i.aq = load i64, ptr %i.c, align 8, !range !1072, !noalias !13332, !noundef !10 ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i64 %i.aq, 20
  br i1 %.not.not.i.i.i.i.i, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !13349
  %.sroa.9.0.copyload.i.i.i.i = load i64, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !13349
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o, !noalias !13332

bb.o:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i.i.i.i unwind label %bb.q, !noalias !13332

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.u unwind label %bb.t, !noalias !13322

bb.q:                                             ; preds = %bb.o
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !13332
  unreachable

bb.r:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !13332
  unreachable

bb.s:                                             ; preds = %.body.i.i.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body.i.i.i.i unwind label %bb.r, !noalias !13332

bb.t:                                             ; preds = %bb.w, %bb.p
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.aa, %bb.t, %bb.s, %bb.o, %.body.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ar, %bb.o ], [ %i.au, %bb.t ], [ %i.ao, %.body.i.i.i.i.i ], [ %i.ao, %bb.s ], [ %i.bc, %bb.aa ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types10UInt64TypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.g) #44
          to label %.body.i.i.i unwind label %bb.af, !noalias !13322

bb.u:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.i.i.i.i, i64 24, i1 false), !noalias !13322
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.621.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i, i64 24, i1 false), !noalias !13329
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  %i.av = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.9.0.copyload.i.i.i.i, i64 0
  br label %bb.ae

bb.v:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !13349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.i.i.i.i, i64 24, i1 false), !noalias !13322
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.621.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i, i64 24, i1 false), !noalias !13322
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13322
  %i.aw = load ptr, ptr %i.aa, align 8, !alias.scope !13330, !noalias !13331, !nonnull !10, !noundef !10 ; 2 uses
  %i.ax = atomicrmw add ptr %i.aw, i64 1 monotonic, align 8, !noalias !13322
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch7try_new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noundef nonnull %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.y unwind label %bb.t, !noalias !13322

bb.x:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !13350)
  %i.az = load i64, ptr %i.e, align 8, !range !59, !alias.scope !13350, !noalias !13353, !noundef !10
  %i.ba = icmp eq i64 %i.az, -9223372036854775808
  br i1 %i.ba, label %bb.z, label %bb.ad, !prof !49

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13355
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !noalias !13353
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @242, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @243, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @213) #46
          to label %bb.ab unwind label %bb.aa, !noalias !13355

bb.aa:                                            ; preds = %bb.z
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #44
          to label %.body.i.i.i.i unwind label %bb.ac, !noalias !13355

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !13355
  unreachable

bb.ad:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !13329
  %i.be = load <2 x i64>, ptr %.sroa.9.16..sroa_idx.i.i.i, align 8, !noalias !13356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13322
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.u
  %.sroa.5.0.i.i.i = phi i64 [ %i.ac, %bb.ad ], [ %i.aq, %bb.u ]
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.ad ], [ 1, %bb.u ]
  %i.bf = phi <2 x i64> [ %i.be, %bb.ad ], [ %i.av, %bb.u ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types10UInt64TypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.g)
          to label %bb.ai unwind label %bb.ag, !noalias !13329

bb.af:                                            ; preds = %.body.i.i.i.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !13322
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.ag, %.body.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bh, %bb.ag ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropINtNtB4_6result6ResultTjNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.h) #44
          to label %.body.i.i unwind label %bb.ah, !noalias !13329

bb.ah:                                            ; preds = %.body.i.i.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !13329
  unreachable

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13329
  store i64 %.sroa.01.0.i.i.i, ptr %storemerge21, align 8, !noalias !13329
  %.sroa.4.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge21, i64 8
  store i64 %.sroa.5.0.i.i.i, ptr %.sroa.4.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !13329
  %.sroa.4.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge21, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i.i, i64 24, i1 false), !noalias !13329
  %.sroa.4.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge21, i64 40
  store <2 x i64> %i.bf, ptr %.sroa.4.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !13329
  %i.bj = getelementptr inbounds nuw i8, ptr %storemerge21, i64 56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13329
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %.pre22 = load ptr, ptr %i.n, align 8
  %.pre23 = load ptr, ptr %i.o, align 8
  br label %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB2c_5types10UInt64TypeEINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropINtNtBf_6result6ResultTjNtNtB2c_12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEIB4L_B3N_zENCINvNtBb_10filter_map19filter_map_try_foldTjB25_ETjINtNtNtB2c_5array15primitive_array14PrimitiveArrayB3m_EEB3N_B6I_NCNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrierNtB8T_18MergeBarrierStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next0NCINvNtBb_3map12map_try_foldB7H_B4K_B3N_B6I_NCB8N_s_0NCINvNtB3S_16in_place_collect24write_in_place_with_dropB4K_E0E0E0E0B8Z_.exit

.body.i.i:                                        ; preds = %bb.aj, %.body.i.i.i
  %eh.lpad-body14.i.i = phi { ptr, i32 } [ %eh.lpad-body.ph.i.i, %bb.aj ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %eh.lpad-body14.i.i

bb.aj:                                            ; preds = %bb.j, %bb.c
  %eh.lpad-body.ph.i.i = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %.pn.i.i.i, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropINtNtB4_6result6ResultTjNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.l) #44
          to label %.body.i.i unwind label %bb.ak, !noalias !13320

bb.ak:                                            ; preds = %bb.aj
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !13320
  unreachable

_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB2c_5types10UInt64TypeEINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropINtNtBf_6result6ResultTjNtNtB2c_12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEIB4L_B3N_zENCINvNtBb_10filter_map19filter_map_try_foldTjB25_ETjINtNtNtB2c_5array15primitive_array14PrimitiveArrayB3m_EEB3N_B6I_NCNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrierNtB8T_18MergeBarrierStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next0NCINvNtBb_3map12map_try_foldB7H_B4K_B3N_B6I_NCB8N_s_0NCINvNtB3S_16in_place_collect24write_in_place_with_dropB4K_E0E0E0E0B8Z_.exit: ; preds = %bb.k, %bb.ai
  %i.bl = phi ptr [ %.pre23, %bb.ai ], [ %i.ae, %bb.k ] ; 2 uses
  %i.bm = phi ptr [ %.pre22, %bb.ai ], [ %i.ab, %bb.k ] ; 2 uses
  %.pn17.i.i = phi ptr [ %i.bj, %bb.ai ], [ %storemerge21, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13311
  %i.bn = load i64, ptr %.val6, align 8, !noalias !13311, !noundef !10
  %i.bo = add i64 %i.bn, 1                        ; 2 uses
  store i64 %i.bo, ptr %.val6, align 8, !noalias !13311
  %.not = icmp eq ptr %i.bl, %i.bm
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB2c_5types10UInt64TypeEINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropINtNtBf_6result6ResultTjNtNtB2c_12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEIB4L_B3N_zENCINvNtBb_10filter_map19filter_map_try_foldTjB25_ETjINtNtNtB2c_5array15primitive_array14PrimitiveArrayB3m_EEB3N_B6I_NCNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrierNtB8T_18MergeBarrierStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next0NCINvNtBb_3map12map_try_foldB7H_B4K_B3N_B6I_NCB8N_s_0NCINvNtB3S_16in_place_collect24write_in_place_with_dropB4K_E0E0E0E0B8Z_.exit, %bb.a
  %storemerge.lcssa = phi ptr [ %2, %bb.a ], [ %.pn17.i.i, %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB2c_5types10UInt64TypeEINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropINtNtBf_6result6ResultTjNtNtB2c_12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEIB4L_B3N_zENCINvNtBb_10filter_map19filter_map_try_foldTjB25_ETjINtNtNtB2c_5array15primitive_array14PrimitiveArrayB3m_EEB3N_B6I_NCNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrierNtB8T_18MergeBarrierStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next0NCINvNtBb_3map12map_try_foldB7H_B4K_B3N_B6I_NCB8N_s_0NCINvNtB3S_16in_place_collect24write_in_place_with_dropB4K_E0E0E0E0B8Z_.exit ]
  %i.bp = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.bq = insertvalue { ptr, ptr } %i.bp, ptr %storemerge.lcssa, 1
  ret { ptr, ptr } %i.bq
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldBX_TNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlBX_EuNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage14group_by_storeINtB8_3VecBX_EBX_E0NCINvNvB1B_8for_each4callB3e_NCINvNtCscVxtfYSVfE7_9itertools9group_map14into_group_mapINtB2H_3MapBI_B4s_EB3f_BX_E0E0E0EB4D_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 10 uses
  %i.b = alloca [104 x i8], align 8               ; 10 uses
  %i.c = alloca [104 x i8], align 8               ; 5 uses
  %i.d = alloca [104 x i8], align 8               ; 4 uses
  %i.e = alloca [192 x i8], align 8               ; 5 uses
  %i.f = alloca [88 x i8], align 8                ; 4 uses
  %i.g = alloca [104 x i8], align 8               ; 5 uses
  %i.h = alloca [104 x i8], align 8               ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8        ; 2 uses
  %.not2 = icmp eq ptr %.promoted, %i.j
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.614.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.9.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.715.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.816.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.6.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %i.o = phi ptr [ %.promoted, %.lr.ph ], [ %i.p, %bb.n ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull align 8 dereferenceable(104) %i.o, i64 104, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104 ; 3 uses
  store ptr %i.p, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(104) %i.o, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13360
  invoke void @_RNvXs1_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storageNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtB5_16AsObjectStoreUrl19as_object_store_url(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.g)
          to label %_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage14group_by_storeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaEB1Y_E0Ba_.exit.i unwind label %bb.c, !noalias !13364

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.g) #44
          to label %.body unwind label %bb.d, !noalias !13364

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !13364
  unreachable

_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage14group_by_storeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaEB1Y_E0Ba_.exit.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.h, i64 104, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 88, i1 false), !noalias !13357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.h, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13365
  invoke void @_RNvMNtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entryCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.e)
          to label %bb.e unwind label %bb.l, !noalias !13357

bb.e:                                             ; preds = %_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage14group_by_storeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaEB1Y_E0Ba_.exit.i
  %i.s = load i64, ptr %i.b, align 8, !range !59, !noalias !13365, !noundef !10 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.s, -9223372036854775808
  %i.t = load ptr, ptr %i.m, align 8, !noalias !13365 ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13365
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.513.0.copyload.i.i.i = load ptr, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !13365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9.0..sroa_idx6.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.614.0..sroa_idx.i.i.i, i64 64, i1 false), !noalias !13365
  %.sroa.715.0.copyload.i.i.i = load ptr, ptr %.sroa.715.0..sroa_idx.i.i.i, align 8, !noalias !13365, !nonnull !10, !noundef !10
  %.sroa.816.0.copyload.i.i.i = load i64, ptr %.sroa.816.0..sroa_idx.i.i.i, align 8, !noalias !13365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13365
  store i64 %i.s, ptr %i.a, align 8, !noalias !13365
  store ptr %i.t, ptr %.sroa.6.0..sroa_idx2.i.i.i, align 8, !noalias !13365
  store ptr %.sroa.513.0.copyload.i.i.i, ptr %.sroa.8.0..sroa_idx4.i.i.i, align 8, !noalias !13365
  store i64 0, ptr %i.n, align 8, !noalias !13370
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !13370
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !13370
  %i.u = invoke noundef nonnull ptr @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaEEE14insert_no_growCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.715.0.copyload.i.i.i, i64 noundef %.sroa.816.0.copyload.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
          to label %.noexc.i.i.i unwind label %bb.l, !noalias !13365

.noexc.i.i.i:                                     ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13370
  br label %bb.h

bb.h:                                             ; preds = %.noexc.i.i.i, %bb.f
  %.pn.i.i.i.i = phi ptr [ %i.u, %.noexc.i.i.i ], [ %i.t, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.l, i64 104, i1 false), !noalias !13357
  %i.v = getelementptr inbounds i8, ptr %.pn.i.i.i.i, i64 -8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !13373, !noalias !13376, !noundef !10 ; 3 uses
  %i.x = load i64, ptr %.sroa.0.0.i.i.i.i, align 8, !range !312, !alias.scope !13373, !noalias !13376, !noundef !10
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaE8grow_oneBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i.i)
          to label %bb.n unwind label %bb.j, !noalias !13376

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.c) #44
          to label %.body unwind label %bb.k, !noalias !13365

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !13365
  unreachable

bb.l:                                             ; preds = %bb.g, %_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage14group_by_storeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaEB1Y_E0Ba_.exit.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %i.d) #44
          to label %.body unwind label %bb.m, !noalias !13365

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !13365
  unreachable

._crit_edge:                                      ; preds = %bb.n, %bb.a
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

.body:                                            ; preds = %bb.c, %bb.j, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.j ], [ %i.q, %bb.c ], [ %i.ab, %bb.l ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.o

bb.n:                                             ; preds = %bb.i, %bb.h
  %i.ad = getelementptr inbounds i8, ptr %.pn.i.i.i.i, i64 -16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !13373, !noalias !13376, !nonnull !10, !noundef !10
  %i.af = getelementptr inbounds nuw [104 x i8], ptr %i.ae, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.af, ptr noundef nonnull align 8 dereferenceable(104) %i.c, i64 104, i1 false), !noalias !13365
  %i.ag = add i64 %i.w, 1
  store i64 %i.ag, ptr %i.v, align 8, !alias.scope !13373, !noalias !13376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp eq ptr %i.p, %i.j
  br i1 %.not, label %._crit_edge, label %bb.b

bb.o:                                             ; preds = %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1K_8adapters3map12map_try_foldBX_BX_B2I_INtNtB1M_6result6ResultB2I_zENCNCNCNvXs2_NtBZ_6prefixINtB4P_11PrefixStoreINtNtBa_4sync3ArcDNtBZ_11ObjectStoreEL_EEB5D_19list_with_delimiter00s_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B4a_ECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not12 = icmp eq ptr %.promoted, %i.e
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i = load ptr, ptr %3, align 8, !noalias !13378, !nonnull !10, !align !304, !noundef !10
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtCsjyY8HP3IvQ6_12object_store10ObjectMetaBZ_INtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1I_zENCNCNCNvXs2_NtB11_6prefixINtB3n_11PrefixStoreINtNtB1P_4sync3ArcDNtB11_11ObjectStoreEL_EEB4d_19list_with_delimiter00s_0NCINvNtB1N_16in_place_collect24write_in_place_with_dropBZ_E0E0Cs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.013 = phi ptr [ %2, %.lr.ph ], [ %i.l, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtCsjyY8HP3IvQ6_12object_store10ObjectMetaBZ_INtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1I_zENCNCNCNvXs2_NtB11_6prefixINtB3n_11PrefixStoreINtNtB1P_4sync3ArcDNtB11_11ObjectStoreEL_EEB4d_19list_with_delimiter00s_0NCINvNtB1N_16in_place_collect24write_in_place_with_dropBZ_E0E0Cs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtCsjyY8HP3IvQ6_12object_store10ObjectMetaBZ_INtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1I_zENCNCNCNvXs2_NtB11_6prefixINtB3n_11PrefixStoreINtNtB1P_4sync3ArcDNtB11_11ObjectStoreEL_EEB4d_19list_with_delimiter00s_0NCINvNtB1N_16in_place_collect24write_in_place_with_dropBZ_E0E0Cs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 96, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 3 uses
  store ptr %i.i, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13378
  store ptr %1, ptr %i.c, align 8, !noalias !13378
  store ptr %.sroa.4.013, ptr %i.g, align 8, !noalias !13378
  invoke void @_RNvMs_NtCsjyY8HP3IvQ6_12object_store6prefixINtB4_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB6_11ObjectStoreEL_EE10strip_metaCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.val.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtCsjyY8HP3IvQ6_12object_store10ObjectMetaBZ_INtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1I_zENCNCNCNvXs2_NtB11_6prefixINtB3n_11PrefixStoreINtNtB1P_4sync3ArcDNtB11_11ObjectStoreEL_EEB4d_19list_with_delimiter00s_0NCINvNtB1N_16in_place_collect24write_in_place_with_dropBZ_E0E0Cs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d, !noalias !13378

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.c) #44
          to label %bb.c unwind label %bb.e, !noalias !13378

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !13378
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtCsjyY8HP3IvQ6_12object_store10ObjectMetaBZ_INtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1I_zENCNCNCNvXs2_NtB11_6prefixINtB3n_11PrefixStoreINtNtB1P_4sync3ArcDNtB11_11ObjectStoreEL_EEB4d_19list_with_delimiter00s_0NCINvNtB1N_16in_place_collect24write_in_place_with_dropBZ_E0E0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.013, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !13378
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 96 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %i.i, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtCsjyY8HP3IvQ6_12object_store10ObjectMetaBZ_INtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1I_zENCNCNCNvXs2_NtB11_6prefixINtB3n_11PrefixStoreINtNtB1P_4sync3ArcDNtB11_11ObjectStoreEL_EEB4d_19list_with_delimiter00s_0NCINvNtB1N_16in_place_collect24write_in_place_with_dropBZ_E0E0Cs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.l, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtCsjyY8HP3IvQ6_12object_store10ObjectMetaBZ_INtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1I_zENCNCNCNvXs2_NtB11_6prefixINtB3n_11PrefixStoreINtNtB1P_4sync3ArcDNtB11_11ObjectStoreEL_EEB4d_19list_with_delimiter00s_0NCINvNtB1N_16in_place_collect24write_in_place_with_dropBZ_E0E0Cs14kWLkQVSKO_14deltalake_core.exit ]
  %i.m = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.n = insertvalue { ptr, ptr } %i.m, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldBX_TBX_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB3c_7HashSetBX_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1n_7collect6ExtendBX_E6extendBI_E0NCINvNvB1j_8for_each4callB2W_NCINvXs1i_NtB3e_3mapINtB63_7HashMapBX_uB3Y_EIB4N_B2W_E6extendINtB2p_3MapBI_B33_EE0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not2 = icmp eq ptr %.promoted, %i.c
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.e = phi ptr [ %i.f, %bb.c ], [ %.promoted, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8
  %i.g = invoke noundef zeroext i1 @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b       ; 0 uses

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.b:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13381
  %.not = icmp eq ptr %i.f, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldBX_TBX_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB3c_7HashSetBX_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1n_7collect6ExtendBX_E6extendINtB8_3VecBX_EE0NCINvNvB1j_8for_each4callB2W_NCINvXs1i_NtB3e_3mapINtB6e_7HashMapBX_uB3Y_EIB4N_B2W_E6extendINtB2p_3MapBI_B33_EE0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not2 = icmp eq ptr %.promoted, %i.c
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.e = phi ptr [ %i.f, %bb.c ], [ %.promoted, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8
  %i.g = invoke noundef zeroext i1 @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b       ; 0 uses

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.b:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13386
  %.not = icmp eq ptr %i.f, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1p_8adapters3map12map_try_foldBX_BX_B2n_INtNtB1r_6result6ResultB2n_zENCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB4r_13CreateBuilder22with_partition_columnsBX_INtB8_3VecBX_EE0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B3P_EB4v_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.c, align 8        ; 2 uses
  %.not11 = icmp eq ptr %.promoted, %i.b
  br i1 %.not11, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.4.012 = phi ptr [ %i.f, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.d = phi ptr [ %i.e, %.lr.ph ], [ %.promoted, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.012, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.4.012, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  store ptr %i.e, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %i.f, %._crit_edge ], [ %2, %bb.a ]
  %i.g = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.h
end_hunk_0
begin_hunk_1_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTINtNtBa_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBY_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB2b_8adapters3map12map_try_foldBX_INtNtB2d_6result6ResultBX_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB39_INtNtNtB2d_3ops12control_flow11ControlFlowIB4v_B39_zEB39_ENCINvXs3_NtB4Y_9tree_nodeINtB8_3VecBX_EINtB72_17TreeNodeContainerB1g_E12map_elementsQNCNCNCINvYB1g_NtB72_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier14ConstEvaluatorE000E0NCINvXB3U_INtB3U_12GenericShuntINtB3S_3MapBI_B6T_EIB4v_NtNtB2d_7convert10InfallibleB4U_EEB25_8try_foldB39_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B6D_E0E0B5X_ECs14kWLkQVSKO_14deltalake_core:bb.a
._crit_edge:                                      ; preds = %bb.k, %bb.a, %bb.j
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.021, %bb.j ], [ %3, %bb.a ], [ %i.at, %bb.k ]
  %storemerge = phi i64 [ 1, %bb.j ], [ 0, %bb.a ], [ 0, %bb.k ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.ar, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.j:                                             ; preds = %bb.d, %bb.e
  store i64 %i.x, ptr %.val.le, align 8, !noalias !16554
  %.sroa.5.0..8.val.sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  store <2 x ptr> %i.ag, ptr %.sroa.5.0..8.val.sroa_idx10.i.i, align 8, !noalias !16554
  %.sroa.7.0..8.val.sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..8.val.sroa_idx15.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, i64 16, i1 false), !noalias !16562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16538
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %._crit_edge

bb.k:                                             ; preds = %_RNCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtBW_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1p_EEINtB8_17TreeNodeContainerB1H_E12map_elementsQNCNCNCINvYB1H_NtB8_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier14ConstEvaluatorE000E0Cs14kWLkQVSKO_14deltalake_core.exit.thread13.i, %bb.b
  %.sroa.9.112.i = phi ptr [ %i.aa, %_RNCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtBW_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1p_EEINtB8_17TreeNodeContainerB1H_E12map_elementsQNCNCNCINvYB1H_NtB8_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier14ConstEvaluatorE000E0Cs14kWLkQVSKO_14deltalake_core.exit.thread13.i ], [ %i.r, %bb.b ]
  %.sroa.62.111.i = phi ptr [ %i.z, %_RNCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtBW_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1p_EEINtB8_17TreeNodeContainerB1H_E12map_elementsQNCNCNCINvYB1H_NtB8_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier14ConstEvaluatorE000E0Cs14kWLkQVSKO_14deltalake_core.exit.thread13.i ], [ %i.p, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16538
  store ptr %.sroa.62.111.i, ptr %.sroa.4.021, align 8, !noalias !16563
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.4.021, i64 8
  store ptr %.sroa.9.112.i, ptr %i.as, align 8, !noalias !16563
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.4.021, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16538
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %.not = icmp eq ptr %i.s, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTINtNtBa_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBY_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB2b_8adapters3map12map_try_foldBX_INtNtB2d_6result6ResultBX_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB39_INtNtNtB2d_3ops12control_flow11ControlFlowIB4v_B39_zEB39_ENCINvXs3_NtB4Y_9tree_nodeINtB8_3VecBX_EINtB72_17TreeNodeContainerB1g_E12map_elementsQNCNCNCINvYB1g_NtB72_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierE000E0NCINvXB3U_INtB3U_12GenericShuntINtB3S_3MapBI_B6T_EIB4v_NtNtB2d_7convert10InfallibleB4U_EEB25_8try_foldB39_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B6D_E0E0B5X_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.8.i = alloca [16 x i8], align 8          ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not20 = icmp eq ptr %.promoted, %i.e
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val5 = load ptr, ptr %i.g, align 8, !nonnull !10, !align !304, !noundef !10 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.4.021 = phi ptr [ %3, %.lr.ph ], [ %i.at, %bb.k ] ; 6 uses
  %i.o = phi ptr [ %.promoted, %.lr.ph ], [ %i.s, %bb.k ] ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !10, !align !1180, !noundef !10 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !10, !align !1180, !noundef !10 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16567
  store ptr %2, ptr %i.c, align 8, !noalias !16567
  store ptr %.sroa.4.021, ptr %i.h, align 8, !noalias !16567
  call void @llvm.experimental.noalias.scope.decl(metadata !16572)
  %i.t = load ptr, ptr %.val5, align 8, !alias.scope !16572, !noalias !16575, !nonnull !10, !noundef !10 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !range !833, !noalias !16579, !noundef !10
  %i.v = icmp eq i8 %i.u, 2
  br i1 %i.v, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16579
  %i.w = load ptr, ptr %i.i, align 8, !alias.scope !16572, !noalias !16575, !nonnull !10, !align !304, !noundef !10
  invoke void @_RINvXs5_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_17TreeNodeContainerB1p_E12map_elementsQQNCNCNCINvYB1p_NtB6_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierE000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 16 %i.p, ptr noalias noundef nonnull align 16 %i.r, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.noexc.i unwind label %bb.h, !noalias !16580

.noexc.i:                                         ; preds = %bb.c
  %i.x = load i64, ptr %i.b, align 8, !range !1072, !noalias !16579, !noundef !10 ; 3 uses
  %.not.i.i = icmp eq i64 %i.x, 20
  br i1 %.not.i.i, label %_RNCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtBW_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1p_EEINtB8_17TreeNodeContainerB1H_E12map_elementsQNCNCNCINvYB1H_NtB8_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierE000E0Cs14kWLkQVSKO_14deltalake_core.exit.thread13.i, label %bb.d

_RNCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtBW_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1p_EEINtB8_17TreeNodeContainerB1H_E12map_elementsQNCNCNCINvYB1H_NtB8_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierE000E0Cs14kWLkQVSKO_14deltalake_core.exit.thread13.i: ; preds = %.noexc.i
  %i.y = load ptr, ptr %i.j, align 8, !alias.scope !16572, !noalias !16575, !nonnull !10, !noundef !10 ; 2 uses
  %i.z = load ptr, ptr %i.k, align 8, !noalias !16579, !nonnull !10, !align !1180, !noundef !10
  %i.aa = load ptr, ptr %i.l, align 8, !noalias !16579, !nonnull !10, !align !1180, !noundef !10
  %i.ab = load i8, ptr %i.m, align 1, !range !349, !noalias !16579, !noundef !10
  %i.ac = load i8, ptr %i.n, align 8, !range !833, !noalias !16579, !noundef !10
  store i8 %i.ac, ptr %i.t, align 1, !noalias !16581
  %i.ad = load i8, ptr %i.y, align 1, !range !349, !noalias !16581, !noundef !10
  %i.ae = or i8 %i.ad, %i.ab
  store i8 %i.ae, ptr %i.y, align 1, !noalias !16581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16579
  br label %bb.k

bb.d:                                             ; preds = %.noexc.i
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.af, align 8, !nonnull !10, !noundef !10 ; 9 uses
  %i.ag = load <2 x ptr>, ptr %i.k, align 8, !noalias !16582 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !noalias !16567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16567
  store ptr %2, ptr %i.a, align 8, !noalias !16583
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.4.021, ptr %i.ah, align 8, !noalias !16583
  %i.ai = load i64, ptr %.val.le, align 8, !range !1072, !alias.scope !16587, !noalias !16583, !noundef !10
  %i.aj = icmp eq i64 %i.ai, 20
  br i1 %i.aj, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %bb.j unwind label %bb.f, !noalias !16590

bb.f:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  store i64 %i.x, ptr %.val.le, align 8, !noalias !16583
  %.sroa.5.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  %i.al = extractelement <2 x ptr> %i.ag, i64 0
  store ptr %i.al, ptr %.sroa.5.0..8.val.sroa_idx.i.i, align 8, !noalias !16583
  %.sroa.612.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 16
  %i.am = extractelement <2 x ptr> %i.ag, i64 1
  store ptr %i.am, ptr %.sroa.612.0..8.val.sroa_idx.i.i, align 8, !noalias !16583
  %.sroa.7.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, i64 16, i1 false), !noalias !16591
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropTINtNtBN_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1E_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.a) #44
          to label %.body.i unwind label %bb.g, !noalias !16590

bb.g:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !16590
  unreachable

.body.i:                                          ; preds = %bb.h, %bb.f
  %eh.lpad-body5.i = phi { ptr, i32 } [ %i.ao, %bb.h ], [ %i.ak, %bb.f ]
  resume { ptr, i32 } %eh.lpad-body5.i

bb.h:                                             ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropTINtNtBN_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1E_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.c) #44
          to label %.body.i unwind label %bb.i, !noalias !16580

bb.i:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !16580
  unreachable

._crit_edge:                                      ; preds = %bb.k, %bb.a, %bb.j
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.021, %bb.j ], [ %3, %bb.a ], [ %i.at, %bb.k ]
  %storemerge = phi i64 [ 1, %bb.j ], [ 0, %bb.a ], [ 0, %bb.k ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.ar, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.j:                                             ; preds = %bb.d, %bb.e
  store i64 %i.x, ptr %.val.le, align 8, !noalias !16583
  %.sroa.5.0..8.val.sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  store <2 x ptr> %i.ag, ptr %.sroa.5.0..8.val.sroa_idx10.i.i, align 8, !noalias !16583
  %.sroa.7.0..8.val.sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..8.val.sroa_idx15.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, i64 16, i1 false), !noalias !16591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16567
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %._crit_edge

bb.k:                                             ; preds = %_RNCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtBW_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1p_EEINtB8_17TreeNodeContainerB1H_E12map_elementsQNCNCNCINvYB1H_NtB8_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierE000E0Cs14kWLkQVSKO_14deltalake_core.exit.thread13.i, %bb.b
  %.sroa.9.112.i = phi ptr [ %i.aa, %_RNCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtBW_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1p_EEINtB8_17TreeNodeContainerB1H_E12map_elementsQNCNCNCINvYB1H_NtB8_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierE000E0Cs14kWLkQVSKO_14deltalake_core.exit.thread13.i ], [ %i.r, %bb.b ]
  %.sroa.62.111.i = phi ptr [ %i.z, %_RNCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtBW_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1p_EEINtB8_17TreeNodeContainerB1H_E12map_elementsQNCNCNCINvYB1H_NtB8_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierE000E0Cs14kWLkQVSKO_14deltalake_core.exit.thread13.i ], [ %i.p, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16567
  store ptr %.sroa.62.111.i, ptr %.sroa.4.021, align 8, !noalias !16592
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.4.021, i64 8
  store ptr %.sroa.9.112.i, ptr %i.as, align 8, !noalias !16592
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.4.021, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16567
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %.not = icmp eq ptr %i.s, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB1r_3ops5range5RangeyEEEENtNtNtNtB1r_4iter6traits8iterator8Iterator4folduNCINvNtNtB2A_8adapters3map8map_foldBX_TNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlBX_EuNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage14group_by_storeINtB8_3VecBX_EBX_E0NCINvNvB2u_8for_each4callB3S_NCINvNtCscVxtfYSVfE7_9itertools9group_map14into_group_mapINtB3l_3MapBI_B56_EB3T_BX_E0E0E0EB5h_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 10 uses
  %i.b = alloca [104 x i8], align 8               ; 10 uses
  %i.c = alloca [112 x i8], align 8               ; 5 uses
  %i.d = alloca [112 x i8], align 8               ; 4 uses
  %i.e = alloca [200 x i8], align 8               ; 5 uses
  %i.f = alloca [88 x i8], align 8                ; 4 uses
  %i.g = alloca [112 x i8], align 8               ; 5 uses
  %i.h = alloca [112 x i8], align 8               ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8        ; 2 uses
  %.not2 = icmp eq ptr %.promoted, %i.j
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.614.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.9.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.715.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.816.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.6.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %i.o = phi ptr [ %.promoted, %.lr.ph ], [ %i.p, %bb.n ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %i.o, i64 112, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 112 ; 3 uses
  store ptr %i.p, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.g, ptr noundef nonnull align 8 dereferenceable(112) %i.o, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16599
  invoke void @_RNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storageTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB1G_3ops5range5RangeyEEENtB5_16AsObjectStoreUrl19as_object_store_url(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.g)
          to label %_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage14group_by_storeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB2s_3ops5range5RangeyEEEEB1Y_E0Ba_.exit.i unwind label %bb.c, !noalias !16603

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangeyEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.g) #44
          to label %.body unwind label %bb.d, !noalias !16603

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !16603
  unreachable

_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage14group_by_storeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB2s_3ops5range5RangeyEEEEB1Y_E0Ba_.exit.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.h, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 88, i1 false), !noalias !16596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.h, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16604
  invoke void @_RNvMNtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB38_3ops5range5RangeyEEEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entryCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.e)
          to label %bb.e unwind label %bb.l, !noalias !16596

bb.e:                                             ; preds = %_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage14group_by_storeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB2s_3ops5range5RangeyEEEEB1Y_E0Ba_.exit.i
  %i.s = load i64, ptr %i.b, align 8, !range !59, !noalias !16604, !noundef !10 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.s, -9223372036854775808
  %i.t = load ptr, ptr %i.m, align 8, !noalias !16604 ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16604
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.513.0.copyload.i.i.i = load ptr, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !16604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9.0..sroa_idx6.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.614.0..sroa_idx.i.i.i, i64 64, i1 false), !noalias !16604
  %.sroa.715.0.copyload.i.i.i = load ptr, ptr %.sroa.715.0..sroa_idx.i.i.i, align 8, !noalias !16604, !nonnull !10, !noundef !10
  %.sroa.816.0.copyload.i.i.i = load i64, ptr %.sroa.816.0..sroa_idx.i.i.i, align 8, !noalias !16604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16604
  store i64 %i.s, ptr %i.a, align 8, !noalias !16604
  store ptr %i.t, ptr %.sroa.6.0..sroa_idx2.i.i.i, align 8, !noalias !16604
  store ptr %.sroa.513.0.copyload.i.i.i, ptr %.sroa.8.0..sroa_idx4.i.i.i, align 8, !noalias !16604
  store i64 0, ptr %i.n, align 8, !noalias !16609
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !16609
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !16609
  %i.u = invoke noundef nonnull ptr @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB2Y_3ops5range5RangeyEEEEEE14insert_no_growCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.715.0.copyload.i.i.i, i64 noundef %.sroa.816.0.copyload.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
          to label %.noexc.i.i.i unwind label %bb.l, !noalias !16604

.noexc.i.i.i:                                     ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16609
  br label %bb.h

bb.h:                                             ; preds = %.noexc.i.i.i, %bb.f
  %.pn.i.i.i.i = phi ptr [ %i.u, %.noexc.i.i.i ], [ %i.t, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.l, i64 112, i1 false), !noalias !16596
  %i.v = getelementptr inbounds i8, ptr %.pn.i.i.i.i, i64 -8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !16612, !noalias !16615, !noundef !10 ; 3 uses
  %i.x = load i64, ptr %.sroa.0.0.i.i.i.i, align 8, !range !312, !alias.scope !16612, !noalias !16615, !noundef !10
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB1g_3ops5range5RangeyEEEE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i.i)
          to label %bb.n unwind label %bb.j, !noalias !16615

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangeyEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c) #44
          to label %.body unwind label %bb.k, !noalias !16604

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !16604
  unreachable

bb.l:                                             ; preds = %bb.g, %_RNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage14group_by_storeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB2s_3ops5range5RangeyEEEEB1Y_E0Ba_.exit.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangeyEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(112) %i.d) #44
          to label %.body unwind label %bb.m, !noalias !16604

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !16604
  unreachable

._crit_edge:                                      ; preds = %bb.n, %bb.a
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB1q_3ops5range5RangeyEEEENtNtB22_4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

.body:                                            ; preds = %bb.c, %bb.j, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.j ], [ %i.q, %bb.c ], [ %i.ab, %bb.l ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB1q_3ops5range5RangeyEEEENtNtB22_4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangeyEEEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.o

bb.n:                                             ; preds = %bb.i, %bb.h
  %i.ad = getelementptr inbounds i8, ptr %.pn.i.i.i.i, i64 -16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !16612, !noalias !16615, !nonnull !10, !noundef !10
  %i.af = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.af, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false), !noalias !16604
  %i.ag = add i64 %i.w, 1
  store i64 %i.ag, ptr %i.v, align 8, !alias.scope !16612, !noalias !16615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp eq ptr %i.p, %i.j
  br i1 %.not, label %._crit_edge, label %bb.b

bb.o:                                             ; preds = %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangeyEEEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldBX_B1j_uNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s5_0NCINvNvB24_8for_each4callB1j_NCINvMsj_B8_INtB8_3VecB1j_E14extend_trustedINtB3a_3MapBI_B3M_EE0E0E0EB3Y_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [144 x i8], align 16              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not6 = icmp eq ptr %.promoted, %i.e
  br i1 %.not6, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted7 = load i64, ptr %i.j, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.val3 = phi i64 [ %.promoted7, %.lr.ph ], [ %i.o, %bb.d ] ; 3 uses
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.c, ptr noundef nonnull align 16 dereferenceable(144) %i.k, i64 144, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 144 ; 3 uses
  store ptr %i.l, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16617
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) %i.k, i64 24, i1 false)
  invoke void @_RINvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4Expr5aliasNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(112) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

._crit_edge:                                      ; preds = %bb.d, %.._crit_edge_crit_edge
  %.val5 = phi i64 [ %.val5.pre, %.._crit_edge_crit_edge ], [ %i.o, %bb.d ]
  %.val4 = load ptr, ptr %1, align 8, !nonnull !10, !align !304, !noundef !10
  store i64 %.val5, ptr %.val4, align 8
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %1, align 8, !nonnull !10, !align !304, !noundef !10
  store i64 %.val3, ptr %.val, align 8
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBN_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16617
  %i.n = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.val3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.n, ptr noundef nonnull readonly align 16 dereferenceable(112) %i.b, i64 112, i1 false), !noalias !16621
  %i.o = add i64 %.val3, 1                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.l, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBN_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtCsbvkFyIu7lgC_4core6option6OptionINtB8_3VecbEEEEENtNtNtNtB36_4iter6traits8iterator8Iterator4folduNCINvNvB3T_8for_each4callBX_NCINvNtCscVxtfYSVfE7_9itertools9group_map14into_group_mapBI_BY_B26_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 10 uses
  %i.b = alloca [104 x i8], align 8               ; 10 uses
  %i.c = alloca [208 x i8], align 8               ; 5 uses
  %i.d = alloca [208 x i8], align 8               ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 4 uses
  %i.f = alloca [296 x i8], align 8               ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.i, align 8        ; 2 uses
  %.not2 = icmp eq ptr %.promoted, %i.h
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.614.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.9.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.715.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.816.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %i.m = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.l ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.f, ptr noundef nonnull align 8 dereferenceable(296) %i.m, i64 296, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 296 ; 3 uses
  store ptr %i.n, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.m, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16629
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 8 dereferenceable(208) %i.o, i64 208, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16629
  invoke void @_RNvMNtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtCsbvkFyIu7lgC_4core6option6OptionIB28_bEEEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entryCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.e)
          to label %bb.c unwind label %bb.j, !noalias !16629

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.b, align 8, !range !59, !noalias !16629, !noundef !10 ; 2 uses
  %.not.i.i = icmp eq i64 %i.p, -9223372036854775808
  %i.q = load ptr, ptr %i.k, align 8, !noalias !16629 ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16629
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.513.0.copyload.i.i = load ptr, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !noalias !16629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9.0..sroa_idx6.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.614.0..sroa_idx.i.i, i64 64, i1 false), !noalias !16629
  %.sroa.715.0.copyload.i.i = load ptr, ptr %.sroa.715.0..sroa_idx.i.i, align 8, !noalias !16629, !nonnull !10, !noundef !10
  %.sroa.816.0.copyload.i.i = load i64, ptr %.sroa.816.0..sroa_idx.i.i, align 8, !noalias !16629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16629
  store i64 %i.p, ptr %i.a, align 8, !noalias !16629
  store ptr %i.q, ptr %.sroa.6.0..sroa_idx2.i.i, align 8, !noalias !16629
  store ptr %.sroa.513.0.copyload.i.i, ptr %.sroa.8.0..sroa_idx4.i.i, align 8, !noalias !16629
  store i64 0, ptr %i.l, align 8, !noalias !16632
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !16632
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !16632
  %i.r = invoke noundef nonnull ptr @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtCsbvkFyIu7lgC_4core6option6OptionIB1Y_bEEEEEE14insert_no_growCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.715.0.copyload.i.i, i64 noundef %.sroa.816.0.copyload.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
          to label %.noexc.i.i unwind label %bb.j, !noalias !16629

.noexc.i.i:                                       ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16632
  br label %bb.f

bb.f:                                             ; preds = %.noexc.i.i, %bb.d
  %.pn.i.i.i = phi ptr [ %i.r, %.noexc.i.i ], [ %i.q, %bb.d ] ; 3 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(208) %i.j, i64 208, i1 false)
  %i.s = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !16635, !noalias !16638, !noundef !10 ; 3 uses
  %i.u = load i64, ptr %.sroa.0.0.i.i.i, align 8, !range !312, !alias.scope !16635, !noalias !16638, !noundef !10
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB7_3vec3VecbEEEE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i)
          to label %bb.l unwind label %bb.h, !noalias !16638

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.c) #44
          to label %.body unwind label %bb.i, !noalias !16629

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !16629
  unreachable

bb.j:                                             ; preds = %bb.e, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(208) %i.d) #44
          to label %.body unwind label %bb.k, !noalias !16629

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !16629
  unreachable

._crit_edge:                                      ; preds = %bb.l, %bb.a
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtCsbvkFyIu7lgC_4core6option6OptionINtB7_3VecbEEEEENtNtNtB35_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

.body:                                            ; preds = %bb.h, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.y, %bb.j ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtCsbvkFyIu7lgC_4core6option6OptionINtB7_3VecbEEEEENtNtNtB35_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB4_6option6OptionINtBL_3VecbEEEEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.aa = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -16
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !16635, !noalias !16638, !nonnull !10, !noundef !10
  %i.ac = getelementptr inbounds nuw [208 x i8], ptr %i.ab, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.ac, ptr noundef nonnull align 8 dereferenceable(208) %i.c, i64 208, i1 false), !noalias !16629
  %i.ad = add i64 %i.t, 1
  store i64 %i.ad, ptr %i.s, align 8, !alias.scope !16635, !noalias !16638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not = icmp eq ptr %i.n, %i.h
  br i1 %.not, label %._crit_edge, label %bb.b

bb.m:                                             ; preds = %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB4_6option6OptionINtBL_3VecbEEEEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB12_9arguments12ArgumentNameEEENtNtNtNtB1M_4iter6traits8iterator8Iterator4folduNCINvNvB2S_8for_each4callBX_NCINvNvNtB2W_7collect14default_extend18unchecked_extenderTINtB8_3VecBY_EIB53_B1H_EEBX_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not2 = icmp eq ptr %.promoted, %i.c
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.e = phi ptr [ %i.f, %bb.c ], [ %.promoted, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8
  invoke void @_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEIBQ_INtNtBb_6option6OptionNtNtB1q_9arguments12ArgumentNameEEEINtB5_6ExtendTB1m_B2a_EE20extend_one_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.a)
          to label %bb.c unwind label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB11_9arguments12ArgumentNameEEENtNtNtB1L_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB11_9arguments12ArgumentNameEEENtNtNtB1L_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB4_6option6OptionNtNtB1z_9arguments12ArgumentNameEEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16640
  %.not = icmp eq ptr %i.f, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB4_6option6OptionNtNtB1z_9arguments12ArgumentNameEEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB12_9arguments12ArgumentNameEEENtNtNtNtB1M_4iter6traits8iterator8Iterator4folduNCINvNvB2S_8for_each4callBX_NCINvNvNtB2W_7collect14default_extend8extenderTINtB8_3VecBY_EIB4S_B1H_EEBX_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not2 = icmp eq ptr %.promoted, %i.c
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.e = phi ptr [ %i.f, %bb.c ], [ %.promoted, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8
  invoke void @_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEIBQ_INtNtBb_6option6OptionNtNtB1q_9arguments12ArgumentNameEEEINtB5_6ExtendTB1m_B2a_EE10extend_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.a)
          to label %bb.c unwind label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB11_9arguments12ArgumentNameEEENtNtNtB1L_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB11_9arguments12ArgumentNameEEENtNtNtB1L_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB4_6option6OptionNtNtB1z_9arguments12ArgumentNameEEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16643
  %.not = icmp eq ptr %i.f, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB4_6option6OptionNtNtB1z_9arguments12ArgumentNameEEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtCsjyY8HP3IvQ6_12object_store4path4PathjNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2K_8adapters3map12map_try_foldBX_INtNtB2M_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtNtNtB4V_10operations5write6writer10WriteErrorEuINtNtNtB2M_3ops12control_flow11ControlFlowIB6F_B4N_EENCNCNvMs3_B5R_NtB5R_15PartitionWriter5close00NCINvXB3Q_INtB3Q_12GenericShuntINtB3O_3MapBI_B7v_EIB4r_NtNtB2M_7convert10InfallibleB5P_EEB2E_8try_folduNCINvNvB2E_12try_for_each4callB4N_B7k_NcNtB7k_5Break0E0B7k_E0E0B6E_EB4V_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [96 x i8], align 16               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [272 x i8], align 16              ; 10 uses
  %i.g = alloca [168 x i8], align 8               ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.9.sroa.4.i = alloca [232 x i8], align 8  ; 4 uses
  %.sroa.11 = alloca [232 x i8], align 8          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !10, !noundef !10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !10, !noundef !10 ; 5 uses
  %.not = icmp eq ptr %i.l, %i.j
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !16646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.g, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.3.0..sroa_idx, i64 168, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  store ptr %i.m, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.n, align 8             ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.o, align 8, !nonnull !10, !align !304, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.4.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16654)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16646
  %i.p = load ptr, ptr %.val3, align 8, !alias.scope !16654, !noalias !16655, !nonnull !10, !align !304, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16656
  store i64 0, ptr %i.c, align 8, !noalias !16656
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !16656
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !16656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16656
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.q, align 8, !noalias !16656
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !noalias !16656
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 2, !noalias !16656
  store ptr %i.c, ptr %i.b, align 8, !noalias !16656
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @224, ptr %i.r, align 8, !noalias !16656
  %i.s = invoke noundef zeroext i1 @_RNvXs3_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.c, !noalias !16660

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #44
          to label %.body.i.i unwind label %bb.f, !noalias !16660

bb.d:                                             ; preds = %bb.b
  br i1 %i.s, label %bb.e, label %bb.h, !prof !49

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @810, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @244, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @812) #46
          to label %.noexc.i.i.i unwind label %bb.c, !noalias !16660

.noexc.i.i.i:                                     ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !16660
  unreachable

bb.g:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.l, %bb.g, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.t, %bb.c ], [ %i.v, %bb.g ], [ %i.ai, %bb.l ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(168) %i.g) #44
          to label %bb.q unwind label %bb.v, !noalias !16646

bb.h:                                             ; preds = %bb.d
end_hunk_1
