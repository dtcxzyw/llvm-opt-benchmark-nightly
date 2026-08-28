Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.12?download=true
inline.NumInlined: 12919
inline.NumDeleted: 5719
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters3map12map_try_foldBX_INtNtB21_6result6ResultINtNtB21_6option6OptionyENtNtB11_5error15DataFusionErrorEuINtNtNtB21_3ops12control_flow11ControlFlowIB4Z_B42_EENCINvMs3_BZ_BX_13iter_to_arrayINtB8_3VecBX_EEsh_0NCINvXB35_INtB35_12GenericShuntINtB33_3MapINtNtB35_8peekable8PeekableBI_EB5P_EIB3G_NtNtB21_7convert10InfallibleB4r_EEB1T_8try_folduNCINvNvB1T_12try_for_each4callB42_B5E_NcNtB5E_5Break0E0B5E_E0E0B4Y_ECs14kWLkQVSKO_14deltalake_core:bb.a

_RNCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB8_11ScalarValue13iter_to_arrayINtNtCs6Po7BT7Nknu_5alloc3vec3VecBO_EEsh_0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.t = load i64, ptr %i.s, align 16, !range !343, !alias.scope !15664, !noalias !15667, !noundef !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !15664, !noalias !15667
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.h), !noalias !15667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15661
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueINtNtBa_6result6ResultINtNtBa_6option6OptionyENtNtB13_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B2g_EENCINvMs3_B11_BZ_13iter_to_arrayINtNtCs6Po7BT7Nknu_5alloc3vec3VecBZ_EEsh_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_8peekable8PeekableINtNtB4z_9into_iter8IntoIterBZ_EEB41_EIB1V_NtNtBa_7convert10InfallibleB2E_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7t_12try_for_each4callB2g_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0Cs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15669
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15669
  store ptr %.val.i, ptr %i.d, align 8, !noalias !15669
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !15669
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.h, ptr %i.w, align 8, !noalias !15669
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsh_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !noalias !15669
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @148, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.d, !noalias !15667

.body31.i.i:                                      ; preds = %bb.l, %.body.i.i, %bb.d
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i.i ], [ %i.x, %bb.d ], [ %i.ak, %bb.l ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.h) #44
          to label %common.resume.i unwind label %bb.n, !noalias !15667

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i30.i.i, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body31.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !15669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15669
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.f unwind label %bb.e, !noalias !15667

.body.i.i:                                        ; preds = %bb.j, %bb.i, %bb.e
  %.pn.i.i = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %i.y, %bb.e ], [ %i.ai, %bb.j ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #44
          to label %.body31.i.i unwind label %bb.n, !noalias !15667

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.g, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.f:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.z = load i64, ptr %i.a, align 8, !range !343, !noalias !15669, !noundef !10
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !59, !noalias !15669, !noundef !10 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !49

bb.g:                                             ; preds = %bb.f
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !15669
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #46
          to label %bb.o unwind label %bb.e, !noalias !15667

bb.h:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !15669, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15669
  store i64 %i.ac, ptr %i.c, align 8, !noalias !15669
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.af, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !15669
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !15669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15669
  store ptr %i.f, ptr %i.b, align 8, !noalias !15669
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.415.0..sroa_idx.i.i, align 8, !noalias !15669
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.ag, align 8, !noalias !15669
  %.sroa.419.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.419.0..sroa_idx.i.i, align 8, !noalias !15669
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @146, ptr noundef nonnull %i.b)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit28.i.i unwind label %bb.i, !noalias !15667

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #44
          to label %.body.i.i unwind label %bb.n, !noalias !15667

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit28.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15669
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.j, !noalias !15667

bb.j:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit28.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i.i unwind label %bb.k, !noalias !15667

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !15667
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit28.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.e, !noalias !15667

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15669
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i30.i.i unwind label %bb.l, !noalias !15667

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body31.i.i unwind label %bb.m, !noalias !15667

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !15667
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i30.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.p unwind label %bb.d, !noalias !15667

bb.n:                                             ; preds = %bb.i, %.body.i.i, %.body31.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !15667
  unreachable

bb.o:                                             ; preds = %bb.g
  unreachable

common.resume.i:                                  ; preds = %bb.r, %.body31.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %.pn.pn.i.i, %.body31.i.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i30.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15669
  %i.an = load <2 x i64>, ptr %i.g, align 16, !noalias !15670 ; 3 uses
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ao = load i64, ptr %.sroa.9.8..sroa_idx.i, align 16, !noalias !15670 ; 2 uses
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.h), !noalias !15667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15661
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ap = load i64, ptr %.val, align 8, !range !1072, !alias.scope !15671, !noalias !15674, !noundef !10
  %i.aq = icmp eq i64 %i.ap, 20
  br i1 %i.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.r, !noalias !15674

bb.r:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          cleanup
  store i64 10, ptr %.val, align 8, !noalias !15674
  %.sroa.5.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.as = extractelement <2 x i64> %i.an, i64 0
  store i64 %i.as, ptr %.sroa.5.0..8.val.sroa_idx.i.i, align 8, !noalias !15674
  %.sroa.612.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.at = extractelement <2 x i64> %i.an, i64 1
  store i64 %i.at, ptr %.sroa.612.0..8.val.sroa_idx.i.i, align 8, !noalias !15674
  %.sroa.7.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  store i64 %i.ao, ptr %.sroa.7.0..8.val.sroa_idx.i.i, align 8, !noalias !15661
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.q, %bb.p
  store i64 10, ptr %.val, align 8, !noalias !15674
  %.sroa.5.0..8.val.sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store <2 x i64> %i.an, ptr %.sroa.5.0..8.val.sroa_idx10.i.i, align 8, !noalias !15674
  %.sroa.7.0..8.val.sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  store i64 %i.ao, ptr %.sroa.7.0..8.val.sroa_idx15.i.i, align 8, !noalias !15661
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueINtNtBa_6result6ResultINtNtBa_6option6OptionyENtNtB13_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B2g_EENCINvMs3_B11_BZ_13iter_to_arrayINtNtCs6Po7BT7Nknu_5alloc3vec3VecBZ_EEsh_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_8peekable8PeekableINtNtB4z_9into_iter8IntoIterBZ_EEB41_EIB1V_NtNtBa_7convert10InfallibleB2E_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7t_12try_for_each4callB2g_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0Cs14kWLkQVSKO_14deltalake_core.exit

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueINtNtBa_6result6ResultINtNtBa_6option6OptionyENtNtB13_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B2g_EENCINvMs3_B11_BZ_13iter_to_arrayINtNtCs6Po7BT7Nknu_5alloc3vec3VecBZ_EEsh_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_8peekable8PeekableINtNtB4z_9into_iter8IntoIterBZ_EEB41_EIB1V_NtNtBa_7convert10InfallibleB2E_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7t_12try_for_each4callB2g_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB8_11ScalarValue13iter_to_arrayINtNtCs6Po7BT7Nknu_5alloc3vec3VecBO_EEsh_0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.a
  %.sroa.3.0 = phi i64 [ undef, %bb.a ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.v, %_RNCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB8_11ScalarValue13iter_to_arrayINtNtCs6Po7BT7Nknu_5alloc3vec3VecBO_EEsh_0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i ]
  %.sroa.0.0 = phi i64 [ 3, %bb.a ], [ 2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.t, %_RNCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB8_11ScalarValue13iter_to_arrayINtNtCs6Po7BT7Nknu_5alloc3vec3VecBO_EEsh_0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i ]
  %i.au = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.av = insertvalue { i64, i64 } %i.au, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.av
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters3map12map_try_foldBX_INtNtB21_6result6ResultINtNtBa_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtB11_5error15DataFusionErrorEuINtNtNtB21_3ops12control_flow11ControlFlowIB5D_B42_EENCINvMs3_BZ_BX_13iter_to_arrayINtB8_3VecBX_EE0NCINvXB35_INtB35_12GenericShuntINtB33_3MapINtNtB35_8peekable8PeekableBI_EB6t_EIB3G_NtNtB21_7convert10InfallibleB55_EEB1T_8try_folduNCINvNvB1T_12try_for_each4callB42_B6i_NcNtB6i_5Break0E0B6i_E0E0B5C_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.4 = alloca [8 x i8], align 8             ; 5 uses
  %.sroa.74 = alloca [8 x i8], align 8            ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %.not = icmp eq ptr %i.f, %i.d
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.f, i64 64, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.74)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.h, align 8             ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15681)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValue8to_array(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.a)
          to label %_RNCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB8_11ScalarValue13iter_to_arrayINtNtCs6Po7BT7Nknu_5alloc3vec3VecBO_EE0Cs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.c, !noalias !15677

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.a) #44
          to label %common.resume.i unwind label %bb.d, !noalias !15682

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !15682
  unreachable

common.resume.i:                                  ; preds = %bb.h, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.i, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i

_RNCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB8_11ScalarValue13iter_to_arrayINtNtCs6Po7BT7Nknu_5alloc3vec3VecBO_EE0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.a), !noalias !15682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15677
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !15677 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !15677 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !15677 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15685)
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 20
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB8_11ScalarValue13iter_to_arrayINtNtCs6Po7BT7Nknu_5alloc3vec3VecBO_EE0Cs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = load i64, ptr %.val, align 8, !range !1072, !alias.scope !15688, !noalias !15691, !noundef !10
  %i.l = icmp eq i64 %i.k, 20
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.h, !noalias !15691

bb.g:                                             ; preds = %_RNCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB8_11ScalarValue13iter_to_arrayINtNtCs6Po7BT7Nknu_5alloc3vec3VecBO_EE0Cs14kWLkQVSKO_14deltalake_core.exit.i
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4, align 8, !alias.scope !15693, !noalias !15694
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i, ptr %.val, align 8, !noalias !15691
  %.sroa.5.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i, align 8, !noalias !15691
  %.sroa.612.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i, align 8, !noalias !15691
  %.sroa.7.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i64 16, i1 false), !noalias !15677
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f, %bb.e
  store i64 %.sroa.0.0.copyload.i, ptr %.val, align 8, !noalias !15691
  %.sroa.5.0..8.val.sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i, align 8, !noalias !15691
  %.sroa.612.0..8.val.sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i, align 8, !noalias !15691
  %.sroa.7.0..8.val.sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..8.val.sroa_idx15.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i64 16, i1 false), !noalias !15677
  br label %bb.j

bb.i:                                             ; preds = %bb.a, %bb.j
  %storemerge = phi i64 [ 1, %bb.j ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.g
  %.sink23.i.i.sroa.phi = phi ptr [ %.sroa.74, %bb.g ], [ %.sroa.4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.sink.i.i = phi ptr [ %.sroa.5.0.copyload.i, %bb.g ], [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  store ptr %.sink.i.i, ptr %.sink23.i.i.sroa.phi, align 8, !alias.scope !15693, !noalias !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8. = load ptr, ptr %.sroa.4, align 8, !alias.scope !15695, !noalias !15698
  %.sroa.74.0..sroa.74.0..sroa.74.0..sroa.74.16. = load ptr, ptr %.sroa.74, align 8, !alias.scope !15695, !noalias !15698
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.74)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8., ptr %i.n, align 8, !alias.scope !15700
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.74.0..sroa.74.0..sroa.74.0..sroa.74.16., ptr %i.o, align 8, !alias.scope !15700
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters3map12map_try_foldBX_INtNtB21_6result6ResultINtNtBa_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtB11_5error15DataFusionErrorEuINtNtNtB21_3ops12control_flow11ControlFlowIB5D_B42_EENCINvMs3_BZ_BX_13iter_to_arrayINtB8_3VecBX_EEs2_0NCINvXB35_INtB35_12GenericShuntINtB33_3MapINtNtB35_8peekable8PeekableBI_EB6t_EIB3G_NtNtB21_7convert10InfallibleB55_EEB1T_8try_folduNCINvNvB1T_12try_for_each4callB42_B6i_NcNtB6i_5Break0E0B6i_E0E0B5C_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.4 = alloca [8 x i8], align 8             ; 5 uses
  %.sroa.74 = alloca [8 x i8], align 8            ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %.not = icmp eq ptr %i.f, %i.d
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.f, i64 64, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.74)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.h, align 8             ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15707)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValue8to_array(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.a)
          to label %_RNCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB8_11ScalarValue13iter_to_arrayINtNtCs6Po7BT7Nknu_5alloc3vec3VecBO_EEs2_0Cs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.c, !noalias !15703

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.a) #44
          to label %common.resume.i unwind label %bb.d, !noalias !15708

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !15708
  unreachable

common.resume.i:                                  ; preds = %bb.h, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.i, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i

_RNCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB8_11ScalarValue13iter_to_arrayINtNtCs6Po7BT7Nknu_5alloc3vec3VecBO_EEs2_0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.a), !noalias !15708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15703
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !15703 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !15703 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !15703 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15711)
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 20
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB8_11ScalarValue13iter_to_arrayINtNtCs6Po7BT7Nknu_5alloc3vec3VecBO_EEs2_0Cs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = load i64, ptr %.val, align 8, !range !1072, !alias.scope !15714, !noalias !15717, !noundef !10
  %i.l = icmp eq i64 %i.k, 20
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.h, !noalias !15717

bb.g:                                             ; preds = %_RNCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB8_11ScalarValue13iter_to_arrayINtNtCs6Po7BT7Nknu_5alloc3vec3VecBO_EEs2_0Cs14kWLkQVSKO_14deltalake_core.exit.i
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4, align 8, !alias.scope !15719, !noalias !15720
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i, ptr %.val, align 8, !noalias !15717
  %.sroa.5.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i, align 8, !noalias !15717
  %.sroa.612.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i, align 8, !noalias !15717
  %.sroa.7.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i64 16, i1 false), !noalias !15703
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f, %bb.e
  store i64 %.sroa.0.0.copyload.i, ptr %.val, align 8, !noalias !15717
  %.sroa.5.0..8.val.sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i, align 8, !noalias !15717
  %.sroa.612.0..8.val.sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i, align 8, !noalias !15717
  %.sroa.7.0..8.val.sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..8.val.sroa_idx15.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i64 16, i1 false), !noalias !15703
  br label %bb.j

bb.i:                                             ; preds = %bb.a, %bb.j
  %storemerge = phi i64 [ 1, %bb.j ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.g
  %.sink23.i.i.sroa.phi = phi ptr [ %.sroa.74, %bb.g ], [ %.sroa.4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.sink.i.i = phi ptr [ %.sroa.5.0.copyload.i, %bb.g ], [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  store ptr %.sink.i.i, ptr %.sink23.i.i.sroa.phi, align 8, !alias.scope !15719, !noalias !15720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8. = load ptr, ptr %.sroa.4, align 8, !alias.scope !15721, !noalias !15724
  %.sroa.74.0..sroa.74.0..sroa.74.0..sroa.74.16. = load ptr, ptr %.sroa.74, align 8, !alias.scope !15721, !noalias !15724
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.74)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8., ptr %i.n, align 8, !alias.scope !15726
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.74.0..sroa.74.0..sroa.74.0..sroa.74.16., ptr %i.o, align 8, !alias.scope !15726
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1K_8adapters3map12map_try_foldBX_BX_B2I_INtNtB1M_6result6ResultB2I_zENCNCNCNvXs2_NtB11_6prefixINtB4P_11PrefixStoreINtNtBa_4sync3ArcDNtB11_11ObjectStoreEL_EEB5E_19list_with_delimiter000NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B4a_ECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not12 = icmp eq ptr %.promoted, %i.e
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i = load ptr, ptr %3, align 8, !noalias !15729, !nonnull !10, !align !304, !noundef !10
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCsjyY8HP3IvQ6_12object_store4path4PathBZ_INtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1I_zENCNCNCNvXs2_NtB13_6prefixINtB3n_11PrefixStoreINtNtB1P_4sync3ArcDNtB13_11ObjectStoreEL_EEB4d_19list_with_delimiter000NCINvNtB1N_16in_place_collect24write_in_place_with_dropBZ_E0E0Cs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.013 = phi ptr [ %2, %.lr.ph ], [ %i.l, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCsjyY8HP3IvQ6_12object_store4path4PathBZ_INtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1I_zENCNCNCNvXs2_NtB13_6prefixINtB3n_11PrefixStoreINtNtB1P_4sync3ArcDNtB13_11ObjectStoreEL_EEB4d_19list_with_delimiter000NCINvNtB1N_16in_place_collect24write_in_place_with_dropBZ_E0E0Cs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCsjyY8HP3IvQ6_12object_store4path4PathBZ_INtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1I_zENCNCNCNvXs2_NtB13_6prefixINtB3n_11PrefixStoreINtNtB1P_4sync3ArcDNtB13_11ObjectStoreEL_EEB4d_19list_with_delimiter000NCINvNtB1N_16in_place_collect24write_in_place_with_dropBZ_E0E0Cs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15729
  store ptr %1, ptr %i.c, align 8, !noalias !15729
  store ptr %.sroa.4.013, ptr %i.g, align 8, !noalias !15729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15729
  invoke void @_RNvMs_NtCsjyY8HP3IvQ6_12object_store6prefixINtB4_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB6_11ObjectStoreEL_EE12strip_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.val.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCsjyY8HP3IvQ6_12object_store4path4PathBZ_INtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1I_zENCNCNCNvXs2_NtB13_6prefixINtB3n_11PrefixStoreINtNtB1P_4sync3ArcDNtB13_11ObjectStoreEL_EEB4d_19list_with_delimiter000NCINvNtB1N_16in_place_collect24write_in_place_with_dropBZ_E0E0Cs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d, !noalias !15729

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.c) #44
          to label %bb.c unwind label %bb.e, !noalias !15729

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !15729
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCsjyY8HP3IvQ6_12object_store4path4PathBZ_INtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1I_zENCNCNCNvXs2_NtB13_6prefixINtB3n_11PrefixStoreINtNtB1P_4sync3ArcDNtB13_11ObjectStoreEL_EEB4d_19list_with_delimiter000NCINvNtB1N_16in_place_collect24write_in_place_with_dropBZ_E0E0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.013, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !15729
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15729
  %.not = icmp eq ptr %i.i, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCsjyY8HP3IvQ6_12object_store4path4PathBZ_INtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1I_zENCNCNCNvXs2_NtB13_6prefixINtB3n_11PrefixStoreINtNtB1P_4sync3ArcDNtB13_11ObjectStoreEL_EEB4d_19list_with_delimiter000NCINvNtB1N_16in_place_collect24write_in_place_with_dropBZ_E0E0Cs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.l, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCsjyY8HP3IvQ6_12object_store4path4PathBZ_INtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1I_zENCNCNCNvXs2_NtB13_6prefixINtB3n_11PrefixStoreINtNtB1P_4sync3ArcDNtB13_11ObjectStoreEL_EEB4d_19list_with_delimiter000NCINvNtB1N_16in_place_collect24write_in_place_with_dropBZ_E0E0Cs14kWLkQVSKO_14deltalake_core.exit ]
  %i.m = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.n = insertvalue { ptr, ptr } %i.m, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge20MergeOperationConfigENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtBZ_14MergeOperationENCINvNtNtB2i_8adapters3map12map_try_foldBX_INtNtB2k_6result6ResultB3Q_NtNtB13_6errors15DeltaTableErrorEB3g_INtNtNtB2k_3ops12control_flow11ControlFlowIB4U_B3g_zEB3g_ENCNCNCNvBZ_7execute00s0_0NCINvXB4j_INtB4j_12GenericShuntINtB4h_3MapBI_B6R_EIB4U_NtNtB2k_7convert10InfallibleB5k_EEB2c_8try_foldB3g_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3Q_E0B6B_E0E0B5V_EB13_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [176 x i8], align 16              ; 4 uses
  %i.c = alloca [176 x i8], align 16              ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not18 = icmp eq ptr %.promoted, %i.f
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val2 = load ptr, ptr %i.h, align 8, !nonnull !10, !align !304, !noundef !10 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.4.019 = phi ptr [ %3, %.lr.ph ], [ %i.ad, %bb.j ] ; 7 uses
  %i.m = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15732
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.b, ptr noundef nonnull align 16 dereferenceable(176) %i.m, i64 176, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 176 ; 3 uses
  store ptr %i.n, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15732
  store ptr %2, ptr %i.d, align 8, !noalias !15732
  store ptr %.sroa.4.019, ptr %i.i, align 8, !noalias !15732
  %i.o = load ptr, ptr %.val2, align 8, !alias.scope !15736, !noalias !15739, !nonnull !10, !align !304, !noundef !10
  %i.p = load ptr, ptr %i.j, align 8, !alias.scope !15736, !noalias !15739, !nonnull !10, !align !304, !noundef !10
  %i.q = load ptr, ptr %i.k, align 8, !alias.scope !15736, !noalias !15739, !nonnull !10, !align !304, !noundef !10
  invoke void @_RNvMs3_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB5_14MergeOperation8try_from(ptr noalias noundef nonnull sret([176 x i8]) align 16 captures(none) dereferenceable(176) %i.c, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(176) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.o, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) @166, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q)
          to label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s0_0Bb_.exit.i unwind label %bb.g, !noalias !15732

_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s0_0Bb_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15732
  %.sroa.4.16.copyload.i = load i64, ptr %i.c, align 16, !noalias !15732 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15732
  store ptr %2, ptr %i.a, align 8, !noalias !15742
  store ptr %.sroa.4.019, ptr %i.l, align 8, !noalias !15742
  %i.r = icmp eq i64 %.sroa.4.16.copyload.i, 38
  br i1 %i.r, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s0_0Bb_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.s, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.t = load i64, ptr %.val.le, align 16, !range !203, !alias.scope !15746, !noalias !15742, !noundef !10
  %i.u = icmp eq i64 %i.t, -9223372036854775711
  br i1 %i.u, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %.val.le)
          to label %bb.i unwind label %bb.e, !noalias !15742

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.val.le, ptr noundef nonnull align 16 dereferenceable(96) %i.w, i64 96, i1 false), !noalias !15732
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationEEB1J_(ptr noalias noundef align 8 dereferenceable(16) %i.a) #44
          to label %.body.i unwind label %bb.f, !noalias !15742

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !15742
  unreachable

.body.i:                                          ; preds = %bb.g, %bb.e
  %eh.lpad-body4.i = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.v, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body4.i

bb.g:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14MergeOperationEEB1J_(ptr noalias noundef align 8 dereferenceable(16) %i.d) #44
          to label %.body.i unwind label %bb.h, !noalias !15732

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !15732
  unreachable

._crit_edge:                                      ; preds = %bb.j, %bb.a, %bb.i
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.019, %bb.i ], [ %3, %bb.a ], [ %i.ad, %bb.j ]
  %storemerge = phi i64 [ 1, %bb.i ], [ 0, %bb.a ], [ 0, %bb.j ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.ab, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.i:                                             ; preds = %bb.c, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.val.le, ptr noundef nonnull align 16 dereferenceable(96) %i.ac, i64 96, i1 false), !noalias !15732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %._crit_edge

bb.j:                                             ; preds = %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s0_0Bb_.exit.i
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.019, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.16..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9.16..sroa_idx.i, i64 64, i1 false), !noalias !15732
  %.sroa.68.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.019, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.68.16..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.16..sroa_idx.i, i64 104, i1 false), !noalias !15732
  store i64 %.sroa.4.16.copyload.i, ptr %.sroa.4.019, align 16, !noalias !15742
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.4.019, i64 176 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.n, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge20MergeOperationConfigENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtBZ_14MergeOperationENCINvNtNtB2i_8adapters3map12map_try_foldBX_INtNtB2k_6result6ResultB3Q_NtNtB13_6errors15DeltaTableErrorEB3g_INtNtNtB2k_3ops12control_flow11ControlFlowIB4U_B3g_zEB3g_ENCNCNCNvBZ_7execute00s1_0NCINvXB4j_INtB4j_12GenericShuntINtB4h_3MapBI_B6R_EIB4U_NtNtB2k_7convert10InfallibleB5k_EEB2c_8try_foldB3g_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3Q_E0B6B_E0E0B5V_EB13_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [176 x i8], align 16              ; 4 uses
  %i.c = alloca [176 x i8], align 16              ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE23pipe_operator_aggregate0B1b_:bb.a
  %.not3 = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not3, label %common.resume, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.d, align 16, !range !4230, !noundef !10 ; 2 uses
  %i.l = icmp eq i64 %i.k, 37
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  br i1 %i.l, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.o = load i64, ptr %i.e, align 8, !range !59, !alias.scope !16808, !noundef !10
  %i.p = icmp eq i64 %i.o, -9223372036854775808
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.k, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.i, %bb.b ], [ %i.i, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %bb.c
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8.0..sroa_idx4, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.67.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.k, ptr %i.c, align 16
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.s = load i64, ptr %i.e, align 8, !range !59, !noundef !10
  %.not = icmp eq i64 %i.s, -9223372036854775808
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @_RNvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4Expr16alias_if_changed(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %i.c, i64 112, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.j, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.k:                                             ; preds = %bb.b
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e) #44
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB7_21ConvertToDeltaBuilder19into_create_builder0Bb_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(384) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 12 uses
  %i.r = alloca [96 x i8], align 16               ; 4 uses
  %i.s = alloca [48 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 14 uses
  %i.u = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i = alloca [16 x i8], align 8      ; 7 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.3.i.sroa.7 = alloca [56 x i8], align 8   ; 6 uses
  %i.w = alloca [96 x i8], align 16               ; 11 uses
  %i.x = alloca [16 x i8], align 1                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.70 = alloca [56 x i8], align 8           ; 9 uses
  %.sroa.111258 = alloca [272 x i8], align 16     ; 3 uses
  %i.z = alloca [368 x i8], align 8               ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 2 uses
  %i.ab = alloca [368 x i8], align 8              ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 2 uses
  %i.ad = alloca [88 x i8], align 8               ; 5 uses
  %i.ae = alloca [48 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [64 x i8], align 8               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 8 uses
  %i.ai = alloca [368 x i8], align 8              ; 7 uses
  %i.aj = alloca [368 x i8], align 8              ; 7 uses
  %i.ak = alloca [368 x i8], align 8              ; 9 uses
  %i.al = alloca [368 x i8], align 8              ; 9 uses
  %i.am = alloca [368 x i8], align 8              ; 10 uses
  %i.an = alloca [368 x i8], align 8              ; 10 uses
  %i.ao = alloca [368 x i8], align 8              ; 11 uses
  %i.ap = alloca [368 x i8], align 16             ; 13 uses
  %i.aq = alloca [40 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 9 uses
  %i.at = alloca [144 x i8], align 8              ; 11 uses
  %i.au = alloca [144 x i8], align 8              ; 12 uses
  %i.av = alloca [8 x i8], align 8                ; 10 uses
  %i.aw = alloca [8 x i8], align 8                ; 12 uses
  %i.ax = alloca [64 x i8], align 8               ; 7 uses
  %i.ay = alloca [24 x i8], align 8               ; 5 uses
  %i.az = alloca [64 x i8], align 8               ; 11 uses
  %i.ba = alloca [64 x i8], align 8               ; 6 uses
  %i.bb = alloca [64 x i8], align 8               ; 13 uses
  %i.bc = alloca [272 x i8], align 8              ; 17 uses
  %i.bd = alloca [24 x i8], align 8               ; 6 uses
  %i.be = alloca [64 x i8], align 8               ; 5 uses
  %i.bf = alloca [64 x i8], align 8               ; 5 uses
  %i.bg = alloca [48 x i8], align 8               ; 7 uses
  %i.bh = alloca [24 x i8], align 8               ; 7 uses
  %i.bi = alloca [24 x i8], align 8               ; 16 uses
  %i.bj = alloca [24 x i8], align 8               ; 15 uses
  %i.bk = alloca [272 x i8], align 8              ; 24 uses
  %i.bl = alloca [24 x i8], align 8               ; 10 uses
  %i.bm = alloca [48 x i8], align 8               ; 5 uses
  %i.bn = alloca [64 x i8], align 8               ; 5 uses
  %i.bo = alloca [72 x i8], align 8               ; 15 uses
  %i.bp = alloca [160 x i8], align 16             ; 9 uses
  %i.bq = alloca [160 x i8], align 16             ; 16 uses
  %.sroa.7972.sroa.13 = alloca [56 x i8], align 8 ; 9 uses
  %i.br = alloca [152 x i8], align 16             ; 17 uses
  %.sroa.9920 = alloca [56 x i8], align 8         ; 2 uses
  %.sroa.12891 = alloca [56 x i8], align 8        ; 7 uses
  %i.bs = alloca [288 x i8], align 8              ; 29 uses
  %i.bt = alloca [24 x i8], align 8               ; 5 uses
  %i.bu = alloca [16 x i8], align 16              ; 8 uses
  %i.bv = alloca [96 x i8], align 16              ; 5 uses
  %i.bw = alloca [24 x i8], align 8               ; 8 uses
  %i.bx = alloca [96 x i8], align 16              ; 8 uses
  %i.by = alloca [16 x i8], align 8               ; 6 uses
  %i.bz = alloca [8 x i8], align 8                ; 5 uses
  %i.ca = alloca [24 x i8], align 8               ; 5 uses
  %i.cb = alloca [24 x i8], align 8               ; 6 uses
  %i.cc = alloca [24 x i8], align 8               ; 12 uses
  %i.cd = alloca [16 x i8], align 8               ; 5 uses
  %i.ce = alloca [112 x i8], align 16             ; 12 uses
  %i.cf = alloca [96 x i8], align 16              ; 10 uses
  %i.cg = alloca [96 x i8], align 8               ; 5 uses
  %i.ch = alloca [24 x i8], align 8               ; 8 uses
  %i.ci = alloca [96 x i8], align 8               ; 7 uses
  %i.cj = alloca [96 x i8], align 8               ; 6 uses
  %i.ck = alloca [96 x i8], align 8               ; 7 uses
  %i.cl = alloca [24 x i8], align 8               ; 7 uses
  %i.cm = alloca [24 x i8], align 8               ; 10 uses
  %i.cn = alloca [48 x i8], align 8               ; 5 uses
  %i.co = alloca [40 x i8], align 16              ; 6 uses
  %.sroa.3754.sroa.4 = alloca [40 x i8], align 8  ; 2 uses
  %i.cp = alloca [72 x i8], align 8               ; 10 uses
  %i.cq = alloca [56 x i8], align 8               ; 5 uses
  %i.cr = alloca [17 x i8], align 1               ; 5 uses
  %i.cs = alloca [16 x i8], align 8               ; 6 uses
  %i.ct = alloca [8 x i8], align 8                ; 5 uses
  %i.cu = alloca [16 x i8], align 8               ; 6 uses
  %i.cv = alloca [16 x i8], align 8               ; 6 uses
  %i.cw = alloca [32 x i8], align 8               ; 8 uses
  %i.cx = alloca [24 x i8], align 8               ; 5 uses
  %i.cy = alloca [16 x i8], align 8               ; 6 uses
  %i.cz = alloca [8 x i8], align 8                ; 5 uses
  %i.da = alloca [16 x i8], align 8               ; 6 uses
  %i.db = alloca [16 x i8], align 8               ; 6 uses
  %i.dc = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.5729.sroa.5 = alloca [56 x i8], align 1  ; 2 uses
  %i.dd = alloca [96 x i8], align 16              ; 11 uses
  %.sroa.3718.sroa.5 = alloca [56 x i8], align 8  ; 2 uses
  %.sroa.8715.sroa.9 = alloca [56 x i8], align 8  ; 7 uses
  %i.de = alloca [224 x i8], align 8              ; 5 uses
  %i.df = alloca [24 x i8], align 8               ; 5 uses
  %i.dg = alloca [96 x i8], align 16              ; 10 uses
  %.sroa.8697.sroa.11 = alloca [56 x i8], align 8 ; 9 uses
  %i.dh = alloca [88 x i8], align 8               ; 15 uses
  %i.di = alloca [96 x i8], align 16              ; 13 uses
  %.sroa.5685 = alloca [112 x i8], align 16       ; 4 uses
  %i.dj = alloca [48 x i8], align 8               ; 6 uses
  %i.dk = alloca [48 x i8], align 8               ; 8 uses
  %i.dl = alloca [224 x i8], align 16             ; 17 uses
  %.sroa.8.sroa.12 = alloca [56 x i8], align 8    ; 8 uses
  %i.dm = alloca [224 x i8], align 8              ; 15 uses
  %i.dn = alloca [24 x i8], align 8               ; 8 uses
  %i.do = alloca [24 x i8], align 8               ; 8 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 3 uses
  %i.dq = load i8, ptr %i.dp, align 8, !range !4485, !noundef !10
  switch i8 %i.dq, label %default.unreachable1779 [
    i8 0, label %bb.b
    i8 1, label %bb.ak
    i8 2, label %bb.al
    i8 3, label %bb.an
    i8 4, label %bb.bv
    i8 5, label %bb.dz
    i8 6, label %bb.ex
  ]

default.unreachable1779:                          ; preds = %bb.fi, %bb.fd, %bb.ex, %bb.an, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 745
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 747 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 751
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.dr, i8 0, i64 6, i1 false)
  store i8 1, ptr %i.ds, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  store i32 16843009, ptr %i.dt, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.du, ptr noundef nonnull align 8 dereferenceable(344) %1, i64 344, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !noundef !10 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %.not = icmp eq ptr %i.dw, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.ds, align 1
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !10, !align !304, !noundef !10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !range !59, !alias.scope !16811, !noalias !16814, !noundef !10
  %.not.i322 = icmp eq i64 %i.ea, -9223372036854775808
  br i1 %.not.i322, label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.do, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dz)
          to label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.z, %bb.c
  %.sroa.7.0 = phi ptr [ %i.dy, %bb.c ], [ %i.ey, %bb.z ]
  %.sroa.0.0 = phi ptr [ %i.dw, %bb.c ], [ %i.ew, %bb.z ]
  store i8 1, ptr %i.ds, align 1
  store ptr %.sroa.0.0, ptr %i.dv, align 8
  store ptr %.sroa.7.0, ptr %i.dx, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  invoke void @_RNvMNtCs3LITIwzqf1g_4uuid2v4NtB4_4Uuid6new_v4(ptr noalias noundef nonnull sret([16 x i8]) align 1 captures(none) dereferenceable(16) %i.eb)
          to label %.thread1780 unwind label %bb.aa

bb.g:                                             ; preds = %bb.e
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  %.pr = load i64, ptr %i.do, align 8
  %.not39 = icmp eq i64 %.pr, -9223372036854775808
  br i1 %.not39, label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.h

bb.h:                                             ; preds = %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !16816, !noalias !16819, !noundef !10
  %.not.i325 = icmp eq ptr %i.ee, null
  br i1 %.not.i325, label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1F_EENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ed)
          to label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1F_EENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.d, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit621

bb.j:                                             ; preds = %bb.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1F_EENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  %.pr1261 = load ptr, ptr %i.dj, align 8, !alias.scope !16821, !noalias !16824
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16821)
  %.not.i327 = icmp eq ptr %.pr1261, null
  br i1 %.not.i327, label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1F_EENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1F_EENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dk, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.dj, i64 48, i1 false), !alias.scope !16826
  br label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EE17unwrap_or_defaultCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1F_EENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.h, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1F_EENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.eg = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @54)
          to label %.noexc328 unwind label %bb.m  ; 2 uses

.noexc328:                                        ; preds = %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1F_EENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.eh = extractvalue { i64, i64 } %i.eg, 0
  %i.ei = extractvalue { i64, i64 } %i.eg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) @56, i64 32, i1 false), !noalias !16821
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  store i64 %i.eh, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !16827, !noalias !16821
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  store i64 %i.ei, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !16827, !noalias !16821
  br label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EE17unwrap_or_defaultCs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.m, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ej, %bb.m ], [ %i.ef, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  br label %bb.n

bb.m:                                             ; preds = %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1F_EENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EE17unwrap_or_defaultCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc328, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  invoke void @_RINvMs2_NtNtCs14kWLkQVSKO_14deltalake_core8logstore6configNtB6_13StorageConfig13parse_optionsNtNtCs6Po7BT7Nknu_5alloc6string6StringB1t_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1t_B1t_EEBa_(ptr noalias noundef nonnull sret([224 x i8]) align 16 captures(none) dereferenceable(224) %i.dl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.dk)
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.l
  %.pn41 = phi { ptr, i32 } [ %i.ek, %bb.o ], [ %.pn, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dn) #44
          to label %bb.ah unwind label %bb.ac

bb.o:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EE17unwrap_or_defaultCs14kWLkQVSKO_14deltalake_core.exit
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EE17unwrap_or_defaultCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.experimental.noalias.scope.decl(metadata !16830)
  %i.el = load i64, ptr %i.dl, align 16, !range !1239, !alias.scope !16833, !noalias !16830, !noundef !10 ; 2 uses
  %i.em = icmp eq i64 %i.el, 3
  br i1 %i.em, label %bb.ag, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.8.0..sroa_idx681 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx681.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %.sroa.8.sroa.10.0..sroa.8.0..sroa_idx681.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %.sroa.8.sroa.12.0..sroa.8.0..sroa_idx681.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.sroa.12, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.sroa.12.0..sroa.8.0..sroa_idx681.sroa_idx, i64 56, i1 false), !alias.scope !16835
  %.sroa.10.0..sroa_idx683 = getelementptr inbounds nuw i8, ptr %i.dl, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5685)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.5685, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.10.0..sroa_idx683, i64 112, i1 false)
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.en = load <2 x i64>, ptr %.sroa.8.0..sroa_idx681, align 8, !alias.scope !16835
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.eo = load <2 x i64>, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx681.sroa_idx, align 8, !alias.scope !16835
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.ep = load <2 x i64>, ptr %.sroa.8.sroa.10.0..sroa.8.0..sroa_idx681.sroa_idx, align 8, !alias.scope !16835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.sroa.12, i64 56, i1 false)
  store i64 %i.el, ptr %i.dm, align 8
  store <2 x i64> %i.en, ptr %.sroa.4.0..sroa_idx, align 8
  store <2 x i64> %i.eo, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store <2 x i64> %i.ep, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.5685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5685.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.5685, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5685)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8697.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i64 24, i1 false)
  invoke void @_RINvNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16ensure_table_uriNtNtCs6Po7BT7Nknu_5alloc6string6StringEB6_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.dg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.df)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8697.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config13StorageConfigEBM_(ptr noalias noundef align 8 dereferenceable(224) %i.dm) #44
          to label %.thread1321 unwind label %bb.ac

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  call void @llvm.experimental.noalias.scope.decl(metadata !16836)
  %i.er = load i64, ptr %i.dg, align 16, !range !203, !alias.scope !16839, !noalias !16836, !noundef !10 ; 2 uses
  %.not.i329 = icmp eq i64 %i.er, -9223372036854775711
  %i.es = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.sroa.8697.sroa.0.0.copyload1197 = load i64, ptr %i.es, align 8, !alias.scope !16841 ; 2 uses
  %.sroa.8697.sroa.8.0..sroa_idx1199 = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %.sroa.8697.sroa.8.0.copyload1200 = load i64, ptr %.sroa.8697.sroa.8.0..sroa_idx1199, align 16, !alias.scope !16841 ; 2 uses
  %.sroa.8697.sroa.9.0..sroa_idx1202 = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %.sroa.8697.sroa.9.0.copyload1203 = load i64, ptr %.sroa.8697.sroa.9.0..sroa_idx1202, align 8, !alias.scope !16841 ; 2 uses
  %.sroa.8697.sroa.10.0..sroa_idx1205 = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %.sroa.8697.sroa.10.0.copyload1206 = load i64, ptr %.sroa.8697.sroa.10.0..sroa_idx1205, align 16, !alias.scope !16841 ; 2 uses
  %.sroa.8697.sroa.11.0..sroa_idx1207 = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8697.sroa.11, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8697.sroa.11.0..sroa_idx1207, i64 56, i1 false), !alias.scope !16841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  br i1 %.not.i329, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  %.sroa.71212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.71212.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8697.sroa.11, i64 56, i1 false)
  store i64 %.sroa.8697.sroa.0.0.copyload1197, ptr %i.dh, align 8
  %.sroa.41209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 %.sroa.8697.sroa.8.0.copyload1200, ptr %.sroa.41209.0..sroa_idx, align 8
  %.sroa.51210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i64 %.sroa.8697.sroa.9.0.copyload1203, ptr %.sroa.51210.0..sroa_idx, align 8
  %.sroa.61211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store i64 %.sroa.8697.sroa.10.0.copyload1206, ptr %.sroa.61211.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.de, ptr noundef nonnull align 8 dereferenceable(224) %i.dm, i64 224, i1 false)
  invoke void @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore12logstore_for(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.dh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(224) %i.de)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.dh) #44
          to label %bb.x unwind label %bb.ac

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  call void @llvm.experimental.noalias.scope.decl(metadata !16842)
  %i.eu = load i64, ptr %i.di, align 16, !range !203, !alias.scope !16845, !noalias !16842, !noundef !10 ; 2 uses
  %.not.i330 = icmp eq i64 %i.eu, -9223372036854775711
  %i.ev = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !16847 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.ey = load ptr, ptr %i.ex, align 16, !alias.scope !16847 ; 2 uses
  br i1 %.not.i330, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.dh)
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %bb.u, %bb.y
  %.pn53 = phi { ptr, i32 } [ %i.et, %bb.u ], [ %i.ez, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8697.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  br label %.thread1321

bb.y:                                             ; preds = %bb.ab, %bb.w
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8697.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  br label %bb.f

bb.aa:                                            ; preds = %bb.f
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

.thread1780:                                      ; preds = %bb.f
  %.sroa.8712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8712.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i64 16, i1 false)
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 760
  store ptr %i.du, ptr %i.fb, align 8
  %.sroa.10713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 832
  store i8 0, ptr %.sroa.10713.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8715.sroa.9)
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 760
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 832
  br label %bb.ao

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.br, %bb.bq, %bb.bu, %bb.cc, %bb.cd, %.body, %bb.bm, %.body623, %bb.do, %bb.cp, %bb.db, %bb.cs, %bb.ci, %bb.ck, %bb.dw, %bb.mn, %bb.dn, %bb.dm, %bb.aj, %bb.aa
  %.pn260.pn = phi { ptr, i32 } [ %.pn256, %bb.do ], [ %eh.lpad-body, %.body ], [ %i.aei, %bb.mn ], [ %.pn67.pn, %bb.db ], [ %i.lh, %bb.dn ], [ %i.lf, %bb.dm ], [ %.pn74.pn, %bb.dw ], [ %.pn256, %.body623 ], [ %.pn58.pn, %bb.aj ], [ %i.kh, %bb.cs ], [ %i.jx, %bb.cp ], [ %i.jq, %bb.ck ], [ %i.fa, %bb.aa ], [ %i.jo, %bb.ci ], [ %i.ih, %bb.bm ], [ %i.ik, %bb.bq ], [ %i.iq, %bb.bu ], [ %i.im, %bb.br ], [ %i.jc, %bb.cc ], [ %i.jc, %bb.cd ] ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !noundef !10 ; 2 uses
  %.not263 = icmp eq ptr %i.fg, null
  br i1 %.not263, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit670, label %bb.uk

bb.ab:                                            ; preds = %bb.v
  %.sroa.12.0..sroa_idx694 = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %.sroa.12.sroa.0.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx694, align 8, !alias.scope !16848
  %.sroa.12.sroa.6.0..sroa.12.0..sroa_idx694.sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %.sroa.12.sroa.6.0.copyload = load i64, ptr %.sroa.12.sroa.6.0..sroa.12.0..sroa_idx694.sroa_idx, align 16, !alias.scope !16848
  %.sroa.12.sroa.7.0..sroa.12.0..sroa_idx694.sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.70, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.sroa.7.0..sroa.12.0..sroa_idx694.sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.dh)
          to label %.thread1298 unwind label %bb.y

.thread1298:                                      ; preds = %bb.ab
  %i.fh = ptrtoint ptr %i.ey to i64
  %i.fi = ptrtoint ptr %i.ew to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8697.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  br label %.thread1307

bb.ac:                                            ; preds = %bb.uy, %bb.uv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit672, %bb.uo, %bb.um, %bb.ug, %bb.uf, %bb.ub, %.body648, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit633, %bb.ti, %bb.rr, %bb.rq, %.noexc590, %bb.ro, %bb.os, %bb.nk, %bb.my, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit, %bb.ms, %bb.ko, %bb.jy, %.body419, %.body458, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit668, %bb.do, %bb.bu, %bb.uz, %bb.uu, %bb.ur, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit670, %bb.uj, %bb.ui, %bb.uh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit653, %.body642, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit637, %bb.th, %.body444, %bb.hd, %bb.sh, %bb.sf, %bb.ry, %bb.ie, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit596, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit594, %bb.rk, %bb.rg, %bb.re, %bb.pz, %.body505, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit666, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit, %.thread1456, %.thread1462, %bb.nf, %bb.ne, %bb.mq, %bb.ld, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit423, %.body417, %.body415, %.body379, %bb.dy, %.body, %bb.n, %bb.r, %bb.u
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

.thread1307:                                      ; preds = %.thread1298, %bb.ad
  %.sroa.231058.1.ph = phi i64 [ %i.er, %bb.ad ], [ %i.eu, %.thread1298 ]
  %.sroa.58.1.ph = phi i64 [ %.sroa.8697.sroa.8.0.copyload1200, %bb.ad ], [ %i.fh, %.thread1298 ]
  %.sroa.63.1.ph = phi i64 [ %.sroa.8697.sroa.9.0.copyload1203, %bb.ad ], [ %.sroa.12.sroa.0.0.copyload, %.thread1298 ]
  %.sroa.67.1.ph = phi i64 [ %.sroa.8697.sroa.10.0.copyload1206, %bb.ad ], [ %.sroa.12.sroa.6.0.copyload, %.thread1298 ]
  %.sroa.44.sroa.0.1.ph.in = phi i64 [ %.sroa.8697.sroa.0.0.copyload1197, %bb.ad ], [ %i.fi, %.thread1298 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %bb.af

bb.ad:                                            ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.70, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8697.sroa.11, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8697.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config13StorageConfigEBM_(ptr noalias noundef align 8 dereferenceable(224) %i.dm)
          to label %.thread1307 unwind label %bb.ae

.thread1321:                                      ; preds = %bb.ae, %bb.r, %bb.x
  %.pn55.pn.ph = phi { ptr, i32 } [ %.pn53, %bb.x ], [ %i.eq, %bb.r ], [ %i.fk, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.thread1321

bb.af:                                            ; preds = %.thread1307, %bb.ag
  %.sroa.44.sroa.17.sroa.0.11319.in.in = phi i64 [ %.sroa.44.sroa.0.1.ph.in, %.thread1307 ], [ %.sroa.8.sroa.8.8.copyload, %bb.ag ]
  %.sroa.67.11317 = phi i64 [ %.sroa.67.1.ph, %.thread1307 ], [ %.sroa.8.sroa.11.8.copyload, %bb.ag ]
  %.sroa.63.11316 = phi i64 [ %.sroa.63.1.ph, %.thread1307 ], [ %.sroa.8.sroa.10.8.copyload, %bb.ag ]
  %.sroa.58.11315 = phi i64 [ %.sroa.58.1.ph, %.thread1307 ], [ %.sroa.8.sroa.9.8.copyload, %bb.ag ]
  %.sroa.231058.11314 = phi i64 [ %.sroa.231058.1.ph, %.thread1307 ], [ %.sroa.8.sroa.6.8.copyload, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit621

bb.ag:                                            ; preds = %bb.p
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %.sroa.8.sroa.6.8.copyload = load i64, ptr %i.fl, align 16, !alias.scope !16835
  %.sroa.8.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %.sroa.8.sroa.8.8.copyload = load i64, ptr %.sroa.8.sroa.8.8..sroa_idx, align 8, !alias.scope !16835
  %.sroa.8.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %.sroa.8.sroa.9.8.copyload = load i64, ptr %.sroa.8.sroa.9.8..sroa_idx, align 16, !alias.scope !16835
  %.sroa.8.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %.sroa.8.sroa.10.8.copyload = load i64, ptr %.sroa.8.sroa.10.8..sroa_idx, align 8, !alias.scope !16835
  %.sroa.8.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  %.sroa.8.sroa.11.8.copyload = load i64, ptr %.sroa.8.sroa.11.8..sroa_idx, align 16, !alias.scope !16835
  %.sroa.8.sroa.12.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.sroa.12, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.sroa.12.8..sroa_idx, i64 56, i1 false), !alias.scope !16835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.70, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.sroa.12, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %bb.af unwind label %bb.ai

bb.ah:                                            ; preds = %.thread1321, %bb.n, %bb.ai
  %.pn58 = phi { ptr, i32 } [ %i.fm, %bb.ai ], [ %.pn41, %bb.n ], [ %.pn55.pn.ph, %.thread1321 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.aj:                                            ; preds = %bb.ah, %bb.g
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %bb.ah ], [ %i.ec, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit621: ; preds = %bb.ce, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit, %bb.sw, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.af, %bb.dx, %bb.bt
  %.sroa.231058.2 = phi i64 [ -9223372036854775701, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.231058.11314, %bb.af ], [ %.sroa.231058.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.0.0.i331, %bb.bt ], [ %i.it, %bb.dx ], [ %.sroa.231058.3, %bb.sw ], [ -9223372036854775702, %bb.ce ] ; 3 uses
  %.sroa.58.2 = phi i64 [ undef, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.58.11315, %bb.af ], [ %.sroa.58.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.3.i.sroa.4.0, %bb.bt ], [ %.sroa.5729.sroa.2.0.copyload, %bb.dx ], [ %.sroa.58.3, %bb.sw ], [ undef, %bb.ce ] ; 3 uses
  %.sroa.63.2 = phi i64 [ undef, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.63.11316, %bb.af ], [ %.sroa.63.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.3.i.sroa.5.0, %bb.bt ], [ %.sroa.5729.sroa.3.0.copyload, %bb.dx ], [ %.sroa.63.3, %bb.sw ], [ undef, %bb.ce ] ; 3 uses
  %.sroa.67.2 = phi i64 [ undef, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.67.11317, %bb.af ], [ %.sroa.67.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.3.i.sroa.6.0, %bb.bt ], [ %.sroa.5729.sroa.4.0.copyload, %bb.dx ], [ %.sroa.67.3, %bb.sw ], [ undef, %bb.ce ] ; 3 uses
  %.sroa.44.sroa.0.2 = phi i64 [ undef, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.44.sroa.17.sroa.0.11319.in.in, %bb.af ], [ %.sroa.44.sroa.0.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.3.i.sroa.0.0, %bb.bt ], [ %.sroa.3728.0.copyload, %bb.dx ], [ %.sroa.44.sroa.0.3, %bb.sw ], [ undef, %bb.ce ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !noundef !10 ; 2 uses
  %.not266 = icmp eq ptr %i.fp, null
  br i1 %.not266, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit, label %bb.tb

bb.ak:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #49
  unreachable

bb.al:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #49
  unreachable

bb.am:                                            ; preds = %bb.ay, %bb.ax
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit.i, %bb.am
  %i.fr = phi ptr [ %i.fs, %bb.am ], [ %i.ge, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.fq, %bb.am ], [ %.pn5.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8715.sroa.9)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_delta21ConvertToDeltaBuilderNtBP_9Operation11pre_execute0EBR_(ptr noundef nonnull align 8 %i.fr) #44
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ac

bb.an:                                            ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 832
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !294, !noalias !16849
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8715.sroa.9)
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 2 uses
  switch i8 %.pre, label %default.unreachable1779 [
    i8 0, label %bb.ao
    i8 1, label %bb.ax
    i8 2, label %bb.ay
    i8 3, label %bb.ba
  ]

bb.ao:                                            ; preds = %.thread1780, %bb.an
  %i.fu = phi ptr [ %i.fd, %.thread1780 ], [ %i.ft, %bb.an ] ; 3 uses
  %i.fv = phi ptr [ %i.fc, %.thread1780 ], [ %i.fs, %bb.an ] ; 4 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !16849, !nonnull !10, !align !304, !noundef !10 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i64 16, i1 false), !noalias !16849
  %i.fy = getelementptr i8, ptr %i.fw, i64 320
  %.val10.i = load ptr, ptr %i.fy, align 8, !noalias !16849, !noundef !10 ; 5 uses
  %i.fz = getelementptr i8, ptr %i.fw, i64 328
  %.val11.i = load ptr, ptr %i.fz, align 8, !noalias !16849 ; 5 uses
  %.not.i.i = icmp eq ptr %.val10.i, null
  br i1 %.not.i.i, label %.thread.i, label %bb.ap

.thread.i:                                        ; preds = %bb.ao
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 784
  store ptr null, ptr %i.ga, align 8, !noalias !16849
  br label %bb.bl

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i) ]
  %i.gb = atomicrmw add ptr %.val10.i, i64 1 monotonic, align 8, !noalias !16849
  %i.gc = icmp slt i64 %i.gb, 0
  br i1 %i.gc, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit.i: ; preds = %bb.aw, %.body.i, %bb.ar
  %i.gd = phi ptr [ %i.hi, %bb.ar ], [ %i.ha, %bb.aw ], [ %i.ha, %.body.i ]
  %i.ge = phi ptr [ %i.hj, %bb.ar ], [ %i.hb, %bb.aw ], [ %i.hb, %.body.i ]
  %.pn5.i = phi { ptr, i32 } [ %i.gf, %bb.ar ], [ %.pn.i, %bb.aw ], [ %.pn.i, %.body.i ]
  store i8 2, ptr %i.gd, align 8, !noalias !16849
  br label %.body

bb.ar:                                            ; preds = %bb.bi
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit.i

bb.as:                                            ; preds = %bb.ap
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 784
  store ptr %.val10.i, ptr %i.gg, align 8, !noalias !16849
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 792
  store ptr %.val11.i, ptr %i.gh, align 8, !noalias !16849
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 800
  store ptr %.val10.i, ptr %i.gi, align 8, !noalias !16849
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 808
  store ptr %.val11.i, ptr %i.gj, align 8, !noalias !16849
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fw, i64 256 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !16853, !noalias !16849, !noundef !10
  %.not.i14.i = icmp eq ptr %i.gl, null
  br i1 %.not.i14.i, label %bb.at, label %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit.i, !prof !49

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @394, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @395) #49
          to label %.noexc.i unwind label %bb.au, !noalias !16849

.noexc.i:                                         ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit.i, %bb.at
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit.i: ; preds = %bb.as
  %i.gn = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.go = load i64, ptr %i.gn, align 8, !range !295, !invariant.load !10, !noalias !16849
  %i.gp = add nsw i64 %i.go, -1
  %i.gq = and i64 %i.gp, -16
  %i.gr = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = getelementptr inbounds nuw i8, ptr %.val11.i, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !invariant.load !10, !noalias !16849, !nonnull !10
  %i.gv = invoke { ptr, ptr } %i.gu(ptr noundef nonnull %i.gs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gk, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(16) %i.x)
          to label %bb.av unwind label %bb.au, !noalias !16849 ; 2 uses

bb.av:                                            ; preds = %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit.i
  %i.gw = extractvalue { ptr, ptr } %i.gv, 0
  %i.gx = extractvalue { ptr, ptr } %i.gv, 1
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 816
  store ptr %i.gw, ptr %i.gy, align 8, !noalias !16849
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 824
  store ptr %i.gx, ptr %i.gz, align 8, !noalias !16849
  br label %bb.ba

.body.i:                                          ; preds = %bb.bh, %bb.bg, %bb.az, %bb.au
  %i.ha = phi ptr [ %i.hi, %bb.bg ], [ %i.hi, %bb.az ], [ %i.fu, %bb.au ], [ %i.hi, %bb.bh ] ; 2 uses
  %i.hb = phi ptr [ %i.hj, %bb.bg ], [ %i.hj, %bb.az ], [ %i.fv, %bb.au ], [ %i.hj, %bb.bh ] ; 2 uses
  %.pn.i = phi { ptr, i32 } [ %i.hu, %bb.bg ], [ %i.hg, %bb.az ], [ %i.gm, %bb.au ], [ %i.hu, %bb.bh ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 800 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16856)
  call void @llvm.experimental.noalias.scope.decl(metadata !16859)
  %i.hd = load ptr, ptr %i.hc, align 8, !alias.scope !16862, !noalias !16849, !nonnull !10, !noundef !10
  %i.he = atomicrmw sub ptr %i.hd, i64 1 release, align 8, !noalias !16863
  %i.hf = icmp eq i64 %i.he, 1
  br i1 %i.hf, label %bb.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit.i

bb.aw:                                            ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hc) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit.i unwind label %bb.bj, !noalias !16864

bb.ax:                                            ; preds = %bb.an
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #49
          to label %.noexc332 unwind label %bb.am

.noexc332:                                        ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.an
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #49
          to label %.noexc333 unwind label %bb.am

.noexc333:                                        ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.ba
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16849
  %.val8.i = load ptr, ptr %i.hk, align 8, !noalias !16849
  %i.hh = getelementptr i8, ptr %1, i64 824
  %.val9.i = load ptr, ptr %i.hh, align 8, !noalias !16849, !nonnull !10, !align !304, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_(ptr %.val8.i, ptr nonnull %.val9.i) #44
          to label %.body.i unwind label %bb.bj, !noalias !16864

bb.ba:                                            ; preds = %bb.av, %bb.an
  %i.hi = phi ptr [ %i.fu, %bb.av ], [ %i.ft, %bb.an ] ; 7 uses
  %i.hj = phi ptr [ %i.fv, %bb.av ], [ %i.fs, %bb.an ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !16849
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 816 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2g_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hk, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bb unwind label %bb.az, !noalias !16864

bb.bb:                                            ; preds = %bb.ba
  %i.hl = load i64, ptr %i.w, align 16, !range !16865, !noalias !16849, !noundef !10 ; 3 uses
  %i.hm = icmp eq i64 %i.hl, -9223372036854775710
  br i1 %i.hm, label %bb.bk, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.3.i.sroa.0.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx2.i, align 8, !noalias !16849 ; 2 uses
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.3.i.sroa.4.0.copyload = load i64, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx, align 16, !noalias !16849 ; 2 uses
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.3.i.sroa.5.0.copyload = load i64, ptr %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx, align 8, !noalias !16849 ; 2 uses
  %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.3.i.sroa.6.0.copyload = load i64, ptr %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx2.i.sroa_idx, align 16, !noalias !16849 ; 2 uses
  %.sroa.3.i.sroa.7.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.i.sroa.7.0..sroa.3.0..sroa_idx2.i.sroa_idx, i64 56, i1 false), !noalias !16849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16849
  %.val.i = load ptr, ptr %i.hk, align 8, !noalias !16849 ; 5 uses
  %i.hn = getelementptr i8, ptr %1, i64 824
  %.val7.i = load ptr, ptr %i.hn, align 8, !noalias !16849, !nonnull !10, !align !304, !noundef !10 ; 5 uses
  %i.ho = load ptr, ptr %.val7.i, align 8, !invariant.load !10, !noalias !16864 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.ho(ptr noundef nonnull %.val.i)
          to label %bb.be unwind label %bb.bg, !noalias !16864

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.hp = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !range !312, !invariant.load !10, !noalias !16864 ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 0
  br i1 %i.hr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hs = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.ht = load i64, ptr %i.hs, align 8, !range !295, !invariant.load !10, !noalias !16864
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.hq, i64 noundef range(i64 1, 536870913) %i.ht) #41, !noalias !16864
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i

bb.bg:                                            ; preds = %bb.bd
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.hw = load i64, ptr %i.hv, align 8, !range !312, !invariant.load !10, !noalias !16864 ; 2 uses
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %.body.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hy = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.hz = load i64, ptr %i.hy, align 8, !range !295, !invariant.load !10, !noalias !16864
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.hw, i64 noundef range(i64 1, 536870913) %i.hz) #41, !noalias !16864
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i: ; preds = %bb.bf, %bb.be
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 800 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16866)
  call void @llvm.experimental.noalias.scope.decl(metadata !16869)
  %i.ib = load ptr, ptr %i.ia, align 8, !alias.scope !16872, !noalias !16849, !nonnull !10, !noundef !10
  %i.ic = atomicrmw sub ptr %i.ib, i64 1 release, align 8, !noalias !16873
  %i.id = icmp eq i64 %i.ic, 1
  br i1 %i.id, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ia) #48
          to label %bb.bl unwind label %bb.ar, !noalias !16864

bb.bj:                                            ; preds = %bb.az, %bb.aw
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !16864
  unreachable

common.ret:                                       ; preds = %bb.nd, %bb.gq, %bb.eb, %bb.bx, %bb.bk
  %.sink = phi i8 [ 1, %bb.nd ], [ 6, %bb.gq ], [ 5, %bb.eb ], [ 4, %bb.bx ], [ 3, %bb.bk ]
  store i8 %.sink, ptr %i.dp, align 8
  ret void

bb.bk:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16849
  store i8 3, ptr %i.hi, align 8, !noalias !16849
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8715.sroa.9)
  store i64 -9223372036854775807, ptr %0, align 16
  br label %common.ret

bb.bl:                                            ; preds = %bb.bi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i, %.thread.i
  %i.if = phi ptr [ %i.fu, %.thread.i ], [ %i.hi, %bb.bi ], [ %i.hi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ]
  %i.ig = phi ptr [ %i.fv, %.thread.i ], [ %i.hj, %bb.bi ], [ %i.hj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ] ; 2 uses
  %.sroa.3.i.sroa.0.0 = phi i64 [ undef, %.thread.i ], [ %.sroa.3.i.sroa.0.0.copyload, %bb.bi ], [ %.sroa.3.i.sroa.0.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ]
  %.sroa.3.i.sroa.4.0 = phi i64 [ undef, %.thread.i ], [ %.sroa.3.i.sroa.4.0.copyload, %bb.bi ], [ %.sroa.3.i.sroa.4.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ]
  %.sroa.3.i.sroa.5.0 = phi i64 [ undef, %.thread.i ], [ %.sroa.3.i.sroa.5.0.copyload, %bb.bi ], [ %.sroa.3.i.sroa.5.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ]
  %.sroa.3.i.sroa.6.0 = phi i64 [ undef, %.thread.i ], [ %.sroa.3.i.sroa.6.0.copyload, %bb.bi ], [ %.sroa.3.i.sroa.6.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ]
  %.sroa.0.0.i331 = phi i64 [ -9223372036854775711, %.thread.i ], [ %i.hl, %bb.bi ], [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8715.sroa.9, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.i.sroa.7, i64 56, i1 false), !noalias !16874
  store i8 1, ptr %i.if, align 8, !noalias !16849
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3718.sroa.5, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8715.sroa.9, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8715.sroa.9)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_delta21ConvertToDeltaBuilderNtBP_9Operation11pre_execute0EBR_(ptr noundef nonnull align 8 %i.ig)
          to label %bb.bn unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.bn:                                            ; preds = %bb.bl
  %.not.i334 = icmp eq i64 %.sroa.0.0.i331, -9223372036854775711
  br i1 %.not.i334, label %bb.bo, label %bb.bt

bb.bo:                                            ; preds = %bb.bn
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !alias.scope !16875, !noundef !10
  %.not.i335 = icmp eq ptr %i.ij, null
  br i1 %.not.i335, label %bb.bp, label %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit, !prof !49

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @394, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @395) #49
          to label %.noexc336 unwind label %bb.bq

.noexc336:                                        ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %bb.bp
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit: ; preds = %bb.bo
  %i.il = invoke { ptr, ptr } @_RNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB5_8LogStoreEL_EB1j_23is_delta_table_locationB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ii)
          to label %bb.bs unwind label %bb.br     ; 2 uses

bb.br:                                            ; preds = %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.bs:                                            ; preds = %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit
  %i.in = extractvalue { ptr, ptr } %i.il, 0
  %i.io = extractvalue { ptr, ptr } %i.il, 1
  store ptr %i.in, ptr %i.ig, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 768
  store ptr %i.io, ptr %i.ip, align 8
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.70, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3718.sroa.5, i64 56, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit621

bb.bu:                                            ; preds = %bb.bv
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  %.val291 = load ptr, ptr %i.is, align 8
  %i.ir = getelementptr i8, ptr %1, i64 768
  %.val292 = load ptr, ptr %i.ir, align 8, !nonnull !10, !align !304, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_(ptr %.val291, ptr nonnull %.val292) #44
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ac

bb.bv:                                            ; preds = %bb.a, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 4 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2g_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.dd, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.is, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bw unwind label %bb.bu

bb.bw:                                            ; preds = %bb.bv
  %i.it = load i64, ptr %i.dd, align 16, !range !16865, !noundef !10 ; 3 uses
  %i.iu = icmp eq i64 %i.it, -9223372036854775710
  br i1 %i.iu, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  store i64 -9223372036854775807, ptr %0, align 16
  br label %common.ret

bb.by:                                            ; preds = %bb.bw
  %.sroa.3728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.sroa.3728.0.copyload = load i64, ptr %.sroa.3728.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5729.sroa.2.0..sroa.5729.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %.sroa.5729.sroa.2.0.copyload = load i64, ptr %.sroa.5729.sroa.2.0..sroa.5729.0..sroa_idx.sroa_idx, align 16
  %.sroa.5729.sroa.3.0..sroa.5729.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %.sroa.5729.sroa.3.0.copyload = load i64, ptr %.sroa.5729.sroa.3.0..sroa.5729.0..sroa_idx.sroa_idx, align 8
  %.sroa.5729.sroa.4.0..sroa.5729.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %.sroa.5729.sroa.4.0.copyload = load i64, ptr %.sroa.5729.sroa.4.0..sroa.5729.0..sroa_idx.sroa_idx, align 16
  %.sroa.5729.sroa.5.0..sroa.5729.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %.sroa.5729.sroa.5, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5729.sroa.5.0..sroa.5729.0..sroa_idx.sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  %.val = load ptr, ptr %i.is, align 8            ; 5 uses
  %i.iv = getelementptr i8, ptr %1, i64 768
  %.val290 = load ptr, ptr %i.iv, align 8, !nonnull !10, !align !304, !noundef !10 ; 5 uses
  %i.iw = load ptr, ptr %.val290, align 8, !invariant.load !10 ; 2 uses
  %.not.i.i337 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i337, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.iw(ptr noundef nonnull %.val)
          to label %bb.ca unwind label %bb.cc

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.ix = getelementptr inbounds nuw i8, ptr %.val290, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !range !312, !invariant.load !10 ; 2 uses
  %i.iz = icmp eq i64 %i.iy, 0
  br i1 %i.iz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ja = getelementptr inbounds nuw i8, ptr %.val290, i64 16
  %i.jb = load i64, ptr %i.ja, align 8, !range !295, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.iy, i64 noundef range(i64 1, 536870913) %i.jb) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit

bb.cc:                                            ; preds = %bb.bz
  %i.jc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.val290, i64 8
  %i.je = load i64, ptr %i.jd, align 8, !range !312, !invariant.load !10 ; 2 uses
  %i.jf = icmp eq i64 %i.je, 0
  br i1 %i.jf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jg = getelementptr inbounds nuw i8, ptr %.val290, i64 16
  %i.jh = load i64, ptr %i.jg, align 8, !range !295, !invariant.load !10
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.je, i64 noundef range(i64 1, 536870913) %i.jh) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit: ; preds = %bb.cb, %bb.ca
  %.not.i340 = icmp eq i64 %i.it, -9223372036854775711
  br i1 %.not.i340, label %bb.ce, label %bb.dx

bb.ce:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit
  %i.ji = trunc i64 %.sroa.3728.0.copyload to i1
  br i1 %i.ji, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit621, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jj = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.jk = icmp samesign ult i64 %i.jj, 2
  br i1 %i.jk, label %bb.cg, label %bb.cn

bb.cg:                                            ; preds = %bb.cf
  %i.jl = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB9_21ConvertToDeltaBuilder19into_create_builder010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.jm = icmp ult i8 %i.jl, 3
  br i1 %i.jm, label %bb.cj, label %bb.ch, !prof !16878

bb.ch:                                            ; preds = %bb.cg
  %i.jn = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB9_21ConvertToDeltaBuilder19into_create_builder010___CALLSITE) #48
          to label %bb.cj unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.cj:                                            ; preds = %bb.ch, %bb.cg
  %.sroa.0.0.i342 = phi i8 [ %i.jl, %bb.cg ], [ %i.jn, %bb.ch ] ; 2 uses
  %i.jp = icmp eq i8 %.sroa.0.0.i342, 0
  br i1 %i.jp, label %bb.cn, label %bb.cl

bb.ck:                                            ; preds = %bb.cl
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.cl:                                            ; preds = %bb.cj
  %i.jr = load ptr, ptr @_RNvNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB9_21ConvertToDeltaBuilder19into_create_builder010___CALLSITE, align 8, !nonnull !10, !align !304, !noundef !10
  %i.js = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jr, i8 noundef %.sroa.0.0.i342)
          to label %bb.cm unwind label %bb.ck

bb.cm:                                            ; preds = %bb.cl
  br i1 %i.js, label %bb.de, label %bb.cn

bb.cn:                                            ; preds = %bb.cf, %bb.cj, %bb.cm
  %i.jt = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1586 = icmp eq i8 %i.jt, 0
  br i1 %.not1586, label %bb.co, label %bb.dc

bb.co:                                            ; preds = %bb.cn
  %i.ju = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.jv = icmp ult i64 %i.ju, 6
  call void @llvm.assume(i1 %i.jv)
  %i.jw = icmp samesign ugt i64 %i.ju, 3
  br i1 %i.jw, label %bb.cq, label %bb.dc

bb.cp:                                            ; preds = %bb.cq
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.cq:                                            ; preds = %bb.co
  %i.jy = load ptr, ptr @_RNvNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB9_21ConvertToDeltaBuilder19into_create_builder010___CALLSITE, align 8, !nonnull !10, !align !304, !noundef !10 ; 3 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 32
  %.val298 = load ptr, ptr %i.jz, align 8, !nonnull !10, !noundef !10
  %i.ka = getelementptr i8, ptr %i.jy, i64 40
  %.val299 = load i64, ptr %i.ka, align 8, !noundef !10
  store i64 4, ptr %i.cx, align 8, !alias.scope !16879
  %.sroa.6745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %.val298, ptr %.sroa.6745.0..sroa_idx, align 8, !alias.scope !16879
  %.sroa.8746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 %.val299, ptr %.sroa.8746.0..sroa_idx, align 8, !alias.scope !16879
  %i.kb = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.cr unwind label %bb.cp     ; 2 uses

bb.cr:                                            ; preds = %bb.cq
  %i.kc = extractvalue { ptr, ptr } %i.kb, 0      ; 2 uses
  %i.kd = extractvalue { ptr, ptr } %i.kb, 1      ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8, !invariant.load !10, !nonnull !10
  %i.kg = invoke noundef zeroext i1 %i.kf(ptr noundef %i.kc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx)
          to label %bb.ct unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.ct:                                            ; preds = %bb.cr
  br i1 %i.kg, label %bb.cu, label %bb.dc

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  %i.ki = load ptr, ptr @_RNvNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB9_21ConvertToDeltaBuilder19into_create_builder010___CALLSITE, align 8, !nonnull !10, !align !304, !noundef !10
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !alias.scope !16883, !noundef !10
  %.not.i346 = icmp eq ptr %i.kl, null
  br i1 %.not.i346, label %bb.cv, label %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit348, !prof !49

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @394, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @395) #49
          to label %.noexc347 unwind label %bb.cw

.noexc347:                                        ; preds = %bb.cv
  unreachable

bb.cw:                                            ; preds = %bb.cv
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit348: ; preds = %bb.cu
  %i.kn = invoke noundef nonnull align 8 ptr @_RNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB5_8LogStoreEL_EB1j_8root_urlB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kk)
          to label %bb.cy unwind label %bb.cx

bb.cx:                                            ; preds = %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit348
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.cy:                                            ; preds = %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit348
  store ptr %i.kn, ptr %i.ct, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  store ptr %i.ct, ptr %i.cs, align 8
  %.sroa.5748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtCseo6ZV82fEK1_3url3UrlNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5748.0..sroa_idx, align 8
  store ptr @184, ptr %i.cu, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cs, ptr %i.kp, align 8
  store ptr %i.cu, ptr %i.cv, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr @185, ptr %i.kq, align 8
  store i64 1, ptr %i.cw, align 8, !alias.scope !16886, !noalias !16889
  %.sroa.4.0..sroa_idx.i350 = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %i.cv, ptr %.sroa.4.0..sroa_idx.i350, align 8, !alias.scope !16886, !noalias !16889
  %.sroa.5.0..sroa_idx.i351 = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i351, align 8, !alias.scope !16886, !noalias !16889
  %i.kr = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store ptr %i.kj, ptr %i.kr, align 8, !alias.scope !16886, !noalias !16889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jy, ptr noundef nonnull %i.kc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kd, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cw)
          to label %bb.da unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ks = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %bb.dc

bb.db:                                            ; preds = %bb.cw, %bb.cx, %bb.cz
  %.pn67.pn = phi { ptr, i32 } [ %i.ks, %bb.cz ], [ %i.ko, %bb.cx ], [ %i.km, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.dc:                                            ; preds = %bb.da, %bb.ct, %bb.co, %bb.cn, %bb.dl
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !alias.scope !16892, !noundef !10
  %.not.i352 = icmp eq ptr %i.ku, null
  br i1 %.not.i352, label %bb.dd, label %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit354, !prof !49

bb.dd:                                            ; preds = %bb.dc
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @394, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @395) #49
          to label %.noexc353 unwind label %bb.dm

.noexc353:                                        ; preds = %bb.dd
  unreachable

bb.de:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  %i.kv = load ptr, ptr @_RNvNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB9_21ConvertToDeltaBuilder19into_create_builder010___CALLSITE, align 8, !nonnull !10, !align !304, !noundef !10
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !alias.scope !16895, !noundef !10
  %.not.i355 = icmp eq ptr %i.ky, null
  br i1 %.not.i355, label %bb.df, label %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit357, !prof !49

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @394, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @395) #49
          to label %.noexc356 unwind label %bb.dg

.noexc356:                                        ; preds = %bb.df
  unreachable

bb.dg:                                            ; preds = %bb.df
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit357: ; preds = %bb.de
  %i.la = invoke noundef nonnull align 8 ptr @_RNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB5_8LogStoreEL_EB1j_8root_urlB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kx)
          to label %bb.dj unwind label %bb.di

bb.dh:                                            ; preds = %bb.di, %bb.dg
  %.pn72 = phi { ptr, i32 } [ %i.lb, %bb.di ], [ %i.kz, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  br label %bb.dw

bb.di:                                            ; preds = %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit357
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dj:                                            ; preds = %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit357
  store ptr %i.la, ptr %i.cz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  store ptr %i.cz, ptr %i.cy, align 8
  %.sroa.5740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtCseo6ZV82fEK1_3url3UrlNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5740.0..sroa_idx, align 8
  store ptr @184, ptr %i.da, align 8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.cy, ptr %i.lc, align 8
  store ptr %i.da, ptr %i.db, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr @185, ptr %i.ld, align 8
  store i64 1, ptr %i.dc, align 8
  %.sroa.7736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.db, ptr %.sroa.7736.0..sroa_idx, align 8
  %.sroa.8737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i64 1, ptr %.sroa.8737.0..sroa_idx, align 8
  %.sroa.9738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store ptr %i.kw, ptr %.sroa.9738.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB9_21ConvertToDeltaBuilder19into_create_builder0s3_0Bd_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.dc)
          to label %bb.dl unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.le = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %bb.dw

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.dc

bb.dm:                                            ; preds = %bb.dd
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit354: ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  store i8 0, ptr %i.cr, align 1
  %i.lg = invoke { ptr, ptr } @_RNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB5_8LogStoreEL_EB1j_12object_storeB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kt, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(17) %i.cr)
          to label %bb.dq unwind label %bb.dn     ; 2 uses

bb.dn:                                            ; preds = %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit354
  %i.lh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

.body623:                                         ; preds = %bb.sy, %bb.dp, %bb.uj, %bb.eu
  %.pn256 = phi { ptr, i32 } [ %.pn253.pn, %bb.eu ], [ %.pn253.pn, %bb.uj ], [ %i.ln, %bb.dp ], [ %i.app, %bb.sy ] ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 746
  store i8 0, ptr %i.li, align 2
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16898)
  call void @llvm.experimental.noalias.scope.decl(metadata !16901)
  %i.lk = load ptr, ptr %i.lj, align 8, !alias.scope !16904, !nonnull !10, !noundef !10
  %i.ll = atomicrmw sub ptr %i.lk, i64 1 release, align 8, !noalias !16904
  %i.lm = icmp eq i64 %i.ll, 1
  br i1 %i.lm, label %bb.do, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.do:                                            ; preds = %.body623
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.lj) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ac

bb.dp:                                            ; preds = %bb.sz
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %.body623

bb.dq:                                            ; preds = %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit354
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.lp = extractvalue { ptr, ptr } %i.lg, 0      ; 3 uses
  %i.lq = extractvalue { ptr, ptr } %i.lg, 1      ; 3 uses
  store ptr %i.lp, ptr %i.lo, align 8
  %i.lr = getelementptr i8, ptr %1, i64 712
  store ptr %i.lq, ptr %i.lr, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 720 ; 2 uses
  store i64 0, ptr %i.ls, align 8, !alias.scope !16905
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 728
  store ptr inttoptr (i64 8 to ptr), ptr %i.lt, align 8, !alias.scope !16905
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 736
  store i64 0, ptr %i.lu, align 8, !alias.scope !16905
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 746
  store i8 1, ptr %i.lv, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lp) ]
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.lx = load i64, ptr %i.lw, align 8, !range !295, !invariant.load !10
  %i.ly = add nsw i64 %i.lx, -1
  %i.lz = and i64 %i.ly, -16
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lq, i64 136
  %i.md = load ptr, ptr %i.mc, align 8, !invariant.load !10, !nonnull !10
  %i.me = invoke { ptr, ptr } %i.md(ptr noundef nonnull %i.mb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null)
          to label %bb.ds unwind label %bb.dr     ; 2 uses

bb.dr:                                            ; preds = %bb.dq
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.ds:                                            ; preds = %bb.dq
  %i.mg = extractvalue { ptr, ptr } %i.me, 0
  %i.mh = extractvalue { ptr, ptr } %i.me, 1
  invoke void @_RINvYINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2n_5ErrorENtNtB8_6marker4SendEL_EENtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream12TryStreamExt23try_for_each_concurrentINtNtNtB3I_6future5ready5ReadyIB20_uB31_EENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5W_21ConvertToDeltaBuilder19into_create_builder00jEB60_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.cq, ptr noundef nonnull %i.mg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.mh, i64 noundef 10, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ls)
          to label %bb.dv unwind label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.du:                                            ; preds = %bb.dr, %bb.dt
  %.pn77 = phi { ptr, i32 } [ %i.mf, %bb.dr ], [ %i.mi, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  br label %bb.eu

bb.dv:                                            ; preds = %bb.ds
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.is, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.cq, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  br label %bb.dz

bb.dw:                                            ; preds = %bb.dk, %bb.dh
  %.pn74.pn = phi { ptr, i32 } [ %i.le, %bb.dk ], [ %.pn72, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.dx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.70, ptr noundef nonnull align 1 dereferenceable(56) %.sroa.5729.sroa.5, i64 56, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit621

bb.dy:                                            ; preds = %bb.dz
  %i.mj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream23try_for_each_concurrent20TryForEachConcurrentINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB4p_5ErrorENtNtB4_6marker4SendEL_EEINtNtNtBP_6future5ready5ReadyIB42_uB53_EENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB6t_21ConvertToDeltaBuilder19into_create_builder00EEB6x_(ptr noalias noundef align 8 dereferenceable(56) %i.mk) #44
          to label %bb.eu unwind label %bb.ac

bb.dz:                                            ; preds = %bb.a, %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 4 uses
  invoke void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream23try_for_each_concurrentINtB5_20TryForEachConcurrentINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1S_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB48_5ErrorENtNtB1S_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadyIB3K_uB4M_EENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB6d_21ConvertToDeltaBuilder19into_create_builder00ENtNtNtB1S_6future6future6Future4pollB6h_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cp, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.mk, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ea unwind label %bb.dy

bb.ea:                                            ; preds = %bb.dz
  %i.ml = load i64, ptr %i.cp, align 8, !range !1300, !noundef !10 ; 3 uses
  %i.mm = icmp eq i64 %i.ml, -9223372036854775789
  br i1 %i.mm, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  store i64 -9223372036854775807, ptr %0, align 16
  br label %common.ret

bb.ec:                                            ; preds = %bb.ea
  %.sroa.3754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.3754.sroa.0.0.copyload = load i64, ptr %.sroa.3754.0..sroa_idx, align 8
  %.sroa.3754.sroa.2.0..sroa.3754.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.sroa.3754.sroa.2.0.copyload = load i64, ptr %.sroa.3754.sroa.2.0..sroa.3754.0..sroa_idx.sroa_idx, align 8
  %.sroa.3754.sroa.3.0..sroa.3754.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %.sroa.3754.sroa.3.0.copyload = load i64, ptr %.sroa.3754.sroa.3.0..sroa.3754.0..sroa_idx.sroa_idx, align 8
  %.sroa.3754.sroa.4.0..sroa.3754.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3754.sroa.4, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3754.sroa.4.0..sroa.3754.0..sroa_idx.sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream23try_for_each_concurrent20TryForEachConcurrentINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB4p_5ErrorENtNtB4_6marker4SendEL_EEINtNtNtBP_6future5ready5ReadyIB42_uB53_EENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB6t_21ConvertToDeltaBuilder19into_create_builder00EEB6x_(ptr noalias noundef align 8 dereferenceable(56) %i.mk)
          to label %bb.ee unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.ee:                                            ; preds = %bb.ec
  %.not.i362 = icmp eq i64 %i.ml, -9223372036854775790
  br i1 %.not.i362, label %bb.ef, label %bb.ev

bb.ef:                                            ; preds = %bb.ee
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.mp = getelementptr i8, ptr %1, i64 736       ; 2 uses
  %.val302 = load i64, ptr %i.mp, align 8, !noundef !10 ; 2 uses
  %i.mq = icmp ult i64 %.val302, 96076792050570582
  call void @llvm.assume(i1 %i.mq)
  %i.mr = icmp eq i64 %.val302, 0
  br i1 %i.mr, label %bb.et, label %bb.ei

.body618:                                         ; preds = %bb.st, %bb.eg, %bb.ui, %.body615
  %.pn251 = phi { ptr, i32 } [ %.pn249, %.body615 ], [ %.pn249, %bb.ui ], [ %i.mt, %bb.eg ], [ %i.api, %bb.st ]
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 745
  store i8 0, ptr %i.ms, align 1
  br label %bb.eu

bb.eg:                                            ; preds = %bb.su
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %.body618

.body615:                                         ; preds = %bb.sp, %bb.eh, %bb.uh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn249 = phi { ptr, i32 } [ %.pn247, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.pn247, %bb.uh ], [ %i.my, %bb.eh ], [ %i.apb, %bb.sp ] ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 750
  store i8 0, ptr %i.mu, align 2
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 745
  %i.mw = load i8, ptr %i.mv, align 1, !range !349, !noundef !10
  %i.mx = trunc nuw i8 %i.mw to i1
  br i1 %i.mx, label %bb.ui, label %.body618

bb.eh:                                            ; preds = %bb.sq
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %.body615

bb.ei:                                            ; preds = %bb.ef
  store i64 0, ptr %i.mk, align 8, !alias.scope !16908
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 768
  store ptr inttoptr (i64 8 to ptr), ptr %i.mz, align 8, !alias.scope !16908
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 776
  store i64 0, ptr %i.na, align 8, !alias.scope !16908
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 745
  store i8 1, ptr %i.nb, align 1
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 784
  store i64 0, ptr %i.nc, align 8, !alias.scope !16911
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 792
  store ptr inttoptr (i64 8 to ptr), ptr %i.nd, align 8, !alias.scope !16911
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 800
  store i64 0, ptr %i.ne, align 8, !alias.scope !16911
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 750
  store i8 1, ptr %i.nf, align 2
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 1408
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.nh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ng)
          to label %_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ei
  %i.nj = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @54)
          to label %bb.el unwind label %bb.ek     ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit668: ; preds = %bb.ug, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit372, %bb.ek
  %.pn245 = phi { ptr, i32 } [ %i.nm, %bb.ek ], [ %.pn243, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit372 ], [ %.pn243, %bb.ug ]
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 749
  store i8 0, ptr %i.nk, align 1
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 1408
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.nl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ac

bb.ek:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit610, %_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.nm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit668

bb.el:                                            ; preds = %_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 1456
  %i.no = extractvalue { i64, i64 } %i.nj, 0
  %i.np = extractvalue { i64, i64 } %i.nj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nn, ptr noundef nonnull align 8 dereferenceable(32) @56, i64 32, i1 false)
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1488
  store i64 %i.no, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !16914
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store i64 %i.np, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !16914
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 749
  store i8 1, ptr %i.nq, align 1
  %i.nr = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @54)
          to label %bb.en unwind label %bb.em     ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit372: ; preds = %.body458, %bb.em
  %.pn243 = phi { ptr, i32 } [ %i.nv, %bb.em ], [ %.pn241, %.body458 ] ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 749
  %i.nt = load i8, ptr %i.ns, align 1, !range !349, !noundef !10
  %i.nu = trunc nuw i8 %i.nt to i1
  br i1 %i.nu, label %bb.ug, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit668

bb.em:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.mk, %bb.el
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit372

bb.en:                                            ; preds = %bb.el
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 1504
  %i.nx = extractvalue { i64, i64 } %i.nr, 0
  %i.ny = extractvalue { i64, i64 } %i.nr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nw, ptr noundef nonnull align 8 dereferenceable(32) @56, i64 32, i1 false)
  %.sroa.4.0..sroa_idx.i367 = getelementptr inbounds nuw i8, ptr %1, i64 1536
  store i64 %i.nx, ptr %.sroa.4.0..sroa_idx.i367, align 8, !alias.scope !16917
  %.sroa.5.0..sroa_idx.i368 = getelementptr inbounds nuw i8, ptr %1, i64 1544
  store i64 %i.ny, ptr %.sroa.5.0..sroa_idx.i368, align 8, !alias.scope !16917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 552
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBK_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtB1r_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.cn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nz)
          to label %_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB13_EENtNtB1K_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB13_EENtNtB1K_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.en
  invoke void @_RNvNtCs14kWLkQVSKO_14deltalake_core10operations34get_num_idx_cols_and_stats_columns(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(264) null, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.cn)
          to label %bb.er unwind label %bb.eq

bb.ep:                                            ; preds = %bb.eq, %bb.eo
  %.pn80 = phi { ptr, i32 } [ %i.ob, %bb.eq ], [ %i.oa, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %.body458

bb.eq:                                            ; preds = %_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB13_EENtNtB1K_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.er:                                            ; preds = %_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB13_EENtNtB1K_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 1552
  %i.od = load <2 x i64>, ptr %i.co, align 16
  store <2 x i64> %i.od, ptr %i.oc, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.of = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oe, ptr noundef nonnull align 16 dereferenceable(24) %i.of, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 746
  store i8 0, ptr %i.og, align 2
  %.sroa.0761.0.copyload = load i64, ptr %i.mo, align 8
  %.sroa.5762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 728
  %.sroa.5762.0.copyload = load ptr, ptr %.sroa.5762.0..sroa_idx, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %.sroa.6763.0.copyload = load i64, ptr %i.mp, align 8 ; 2 uses
  %i.oh = icmp ult i64 %.sroa.6763.0.copyload, 96076792050570582
  call void @llvm.assume(i1 %i.oh)
  %i.oi = getelementptr inbounds nuw [96 x i8], ptr %.sroa.5762.0.copyload, i64 %.sroa.6763.0.copyload ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 1616
  store ptr %.sroa.5762.0.copyload, ptr %i.oj, align 8
  %.sroa.8758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1624
  store ptr %.sroa.5762.0.copyload, ptr %.sroa.8758.0..sroa_idx, align 8
  %.sroa.9759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1632
  store i64 %.sroa.0761.0.copyload, ptr %.sroa.9759.0..sroa_idx, align 8
  %.sroa.10760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1640
  store ptr %i.oi, ptr %.sroa.10760.0..sroa_idx, align 8
  br label %bb.es

bb.es:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit451._crit_edge, %bb.er
  %i.ok = phi ptr [ %.pre1725, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit451._crit_edge ], [ %.sroa.5762.0.copyload, %bb.er ] ; 4 uses
  %i.ol = phi ptr [ %.pre1723, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit451._crit_edge ], [ %i.oi, %bb.er ]
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 1616
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16920)
  call void @llvm.experimental.noalias.scope.decl(metadata !16923)
  %i.oo = icmp eq ptr %i.ok, %i.ol
  br i1 %i.oo, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.es
  store i64 -9223372036854775808, ptr %i.on, align 8, !alias.scope !16920, !noalias !16923
  br label %bb.kb

.body458:                                         ; preds = %bb.mj, %bb.kg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit, %bb.ep
  %.pn241 = phi { ptr, i32 } [ %.pn80, %bb.ep ], [ %.pn238.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.aeb, %bb.mj ], [ %i.abi, %bb.kg ]
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 1504
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.op)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit372 unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit668, %bb.ml, %bb.ej
  %.pn247 = phi { ptr, i32 } [ %i.aec, %bb.ml ], [ %i.ni, %bb.ej ], [ %.pn245, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit668 ] ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 750
  %i.or = load i8, ptr %i.oq, align 2, !range !349, !noundef !10
  %i.os = trunc nuw i8 %i.or to i1
  br i1 %i.os, label %bb.uh, label %.body615

bb.et:                                            ; preds = %bb.ef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit, %bb.ev
  %.sroa.231058.3 = phi i64 [ -9223372036854775711, %bb.ev ], [ %.sroa.231058.4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit ], [ -9223372036854775705, %bb.ef ] ; 2 uses
  %.sroa.58.3 = phi i64 [ %.sroa.3754.sroa.0.0.copyload, %bb.ev ], [ %.sroa.58.4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit ], [ undef, %bb.ef ] ; 2 uses
  %.sroa.63.3 = phi i64 [ %.sroa.3754.sroa.2.0.copyload, %bb.ev ], [ %.sroa.63.4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit ], [ undef, %bb.ef ] ; 2 uses
  %.sroa.67.3 = phi i64 [ %.sroa.3754.sroa.3.0.copyload, %bb.ev ], [ %.sroa.67.4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit ], [ undef, %bb.ef ] ; 2 uses
  %.sroa.44.sroa.0.3 = phi i64 [ %i.ml, %bb.ev ], [ %.sroa.44.sroa.0.4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit ], [ undef, %bb.ef ] ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 746 ; 2 uses
  %i.ou = load i8, ptr %i.ot, align 2, !range !349, !noundef !10
  %i.ov = trunc nuw i8 %i.ou to i1
  br i1 %i.ov, label %bb.sx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit

bb.eu:                                            ; preds = %bb.du, %bb.dy, %bb.ed, %.body618
  %.pn253.pn = phi { ptr, i32 } [ %.pn251, %.body618 ], [ %i.mn, %bb.ed ], [ %i.mj, %bb.dy ], [ %.pn77, %bb.du ] ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 746
  %i.ox = load i8, ptr %i.ow, align 2, !range !349, !noundef !10
  %i.oy = trunc nuw i8 %i.ox to i1
  br i1 %i.oy, label %bb.uj, label %.body623

bb.ev:                                            ; preds = %bb.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.70, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3754.sroa.4, i64 40, i1 false)
  br label %bb.et

bb.ew:                                            ; preds = %bb.fb, %bb.fa
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %.body379

.body379:                                         ; preds = %bb.ez, %bb.ew
  %i.pa = phi ptr [ %i.pb, %bb.ew ], [ %i.pi, %bb.ez ]
  %eh.lpad-body380 = phi { ptr, i32 } [ %i.oz, %bb.ew ], [ %.pn3.i, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12891)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtBQ_12arrow_reader18ArrowReaderBuilderINtBO_11AsyncReaderNtNtBO_5store19ParquetObjectReaderEE3new0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.pa) #44
          to label %bb.js unwind label %bb.ac

bb.ex:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  %.phi.trans.insert1727 = getelementptr inbounds nuw i8, ptr %1, i64 1400
  %.pre1728 = load i8, ptr %.phi.trans.insert1727, align 8, !range !294, !noalias !16925
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12891)
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 7 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 1400 ; 6 uses
  switch i8 %.pre1728, label %default.unreachable1779 [
    i8 0, label %.thread21.i
    i8 1, label %bb.fa
    i8 2, label %bb.fb
    i8 3, label %bb.fd
  ]

.thread21.i:                                      ; preds = %.thread1781, %bb.ex
  %i.pd = phi ptr [ %i.aje, %.thread1781 ], [ %i.pc, %bb.ex ]
  %i.pe = phi ptr [ %i.ajd, %.thread1781 ], [ %i.pb, %bb.ex ] ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.pf, ptr noundef nonnull align 8 dereferenceable(96) %i.pe, i64 96, i1 false), !noalias !16925
  %.sroa.06.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1048
  store i64 0, ptr %.sroa.06.sroa.7.0..sroa_idx.i, align 8, !noalias !16925
  %.sroa.06.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1064
  store ptr null, ptr %.sroa.06.sroa.9.0..sroa_idx.i, align 8, !noalias !16925
  %.sroa.06.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1072
  store i8 0, ptr %.sroa.06.sroa.10.0..sroa_idx.i, align 8, !noalias !16925
  %.sroa.06.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1080
  store i64 0, ptr %.sroa.06.sroa.12.0..sroa_idx.i, align 8, !noalias !16925
  %.sroa.06.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1088
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.06.sroa.13.0..sroa_idx.i, align 8, !noalias !16925
  %.sroa.06.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1096
  %.sroa.77.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1392 ; 2 uses
  store i8 0, ptr %.sroa.77.0..sroa_idx.i, align 8, !noalias !16925
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %.sroa.06.sroa.14.0..sroa_idx.i, i8 0, i64 18, i1 false), !noalias !16925
  br label %.thread83.i.i

bb.ey:                                            ; preds = %.body.i373
  %i.pg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !16929
  unreachable

bb.ez:                                            ; preds = %bb.gp, %.body.i373
  %i.ph = phi ptr [ %i.rb, %bb.gp ], [ %i.pk, %.body.i373 ]
  %i.pi = phi ptr [ %i.rc, %bb.gp ], [ %i.pl, %.body.i373 ]
  %.pn3.i = phi { ptr, i32 } [ %i.tk, %bb.gp ], [ %eh.lpad-body.i, %.body.i373 ]
  store i8 2, ptr %i.ph, align 8, !noalias !16925
  br label %.body379

bb.fa:                                            ; preds = %bb.ex
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #49
          to label %.noexc381 unwind label %bb.ew

.noexc381:                                        ; preds = %bb.fa
  unreachable

bb.fb:                                            ; preds = %bb.ex
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #49
          to label %.noexc382 unwind label %bb.ew

.noexc382:                                        ; preds = %bb.fb
  unreachable

bb.fc:                                            ; preds = %bb.fg, %bb.ff
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i373

.body.i373:                                       ; preds = %bb.gj, %bb.fc
  %i.pk = phi ptr [ %i.pc, %bb.fc ], [ %i.sy, %bb.gj ]
  %i.pl = phi ptr [ %i.pb, %bb.fc ], [ %i.sz, %bb.gj ]
  %i.pm = phi ptr [ %i.pn, %bb.fc ], [ %i.tb, %bb.gj ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.pj, %bb.fc ], [ %.pn3.i.i, %bb.gj ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtBQ_12arrow_reader18ArrowReaderBuilderINtBO_11AsyncReaderNtNtBO_5store19ParquetObjectReaderEE16new_with_options0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.pm) #44
          to label %bb.ez unwind label %bb.ey, !noalias !16929

bb.fd:                                            ; preds = %bb.ex
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 1392 ; 5 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !294, !noalias !16930
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 5 uses
  switch i8 %.pre.i, label %default.unreachable1779 [
    i8 0, label %.thread83.i.i
    i8 1, label %bb.ff
    i8 2, label %bb.fg
    i8 3, label %bb.fi
  ]

.thread83.i.i:                                    ; preds = %bb.fd, %.thread21.i
  %i.po = phi ptr [ %i.pd, %.thread21.i ], [ %i.pc, %bb.fd ]
  %i.pp = phi ptr [ %i.pe, %.thread21.i ], [ %i.pb, %bb.fd ]
  %i.pq = phi ptr [ %.sroa.77.0..sroa_idx.i, %.thread21.i ], [ %.phi.trans.insert.i, %bb.fd ]
  %i.pr = phi ptr [ %i.pf, %.thread21.i ], [ %i.pn, %bb.fd ] ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 1393
  store i8 1, ptr %i.ps, align 1, !noalias !16930
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.pt, ptr noundef nonnull align 8 dereferenceable(96) %i.pr, i64 96, i1 false), !noalias !16930
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 1216 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pv, ptr noundef nonnull align 8 dereferenceable(72) %i.pu, i64 72, i1 false), !noalias !16930
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1288
  store ptr %i.pt, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !16930
  %.sroa.1011.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1384 ; 2 uses
  store i8 0, ptr %.sroa.1011.0..sroa_idx.i.i, align 8, !noalias !16930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !16930
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  br label %bb.fj

bb.fe:                                            ; preds = %bb.gg, %.body.i.i
  %i.pw = phi ptr [ %i.rb, %bb.gg ], [ %i.qe, %.body.i.i ] ; 2 uses
  %i.px = phi ptr [ %i.rc, %bb.gg ], [ %i.qf, %.body.i.i ] ; 2 uses
  %i.py = phi ptr [ %i.rd, %bb.gg ], [ %i.qg, %.body.i.i ] ; 2 uses
  %i.pz = phi ptr [ %i.re, %bb.gg ], [ %i.qh, %.body.i.i ] ; 2 uses
  %.pn.i.i = phi { ptr, i32 } [ %i.sw, %bb.gg ], [ %eh.lpad-body.i.i, %.body.i.i ] ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 1393
  %i.qb = load i8, ptr %i.qa, align 1, !range !349, !noalias !16930, !noundef !10
  %i.qc = trunc nuw i8 %i.qb to i1
  br i1 %i.qc, label %bb.gm, label %bb.gj

bb.ff:                                            ; preds = %bb.fd
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #49
          to label %.noexc.i378 unwind label %bb.fc, !noalias !16929

.noexc.i378:                                      ; preds = %bb.ff
  unreachable

bb.fg:                                            ; preds = %bb.fd
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #49
          to label %.noexc5.i unwind label %bb.fc, !noalias !16929

.noexc5.i:                                        ; preds = %bb.fg
  unreachable

bb.fh:                                            ; preds = %bb.fn, %bb.fm
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ga, %bb.fh
  %i.qe = phi ptr [ %i.pc, %bb.fh ], [ %i.sk, %bb.ga ]
  %i.qf = phi ptr [ %i.pb, %bb.fh ], [ %i.sl, %bb.ga ]
  %i.qg = phi ptr [ %.phi.trans.insert.i, %bb.fh ], [ %i.sm, %bb.ga ]
  %i.qh = phi ptr [ %i.pn, %bb.fh ], [ %i.sn, %bb.ga ]
  %i.qi = phi ptr [ %i.qj, %bb.fh ], [ %i.sp, %bb.ga ]
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.qd, %bb.fh ], [ %.pn3.i.i.i, %bb.ga ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs1_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerNtNtBR_12arrow_reader19ArrowReaderMetadata10load_asyncNtNtBP_5store19ParquetObjectReaderE0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.qi) #44
          to label %bb.fe unwind label %bb.gl, !noalias !16934

bb.fi:                                            ; preds = %bb.fd
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1384 ; 3 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !294, !noalias !16935
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 1216 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !16930
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  switch i8 %.pre.i.i, label %default.unreachable1779 [
    i8 0, label %._crit_edge.i
    i8 1, label %bb.fm
    i8 2, label %bb.fn
    i8 3, label %bb.fp
  ]

._crit_edge.i:                                    ; preds = %bb.fi
  %.phi.trans.insert15.i = getelementptr inbounds nuw i8, ptr %1, i64 1288
  %.pre16.i = load ptr, ptr %.phi.trans.insert15.i, align 8, !noalias !16935
  br label %bb.fj

bb.fj:                                            ; preds = %._crit_edge.i, %.thread83.i.i
  %i.qk = phi ptr [ %i.po, %.thread83.i.i ], [ %i.pc, %._crit_edge.i ] ; 2 uses
  %i.ql = phi ptr [ %i.pp, %.thread83.i.i ], [ %i.pb, %._crit_edge.i ] ; 2 uses
  %i.qm = phi ptr [ %i.pq, %.thread83.i.i ], [ %.phi.trans.insert.i, %._crit_edge.i ] ; 2 uses
  %i.qn = phi ptr [ %i.pr, %.thread83.i.i ], [ %i.pn, %._crit_edge.i ] ; 2 uses
  %i.qo = phi ptr [ %i.pt, %.thread83.i.i ], [ %.pre16.i, %._crit_edge.i ]
  %i.qp = phi ptr [ %.sroa.1011.0..sroa_idx.i.i, %.thread83.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge.i ] ; 2 uses
  %i.qq = phi ptr [ %i.pv, %.thread83.i.i ], [ %i.qj, %._crit_edge.i ] ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 1385
  store i8 1, ptr %i.qr, align 1, !noalias !16935
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 1296 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.qs, ptr noundef nonnull align 8 dereferenceable(72) %i.qq, i64 72, i1 false), !noalias !16935
  %i.qt = invoke { ptr, ptr } @_RNvXs0_NtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader5storeNtB5_19ParquetObjectReaderNtB7_15AsyncFileReader12get_metadata(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.qo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) %i.qs)
          to label %bb.fl unwind label %bb.fk, !noalias !16939 ; 2 uses

bb.fk:                                            ; preds = %bb.fj
  %i.qu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.fl:                                            ; preds = %bb.fj
  %i.qv = extractvalue { ptr, ptr } %i.qt, 0
end_hunk_1
begin_hunk_2_@_RNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB7_21ConvertToDeltaBuilder19into_create_builder0Bb_:bb.a
  %i.rq = load i64, ptr %i.rp, align 8, !range !295, !invariant.load !10, !noalias !16940
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.rn, i64 noundef range(i64 1, 536870913) %i.rq) #41, !noalias !16940
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataENtNtB2S_6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.fv:                                            ; preds = %bb.fs
  %i.rr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 8
  %i.rt = load i64, ptr %i.rs, align 8, !range !312, !invariant.load !10, !noalias !16940 ; 2 uses
  %i.ru = icmp eq i64 %i.rt, 0
  br i1 %i.ru, label %.body.i.i.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.rv = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 16
  %i.rw = load i64, ptr %i.rv, align 8, !range !295, !invariant.load !10, !noalias !16940
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.rt, i64 noundef range(i64 1, 536870913) %i.rw) #41, !noalias !16940
  br label %.body.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataENtNtB2S_6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.fu, %bb.ft
  %.not.i.i.i.i = icmp eq i64 %i.ri, 8
  br i1 %.not.i.i.i.i, label %bb.fx, label %bb.fz

bb.fx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataENtNtB2S_6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !16935
  %i.rx = getelementptr inbounds nuw i8, ptr %1, i64 1385 ; 2 uses
  store i8 0, ptr %i.rx, align 1, !noalias !16935
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 1296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.ry, i64 72, i1 false), !noalias !16935
  invoke void @_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_readerNtB5_19ArrowReaderMetadata7try_new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.t, ptr noundef nonnull %.sroa.3.0.copyload.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.u)
          to label %bb.ge unwind label %bb.fy, !noalias !16940

bb.fy:                                            ; preds = %bb.fx
  %i.rz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !16935
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.fy, %bb.fw, %bb.fv, %bb.fo, %bb.fk
  %i.sa = phi ptr [ %i.rb, %bb.fy ], [ %i.qk, %bb.fk ], [ %i.rb, %bb.fo ], [ %i.rb, %bb.fv ], [ %i.rb, %bb.fw ] ; 2 uses
  %i.sb = phi ptr [ %i.rc, %bb.fy ], [ %i.ql, %bb.fk ], [ %i.rc, %bb.fo ], [ %i.rc, %bb.fv ], [ %i.rc, %bb.fw ] ; 2 uses
  %i.sc = phi ptr [ %i.rd, %bb.fy ], [ %i.qm, %bb.fk ], [ %i.rd, %bb.fo ], [ %i.rd, %bb.fv ], [ %i.rd, %bb.fw ] ; 2 uses
  %i.sd = phi ptr [ %i.re, %bb.fy ], [ %i.qn, %bb.fk ], [ %i.re, %bb.fo ], [ %i.re, %bb.fv ], [ %i.re, %bb.fw ] ; 2 uses
  %i.se = phi ptr [ %i.rf, %bb.fy ], [ %i.qp, %bb.fk ], [ %i.rf, %bb.fo ], [ %i.rf, %bb.fv ], [ %i.rf, %bb.fw ] ; 2 uses
  %i.sf = phi ptr [ %i.rg, %bb.fy ], [ %i.qq, %bb.fk ], [ %i.rg, %bb.fo ], [ %i.rg, %bb.fv ], [ %i.rg, %bb.fw ] ; 2 uses
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.rz, %bb.fy ], [ %i.qu, %bb.fk ], [ %i.qz, %bb.fo ], [ %i.rr, %bb.fv ], [ %i.rr, %bb.fw ] ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %1, i64 1385
  %i.sh = load i8, ptr %i.sg, align 1, !range !349, !noalias !16935, !noundef !10
  %i.si = trunc nuw i8 %i.sh to i1
  br i1 %i.si, label %bb.gd, label %bb.ga

bb.fz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataENtNtB2S_6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.sroa.314.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.314.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, i64 16, i1 false), !noalias !16935
  store i64 %i.ri, ptr %i.t, align 8, !alias.scope !16941, !noalias !16935
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.3.0.copyload.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !16941, !noalias !16935
  %i.sj = getelementptr inbounds nuw i8, ptr %1, i64 1296
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_reader18ArrowReaderOptionsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.sj)
          to label %.thread84.i.i unwind label %bb.gb, !noalias !16940

bb.ga:                                            ; preds = %bb.gd, %bb.gb, %.body.i.i.i
  %i.sk = phi ptr [ %i.rb, %bb.gb ], [ %i.sa, %bb.gd ], [ %i.sa, %.body.i.i.i ]
  %i.sl = phi ptr [ %i.rc, %bb.gb ], [ %i.sb, %bb.gd ], [ %i.sb, %.body.i.i.i ]
  %i.sm = phi ptr [ %i.rd, %bb.gb ], [ %i.sc, %bb.gd ], [ %i.sc, %.body.i.i.i ]
  %i.sn = phi ptr [ %i.re, %bb.gb ], [ %i.sd, %bb.gd ], [ %i.sd, %.body.i.i.i ]
  %i.so = phi ptr [ %i.rf, %bb.gb ], [ %i.se, %bb.gd ], [ %i.se, %.body.i.i.i ]
  %i.sp = phi ptr [ %i.rg, %bb.gb ], [ %i.sf, %bb.gd ], [ %i.sf, %.body.i.i.i ]
  %.pn3.i.i.i = phi { ptr, i32 } [ %i.sr, %bb.gb ], [ %.pn.pn.i.i.i, %bb.gd ], [ %.pn.pn.i.i.i, %.body.i.i.i ]
  %i.sq = getelementptr inbounds nuw i8, ptr %1, i64 1385
  store i8 0, ptr %i.sq, align 1, !noalias !16935
  store i8 2, ptr %i.so, align 8, !noalias !16935
  br label %.body.i.i

bb.gb:                                            ; preds = %bb.fz
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

.thread84.i.i:                                    ; preds = %bb.fz
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 1385
  store i8 0, ptr %i.ss, align 1, !noalias !16935
  %.sroa.814.sroa.6.0.copyload88.i.i = load ptr, ptr %.sroa.314.0..sroa_idx.i.i.i, align 8, !noalias !16945
  %.sroa.814.sroa.7.0..sroa.814.0..sroa_idx15.sroa_idx89.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.814.sroa.7.0.copyload90.i.i = load ptr, ptr %.sroa.814.sroa.7.0..sroa.814.0..sroa_idx15.sroa_idx89.i.i, align 8, !noalias !16945
  store i8 1, ptr %i.rf, align 8, !noalias !16935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16930
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  br label %bb.gf

bb.gc:                                            ; preds = %bb.gd, %bb.fo
  %i.st = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !16940
  unreachable

bb.gd:                                            ; preds = %.body.i.i.i
  %i.su = getelementptr inbounds nuw i8, ptr %1, i64 1296
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_reader18ArrowReaderOptionsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.su) #44
          to label %bb.ga unwind label %bb.gc, !noalias !16940

bb.ge:                                            ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !16935
  store i8 0, ptr %i.rx, align 1, !noalias !16935
  %.sroa.012.0.copyload13.pre.i.i = load i64, ptr %i.t, align 8, !noalias !16945 ; 2 uses
  %.sroa.814.0..sroa_idx15.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.814.sroa.0.0.copyload.pre.i.i = load ptr, ptr %.sroa.814.0..sroa_idx15.phi.trans.insert.i.i, align 8, !noalias !16945
  %.sroa.814.sroa.6.0..sroa.814.0..sroa_idx15.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.814.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.814.sroa.6.0..sroa.814.0..sroa_idx15.sroa_idx.i.i, align 8, !noalias !16945
  %.sroa.814.sroa.7.0..sroa.814.0..sroa_idx15.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.814.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.814.sroa.7.0..sroa.814.0..sroa_idx15.sroa_idx.i.i, align 8, !noalias !16945
  store i8 1, ptr %i.rf, align 8, !noalias !16935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16930
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.sv = icmp eq i64 %.sroa.012.0.copyload13.pre.i.i, 9
  br i1 %i.sv, label %.thread.i377, label %bb.gf

.thread.i377:                                     ; preds = %bb.ge, %.thread.i.i
  store i8 3, ptr %i.rd, align 8, !noalias !16930
  br label %bb.gq

bb.gf:                                            ; preds = %bb.ge, %.thread84.i.i
  %.sroa.814.sroa.7.0.copyload94.i.i = phi ptr [ %.sroa.814.sroa.7.0.copyload90.i.i, %.thread84.i.i ], [ %.sroa.814.sroa.7.0.copyload.i.i, %bb.ge ] ; 2 uses
  %.sroa.814.sroa.6.0.copyload93.i.i = phi ptr [ %.sroa.814.sroa.6.0.copyload88.i.i, %.thread84.i.i ], [ %.sroa.814.sroa.6.0.copyload.i.i, %bb.ge ] ; 3 uses
  %.sroa.012.0.copyload1392.i.i = phi i64 [ %i.ri, %.thread84.i.i ], [ %.sroa.012.0.copyload13.pre.i.i, %bb.ge ] ; 2 uses
  %.sroa.814.sroa.0.0.copyload91.i.i = phi ptr [ %.sroa.3.0.copyload.i.i.i, %.thread84.i.i ], [ %.sroa.814.sroa.0.0.copyload.pre.i.i, %bb.ge ] ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs1_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerNtNtBR_12arrow_reader19ArrowReaderMetadata10load_asyncNtNtBP_5store19ParquetObjectReaderE0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.rg)
          to label %bb.gh unwind label %bb.gg, !noalias !16934

bb.gg:                                            ; preds = %bb.gf
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.gh:                                            ; preds = %bb.gf
  %.not.i.i.i374 = icmp eq i64 %.sroa.012.0.copyload1392.i.i, 8
  br i1 %.not.i.i.i374, label %bb.gn, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.sx = getelementptr inbounds nuw i8, ptr %1, i64 1120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader5store19ParquetObjectReaderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.sx)
          to label %.thread1348 unwind label %bb.gk, !noalias !16934

bb.gj:                                            ; preds = %bb.gm, %bb.gk, %bb.fe
  %i.sy = phi ptr [ %i.rb, %bb.gk ], [ %i.pw, %bb.gm ], [ %i.pw, %bb.fe ]
  %i.sz = phi ptr [ %i.rc, %bb.gk ], [ %i.px, %bb.gm ], [ %i.px, %bb.fe ]
  %i.ta = phi ptr [ %i.rd, %bb.gk ], [ %i.py, %bb.gm ], [ %i.py, %bb.fe ]
  %i.tb = phi ptr [ %i.re, %bb.gk ], [ %i.pz, %bb.gm ], [ %i.pz, %bb.fe ]
  %.pn3.i.i = phi { ptr, i32 } [ %i.td, %bb.gk ], [ %.pn.i.i, %bb.gm ], [ %.pn.i.i, %bb.fe ]
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 1393
  store i8 0, ptr %i.tc, align 1, !noalias !16930
  store i8 2, ptr %i.ta, align 8, !noalias !16930
  br label %.body.i373

bb.gk:                                            ; preds = %bb.gi
  %i.td = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

.thread1348:                                      ; preds = %bb.gi
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 1393
  store i8 0, ptr %i.te, align 1, !noalias !16930
  store i8 1, ptr %i.rd, align 8, !noalias !16930
  br label %bb.go

bb.gl:                                            ; preds = %bb.gm, %.body.i.i
  %i.tf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !16934
  unreachable

bb.gm:                                            ; preds = %bb.fe
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 1120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader5store19ParquetObjectReaderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.tg) #44
          to label %bb.gj unwind label %bb.gl, !noalias !16934

bb.gn:                                            ; preds = %bb.gh
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 1393
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %.sroa.064.0.copyload.i.i = load i64, ptr %i.ti, align 8, !noalias !16930 ; 2 uses
  %.sroa.565.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %.sroa.565.0.copyload.i.i = load i64, ptr %.sroa.565.0..sroa_idx.i.i, align 8, !noalias !16930
  %.sroa.666.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %.sroa.666.0.copyload.i.i = load ptr, ptr %.sroa.666.0..sroa_idx.i.i, align 8, !noalias !16930
  %.sroa.767.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1144
  %.sroa.767.0.copyload.i.i = load ptr, ptr %.sroa.767.0..sroa_idx.i.i, align 8, !noalias !16930
  %.sroa.868.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1152
  %.sroa.868.0.copyload.i.i = load ptr, ptr %.sroa.868.0..sroa_idx.i.i, align 8, !noalias !16930
  %.sroa.969.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1160
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.814.sroa.0.0.copyload91.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.814.sroa.6.0.copyload93.i.i) ]
  store i8 0, ptr %i.th, align 1, !noalias !16930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12891, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.969.0..sroa_idx.i.i, i64 56, i1 false)
  store i8 1, ptr %i.rd, align 8, !noalias !16930
  %i.tj = icmp eq i64 %.sroa.064.0.copyload.i.i, 3
  br i1 %i.tj, label %bb.gq, label %bb.go

bb.go:                                            ; preds = %.thread1348, %bb.gn
  %.sroa.043.0.i.i1364 = phi i64 [ 2, %.thread1348 ], [ %.sroa.064.0.copyload.i.i, %bb.gn ] ; 2 uses
  %.sroa.3.0.i.i1363 = phi i64 [ %.sroa.012.0.copyload1392.i.i, %.thread1348 ], [ %.sroa.565.0.copyload.i.i, %bb.gn ] ; 2 uses
  %.sroa.4.0.i.i1362 = phi ptr [ %.sroa.814.sroa.0.0.copyload91.i.i, %.thread1348 ], [ %.sroa.666.0.copyload.i.i, %bb.gn ] ; 2 uses
  %.sroa.547.0.i.i1361 = phi ptr [ %.sroa.814.sroa.6.0.copyload93.i.i, %.thread1348 ], [ %.sroa.767.0.copyload.i.i, %bb.gn ] ; 2 uses
  %.sroa.649.0.i.i1360 = phi ptr [ %.sroa.814.sroa.7.0.copyload94.i.i, %.thread1348 ], [ %.sroa.868.0.copyload.i.i, %bb.gn ] ; 2 uses
  %.sroa.21.0.i.i1359 = phi ptr [ undef, %.thread1348 ], [ %.sroa.814.sroa.0.0.copyload91.i.i, %bb.gn ]
  %.sroa.22.0.i.i1358 = phi ptr [ undef, %.thread1348 ], [ %.sroa.814.sroa.6.0.copyload93.i.i, %bb.gn ]
  %.sroa.23.0.i.i1357 = phi ptr [ undef, %.thread1348 ], [ %.sroa.814.sroa.7.0.copyload94.i.i, %bb.gn ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtBQ_12arrow_reader18ArrowReaderBuilderINtBO_11AsyncReaderNtNtBO_5store19ParquetObjectReaderEE16new_with_options0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.re)
          to label %bb.gr unwind label %bb.gp, !noalias !16929

bb.gp:                                            ; preds = %bb.go
  %i.tk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.gq:                                            ; preds = %.thread.i377, %bb.gn
  store i8 3, ptr %i.rb, align 8, !noalias !16925
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12891)
  store i64 -9223372036854775807, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %common.ret

bb.gr:                                            ; preds = %bb.go
  store i8 1, ptr %i.rb, align 8, !noalias !16925
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9920, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12891, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12891)
  %i.tl = icmp eq i64 %.sroa.043.0.i.i1364, 2
  br i1 %i.tl, label %bb.sn, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %.sroa.8950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8950.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9920, i64 56, i1 false)
  store i64 %.sroa.043.0.i.i1364, ptr %i.bs, align 8
  %.sroa.4946.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %.sroa.3.0.i.i1363, ptr %.sroa.4946.0..sroa_idx, align 8
  %.sroa.5947.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr %.sroa.4.0.i.i1362, ptr %.sroa.5947.0..sroa_idx, align 8
  %.sroa.6948.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr %.sroa.547.0.i.i1361, ptr %.sroa.6948.0..sroa_idx, align 8
  %.sroa.7949.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  store ptr %.sroa.649.0.i.i1360, ptr %.sroa.7949.0..sroa_idx, align 8
  %.sroa.9951.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  store i64 0, ptr %.sroa.9951.0..sroa_idx, align 8
  %.sroa.11953.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 112
  store i64 0, ptr %.sroa.11953.0..sroa_idx, align 8
  %.sroa.13955.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  store i64 2, ptr %.sroa.13955.0..sroa_idx, align 8
  %.sroa.14956.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 136
  store i64 32, ptr %.sroa.14956.0..sroa_idx, align 8
  %.sroa.15957.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 144
  store i64 -9223372036854775808, ptr %.sroa.15957.0..sroa_idx, align 8
  %.sroa.17959.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 168
  store i64 -9223372036854775808, ptr %.sroa.17959.0..sroa_idx, align 8
  %.sroa.19961.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 192
  store i64 -9223372036854775808, ptr %.sroa.19961.0..sroa_idx, align 8
  %.sroa.21963.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 216
  store i64 -9223372036854775808, ptr %.sroa.21963.0..sroa_idx, align 8
  %.sroa.23965.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 240 ; 2 uses
  store ptr %.sroa.21.0.i.i1359, ptr %.sroa.23965.0..sroa_idx, align 8
  %.sroa.24966.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 248 ; 2 uses
  store ptr %.sroa.22.0.i.i1358, ptr %.sroa.24966.0..sroa_idx, align 8
  %.sroa.25967.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 256
  store ptr %.sroa.23.0.i.i1357, ptr %.sroa.25967.0..sroa_idx, align 8
  %.sroa.26968.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 264
  store i64 1024, ptr %.sroa.26968.0..sroa_idx, align 8
  %.sroa.27969.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 272
  store ptr null, ptr %.sroa.27969.0..sroa_idx, align 8
  %.sroa.28970.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 280
  store i64 104857600, ptr %.sroa.28970.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7972.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 1568 ; 2 uses
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.tm)
          to label %_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.tn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !16946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.bm, i64 48, i1 false), !noalias !16950
  invoke void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.s)
          to label %bb.gw unwind label %bb.gv

bb.gu:                                            ; preds = %bb.gv, %bb.gt
  %.pn143 = phi { ptr, i32 } [ %i.to, %bb.gv ], [ %i.tn, %bb.gt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.gx

bb.gv:                                            ; preds = %_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.to = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

bb.gw:                                            ; preds = %_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !16946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  invoke void @_RINvXs9_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTBO_B1q_EE9from_iterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterBO_B1q_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bo, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.bn)
          to label %bb.gz unwind label %bb.gy

bb.gx:                                            ; preds = %bb.gy, %bb.gu
  %.pn145 = phi { ptr, i32 } [ %i.tp, %bb.gy ], [ %.pn143, %bb.gu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %bb.sj

bb.gy:                                            ; preds = %bb.gw
  %i.tp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.gz:                                            ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %.val303 = load ptr, ptr %.sroa.23965.0..sroa_idx, align 8, !nonnull !10, !noundef !10
  %i.tq = getelementptr inbounds nuw i8, ptr %.val303, i64 16
  %i.tr = getelementptr inbounds nuw i8, ptr %1, i64 1552
  %i.ts = load i64, ptr %i.tr, align 8, !range !343, !noundef !10
  %i.tt = getelementptr inbounds nuw i8, ptr %1, i64 1560
  %i.tu = load i64, ptr %i.tt, align 8
  %i.tv = getelementptr inbounds nuw i8, ptr %1, i64 808
  invoke void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats27stats_from_parquet_metadata(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.tq, i64 noundef %i.ts, i64 %i.tu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tv)
          to label %bb.hb unwind label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.tw = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

bb.hb:                                            ; preds = %bb.gz
  call void @llvm.experimental.noalias.scope.decl(metadata !16951)
  call void @llvm.experimental.noalias.scope.decl(metadata !16954)
  %i.tx = load i64, ptr %i.bp, align 16, !range !343, !alias.scope !16954, !noalias !16951, !noundef !10
  %i.ty = trunc nuw i64 %i.tx to i1
  br i1 %i.ty, label %bb.hc, label %bb.hf

bb.hc:                                            ; preds = %bb.hb
  %i.tz = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !16956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.r, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.tz, i64 96, i1 false), !noalias !16951
  %i.ua = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  invoke void @_RNvXNtCs14kWLkQVSKO_14deltalake_core6writerNtNtB4_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_16DeltaWriterErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ua, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.r)
          to label %bb.si unwind label %bb.he

bb.hd:                                            ; preds = %bb.he, %bb.ha
  %.pn147 = phi { ptr, i32 } [ %i.ub, %bb.he ], [ %i.tw, %bb.ha ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.bo) #44
          to label %bb.sj unwind label %bb.ac

bb.he:                                            ; preds = %bb.hc
  %i.ub = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

bb.hf:                                            ; preds = %bb.hb
  %i.uc = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.ud = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ud, ptr noundef nonnull readonly align 8 dereferenceable(152) %i.uc, i64 152, i1 false), !alias.scope !16956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %.sroa.7972.sroa.9.0..sroa_idx1221 = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.sroa.7972.sroa.11.0..sroa_idx1225 = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %.sroa.7972.sroa.13.0..sroa_idx1229 = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7972.sroa.13, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7972.sroa.13.0..sroa_idx1229, i64 56, i1 false), !alias.scope !16957
  %.sroa.7972.sroa.14.0..sroa_idx1230 = getelementptr inbounds nuw i8, ptr %i.bq, i64 112
  %.sroa.101238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.101238.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.7972.sroa.14.0..sroa_idx1230, i64 48, i1 false)
  %.sroa.91237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 48 ; 5 uses
  %i.ue = load <2 x i64>, ptr %i.ud, align 8, !alias.scope !16957
  %.sroa.51233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.uf = load <2 x i64>, ptr %.sroa.7972.sroa.9.0..sroa_idx1221, align 8, !alias.scope !16957
  %.sroa.71235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.ug = load <2 x i64>, ptr %.sroa.7972.sroa.11.0..sroa_idx1225, align 8, !alias.scope !16957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.91237.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7972.sroa.13, i64 56, i1 false)
  store <2 x i64> %i.ue, ptr %i.br, align 16
  store <2 x i64> %i.uf, ptr %.sroa.51233.0..sroa_idx, align 16
  store <2 x i64> %i.ug, ptr %.sroa.71235.0..sroa_idx, align 16
  %i.uh = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.ui = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.uh, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ui, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.uj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bo) #44
          to label %.body390 unwind label %bb.hj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.hf
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.hh

bb.hh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.uk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bo)
          to label %.body390 unwind label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.ul = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.hj:                                            ; preds = %bb.hg
  %i.um = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.hk

bb.hk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.un = landingpad { ptr, i32 }
          cleanup
  br label %.body390

.body390:                                         ; preds = %bb.hg, %bb.hh, %bb.hk
  %eh.lpad-body391 = phi { ptr, i32 } [ %i.un, %bb.hk ], [ %i.uk, %bb.hh ], [ %i.uj, %bb.hg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7972.sroa.13)
  br label %bb.sh

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7972.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !16961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !16961
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc396 unwind label %bb.ht

.noexc396:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit
  %i.uo = load i64, ptr %i.p, align 8, !range !343, !noalias !16961, !noundef !10
  %i.up = trunc nuw i64 %i.uo to i1
  %i.uq = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ur = load i64, ptr %i.uq, align 8, !range !59, !noalias !16961, !noundef !10 ; 3 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  br i1 %i.up, label %bb.hl, label %bb.hm, !prof !49

bb.hl:                                            ; preds = %.noexc396
  %i.ut = load i64, ptr %i.us, align 8, !noalias !16961
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ur, i64 %i.ut) #46
          to label %.noexc397 unwind label %bb.ht

.noexc397:                                        ; preds = %bb.hl
  unreachable

bb.hm:                                            ; preds = %.noexc396
  %i.uu = load ptr, ptr %i.us, align 8, !noalias !16961, !nonnull !10, !noundef !10
  %i.uv = icmp samesign ugt i64 %i.ur, 127
  call void @llvm.assume(i1 %i.uv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !16961
  store i64 %i.ur, ptr %i.q, align 8, !noalias !16961
  %i.uw = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.uu, ptr %i.uw, align 8, !noalias !16961
  %i.ux = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store i64 0, ptr %i.ux, align 8, !noalias !16961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !16968
  store ptr %i.q, ptr %i.o, align 8, !noalias !16968
  %i.uy = invoke noundef align 8 ptr @_RINvXNvNtCs14kWLkQVSKO_14deltalake_core8protocols2_1__NtB5_5StatsNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.br, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.ho unwind label %bb.hn, !noalias !16972 ; 2 uses

bb.hn:                                            ; preds = %bb.hm
  %i.uz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.q) #44
          to label %.body398 unwind label %bb.hs, !noalias !16972

bb.ho:                                            ; preds = %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !16968
  %.not.i.i395 = icmp eq ptr %i.uy, null
  br i1 %.not.i.i395, label %_RINvNtCseqDwI8vvjGQ_10serde_json3ser6to_vecNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBJ_.exit.i, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCseqDwI8vvjGQ_10serde_json3ser6to_vecNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBJ_.exit.thread.i unwind label %bb.hq, !noalias !16972

bb.hq:                                            ; preds = %bb.hp
  %i.va = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body398 unwind label %bb.hr, !noalias !16972

bb.hr:                                            ; preds = %bb.hq
  %i.vb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !16972
  unreachable

_RINvNtCseqDwI8vvjGQ_10serde_json3ser6to_vecNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBJ_.exit.thread.i: ; preds = %bb.hp
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.noexc400 unwind label %bb.ht

.noexc400:                                        ; preds = %_RINvNtCseqDwI8vvjGQ_10serde_json3ser6to_vecNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBJ_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !16961
  br label %bb.sg

bb.hs:                                            ; preds = %bb.hn
  %i.vc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !16972
  unreachable

_RINvNtCseqDwI8vvjGQ_10serde_json3ser6to_vecNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBJ_.exit.i: ; preds = %bb.ho
  %.sroa.0.0.copyload1.i = load i64, ptr %i.q, align 8, !noalias !16973 ; 2 uses
  %.sroa.7.0.copyload3.i = load ptr, ptr %i.uw, align 8, !noalias !16973 ; 2 uses
  %.sroa.9.0.copyload5.i = load i64, ptr %i.ux, align 8, !noalias !16973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !16961
  %i.vd = icmp eq i64 %.sroa.0.0.copyload1.i, -9223372036854775808
  br i1 %i.vd, label %bb.sg, label %bb.hu

bb.ht:                                            ; preds = %_RINvNtCseqDwI8vvjGQ_10serde_json3ser6to_vecNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBJ_.exit.thread.i, %bb.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit
  %i.ve = landingpad { ptr, i32 }
          cleanup
  br label %.body398

.thread1578:                                      ; preds = %bb.hu
  %i.vf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %.sink.split1826

bb.hu:                                            ; preds = %_RINvNtCseqDwI8vvjGQ_10serde_json3ser6to_vecNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBJ_.exit.i
  %i.vg = inttoptr i64 %.sroa.0.0.copyload1.i to ptr
  store ptr %i.vg, ptr %i.bl, align 8
  %.sroa.41002.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %.sroa.7.0.copyload3.i, ptr %.sroa.41002.0..sroa_idx, align 8
  %.sroa.51003.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 %.sroa.9.0.copyload5.i, ptr %.sroa.51003.0..sroa_idx, align 8
  %i.vh = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 1744
  %i.vj = getelementptr i8, ptr %1, i64 1752
  %.val304 = load ptr, ptr %i.vj, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.vk = getelementptr i8, ptr %1, i64 1760
  %.val305 = load i64, ptr %i.vk, align 8, !noundef !10
  %i.vl = getelementptr inbounds nuw i8, ptr %.val304, i64 %.val305
  invoke void @_RNvMs3_Cs8ojr27oueVZ_16percent_encodingNtB5_13PercentDecode11decode_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bh, ptr noundef nonnull %.val304, ptr noundef nonnull %i.vl)
          to label %bb.hv unwind label %.thread1578

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.experimental.noalias.scope.decl(metadata !16974)
  %i.vm = load i64, ptr %i.bh, align 8, !range !927, !alias.scope !16977, !noalias !16974, !noundef !10 ; 2 uses
  %i.vn = icmp eq i64 %i.vm, -9223372036854775807
  %i.vo = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.81020.sroa.0.0.copyload1156 = load i64, ptr %i.vo, align 8, !alias.scope !16979 ; 3 uses
  %.sroa.81020.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.81020.sroa.8.0.copyload1158 = load i64, ptr %.sroa.81020.sroa.8.0..sroa_idx, align 8, !alias.scope !16979 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br i1 %i.vn, label %bb.rz, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  store i64 %i.vm, ptr %i.bi, align 8
  %.sroa.41023.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %.sroa.81020.sroa.0.0.copyload1156, ptr %.sroa.41023.0..sroa_idx, align 8
  %.sroa.41023.sroa.4.0..sroa.41023.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 %.sroa.81020.sroa.8.0.copyload1158, ptr %.sroa.41023.sroa.4.0..sroa.41023.0..sroa_idx.sroa_idx, align 8
  %.val306.cast = inttoptr i64 %.sroa.81020.sroa.0.0.copyload1156 to ptr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16980)
  call void @llvm.experimental.noalias.scope.decl(metadata !16983)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val306.cast) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !16986
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef range(i64 0, -9223372036854775808) %.sroa.81020.sroa.8.0.copyload1158, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc408 unwind label %bb.hz

.noexc408:                                        ; preds = %bb.hw
  %i.vp = load i64, ptr %i.n, align 8, !range !343, !noalias !16986, !noundef !10
  %i.vq = trunc nuw i64 %i.vp to i1
  %i.vr = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.vs = load i64, ptr %i.vr, align 8, !range !59, !noalias !16986, !noundef !10 ; 3 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.vq, label %bb.hx, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !49

bb.hx:                                            ; preds = %.noexc408
  %i.vu = load i64, ptr %i.vt, align 8, !noalias !16986
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.vs, i64 %i.vu) #46
          to label %.noexc409 unwind label %bb.hz

.noexc409:                                        ; preds = %bb.hx
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %.noexc408
  %i.vv = load ptr, ptr %i.vt, align 8, !noalias !16986, !nonnull !10, !noundef !10 ; 2 uses
  %i.vw = icmp ule i64 %.sroa.81020.sroa.8.0.copyload1158, %i.vs
  call void @llvm.assume(i1 %i.vw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !16986
  %.not.i.i.i405 = icmp eq i64 %.sroa.81020.sroa.8.0.copyload1158, 0
  br i1 %.not.i.i.i405, label %bb.ia, label %bb.hy

bb.hy:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vv, ptr nonnull readonly align 1 %.val306.cast, i64 range(i64 0, -9223372036854775808) %.sroa.81020.sroa.8.0.copyload1158, i1 false), !noalias !16990
  br label %bb.ia

bb.hz:                                            ; preds = %bb.hx, %bb.hw
  %i.vx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.ry

bb.ia:                                            ; preds = %bb.hy, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  store i64 %i.vs, ptr %i.bj, align 8, !alias.scope !16991
  %.sroa.4.0..sroa_idx.i.i406 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.vv, ptr %.sroa.4.0..sroa_idx.i.i406, align 8, !alias.scope !16991
  %.sroa.5.0..sroa_idx.i.i407 = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 %.sroa.81020.sroa.8.0.copyload1158, ptr %.sroa.5.0..sroa_idx.i.i407, align 8, !alias.scope !16991
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 1816
  %i.vz = load i64, ptr %i.vy, align 8, !noundef !10 ; 2 uses
  %i.wa = icmp slt i64 %i.vz, 0
  br i1 %i.wa, label %bb.rt, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 748 ; 2 uses
  store i8 0, ptr %i.wb, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !16992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.tm, i64 48, i1 false)
  invoke void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.be, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.m)
          to label %bb.id unwind label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.wc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %bb.ie

bb.id:                                            ; preds = %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !16992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bf, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.be, i64 64, i1 false), !alias.scope !16996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  invoke void @_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB15_EEINtNtNtNtB1M_4iter6traits7collect12FromIteratorTB15_B1H_EE9from_iterINtNtNtB2w_8adapters3map3MapINtB7_8IntoIterB15_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5r_21ConvertToDeltaBuilder19into_create_builder0s2_0EEB5v_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.bf)
          to label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB3A_21ConvertToDeltaBuilder19into_create_builder0s2_0ENtNtNtBa_6traits8iterator8Iterator7collectINtBU_7HashMapB1N_INtNtBc_6option6OptionB1N_EEEB3E_.exit unwind label %bb.if

bb.ie:                                            ; preds = %bb.if, %bb.ic
  %.pn158 = phi { ptr, i32 } [ %i.wd, %bb.if ], [ %i.wc, %bb.ic ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj) #44
          to label %bb.ru unwind label %bb.ac

bb.if:                                            ; preds = %bb.id
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ie

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB3A_21ConvertToDeltaBuilder19into_create_builder0s2_0ENtNtNtBa_6traits8iterator8Iterator7collectINtBU_7HashMapB1N_INtNtBc_6option6OptionB1N_EEEB3E_.exit: ; preds = %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.we = getelementptr inbounds nuw i8, ptr %1, i64 1824
  %i.wf = load i32, ptr %i.we, align 8, !range !12262, !alias.scope !17000, !noundef !10 ; 2 uses
  %i.wg = ashr i32 %i.wf, 13                      ; 3 uses
  %i.wh = add nsw i32 %i.wg, -1                   ; 2 uses
  %i.wi = icmp slt i32 %i.wg, 1
  br i1 %i.wi, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB3A_21ConvertToDeltaBuilder19into_create_builder0s2_0ENtNtNtBa_6traits8iterator8Iterator7collectINtBU_7HashMapB1N_INtNtBc_6option6OptionB1N_EEEB3E_.exit
  %i.wj = sub nsw i32 1, %i.wg
  %i.wk = udiv i32 %i.wj, 400
  %i.wl = add nuw nsw i32 %i.wk, 1                ; 2 uses
  %i.wm = mul nuw nsw i32 %i.wl, 400
  %i.wn = add nsw i32 %i.wm, %i.wh
  %.neg.i.i = mul nsw i32 %i.wl, -146097
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB3A_21ConvertToDeltaBuilder19into_create_builder0s2_0ENtNtNtBa_6traits8iterator8Iterator7collectINtBU_7HashMapB1N_INtNtBc_6option6OptionB1N_EEEB3E_.exit
  %.sroa.05.0.i.i = phi i32 [ %.neg.i.i, %bb.ig ], [ 0, %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB3A_21ConvertToDeltaBuilder19into_create_builder0s2_0ENtNtNtBa_6traits8iterator8Iterator7collectINtBU_7HashMapB1N_INtNtBc_6option6OptionB1N_EEEB3E_.exit ]
  %.sroa.0.0.i.i = phi i32 [ %i.wn, %bb.ig ], [ %i.wh, %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB3A_21ConvertToDeltaBuilder19into_create_builder0s2_0ENtNtNtBa_6traits8iterator8Iterator7collectINtBU_7HashMapB1N_INtNtBc_6option6OptionB1N_EEEB3E_.exit ] ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %1, i64 1828
  %i.wp = load i32, ptr %i.wo, align 4, !alias.scope !17000, !noundef !10
  %i.wq = getelementptr inbounds nuw i8, ptr %1, i64 1832
  %i.wr = load i32, ptr %i.wq, align 8, !alias.scope !17000, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.experimental.noalias.scope.decl(metadata !17003)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !17003
  store i64 0, ptr %i.l, align 8, !noalias !17003
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !17003
  %.sroa.5.0..sroa_idx.i414 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i414, align 8, !noalias !17003
  %i.ws = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @54)
          to label %bb.ik unwind label %bb.ii, !noalias !17003 ; 2 uses

bb.ii:                                            ; preds = %bb.ih
  %i.wt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #44
          to label %.body415 unwind label %bb.ij, !noalias !17003

bb.ij:                                            ; preds = %bb.ii
  %i.wu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !17003
  unreachable

.body415:                                         ; preds = %bb.ii
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.bd) #44
          to label %bb.rr unwind label %bb.ac

bb.ik:                                            ; preds = %bb.ih
  %i.wv = lshr i32 %i.wf, 4
  %i.ww = and i32 %i.wv, 511
  %i.wx = add nuw nsw i32 %i.ww, -719163
  %i.wy = add nsw i32 %i.wx, %.sroa.05.0.i.i
  %i.wz = sdiv i32 %.sroa.0.0.i.i, 100            ; 2 uses
  %i.xa = sub nsw i32 %i.wy, %i.wz
  %i.xb = mul nsw i32 %.sroa.0.0.i.i, 1461
  %i.xc = ashr i32 %i.xb, 2
  %i.xd = add nsw i32 %i.xa, %i.xc
  %i.xe = ashr i32 %i.wz, 2
  %narrow.i = add nsw i32 %i.xd, %i.xe
  %i.xf = sext i32 %narrow.i to i64
  %i.xg = mul nsw i64 %i.xf, 86400
  %i.xh = zext i32 %i.wp to i64
  %i.xi = add nsw i64 %i.xg, %i.xh
  %i.xj = mul nsw i64 %i.xi, 1000
  %i.xk = udiv i32 %i.wr, 1000000
  %i.xl = zext nneg i32 %i.xk to i64
  %i.xm = add nsw i64 %i.xj, %i.xl
  %i.xn = extractvalue { i64, i64 } %i.ws, 0
  %i.xo = extractvalue { i64, i64 } %i.ws, 1
  %i.xp = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xp, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.xq = getelementptr inbounds nuw i8, ptr %i.bc, i64 152 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.xq, ptr noundef nonnull align 8 dereferenceable(32) @56, i64 32, i1 false)
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 184
  store i64 %i.xn, ptr %.sroa.412.0..sroa_idx.i, align 8, !alias.scope !17003
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 192
  store i64 %i.xo, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !17003
  %i.xr = getelementptr inbounds nuw i8, ptr %i.bc, i64 200
  %i.xs = getelementptr inbounds nuw i8, ptr %i.bc, i64 264
  store i8 0, ptr %i.xs, align 8, !alias.scope !17003
  %i.xt = getelementptr inbounds nuw i8, ptr %i.bc, i64 56 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xr, i8 0, i64 16, i1 false), !alias.scope !17003
  store i64 -9223372036854775808, ptr %i.xt, align 8, !alias.scope !17003
  %i.xu = getelementptr inbounds nuw i8, ptr %i.bc, i64 216 ; 2 uses
  store ptr null, ptr %i.xu, align 8, !alias.scope !17003
  %i.xv = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  store i64 -9223372036854775808, ptr %i.xv, align 8, !alias.scope !17003
  store i64 0, ptr %i.bc, align 8, !alias.scope !17003
  %i.xw = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 0, ptr %i.xw, align 8, !alias.scope !17003
  %i.xx = getelementptr inbounds nuw i8, ptr %i.bc, i64 128 ; 2 uses
  store i64 -9223372036854775808, ptr %i.xx, align 8, !alias.scope !17003
end_hunk_2
begin_hunk_3_@_RNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB7_21ConvertToDeltaBuilder19into_create_builder0Bb_:bb.a
  %i.zt = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ba, ptr noundef nonnull align 8 dereferenceable(64) %i.bb, i64 64, i1 false)
  %i.zu = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 2 uses
  %i.zv = load i64, ptr %i.zu, align 8, !alias.scope !17040, !noalias !17045, !noundef !10 ; 3 uses
  %i.zw = load i64, ptr %i.zt, align 8, !range !312, !alias.scope !17040, !noalias !17045, !noundef !10
  %i.zx = icmp eq i64 %i.zv, %i.zw
  br i1 %i.zx, label %bb.jk, label %bb.jn

bb.jk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE8grow_oneCs8RgGp49HWXr_9arrow_csv(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zt)
          to label %bb.jn unwind label %bb.jl, !noalias !17045

bb.jl:                                            ; preds = %bb.jk
  %i.zy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ba) #44
          to label %bb.rm unwind label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.zz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.jn:                                            ; preds = %bb.jk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit
  %i.aaa = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.aab = load ptr, ptr %i.aaa, align 8, !alias.scope !17040, !noalias !17045, !nonnull !10, !noundef !10
  %i.aac = getelementptr inbounds nuw [64 x i8], ptr %i.aab, i64 %i.zv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aac, ptr noundef nonnull align 8 dereferenceable(64) %i.ba, i64 64, i1 false)
  %i.aad = add i64 %i.zv, 1
  store i64 %i.aad, ptr %i.zu, align 8, !alias.scope !17040, !noalias !17045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.br)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit.i unwind label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.aae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.91237.0..sroa_idx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i unwind label %bb.jq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit.i: ; preds = %bb.jn
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.91237.0..sroa_idx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i unwind label %bb.jp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i: ; preds = %bb.jp, %bb.jo
  %.pn.i442 = phi { ptr, i32 } [ %i.aag, %bb.jp ], [ %i.aae, %bb.jo ]
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnCountStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aaf)
          to label %.body444 unwind label %bb.jq

bb.jp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit.i
  %i.aag = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit.i
  %i.aah = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnCountStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit unwind label %bb.jr

bb.jq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i, %bb.jo
  %i.aai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

.body444:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i597, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i, %bb.jr, %bb.sj, %bb.sh
  %.pn188.pn = phi { ptr, i32 } [ %.pn188, %bb.sj ], [ %.pn182.pn.pn, %bb.sh ], [ %.pn.i442, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i ], [ %i.aaj, %bb.jr ], [ %.pn.i598, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i597 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_reader18ArrowReaderBuilderINtNtBL_12async_reader11AsyncReaderNtNtB1Q_5store19ParquetObjectReaderEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(288) %i.bs) #44
          to label %bb.js unwind label %bb.ac

bb.jr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i601, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i
  %i.aaj = landingpad { ptr, i32 }
          cleanup
  br label %.body444

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_reader18ArrowReaderBuilderINtNtBL_12async_reader11AsyncReaderNtNtB1Q_5store19ParquetObjectReaderEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(288) %i.bs)
          to label %bb.ju unwind label %bb.jt

bb.js:                                            ; preds = %.body379, %.body444, %bb.jt
  %.pn192.pn = phi { ptr, i32 } [ %.pn188.pn, %.body444 ], [ %i.aak, %bb.jt ], [ %eh.lpad-body380, %.body379 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %bb.rk

bb.jt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit605, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit
  %i.aak = landingpad { ptr, i32 }
          cleanup
  br label %bb.js

bb.ju:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aal)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i447 unwind label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.aam = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aal)
          to label %.body448 unwind label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.aan = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i447: ; preds = %bb.ju
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aal)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit451 unwind label %bb.jx

.body448:                                         ; preds = %bb.ri, %bb.jv, %bb.jx, %bb.rl, %bb.rk
  %.pn232 = phi { ptr, i32 } [ %.pn130, %bb.rl ], [ %.pn229.pn, %bb.rk ], [ %i.aam, %bb.jv ], [ %i.aar, %bb.jx ], [ %i.anz, %bb.ri ] ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %1, i64 748
  %i.aap = load i8, ptr %i.aao, align 4, !range !349, !noundef !10
  %i.aaq = trunc nuw i8 %i.aap to i1
  br i1 %i.aaq, label %bb.uf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit666

bb.jx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i585, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i447
  %i.aar = landingpad { ptr, i32 }
          cleanup
  br label %.body448

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit451: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i447
  store i8 0, ptr %i.wb, align 4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.vi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit451._crit_edge unwind label %bb.jz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit451._crit_edge: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit451
  %.phi.trans.insert1722 = getelementptr inbounds nuw i8, ptr %1, i64 1640
  %.pre1723 = load ptr, ptr %.phi.trans.insert1722, align 8, !alias.scope !16923, !noalias !16920
  %.phi.trans.insert1724 = getelementptr inbounds nuw i8, ptr %1, i64 1624
  %.pre1725 = load ptr, ptr %.phi.trans.insert1724, align 8, !alias.scope !16923, !noalias !16920
  br label %bb.es

bb.jy:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit666, %bb.jz
  %.pn236 = phi { ptr, i32 } [ %i.aat, %bb.jz ], [ %.pn234, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit666 ]
  %i.aas = getelementptr inbounds nuw i8, ptr %1, i64 1616
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.aas)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ac

bb.jz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit451
  %i.aat = landingpad { ptr, i32 }
          cleanup
  br label %bb.jy

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.es
  %i.aau = getelementptr inbounds nuw i8, ptr %1, i64 1624
  %i.aav = getelementptr inbounds nuw i8, ptr %i.ok, i64 96
  store ptr %i.aav, ptr %i.aau, align 8, !alias.scope !16923, !noalias !16920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.on, ptr noundef nonnull align 8 dereferenceable(96) %i.ok, i64 96, i1 false), !noalias !16923
  %.pr1422 = load i64, ptr %i.on, align 8
  %.not82 = icmp eq i64 %.pr1422, -9223372036854775808
  br i1 %.not82, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  %i.aaw = getelementptr inbounds nuw i8, ptr %1, i64 1744 ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aaw, ptr noundef nonnull align 8 dereferenceable(96) %i.ok, i64 96, i1 false)
  %i.aax = getelementptr inbounds nuw i8, ptr %1, i64 1568 ; 2 uses
  %i.aay = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @54)
          to label %bb.nn unwind label %bb.nm     ; 2 uses

bb.kb:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.om)
          to label %bb.kd unwind label %bb.kc

bb.kc:                                            ; preds = %bb.so, %bb.kb
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit

bb.kd:                                            ; preds = %bb.kb
  %i.aba = getelementptr inbounds nuw i8, ptr %1, i64 1408
  %i.abb = getelementptr i8, ptr %1, i64 1432
  %.val310 = load i64, ptr %i.abb, align 8, !noundef !10
  %i.abc = icmp eq i64 %.val310, 0
  br i1 %i.abc, label %bb.ke, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit608

bb.ke:                                            ; preds = %bb.kd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.abd = getelementptr inbounds nuw i8, ptr %1, i64 745 ; 2 uses
  store i8 0, ptr %i.abd, align 1
  %i.abe = getelementptr inbounds nuw i8, ptr %1, i64 760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.abe, i64 24, i1 false)
  invoke void @_RINvMs5_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB6_6Schema9try_mergeINtNtCs6Po7BT7Nknu_5alloc3vec3VecBH_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.az, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ay)
          to label %bb.kj unwind label %bb.ki

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit608: ; preds = %bb.so, %bb.kd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit498, %bb.nl
  %.sroa.231058.4 = phi i64 [ -9223372036854775710, %bb.nl ], [ -9223372036854775710, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit498 ], [ -9223372036854775703, %bb.kd ], [ %.sroa.231058.7, %bb.so ]
  %.sroa.58.4 = phi i64 [ %.sroa.81033.sroa.8.0.copyload1179, %bb.nl ], [ %.sroa.81039.sroa.8.0.copyload1166, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit498 ], [ undef, %bb.kd ], [ %.sroa.58.7, %bb.so ]
  %.sroa.63.4 = phi i64 [ %.sroa.81033.sroa.9.0.copyload1181, %bb.nl ], [ %.sroa.81039.sroa.9.0.copyload1168, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit498 ], [ undef, %bb.kd ], [ %.sroa.63.7, %bb.so ]
  %.sroa.67.4 = phi i64 [ %.sroa.81033.sroa.10.0.copyload1183, %bb.nl ], [ %.sroa.81039.sroa.10.0.copyload1170, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit498 ], [ undef, %bb.kd ], [ %.sroa.67.7, %bb.so ]
  %.sroa.44.sroa.0.4 = phi i64 [ %.sroa.81033.sroa.0.0.copyload1177, %bb.nl ], [ %.sroa.81039.sroa.0.0.copyload1164, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit498 ], [ undef, %bb.kd ], [ %.sroa.44.sroa.0.7, %bb.so ]
  %i.abf = getelementptr inbounds nuw i8, ptr %1, i64 808 ; 4 uses
  %i.abg = load i64, ptr %i.abf, align 8, !range !59, !alias.scope !17048, !noundef !10
  %i.abh = icmp eq i64 %i.abg, -9223372036854775808
  br i1 %i.abh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.kf

bb.kf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit608
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.abi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abf)
          to label %.body458 unwind label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.abj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.kf
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.mj

bb.ki:                                            ; preds = %bb.ke
  %i.abk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit

bb.kj:                                            ; preds = %bb.ke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.experimental.noalias.scope.decl(metadata !17051)
  %i.abl = load ptr, ptr %i.az, align 8, !alias.scope !17054, !noalias !17051, !noundef !10 ; 2 uses
  %i.abm = icmp eq ptr %i.abl, null
  %i.abn = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.81033.sroa.0.0.copyload1177 = load i64, ptr %i.abn, align 8, !alias.scope !17056 ; 2 uses
  %.sroa.81033.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.81033.sroa.8.0.copyload1179 = load i64, ptr %.sroa.81033.sroa.8.0..sroa_idx, align 8, !alias.scope !17056 ; 2 uses
  %.sroa.81033.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.81033.sroa.9.0.copyload1181 = load i64, ptr %.sroa.81033.sroa.9.0..sroa_idx, align 8, !alias.scope !17056 ; 2 uses
  %.sroa.81033.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %.sroa.81033.sroa.10.0.copyload1183 = load i64, ptr %.sroa.81033.sroa.10.0..sroa_idx, align 8, !alias.scope !17056 ; 2 uses
  br i1 %i.abm, label %bb.nl, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %.sroa.101035.0..sroa_idx1036 = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %.sroa.101035.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.101035.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.101035.0..sroa_idx1036, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  store ptr %i.abl, ptr %i.ax, align 8
  %.sroa.81033.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %.sroa.81033.sroa.0.0.copyload1177, ptr %.sroa.81033.0..sroa_idx, align 8
  %.sroa.81033.sroa.8.0..sroa.81033.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %.sroa.81033.sroa.8.0.copyload1179, ptr %.sroa.81033.sroa.8.0..sroa.81033.0..sroa_idx.sroa_idx, align 8
  %.sroa.81033.sroa.9.0..sroa.81033.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i64 %.sroa.81033.sroa.9.0.copyload1181, ptr %.sroa.81033.sroa.9.0..sroa.81033.0..sroa_idx.sroa_idx, align 8
  %.sroa.81033.sroa.10.0..sroa.81033.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i64 %.sroa.81033.sroa.10.0.copyload1183, ptr %.sroa.81033.sroa.10.0..sroa.81033.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.abo = invoke fastcc noundef nonnull ptr @_RNvMse_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %i.ax)
          to label %bb.km unwind label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.abp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.km:                                            ; preds = %bb.kk
  store ptr %i.abo, ptr %i.av, align 8
  %i.abq = invoke noundef nonnull ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_delta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av)
          to label %bb.kp unwind label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.abr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17057)
  call void @llvm.experimental.noalias.scope.decl(metadata !17060)
  %i.abs = load ptr, ptr %i.av, align 8, !alias.scope !17063, !nonnull !10, !noundef !10
  %i.abt = atomicrmw sub ptr %i.abs, i64 1 release, align 8, !noalias !17063
  %i.abu = icmp eq i64 %i.abt, 1
  br i1 %i.abu, label %bb.ko, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.ko:                                            ; preds = %bb.kn
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.av) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ac

bb.kp:                                            ; preds = %bb.km
  store ptr %i.abq, ptr %i.aw, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !17064)
  call void @llvm.experimental.noalias.scope.decl(metadata !17067)
  %i.abv = load ptr, ptr %i.av, align 8, !alias.scope !17070, !nonnull !10, !noundef !10
  %i.abw = atomicrmw sub ptr %i.abv, i64 1 release, align 8, !noalias !17070
  %i.abx = icmp eq i64 %i.abw, 1
  br i1 %i.abx, label %bb.kq, label %bb.ks

bb.kq:                                            ; preds = %bb.kp
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.av) #48
          to label %bb.ks unwind label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.aby = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.nj

bb.ks:                                            ; preds = %bb.kq, %bb.kp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %.val308 = load ptr, ptr %i.aw, align 8, !nonnull !10, !noundef !10
  %i.abz = getelementptr inbounds nuw i8, ptr %.val308, i64 16
  invoke void @_RNvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_conversionRNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaINtB4_13TryIntoKernelNtNtB8_6schema10StructTypeE15try_into_kernelCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.abz)
          to label %bb.ku unwind label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.aca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.me

bb.ku:                                            ; preds = %bb.ks
  call void @llvm.experimental.noalias.scope.decl(metadata !17071)
  %i.acb = load i64, ptr %i.at, align 8, !range !59, !alias.scope !17074, !noalias !17071, !noundef !10 ; 2 uses
  %i.acc = icmp eq i64 %i.acb, -9223372036854775808
  %i.acd = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.81039.sroa.0.0.copyload1164 = load i64, ptr %i.acd, align 8, !alias.scope !17076 ; 2 uses
  %.sroa.81039.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.81039.sroa.8.0.copyload1166 = load i64, ptr %.sroa.81039.sroa.8.0..sroa_idx, align 8, !alias.scope !17076 ; 2 uses
  %.sroa.81039.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.81039.sroa.9.0.copyload1168 = load i64, ptr %.sroa.81039.sroa.9.0..sroa_idx, align 8, !alias.scope !17076 ; 2 uses
  %.sroa.81039.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %.sroa.81039.sroa.10.0.copyload1170 = load i64, ptr %.sroa.81039.sroa.10.0..sroa_idx, align 8, !alias.scope !17076 ; 3 uses
  br i1 %i.acc, label %bb.nh, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %.sroa.101041.0..sroa_idx1042 = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %.sroa.51045.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.51045.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.101041.0..sroa_idx1042, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  store i64 %i.acb, ptr %i.au, align 8
  %.sroa.41044.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %.sroa.81039.sroa.0.0.copyload1164, ptr %.sroa.41044.0..sroa_idx, align 8
  %.sroa.41044.sroa.4.0..sroa.41044.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %.sroa.81039.sroa.8.0.copyload1166, ptr %.sroa.41044.sroa.4.0..sroa.41044.0..sroa_idx.sroa_idx, align 8
  %.sroa.41044.sroa.5.0..sroa.41044.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i64 %.sroa.81039.sroa.9.0.copyload1168, ptr %.sroa.41044.sroa.5.0..sroa.41044.0..sroa_idx.sroa_idx, align 8
  %.sroa.41044.sroa.6.0..sroa.41044.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i64 %.sroa.81039.sroa.10.0.copyload1170, ptr %.sroa.41044.sroa.6.0..sroa.41044.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.ace = inttoptr i64 %.sroa.81039.sroa.10.0.copyload1170 to ptr ; 2 uses
  %.val312 = load i64, ptr %.sroa.51045.0..sroa_idx, align 8, !noundef !10
  %i.acf = getelementptr inbounds nuw [128 x i8], ptr %i.ace, i64 %.val312
  invoke void @_RNvYINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtCscVxtfYSVfE7_9itertools9Itertools11collect_vecCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, ptr noundef nonnull %i.ace, ptr noundef nonnull %i.acf)
          to label %bb.kx unwind label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.acg = landingpad { ptr, i32 }
          cleanup
  br label %.thread1462

bb.kx:                                            ; preds = %bb.kv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.ach = getelementptr inbounds nuw i8, ptr %1, i64 1504 ; 2 uses
  invoke void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE6valuesCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ach)
          to label %bb.kz unwind label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.aci = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

bb.kz:                                            ; preds = %bb.kx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !17077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.aq, i64 40, i1 false), !alias.scope !17084, !noalias !17088
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB2_12SpecFromIterBU_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map6ValuesNtNtB6_6string6StringBV_EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ar, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.lc unwind label %bb.lb

bb.la:                                            ; preds = %bb.lb, %bb.ky
  %.pn89 = phi { ptr, i32 } [ %i.acj, %bb.lb ], [ %i.aci, %bb.ky ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.lf

bb.lb:                                            ; preds = %bb.kz
  %i.acj = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

bb.lc:                                            ; preds = %bb.kz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !17077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  invoke fastcc void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE6appendCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.as, ptr noalias noundef align 8 dereferenceable(24) %i.ar)
          to label %bb.le unwind label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.ack = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ar) #44
          to label %bb.lf unwind label %bb.ac

bb.le:                                            ; preds = %bb.lc
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ar)
          to label %bb.lh unwind label %bb.lg

bb.lf:                                            ; preds = %bb.lg, %bb.ld, %bb.la
  %.pn91 = phi { ptr, i32 } [ %i.acl, %bb.lg ], [ %i.ack, %bb.ld ], [ %.pn89, %bb.la ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %.thread1456

bb.lg:                                            ; preds = %bb.le
  %i.acl = landingpad { ptr, i32 }
          cleanup
  br label %bb.lf

bb.lh:                                            ; preds = %bb.le
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  invoke void @_RNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB5_13CreateBuilder3new(ptr noalias noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %i.ai)
          to label %bb.lj unwind label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.acm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %.thread1456

bb.lj:                                            ; preds = %bb.lh
  %i.acn = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.aco = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 3 uses
  %i.acp = load ptr, ptr %i.aco, align 8, !alias.scope !17089, !noundef !10 ; 3 uses
  %.not.i467 = icmp eq ptr %i.acp, null
  br i1 %.not.i467, label %bb.lk, label %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit469, !prof !49

bb.lk:                                            ; preds = %bb.lj
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @394, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @395) #49
          to label %.noexc468 unwind label %bb.nf

.noexc468:                                        ; preds = %bb.lk
  unreachable

_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit469: ; preds = %bb.lj
  %i.acq = getelementptr i8, ptr %1, i64 608
  %.val314 = load ptr, ptr %i.acq, align 8        ; 2 uses
  %i.acr = atomicrmw add ptr %i.acp, i64 1 monotonic, align 8
  %i.acs = icmp slt i64 %i.acr, 0
  br i1 %i.acs, label %bb.ll, label %bb.ln

bb.ll:                                            ; preds = %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit469
  call void @llvm.trap()
  unreachable

bb.lm:                                            ; preds = %bb.ln
  %i.act = landingpad { ptr, i32 }
          cleanup
  br label %bb.ng

bb.ln:                                            ; preds = %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit469
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val314) ]
  invoke void @_RNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB5_13CreateBuilder14with_log_store(ptr noalias noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %i.aj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(368) %i.ai, ptr noundef nonnull %i.acp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.val314)
          to label %bb.lo unwind label %bb.lm

bb.lo:                                            ; preds = %bb.ln
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %.sroa.01050.0.copyload = load i64, ptr %i.as, align 8
  %.sroa.51051.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.51051.0.copyload = load ptr, ptr %.sroa.51051.0..sroa_idx, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %.sroa.61052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.61052.0.copyload = load i64, ptr %.sroa.61052.0..sroa_idx, align 8 ; 2 uses
  %i.acu = icmp ult i64 %.sroa.61052.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.acu)
  %i.acv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.51051.0.copyload, i64 %.sroa.61052.0.copyload
  store ptr %.sroa.51051.0.copyload, ptr %i.ah, align 8, !alias.scope !17092
  %.sroa.51047.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.sroa.51051.0.copyload, ptr %.sroa.51047.0..sroa_idx, align 8, !alias.scope !17092
  %.sroa.61048.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.sroa.01050.0.copyload, ptr %.sroa.61048.0..sroa_idx, align 8, !alias.scope !17092
  %.sroa.71049.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.acv, ptr %.sroa.71049.0..sroa_idx, align 8, !alias.scope !17092
  invoke void @_RINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB6_13CreateBuilder12with_columnsNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterRB1v_EEEBa_(ptr noalias noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %i.ak, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(368) %i.aj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ah)
          to label %bb.lp unwind label %.thread1482

.thread1482:                                      ; preds = %bb.lo
  %i.acw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %.thread1462

bb.lp:                                            ; preds = %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.acx = getelementptr inbounds nuw i8, ptr %1, i64 749 ; 2 uses
  store i8 0, ptr %i.acx, align 1
  %i.acy = getelementptr inbounds nuw i8, ptr %1, i64 1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.acy, i64 48, i1 false)
  invoke void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ag, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.lq unwind label %bb.ne

bb.lq:                                            ; preds = %bb.lp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB6_13CreateBuilder22with_partition_columnsNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterB1F_EEBa_(ptr noalias noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(368) %i.ak, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.ag)
          to label %bb.ls unwind label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.acz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %.thread1478

bb.ls:                                            ; preds = %bb.lq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.ada = getelementptr inbounds nuw i8, ptr %1, i64 750 ; 2 uses
  store i8 0, ptr %i.ada, align 2
  %i.adb = getelementptr inbounds nuw i8, ptr %1, i64 784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.adb, i64 24, i1 false)
  invoke void @_RINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB6_13CreateBuilder12with_actionsINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtBa_6kernel6models6ActionEEBa_(ptr noalias noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(368) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.af)
          to label %bb.lt unwind label %.thread1474

.thread1474:                                      ; preds = %bb.ls
  %i.adc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %.thread1462

bb.lt:                                            ; preds = %bb.ls
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.add = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.ade = load i8, ptr %i.add, align 8, !range !294, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !17096)
  %i.adf = getelementptr inbounds nuw i8, ptr %i.am, i64 361
  store i8 %i.ade, ptr %i.adf, align 1, !alias.scope !17099, !noalias !17096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.an, ptr noundef nonnull align 8 dereferenceable(368) %i.am, i64 368, i1 false), !alias.scope !17101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.adg = getelementptr inbounds nuw i8, ptr %1, i64 754
  store i8 0, ptr %i.adg, align 2
  %i.adh = getelementptr inbounds nuw i8, ptr %1, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.adh, i64 48, i1 false)
  invoke void @_RINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB6_13CreateBuilder18with_configurationNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1B_INtNtCsbvkFyIu7lgC_4core6option6OptionB1B_EEEBa_(ptr noalias noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %i.ao, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(368) %i.an, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ae)
          to label %bb.lu unwind label %.thread1468

.thread1468:                                      ; preds = %bb.lt
  %i.adi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %.thread1462

bb.lu:                                            ; preds = %bb.lt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.adj = getelementptr inbounds nuw i8, ptr %1, i64 753
  store i8 0, ptr %i.adj, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ad, ptr noundef nonnull align 8 dereferenceable(88) %i.acn, i64 88, i1 false)
  invoke void @_RNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB5_13CreateBuilder22with_commit_properties(ptr noalias noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %i.ap, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(368) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.ad)
          to label %bb.lv unwind label %.thread1465

.thread1465:                                      ; preds = %bb.lu
  %i.adk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %.thread1462

bb.lv:                                            ; preds = %bb.lu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.adl = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.adm = load i64, ptr %i.adl, align 8, !range !59, !noundef !10
  %.not111 = icmp eq i64 %i.adm, -9223372036854775808
  br i1 %.not111, label %bb.lx, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.adn = getelementptr inbounds nuw i8, ptr %1, i64 752
  store i8 0, ptr %i.adn, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.adl, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB6_13CreateBuilder15with_table_nameNtNtCs6Po7BT7Nknu_5alloc6string6StringEBa_(ptr noalias noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(368) %i.ap, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac)
          to label %bb.lz unwind label %bb.ly

bb.lx:                                            ; preds = %bb.lz, %bb.lv
  %i.ado = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.adp = load i64, ptr %i.ado, align 8, !range !59, !noundef !10
  %.not112 = icmp eq i64 %i.adp, -9223372036854775808
  br i1 %.not112, label %bb.mb, label %bb.ma

bb.ly:                                            ; preds = %bb.lw
  %i.adq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %.thread1462

bb.lz:                                            ; preds = %bb.lw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.ap, ptr noundef nonnull align 8 dereferenceable(368) %i.ab, i64 368, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.lx

bb.ma:                                            ; preds = %bb.lx
  %i.adr = getelementptr inbounds nuw i8, ptr %1, i64 751
  store i8 0, ptr %i.adr, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ado, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB6_13CreateBuilder12with_commentNtNtCs6Po7BT7Nknu_5alloc6string6StringEBa_(ptr noalias noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(368) %i.ap, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa)
          to label %bb.md unwind label %bb.mc

bb.mb:                                            ; preds = %bb.md, %bb.lx
  %i.ads = getelementptr inbounds nuw i8, ptr %1, i64 688
  %.sroa.111258.368..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.111258, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.111258.368..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ads, i64 16, i1 false)
  %i.adt = load <2 x i64>, ptr %i.ap, align 16    ; 3 uses
  %.sroa.51253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.51253.0.copyload = load i64, ptr %.sroa.51253.0..sroa_idx, align 16 ; 3 uses
  %.sroa.61254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.61254.0.copyload = load i64, ptr %.sroa.61254.0..sroa_idx, align 8 ; 3 uses
  %.sroa.71255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.sroa.71255.0.copyload = load i64, ptr %.sroa.71255.0..sroa_idx, align 16 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 3 uses
  %.sroa.91256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %.sroa.91256.0.copyload = load i64, ptr %.sroa.91256.0..sroa_idx, align 16 ; 3 uses
  %.sroa.101257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.70, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.101257.0..sroa_idx, i64 56, i1 false)
  %.sroa.111258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %.sroa.111258, ptr noundef nonnull align 16 dereferenceable(256) %.sroa.111258.0..sroa_idx, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.au)
          to label %bb.mg unwind label %bb.mf

bb.mc:                                            ; preds = %bb.ma
  %i.adu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %.thread1462

bb.md:                                            ; preds = %bb.ma
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.ap, ptr noundef nonnull align 8 dereferenceable(368) %i.z, i64 368, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.mb

bb.me:                                            ; preds = %bb.kt, %.thread1462, %bb.mf
  %.pn122.pn = phi { ptr, i32 } [ %i.aca, %bb.kt ], [ %i.adv, %bb.mf ], [ %.pn113.pn, %.thread1462 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.nj

bb.mf:                                            ; preds = %bb.mb
  %i.adv = landingpad { ptr, i32 }
          cleanup
  br label %bb.me

bb.mg:                                            ; preds = %bb.mb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.experimental.noalias.scope.decl(metadata !17102)
  call void @llvm.experimental.noalias.scope.decl(metadata !17105)
  %i.adw = load ptr, ptr %i.aw, align 8, !alias.scope !17108, !nonnull !10, !noundef !10
  %i.adx = atomicrmw sub ptr %i.adw, i64 1 release, align 8, !noalias !17108
  %i.ady = icmp eq i64 %i.adx, 1
  br i1 %i.ady, label %bb.mh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit477

bb.mh:                                            ; preds = %bb.mg
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aw) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit477 unwind label %bb.mi

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit500: ; preds = %bb.nj, %bb.nk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit, %bb.mi
  %.pn126 = phi { ptr, i32 } [ %i.adz, %bb.mi ], [ %.pn85, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.pn122.pn.pn, %bb.nk ], [ %.pn122.pn.pn, %bb.nj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit

bb.mi:                                            ; preds = %bb.ni, %bb.mh
  %i.adz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit500

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit477: ; preds = %bb.mg, %bb.mh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.aea = getelementptr inbounds nuw i8, ptr %1, i64 808
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.aea)
          to label %bb.mk unwind label %bb.mj

bb.mj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit477
  %i.aeb = landingpad { ptr, i32 }
          cleanup
  br label %.body458

bb.mk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit477
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ach)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit479 unwind label %bb.em

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit479: ; preds = %bb.mk
  store i8 0, ptr %i.acx, align 1
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aba)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit481 unwind label %bb.ml

bb.ml:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit479
  %i.aec = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit481: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit479
  store i8 0, ptr %i.ada, align 2
  store i8 0, ptr %i.abd, align 1
  %i.aed = getelementptr inbounds nuw i8, ptr %1, i64 746
  store i8 0, ptr %i.aed, align 2
  %i.aee = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17109)
  call void @llvm.experimental.noalias.scope.decl(metadata !17112)
  %i.aef = load ptr, ptr %i.aee, align 8, !alias.scope !17115, !nonnull !10, !noundef !10
  %i.aeg = atomicrmw sub ptr %i.aef, i64 1 release, align 8, !noalias !17115
  %i.aeh = icmp eq i64 %i.aeg, 1
  br i1 %i.aeh, label %bb.mm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit483

bb.mm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit481
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aee) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit483 unwind label %bb.mn

bb.mn:                                            ; preds = %bb.sw, %bb.mm
  %i.aei = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit483: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit481, %bb.mm
  call void @llvm.experimental.noalias.scope.decl(metadata !17116)
  %i.aej = load ptr, ptr %i.aco, align 8, !alias.scope !17116, !noundef !10 ; 2 uses
  %i.aek = icmp eq ptr %i.aej, null
  br i1 %i.aek, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit, label %bb.mo

bb.mo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit483
  %i.ael = atomicrmw sub ptr %i.aej, i64 1 release, align 8, !noalias !17119
  %i.aem = icmp eq i64 %i.ael, 1
  br i1 %i.aem, label %bb.mp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit

bb.mp:                                            ; preds = %bb.mo
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aco) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit unwind label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.aen = landingpad { ptr, i32 }
          cleanup
  %i.aeo = getelementptr inbounds nuw i8, ptr %1, i64 432
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.aeo) #44
          to label %bb.mr unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit: ; preds = %bb.mo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit483, %bb.mp
  %i.aep = getelementptr inbounds nuw i8, ptr %1, i64 432
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.aep)
          to label %bb.mu unwind label %bb.mt

bb.mr:                                            ; preds = %bb.mt, %bb.mq
  %.pn116 = phi { ptr, i32 } [ %i.aet, %bb.mt ], [ %i.aen, %bb.mq ] ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.aer = load ptr, ptr %i.aeq, align 8, !alias.scope !17124, !noundef !10
  %i.aes = icmp eq ptr %i.aer, null
  br i1 %i.aes, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aeq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ac

bb.mt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit
  %i.aet = landingpad { ptr, i32 }
          cleanup
  br label %bb.mr

bb.mu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit
  %i.aeu = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.aev = load ptr, ptr %i.aeu, align 8, !alias.scope !17127, !noundef !10
  %i.aew = icmp eq ptr %i.aev, null
  br i1 %i.aew, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit487, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aeu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit487 unwind label %bb.mw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.mr, %bb.ms, %bb.mw
  %.pn118 = phi { ptr, i32 } [ %i.aey, %bb.mw ], [ %.pn116, %bb.ms ], [ %.pn116, %bb.mr ]
  %i.aex = getelementptr inbounds nuw i8, ptr %1, i64 504
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aex)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit489 unwind label %bb.ac

bb.mw:                                            ; preds = %bb.mv
  %i.aey = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit487: ; preds = %bb.mu, %bb.mv
  %i.aez = getelementptr inbounds nuw i8, ptr %1, i64 504
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aez)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit491 unwind label %bb.mz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit489: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit, %bb.mz
  %.pn120 = phi { ptr, i32 } [ %i.aff, %bb.mz ], [ %.pn118, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17130)
  %i.afb = load ptr, ptr %i.afa, align 8, !alias.scope !17130, !noundef !10 ; 2 uses
  %i.afc = icmp eq ptr %i.afb, null
  br i1 %i.afc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit, label %bb.mx

bb.mx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit489
  %i.afd = atomicrmw sub ptr %i.afb, i64 1 release, align 8, !noalias !17133
  %i.afe = icmp eq i64 %i.afd, 1
  br i1 %i.afe, label %bb.my, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit

bb.my:                                            ; preds = %bb.mx
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.afa) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit unwind label %bb.ac

bb.mz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit487
  %i.aff = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit489

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit491: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit487
  %i.afg = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17138)
  %i.afh = load ptr, ptr %i.afg, align 8, !alias.scope !17138, !noundef !10 ; 2 uses
  %i.afi = icmp eq ptr %i.afh, null
  br i1 %i.afi, label %bb.nd, label %bb.na

bb.na:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit491
  %i.afj = atomicrmw sub ptr %i.afh, i64 1 release, align 8, !noalias !17141
  %i.afk = icmp eq i64 %i.afj, 1
  br i1 %i.afk, label %bb.nb, label %bb.nd

bb.nb:                                            ; preds = %bb.na
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.afg) #48
          to label %bb.nd unwind label %bb.nc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit: ; preds = %bb.ux, %bb.uw, %bb.uy, %bb.ua, %.body656, %bb.ub, %bb.mx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit489, %bb.my, %bb.nc
  %.pn281 = phi { ptr, i32 } [ %i.afn, %bb.nc ], [ %.pn120, %bb.mx ], [ %.pn279, %bb.ua ], [ %.pn120, %bb.my ], [ %.pn120, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit489 ], [ %.pn279, %bb.ub ], [ %.pn279, %.body656 ], [ %.pn260.pn, %bb.uy ], [ %.pn260.pn, %bb.uw ], [ %.pn260.pn, %bb.ux ]
  %i.afl = getelementptr inbounds nuw i8, ptr %1, i64 751
  %i.afm = getelementptr inbounds nuw i8, ptr %1, i64 747
  store i8 0, ptr %i.afm, align 1
  store i32 0, ptr %i.afl, align 1
  store i8 2, ptr %i.dp, align 8
  resume { ptr, i32 } %.pn281

bb.nc:                                            ; preds = %bb.ue, %bb.nb
  %i.afn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit

bb.nd:                                            ; preds = %bb.ue, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_.exit, %bb.ud, %bb.nb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit491, %bb.na
  %.sroa.231058.5 = phi i64 [ %.sroa.51253.0.copyload, %bb.nb ], [ %.sroa.51253.0.copyload, %bb.na ], [ %.sroa.51253.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit491 ], [ %.sroa.231058.2, %bb.ud ], [ %.sroa.231058.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_.exit ], [ %.sroa.231058.2, %bb.ue ]
  %.sroa.58.5 = phi i64 [ %.sroa.71255.0.copyload, %bb.nb ], [ %.sroa.71255.0.copyload, %bb.na ], [ %.sroa.71255.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit491 ], [ %.sroa.58.2, %bb.ud ], [ %.sroa.58.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_.exit ], [ %.sroa.58.2, %bb.ue ]
  %.sroa.63.5 = phi i64 [ %.sroa.8.0.copyload, %bb.nb ], [ %.sroa.8.0.copyload, %bb.na ], [ %.sroa.8.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit491 ], [ %.sroa.63.2, %bb.ud ], [ %.sroa.63.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_.exit ], [ %.sroa.63.2, %bb.ue ]
  %.sroa.67.5 = phi i64 [ %.sroa.91256.0.copyload, %bb.nb ], [ %.sroa.91256.0.copyload, %bb.na ], [ %.sroa.91256.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit491 ], [ %.sroa.67.2, %bb.ud ], [ %.sroa.67.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_.exit ], [ %.sroa.67.2, %bb.ue ]
  %.sroa.44.sroa.0.5 = phi i64 [ %.sroa.61254.0.copyload, %bb.nb ], [ %.sroa.61254.0.copyload, %bb.na ], [ %.sroa.61254.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit491 ], [ %.sroa.44.sroa.0.2, %bb.ud ], [ %.sroa.44.sroa.0.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_.exit ], [ %.sroa.44.sroa.0.2, %bb.ue ]
  %3 = phi <2 x i64> [ %i.adt, %bb.nb ], [ %i.adt, %bb.na ], [ %i.adt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit491 ], [ <i64 -9223372036854775808, i64 undef>, %bb.ud ], [ <i64 -9223372036854775808, i64 undef>, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_.exit ], [ <i64 -9223372036854775808, i64 undef>, %bb.ue ]
  %.sink1782 = getelementptr inbounds nuw i8, ptr %1, i64 751
  %.sink1825 = getelementptr inbounds nuw i8, ptr %1, i64 747
  store i8 0, ptr %.sink1825, align 1
  store i32 0, ptr %.sink1782, align 1
  store <2 x i64> %3, ptr %0, align 16
  %.sroa.231058.0..sroa_idx1059 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.231058.5, ptr %.sroa.231058.0..sroa_idx1059, align 16
  %.sroa.44.0..sroa_idx1062 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.44.sroa.0.5, ptr %.sroa.44.0..sroa_idx1062, align 8
  %.sroa.58.0..sroa_idx1072 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.58.5, ptr %.sroa.58.0..sroa_idx1072, align 16
  %.sroa.63.0..sroa_idx1085 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.63.5, ptr %.sroa.63.0..sroa_idx1085, align 8
  %.sroa.67.0..sroa_idx1094 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.67.5, ptr %.sroa.67.0..sroa_idx1094, align 16
  %.sroa.70.0..sroa_idx1103 = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.70.0..sroa_idx1103, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.70, i64 56, i1 false)
  %.sroa.71.0..sroa_idx1105 = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.71.0..sroa_idx1105, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.111258, i64 272, i1 false)
  br label %common.ret

bb.ne:                                            ; preds = %bb.lp
  %i.afo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6create13CreateBuilderEBM_(ptr noalias noundef align 8 dereferenceable(368) %i.ak) #44
          to label %.thread1478 unwind label %bb.ac

bb.nf:                                            ; preds = %bb.lk
  %i.afp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6create13CreateBuilderEBM_(ptr noalias noundef align 8 dereferenceable(368) %i.ai) #44
          to label %bb.ng unwind label %bb.ac

.thread1478:                                      ; preds = %bb.ne, %bb.lr
  %.pn100.pn.ph = phi { ptr, i32 } [ %i.acz, %bb.lr ], [ %i.afo, %bb.ne ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %.thread1462

bb.ng:                                            ; preds = %bb.nf, %bb.lm
  %.pn931445 = phi { ptr, i32 } [ %i.afp, %bb.nf ], [ %i.act, %bb.lm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %.thread1456

.thread1462:                                      ; preds = %bb.ly, %bb.mc, %.thread1482, %.thread1478, %.thread1474, %.thread1468, %.thread1465, %bb.kw, %.thread1456
  %.pn113.pn = phi { ptr, i32 } [ %.pn1131459, %.thread1456 ], [ %i.acw, %.thread1482 ], [ %i.acg, %bb.kw ], [ %i.adu, %bb.mc ], [ %.pn100.pn.ph, %.thread1478 ], [ %i.adk, %.thread1465 ], [ %i.adi, %.thread1468 ], [ %i.adq, %bb.ly ], [ %i.adc, %.thread1474 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.au) #44
          to label %bb.me unwind label %bb.ac

.thread1456:                                      ; preds = %bb.lf, %bb.li, %bb.ng
  %.pn1131459 = phi { ptr, i32 } [ %.pn931445, %bb.ng ], [ %.pn91, %bb.lf ], [ %i.acm, %bb.li ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.as) #44
          to label %.thread1462 unwind label %bb.ac

bb.nh:                                            ; preds = %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.experimental.noalias.scope.decl(metadata !17146)
  call void @llvm.experimental.noalias.scope.decl(metadata !17149)
  %i.afq = load ptr, ptr %i.aw, align 8, !alias.scope !17152, !nonnull !10, !noundef !10
  %i.afr = atomicrmw sub ptr %i.afq, i64 1 release, align 8, !noalias !17152
  %i.afs = icmp eq i64 %i.afr, 1
  br i1 %i.afs, label %bb.ni, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit498

bb.ni:                                            ; preds = %bb.nh
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aw) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit498 unwind label %bb.mi

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit498: ; preds = %bb.nh, %bb.ni
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit608

bb.nj:                                            ; preds = %bb.me, %bb.kr
  %.pn122.pn.pn = phi { ptr, i32 } [ %.pn122.pn, %bb.me ], [ %i.aby, %bb.kr ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17153)
  call void @llvm.experimental.noalias.scope.decl(metadata !17156)
  %i.aft = load ptr, ptr %i.aw, align 8, !alias.scope !17159, !nonnull !10, !noundef !10
  %i.afu = atomicrmw sub ptr %i.aft, i64 1 release, align 8, !noalias !17159
  %i.afv = icmp eq i64 %i.afu, 1
  br i1 %i.afv, label %bb.nk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit500

bb.nk:                                            ; preds = %bb.nj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aw) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit500 unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.kn, %bb.ko, %bb.kl
  %.pn85 = phi { ptr, i32 } [ %i.abp, %bb.kl ], [ %i.abr, %bb.ko ], [ %i.abr, %bb.kn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit500

bb.nl:                                            ; preds = %bb.kj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit608

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.jy, %bb.kc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit500, %bb.ki
  %.pn238.pn = phi { ptr, i32 } [ %.pn236, %bb.jy ], [ %i.abk, %bb.ki ], [ %.pn126, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit500 ], [ %i.aaz, %bb.kc ]
  %i.afw = getelementptr inbounds nuw i8, ptr %1, i64 808
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.afw) #44
          to label %.body458 unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit666: ; preds = %bb.uf, %bb.nm, %.body448
  %.pn234 = phi { ptr, i32 } [ %i.afz, %bb.nm ], [ %.pn232, %.body448 ], [ %.pn232, %bb.uf ]
  %i.afx = getelementptr inbounds nuw i8, ptr %1, i64 748
  store i8 0, ptr %i.afx, align 4
  %i.afy = getelementptr inbounds nuw i8, ptr %1, i64 1744
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.afy) #44
          to label %bb.jy unwind label %bb.ac

bb.nm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit589, %bb.ka
  %i.afz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit666

bb.nn:                                            ; preds = %bb.ka
  %i.aga = extractvalue { i64, i64 } %i.aay, 0
  %i.agb = extractvalue { i64, i64 } %i.aay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aax, ptr noundef nonnull align 8 dereferenceable(32) @56, i64 32, i1 false)
  %.sroa.4.0..sroa_idx.i453 = getelementptr inbounds nuw i8, ptr %1, i64 1600
  store i64 %i.aga, ptr %.sroa.4.0..sroa_idx.i453, align 8, !alias.scope !17160
  %.sroa.5.0..sroa_idx.i454 = getelementptr inbounds nuw i8, ptr %1, i64 1608
  store i64 %i.agb, ptr %.sroa.5.0..sroa_idx.i454, align 8, !alias.scope !17160
  %i.agc = getelementptr inbounds nuw i8, ptr %1, i64 748
  store i8 1, ptr %i.agc, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aaw)
          to label %_RNvXs9_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.agd = landingpad { ptr, i32 }
          cleanup
  br label %bb.rl

_RNvXs9_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.nn
  %i.age = getelementptr inbounds nuw i8, ptr %1, i64 832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17163
  store i64 0, ptr %i.g, align 8, !noalias !17163
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !17163
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !17163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17163
  %i.agf = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 1610612768, ptr %i.agf, align 8, !noalias !17163
  %.sroa.4.0..sroa_idx.i.i502 = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i502, align 4, !noalias !17163
  %.sroa.5.0..sroa_idx.i.i503 = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i503, align 2, !noalias !17163
  store ptr %i.g, ptr %i.f, align 8, !noalias !17163
  %i.agg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @224, ptr %i.agg, align 8, !noalias !17163
  %i.agh = invoke noundef zeroext i1 @_RNvXs3_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.nq unwind label %bb.np, !noalias !17170

bb.np:                                            ; preds = %bb.nr, %_RNvXs9_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  %i.agi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #44
          to label %.body505 unwind label %bb.ns, !noalias !17170

bb.nq:                                            ; preds = %_RNvXs9_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  br i1 %i.agh, label %bb.nr, label %bb.nt, !prof !49

bb.nr:                                            ; preds = %bb.nq
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @810, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @244, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @812) #46
          to label %.noexc.i.i504 unwind label %bb.np, !noalias !17170

.noexc.i.i504:                                    ; preds = %bb.nr
  unreachable

bb.ns:                                            ; preds = %bb.np
  %i.agj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !17170
  unreachable

.body505:                                         ; preds = %bb.np
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.cm) #44
          to label %bb.rl unwind label %bb.ac

bb.nt:                                            ; preds = %bb.nq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.age, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !17171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !17163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17163
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i508 unwind label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.agk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %.body509 unwind label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.agl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i508: ; preds = %bb.nt
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %bb.nx unwind label %bb.nw

bb.nw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i508
  %i.agm = landingpad { ptr, i32 }
          cleanup
  br label %.body509

.body509:                                         ; preds = %bb.nu, %bb.nw
  %eh.lpad-body510 = phi { ptr, i32 } [ %i.agm, %bb.nw ], [ %i.agk, %bb.nu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.rk

bb.nx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  %i.agn = getelementptr i8, ptr %1, i64 840
  %.val315 = load ptr, ptr %i.agn, align 8, !nonnull !10, !noundef !10
  %i.ago = getelementptr i8, ptr %1, i64 848
  %.val316 = load i64, ptr %i.ago, align 8, !noundef !10 ; 3 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %1, i64 1840 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17172)
  %i.agq = getelementptr inbounds nuw i8, ptr %1, i64 1864 ; 4 uses
  store i64 0, ptr %i.agq, align 8, !alias.scope !17175
  %.sroa.5765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1872 ; 2 uses
  store i64 %.val316, ptr %.sroa.5765.0..sroa_idx, align 8, !alias.scope !17175
  %.sroa.6766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1880 ; 2 uses
  store ptr %.val315, ptr %.sroa.6766.0..sroa_idx, align 8, !alias.scope !17175
  %.sroa.7767.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1888 ; 2 uses
  store i64 %.val316, ptr %.sroa.7767.0..sroa_idx, align 8, !alias.scope !17175
  %.sroa.8768.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1896 ; 4 uses
  store i64 0, ptr %.sroa.8768.0..sroa_idx, align 8, !alias.scope !17175
  %.sroa.9769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1904 ; 2 uses
  store i64 %.val316, ptr %.sroa.9769.0..sroa_idx, align 8, !alias.scope !17175
  %.sroa.10770.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1912 ; 3 uses
  store i32 47, ptr %.sroa.10770.0..sroa_idx, align 8, !alias.scope !17175
  %.sroa.11771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1916
  store i32 47, ptr %.sroa.11771.0..sroa_idx, align 4, !alias.scope !17175
  %.sroa.12772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1920 ; 2 uses
  store i8 1, ptr %.sroa.12772.0..sroa_idx, align 8, !alias.scope !17175
  %.sroa.13774.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1928 ; 2 uses
  store i8 1, ptr %.sroa.13774.0..sroa_idx, align 8, !alias.scope !17175
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1929 ; 3 uses
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 1, !alias.scope !17175
  store i64 0, ptr %i.agp, align 8, !alias.scope !17177, !noalias !17172
  %i.agr = invoke fastcc { ptr, i64 } @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtBa_3str4iter5SplitcEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.agp)
          to label %.preheader unwind label %bb.ny

.preheader:                                       ; preds = %bb.nx
  %.sroa.4.0..sroa_idx.i.i514 = getelementptr inbounds nuw i8, ptr %1, i64 1848 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i515 = getelementptr inbounds nuw i8, ptr %1, i64 1856
  %i.ags = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.agt = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i536 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.5.0..sroa_idx.i.i537 = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.agu = getelementptr inbounds nuw i8, ptr %1, i64 1456
  %i.agv = getelementptr inbounds nuw i8, ptr %1, i64 1408
  %i.agw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.agx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i550 = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.5.0..sroa_idx.i.i551 = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.agy = getelementptr inbounds nuw i8, ptr %1, i64 1504 ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %1, i64 1528
  %i.aha = getelementptr inbounds nuw i8, ptr %1, i64 1536
  %i.ahb = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %.sroa.8821.0..sroa_idx822 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.4824.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.5826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 4 uses
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 2 uses
  %.sroa.10815.sroa.7.0..sroa.10815.16..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %.sroa.10815.sroa.11.0..sroa.10815.16..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %.sroa.10815.sroa.13.0..sroa.10815.16..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %.sroa.4830.sroa.4.0..sroa.4830.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.4830.sroa.6.0..sroa.4830.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %.sroa.4830.sroa.7.0..sroa.4830.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i577 = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.5.0..sroa_idx.i.i578 = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %bb.nz

bb.ny:                                            ; preds = %bb.nx
  %i.ahf = landingpad { ptr, i32 }
          cleanup
  br label %bb.rk

bb.nz:                                            ; preds = %.preheader, %bb.rb
  %.pn134 = phi { ptr, i64 } [ %i.anv, %bb.rb ], [ %i.agr, %.preheader ] ; 2 uses
  %.sroa.017.0 = extractvalue { ptr, i64 } %.pn134, 0 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17178)
  call void @llvm.experimental.noalias.scope.decl(metadata !17181)
  call void @llvm.experimental.noalias.scope.decl(metadata !17184)
  %i.ahg = load i64, ptr %i.agp, align 8, !range !343, !alias.scope !17186, !noalias !17184, !noundef !10
end_hunk_3
begin_hunk_4_@_RNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB7_21ConvertToDeltaBuilder19into_create_builder0Bb_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  %i.alx = load i64, ptr %i.ci, align 8, !range !59, !alias.scope !17279, !noundef !10
  %i.aly = icmp eq i64 %i.alx, -9223372036854775808
  br i1 %i.aly, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.pt

bb.pt:                                            ; preds = %_RNvMs2_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE6insertCs14kWLkQVSKO_14deltalake_core.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ci)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.thread1518

bb.pu:                                            ; preds = %bb.ps
  %i.alz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  br label %.sink.split

.thread1518:                                      ; preds = %bb.pt
  %i.ama = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs2_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE6insertCs14kWLkQVSKO_14deltalake_core.exit, %bb.pt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  br label %bb.pi

.loopexit:                                        ; preds = %.lr.ph.i.i.i542
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.rk

.loopexit.split-lp:                               ; preds = %bb.pj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.rk

select.unfold:                                    ; preds = %bb.pi, %._crit_edge.i.i.i543
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #49
          to label %.noexc unwind label %bb.pv

.noexc:                                           ; preds = %select.unfold
  unreachable

bb.pv:                                            ; preds = %select.unfold
  %i.amb = landingpad { ptr, i32 }
          cleanup
  br label %bb.rk

bb.pw:                                            ; preds = %.noexc547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  %i.amc = icmp eq i64 %i.akf, 26
  br i1 %i.amc, label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.pw
  %i.amd = load i128, ptr %i.akg, align 1
  %i.ame = xor i128 %i.amd, 106833217634486274137915387105503633247
  %i.amf = getelementptr i8, ptr %i.akg, i64 10
  %i.amg = load i128, ptr %i.amf, align 1
  %i.amh = xor i128 %i.amg, 126771516110796041781760483151730988353
  %i.ami = or i128 %i.ame, %i.amh
  %i.amj = icmp ne i128 %i.ami, 0
  %i.amk = zext i1 %i.amj to i32
  %i.aml = icmp eq i32 %i.amk, 0
  br i1 %i.aml, label %bb.qs, label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.px:                                            ; preds = %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.amm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  br label %.body562

_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.pw, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  %i.amn = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 %i.ajk
  invoke void @_RNvMs3_Cs8ojr27oueVZ_16percent_encodingNtB5_13PercentDecode11decode_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cb, ptr noundef nonnull %i.akg, ptr noundef nonnull %i.amn)
          to label %bb.py unwind label %bb.px

bb.py:                                            ; preds = %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !17282)
  %i.amo = load i64, ptr %i.cb, align 8, !range !927, !alias.scope !17285, !noalias !17282, !noundef !10 ; 2 uses
  %i.amp = icmp eq i64 %i.amo, -9223372036854775807
  %i.amq = load <2 x i64>, ptr %.sroa.8821.0..sroa_idx822, align 8, !alias.scope !17287 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  br i1 %i.amp, label %bb.qp, label %bb.qb

bb.pz:                                            ; preds = %bb.qj, %bb.qd, %bb.qa
  %.pn211 = phi { ptr, i32 } [ %i.amr, %bb.qa ], [ %i.amw, %bb.qd ], [ %i.ane, %bb.qj ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.cc) #44
          to label %.body562 unwind label %bb.ac

bb.qa:                                            ; preds = %bb.qe
  %i.amr = landingpad { ptr, i32 }
          cleanup
  br label %bb.pz

bb.qb:                                            ; preds = %bb.py
  store i64 %i.amo, ptr %i.cc, align 8
  store <2 x i64> %i.amq, ptr %.sroa.4824.0..sroa_idx, align 8
  %i.ams = getelementptr inbounds i8, ptr %i.alf, i64 -72 ; 2 uses
  %i.amt = load i8, ptr %i.ams, align 8, !range !4524, !noundef !10
  %i.amu = icmp eq i8 %i.amt, 0
  br i1 %i.amu, label %bb.qc, label %bb.qk

bb.qc:                                            ; preds = %bb.qb
  %i.amv = invoke { ptr, i64 } @_RNvXse_NtCs6Po7BT7Nknu_5alloc6borrowINtB5_3CoweEINtNtCsbvkFyIu7lgC_4core7convert5AsRefeE6as_refCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cc)
          to label %bb.qe unwind label %bb.qd     ; 2 uses

bb.qd:                                            ; preds = %bb.qc
  %i.amw = landingpad { ptr, i32 }
          cleanup
  br label %bb.pz

bb.qe:                                            ; preds = %bb.qc
  %i.amx = getelementptr inbounds i8, ptr %i.alf, i64 -71
  %i.amy = extractvalue { ptr, i64 } %i.amv, 0
  %i.amz = extractvalue { ptr, i64 } %i.amv, 1
  invoke void @_RNvMsp_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtNtB9_6schema13PrimitiveType12parse_scalar(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.ce, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.amx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.amy, i64 noundef %i.amz)
          to label %bb.qf unwind label %bb.qa

bb.qf:                                            ; preds = %bb.qe, %bb.ql
  %i.ana = load i64, ptr %i.cc, align 8, !range !59, !alias.scope !17288, !noundef !10
  %i.anb = icmp eq i64 %i.ana, -9223372036854775808
  br i1 %i.anb, label %bb.qn, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i561 unwind label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  %i.anc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %.body562 unwind label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.and = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i561: ; preds = %bb.qg
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %bb.qn unwind label %bb.qm

bb.qj:                                            ; preds = %bb.qk
  %i.ane = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %bb.pz

bb.qk:                                            ; preds = %bb.qb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  store ptr %i.ams, ptr %i.bz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  store ptr %i.bz, ptr %i.by, align 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5826.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ca, ptr noundef nonnull @188, ptr noundef nonnull %i.by)
          to label %bb.ql unwind label %bb.qj

bb.ql:                                            ; preds = %bb.qk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.515.0..sroa_idx, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ca, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  store i64 -9223372036854775782, ptr %i.ahc, align 16
  store i128 1, ptr %i.ce, align 16
  br label %bb.qf

.body562:                                         ; preds = %bb.px, %bb.qm, %bb.qh, %bb.pz
  %.pn213.pn = phi { ptr, i32 } [ %i.anc, %bb.qh ], [ %.pn211, %bb.pz ], [ %i.anf, %bb.qm ], [ %i.amm, %bb.px ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  br label %bb.qt

bb.qm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i561
  %i.anf = landingpad { ptr, i32 }
          cleanup
  br label %.body562

bb.qn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i561, %bb.qf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  %.pre1726 = load i128, ptr %i.ce, align 16, !range !15414, !alias.scope !17291, !noalias !17294
  %extract.t = trunc nuw i128 %.pre1726 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !17294)
  call void @llvm.experimental.noalias.scope.decl(metadata !17291)
  br i1 %extract.t, label %bb.qo, label %bb.qw

bb.qo:                                            ; preds = %bb.qn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.ahc, i64 96, i1 false), !noalias !17294
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.c)
          to label %bb.qv unwind label %bb.qu

bb.qp:                                            ; preds = %bb.py
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  %4 = extractelement <2 x i64> %i.amq, i64 0
  %i.ang = extractelement <2 x i64> %i.amq, i64 1
  br label %bb.qq

bb.qq:                                            ; preds = %bb.qv, %bb.qp
  %.sroa.231058.6 = phi i64 [ -9223372036854775704, %bb.qv ], [ -9223372036854775707, %bb.qp ]
  %.sroa.58.6 = phi i64 [ undef, %bb.qv ], [ %i.ang, %bb.qp ]
  %.sroa.44.sroa.0.6 = phi i64 [ undef, %bb.qv ], [ %4, %bb.qp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %.loopexit1784

bb.qr:                                            ; preds = %bb.qs
  %i.anh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  br label %bb.qt

bb.qs:                                            ; preds = %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  %i.ani = getelementptr inbounds i8, ptr %i.alf, i64 -72
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.cd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ani)
          to label %.thread1782 unwind label %bb.qr

.thread1782:                                      ; preds = %bb.qs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  store i64 -9223372036854775795, ptr %i.ahc, align 16
  br label %bb.qw

bb.qt:                                            ; preds = %.body562, %bb.qr, %bb.qu
  %.pn216 = phi { ptr, i32 } [ %i.anj, %bb.qu ], [ %i.anh, %bb.qr ], [ %.pn213.pn, %.body562 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %bb.rd

bb.qu:                                            ; preds = %bb.qo
  %i.anj = landingpad { ptr, i32 }
          cleanup
  br label %bb.qt

bb.qv:                                            ; preds = %bb.qo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17296
  br label %bb.qq

bb.qw:                                            ; preds = %.thread1782, %bb.qn
  %.sroa.10815.sroa.11.0.copyload = load i64, ptr %.sroa.10815.sroa.11.0..sroa.10815.16..sroa_idx.sroa_idx, align 16, !alias.scope !17296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4830.sroa.7.0..sroa.4830.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10815.sroa.13.0..sroa.10815.16..sroa_idx.sroa_idx, i64 56, i1 false)
  %i.ank = load <2 x i64>, ptr %i.ahc, align 16, !alias.scope !17296
  %i.anl = load <2 x i64>, ptr %.sroa.10815.sroa.7.0..sroa.10815.16..sroa_idx.sroa_idx, align 16, !alias.scope !17296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  store <2 x i64> %i.ank, ptr %i.cf, align 16
  store <2 x i64> %i.anl, ptr %.sroa.4830.sroa.4.0..sroa.4830.0..sroa_idx.sroa_idx, align 16
  store i64 %.sroa.10815.sroa.11.0.copyload, ptr %.sroa.4830.sroa.6.0..sroa.4830.0..sroa_idx.sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call void @llvm.experimental.noalias.scope.decl(metadata !17297)
  call void @llvm.experimental.noalias.scope.decl(metadata !17300)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17303
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.akb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc579 unwind label %.loopexit1599

.noexc579:                                        ; preds = %bb.qw
  %i.anm = load i64, ptr %i.b, align 8, !range !343, !noalias !17303, !noundef !10
  %i.ann = trunc nuw i64 %i.anm to i1
  %i.ano = load i64, ptr %i.ahd, align 8, !range !59, !noalias !17303, !noundef !10 ; 3 uses
  br i1 %i.ann, label %bb.qx, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i575, !prof !49

bb.qx:                                            ; preds = %.noexc579
  %i.anp = load i64, ptr %i.ahe, align 8, !noalias !17303
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ano, i64 %i.anp) #46
          to label %.noexc580 unwind label %.loopexit.split-lp1600

.noexc580:                                        ; preds = %bb.qx
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i575: ; preds = %.noexc579
  %i.anq = load ptr, ptr %i.ahe, align 8, !noalias !17303, !nonnull !10, !noundef !10 ; 2 uses
  %i.anr = icmp ule i64 %i.akb, %i.ano
  call void @llvm.assume(i1 %i.anr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17303
  br i1 %.not.i.i.i535, label %bb.qz, label %bb.qy

bb.qy:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i575
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.anq, ptr nonnull readonly align 1 %.sroa.017.0, i64 range(i64 0, -9223372036854775808) %i.akb, i1 false), !noalias !17309
  br label %bb.qz

bb.qz:                                            ; preds = %bb.qy, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i575
  store i64 %i.ano, ptr %i.bw, align 8, !alias.scope !17310, !noalias !17311
  store ptr %i.anq, ptr %.sroa.4.0..sroa_idx.i.i577, align 8, !alias.scope !17310, !noalias !17311
  store i64 %i.akb, ptr %.sroa.5.0..sroa_idx.i.i578, align 8, !alias.scope !17310, !noalias !17311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.bv, ptr noundef nonnull align 16 dereferenceable(96) %i.cf, i64 96, i1 false)
  invoke void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bx, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aax, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bw, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.bv)
          to label %_RNvMs2_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE6insertCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.rc

_RNvMs2_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE6insertCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.qz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %i.ans = load i64, ptr %i.bx, align 16, !range !17312, !alias.scope !17313, !noundef !10
  %i.ant = icmp eq i64 %i.ans, -9223372036854775792
  br i1 %i.ant, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ra

bb.ra:                                            ; preds = %_RNvMs2_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE6insertCs14kWLkQVSKO_14deltalake_core.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.bx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.thread1563

.thread1563:                                      ; preds = %bb.ra
  %i.anu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br label %bb.rd

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs2_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE6insertCs14kWLkQVSKO_14deltalake_core.exit, %bb.ra
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  %i.anv = invoke fastcc { ptr, i64 } @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtBa_3str4iter5SplitcEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.agp)
          to label %bb.rb unwind label %.thread

.thread:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit
  %i.anw = landingpad { ptr, i32 }
          cleanup
  br label %bb.rd

bb.rb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %bb.nz

bb.rc:                                            ; preds = %bb.qz
  %i.anx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br label %bb.rd

bb.rd:                                            ; preds = %bb.rc, %.thread1563, %.thread, %bb.qt, %bb.re
  %.pn226.pn = phi { ptr, i32 } [ %.pn216, %bb.qt ], [ %lpad.phi1603, %bb.re ], [ %i.anx, %bb.rc ], [ %i.anw, %.thread ], [ %i.anu, %.thread1563 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %bb.rk

.loopexit1599:                                    ; preds = %bb.qw
  %lpad.loopexit1601 = landingpad { ptr, i32 }
          cleanup
  br label %bb.re

.loopexit.split-lp1600:                           ; preds = %bb.qx
  %lpad.loopexit.split-lp1602 = landingpad { ptr, i32 }
          cleanup
  br label %bb.re

bb.re:                                            ; preds = %.loopexit.split-lp1600, %.loopexit1599
  %lpad.phi1603 = phi { ptr, i32 } [ %lpad.loopexit1601, %.loopexit1599 ], [ %lpad.loopexit.split-lp1602, %.loopexit.split-lp1600 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.cf) #44
          to label %bb.rd unwind label %bb.ac

.sink.split:                                      ; preds = %.thread1518, %bb.pu
  %.pn2011521.ph = phi { ptr, i32 } [ %i.alz, %bb.pu ], [ %i.ama, %.thread1518 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  br label %bb.rf

bb.rf:                                            ; preds = %.sink.split, %bb.rg
  %.pn2011521 = phi { ptr, i32 } [ %lpad.phi1597, %bb.rg ], [ %.pn2011521.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  br label %bb.rh

.loopexit1593:                                    ; preds = %bb.po
  %lpad.loopexit1595 = landingpad { ptr, i32 }
          cleanup
  br label %bb.rg

.loopexit.split-lp1594:                           ; preds = %bb.pp
  %lpad.loopexit.split-lp1596 = landingpad { ptr, i32 }
          cleanup
  br label %bb.rg

bb.rg:                                            ; preds = %.loopexit.split-lp1594, %.loopexit1593
  %lpad.phi1597 = phi { ptr, i32 } [ %lpad.loopexit1595, %.loopexit1593 ], [ %lpad.loopexit.split-lp1596, %.loopexit.split-lp1594 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.cj) #44
          to label %bb.rf unwind label %bb.ac

bb.rh:                                            ; preds = %bb.rf, %bb.pn
  %.pn201.pn = phi { ptr, i32 } [ %.pn2011521, %bb.rf ], [ %i.alp, %bb.pn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  br label %bb.rk

.loopexit1784:                                    ; preds = %bb.oy, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i, %bb.pr, %bb.qq, %bb.sm
  %.sroa.231058.7 = phi i64 [ -9223372036854775704, %bb.pr ], [ %.sroa.231058.6, %bb.qq ], [ %.sroa.231058.11, %bb.sm ], [ -9223372036854775704, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ], [ -9223372036854775704, %bb.oy ]
  %.sroa.58.7 = phi i64 [ undef, %bb.pr ], [ %.sroa.58.6, %bb.qq ], [ %.sroa.58.11, %bb.sm ], [ undef, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ], [ undef, %bb.oy ]
  %.sroa.63.7 = phi i64 [ undef, %bb.pr ], [ undef, %bb.qq ], [ %.sroa.63.10, %bb.sm ], [ undef, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ], [ undef, %bb.oy ]
  %.sroa.67.7 = phi i64 [ undef, %bb.pr ], [ undef, %bb.qq ], [ %.sroa.67.10, %bb.sm ], [ undef, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ], [ undef, %bb.oy ]
  %.sroa.44.sroa.0.7 = phi i64 [ undef, %bb.pr ], [ %.sroa.44.sroa.0.6, %bb.qq ], [ %.sroa.44.sroa.0.11, %bb.sm ], [ undef, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ], [ undef, %bb.oy ]
  %i.any = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.any)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i585 unwind label %bb.ri

bb.ri:                                            ; preds = %.loopexit1784
  %i.anz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.any)
          to label %.body448 unwind label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.aoa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i585: ; preds = %.loopexit1784
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.any)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit589 unwind label %bb.jx

bb.rk:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ok, %bb.pe, %bb.rh, %bb.ot, %bb.rd, %bb.pa, %bb.pv, %bb.js, %bb.ny, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit523, %.body509
  %.pn229.pn = phi { ptr, i32 } [ %i.ake, %bb.pa ], [ %.pn226.pn, %bb.rd ], [ %i.amb, %bb.pv ], [ %i.ais, %bb.ok ], [ %.pn201.pn, %bb.rh ], [ %lpad.phi1592, %bb.pe ], [ %i.ajj, %bb.ot ], [ %.pn192.pn, %bb.js ], [ %i.ajf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit523 ], [ %eh.lpad-body510, %.body509 ], [ %i.ahf, %bb.ny ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.aob = getelementptr inbounds nuw i8, ptr %1, i64 832
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aob) #44
          to label %.body448 unwind label %bb.ac

bb.rl:                                            ; preds = %.body505, %bb.no
  %.pn130 = phi { ptr, i32 } [ %i.agi, %.body505 ], [ %i.agd, %bb.no ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %.body448

bb.rm:                                            ; preds = %bb.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %.thread1575

bb.rn:                                            ; preds = %bb.jh, %bb.jj
  %.pn168 = phi { ptr, i32 } [ %i.zs, %bb.jj ], [ %i.zp, %bb.jh ]
  call void @llvm.experimental.noalias.scope.decl(metadata !17316)
  call void @llvm.experimental.noalias.scope.decl(metadata !17319)
  call void @llvm.experimental.noalias.scope.decl(metadata !17322)
  %i.aoc = load ptr, ptr %i.bb, align 8, !alias.scope !17325, !nonnull !10, !noundef !10
  %i.aod = atomicrmw sub ptr %i.aoc, i64 1 release, align 8, !noalias !17325
  %i.aoe = icmp eq i64 %i.aod, 1
  br i1 %i.aoe, label %bb.ro, label %.noexc590

bb.ro:                                            ; preds = %bb.rn
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSIBx_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bb) #48
          to label %.noexc590 unwind label %bb.ac

.noexc590:                                        ; preds = %bb.ro, %bb.rn
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.zm)
          to label %.thread1575 unwind label %bb.ac

bb.rp:                                            ; preds = %bb.ry
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  br i1 %.sroa.034.4, label %bb.sf, label %.body398

bb.rq:                                            ; preds = %.body417
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.xq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit594 unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit594: ; preds = %bb.rq
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.xt) #44
          to label %.body426 unwind label %bb.ac

bb.rr:                                            ; preds = %.body415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit596 unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit596: ; preds = %bb.rr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj) #44
          to label %bb.rs unwind label %bb.ac

bb.rs:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %.body426

bb.rt:                                            ; preds = %bb.ia
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %bb.rw unwind label %bb.rv

bb.ru:                                            ; preds = %bb.rv, %bb.ie
  %.pn175 = phi { ptr, i32 } [ %i.aof, %bb.rv ], [ %.pn158, %bb.ie ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.ry

bb.rv:                                            ; preds = %bb.rt
  %i.aof = landingpad { ptr, i32 }
          cleanup
  br label %bb.ru

bb.rw:                                            ; preds = %bb.rt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.bi)
          to label %bb.rx unwind label %.split.thread

.split.thread:                                    ; preds = %bb.rw
  %i.aog = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split1826

bb.rx:                                            ; preds = %bb.rz, %bb.rw
  %.sroa.231058.8 = phi i64 [ -9223372036854775707, %bb.rz ], [ -9223372036854775706, %bb.rw ]
  %.sroa.58.8 = phi i64 [ %.sroa.81020.sroa.8.0.copyload1158, %bb.rz ], [ undef, %bb.rw ]
  %.sroa.44.sroa.0.8 = phi i64 [ %.sroa.81020.sroa.0.0.copyload1156, %bb.rz ], [ undef, %bb.rw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %bb.sb unwind label %bb.sa

bb.ry:                                            ; preds = %.body426, %bb.ru, %bb.hz
  %.sroa.034.4 = phi i1 [ true, %bb.hz ], [ true, %bb.ru ], [ false, %.body426 ]
  %.pn175.pn.pn = phi { ptr, i32 } [ %i.vx, %bb.hz ], [ %.pn175, %bb.ru ], [ %.pn166, %.body426 ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.bi) #44
          to label %bb.rp unwind label %bb.ac

bb.rz:                                            ; preds = %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.rx

.body398:                                         ; preds = %bb.hn, %bb.hq, %bb.ht, %.split, %.thread1582, %.thread1575, %bb.sf, %bb.sa, %bb.rp
  %.pn182.pn = phi { ptr, i32 } [ %i.yz, %.split ], [ %i.aoh, %bb.sa ], [ %.pn1791581, %bb.sf ], [ %.pn175.pn.pn, %bb.rp ], [ %.pn170.pn, %.thread1575 ], [ %i.yx, %.thread1582 ], [ %i.uz, %bb.hn ], [ %i.ve, %bb.ht ], [ %i.va, %bb.hq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.sh

bb.sa:                                            ; preds = %bb.rx
  %i.aoh = landingpad { ptr, i32 }
          cleanup
  br label %.body398

bb.sb:                                            ; preds = %bb.sg, %bb.rx
  %.sroa.231058.9 = phi i64 [ %.sroa.231058.8, %bb.rx ], [ -9223372036854775739, %bb.sg ]
  %.sroa.58.9 = phi i64 [ %.sroa.58.8, %bb.rx ], [ undef, %bb.sg ]
  %.sroa.44.sroa.0.9 = phi i64 [ %.sroa.44.sroa.0.8, %bb.rx ], [ %i.aon, %bb.sg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.br)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit.i600 unwind label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.aoi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.91237.0..sroa_idx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i597 unwind label %bb.se

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit.i600: ; preds = %bb.sb
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.91237.0..sroa_idx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i601 unwind label %bb.sd

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i597: ; preds = %bb.sd, %bb.sc
  %.pn.i598 = phi { ptr, i32 } [ %i.aok, %bb.sd ], [ %i.aoi, %bb.sc ]
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnCountStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aoj)
          to label %.body444 unwind label %bb.se

bb.sd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit.i600
  %i.aok = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i597

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i601: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit.i600
  %i.aol = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnCountStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aol)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit605 unwind label %bb.jr

bb.se:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i597, %bb.sc
  %i.aom = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

.sink.split1826:                                  ; preds = %.thread1578, %.split.thread
  %.pn1791581.ph = phi { ptr, i32 } [ %i.aog, %.split.thread ], [ %i.vf, %.thread1578 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  br label %bb.sf

bb.sf:                                            ; preds = %.sink.split1826, %bb.rp
  %.pn1791581 = phi { ptr, i32 } [ %.pn175.pn.pn, %bb.rp ], [ %.pn1791581.ph, %.sink.split1826 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl) #44
          to label %.body398 unwind label %bb.ac

bb.sg:                                            ; preds = %_RINvNtCseqDwI8vvjGQ_10serde_json3ser6to_vecNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBJ_.exit.i, %.noexc400
  %.sroa.7.013.i = phi ptr [ %i.uy, %.noexc400 ], [ %.sroa.7.0.copyload3.i, %_RINvNtCseqDwI8vvjGQ_10serde_json3ser6to_vecNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBJ_.exit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.013.i) ]
  %i.aon = ptrtoint ptr %.sroa.7.013.i to i64
  br label %bb.sb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit605: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i601, %bb.sl
  %.sroa.231058.10 = phi i64 [ %.sroa.7972.sroa.7.8.copyload, %bb.sl ], [ %.sroa.231058.9, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i601 ]
  %.sroa.58.10 = phi i64 [ %.sroa.7972.sroa.10.8.copyload, %bb.sl ], [ %.sroa.58.9, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i601 ]
  %.sroa.63.9 = phi i64 [ %.sroa.7972.sroa.11.8.copyload, %bb.sl ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i601 ]
  %.sroa.67.9 = phi i64 [ %.sroa.7972.sroa.12.8.copyload, %bb.sl ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i601 ]
  %.sroa.44.sroa.0.10 = phi i64 [ %.sroa.7972.sroa.9.8.copyload, %bb.sl ], [ %.sroa.44.sroa.0.9, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i601 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_reader18ArrowReaderBuilderINtNtBL_12async_reader11AsyncReaderNtNtB1Q_5store19ParquetObjectReaderEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(288) %i.bs)
          to label %bb.sm unwind label %bb.jt

bb.sh:                                            ; preds = %.body398, %.body390
  %.pn182.pn.pn = phi { ptr, i32 } [ %.pn182.pn, %.body398 ], [ %eh.lpad-body391, %.body390 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_(ptr noalias noundef align 8 dereferenceable(152) %i.br) #44
          to label %.body444 unwind label %bb.ac

bb.si:                                            ; preds = %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !16956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %.sroa.7972.sroa.7.8.copyload = load i64, ptr %i.ua, align 16, !alias.scope !16957
  %.sroa.7972.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.sroa.7972.sroa.9.8.copyload = load i64, ptr %.sroa.7972.sroa.9.8..sroa_idx, align 8, !alias.scope !16957
  %.sroa.7972.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %.sroa.7972.sroa.10.8.copyload = load i64, ptr %.sroa.7972.sroa.10.8..sroa_idx, align 16, !alias.scope !16957
  %.sroa.7972.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %.sroa.7972.sroa.11.8.copyload = load i64, ptr %.sroa.7972.sroa.11.8..sroa_idx, align 8, !alias.scope !16957
  %.sroa.7972.sroa.12.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %.sroa.7972.sroa.12.8.copyload = load i64, ptr %.sroa.7972.sroa.12.8..sroa_idx, align 16, !alias.scope !16957
  %.sroa.7972.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7972.sroa.13, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7972.sroa.13.8..sroa_idx, i64 56, i1 false), !alias.scope !16957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.70, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7972.sroa.13, i64 56, i1 false)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.bo)
          to label %bb.sl unwind label %bb.sk

bb.sj:                                            ; preds = %bb.sk, %bb.hd, %bb.gx
  %.pn188 = phi { ptr, i32 } [ %i.aoo, %bb.sk ], [ %.pn147, %bb.hd ], [ %.pn145, %bb.gx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7972.sroa.13)
  br label %.body444

bb.sk:                                            ; preds = %bb.si
  %i.aoo = landingpad { ptr, i32 }
          cleanup
  br label %bb.sj

bb.sl:                                            ; preds = %bb.si
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7972.sroa.13)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit605

bb.sm:                                            ; preds = %bb.sn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit605
  %.sroa.231058.11 = phi i64 [ -9223372036854775709, %bb.sn ], [ %.sroa.231058.10, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit605 ]
  %.sroa.58.11 = phi i64 [ %i.aop, %bb.sn ], [ %.sroa.58.10, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit605 ]
  %.sroa.63.10 = phi i64 [ %i.aoq, %bb.sn ], [ %.sroa.63.9, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit605 ]
  %.sroa.67.10 = phi i64 [ %i.aor, %bb.sn ], [ %.sroa.67.9, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit605 ]
  %.sroa.44.sroa.0.11 = phi i64 [ %.sroa.3.0.i.i1363, %bb.sn ], [ %.sroa.44.sroa.0.10, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_.exit605 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %.loopexit1784

bb.sn:                                            ; preds = %bb.gr
  %i.aop = ptrtoint ptr %.sroa.4.0.i.i1362 to i64
  %i.aoq = ptrtoint ptr %.sroa.547.0.i.i1361 to i64
  %i.aor = ptrtoint ptr %.sroa.649.0.i.i1360 to i64
  br label %bb.sm

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit589: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i585
  %i.aos = getelementptr inbounds nuw i8, ptr %1, i64 1568
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aos)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.nm

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit589
  %i.aot = getelementptr inbounds nuw i8, ptr %1, i64 748
  store i8 0, ptr %i.aot, align 4
  %i.aou = getelementptr inbounds nuw i8, ptr %1, i64 1744
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.aou)
          to label %bb.so unwind label %bb.jz

bb.so:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit
  %i.aov = getelementptr inbounds nuw i8, ptr %1, i64 1616
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.aov)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit608 unwind label %bb.kc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit608, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.aow = getelementptr inbounds nuw i8, ptr %1, i64 1504
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aow)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit610 unwind label %bb.em

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit610: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs14kWLkQVSKO_14deltalake_core.exit
  %i.aox = getelementptr inbounds nuw i8, ptr %1, i64 1456
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aox)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ek

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit610
  %i.aoy = getelementptr inbounds nuw i8, ptr %1, i64 749
  store i8 0, ptr %i.aoy, align 1
  %i.aoz = getelementptr inbounds nuw i8, ptr %1, i64 1408
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aoz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit613 unwind label %bb.ml

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit613: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit
  %i.apa = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apa)
          to label %bb.sq unwind label %bb.sp

bb.sp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit613
  %i.apb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apa)
          to label %.body615 unwind label %bb.sr

bb.sq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit613
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_.exit unwind label %bb.eh

bb.sr:                                            ; preds = %bb.sp
  %i.apc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_.exit: ; preds = %bb.sq
  %i.apd = getelementptr inbounds nuw i8, ptr %1, i64 750
  store i8 0, ptr %i.apd, align 2
  %i.ape = getelementptr inbounds nuw i8, ptr %1, i64 745 ; 2 uses
  %i.apf = load i8, ptr %i.ape, align 1, !range !349, !noundef !10
  %i.apg = trunc nuw i8 %i.apf to i1
  br i1 %i.apg, label %bb.ss, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.su, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_.exit
  store i8 0, ptr %i.ape, align 1
  br label %bb.et

bb.ss:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_.exit
  %i.aph = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aph)
          to label %bb.su unwind label %bb.st

bb.st:                                            ; preds = %bb.ss
  %i.api = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aph)
          to label %.body618 unwind label %bb.sv

bb.su:                                            ; preds = %bb.ss
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aph)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.eg

bb.sv:                                            ; preds = %bb.st
  %i.apj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.sz, %bb.et
  store i8 0, ptr %i.ot, align 2
  %i.apk = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17326)
  call void @llvm.experimental.noalias.scope.decl(metadata !17329)
  %i.apl = load ptr, ptr %i.apk, align 8, !alias.scope !17332, !nonnull !10, !noundef !10
  %i.apm = atomicrmw sub ptr %i.apl, i64 1 release, align 8, !noalias !17332
  %i.apn = icmp eq i64 %i.apm, 1
  br i1 %i.apn, label %bb.sw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit621

bb.sw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.apk) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit621 unwind label %bb.mn

bb.sx:                                            ; preds = %bb.et
  %i.apo = getelementptr inbounds nuw i8, ptr %1, i64 720 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apo)
          to label %bb.sz unwind label %bb.sy

bb.sy:                                            ; preds = %bb.sx
  %i.app = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apo)
          to label %.body623 unwind label %bb.ta

bb.sz:                                            ; preds = %bb.sx
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.dp

bb.ta:                                            ; preds = %bb.sy
  %i.apq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.tb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit621
  %i.apr = getelementptr inbounds nuw i8, ptr %1, i64 747
  %i.aps = load i8, ptr %i.apr, align 1, !range !349, !noundef !10
  %i.apt = trunc nuw i8 %i.aps to i1
  br i1 %i.apt, label %bb.tf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit: ; preds = %bb.tf, %bb.tg, %bb.tb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit621
  %i.apu = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 4 uses
  %i.apv = load i64, ptr %i.apu, align 8, !range !59, !alias.scope !17333, !noundef !10
  %i.apw = icmp eq i64 %i.apv, -9223372036854775808
  br i1 %i.apw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit630, label %bb.tc

bb.tc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i626 unwind label %bb.td

bb.td:                                            ; preds = %bb.tc
  %i.apx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apu)
          to label %.body627 unwind label %bb.te

bb.te:                                            ; preds = %bb.td
  %i.apy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i626: ; preds = %bb.tc
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit630 unwind label %bb.tj

bb.tf:                                            ; preds = %bb.tb
  %i.apz = atomicrmw sub ptr %i.fp, i64 1 release, align 8, !noalias !17336
  %i.aqa = icmp eq i64 %i.apz, 1
  br i1 %i.aqa, label %bb.tg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit

bb.tg:                                            ; preds = %bb.tf
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.fo) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit unwind label %bb.th

bb.th:                                            ; preds = %bb.tg
  %i.aqb = landingpad { ptr, i32 }
          cleanup
  %i.aqc = getelementptr inbounds nuw i8, ptr %1, i64 432
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.aqc) #44
          to label %.body627 unwind label %bb.ac

.body627:                                         ; preds = %bb.tj, %bb.td, %bb.th
  %.pn267 = phi { ptr, i32 } [ %i.aqb, %bb.th ], [ %i.aqg, %bb.tj ], [ %i.apx, %bb.td ] ; 2 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.aqe = load ptr, ptr %i.aqd, align 8, !alias.scope !17341, !noundef !10
  %i.aqf = icmp eq ptr %i.aqe, null
  br i1 %i.aqf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit633, label %bb.ti

bb.ti:                                            ; preds = %.body627
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aqd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit633 unwind label %bb.ac

bb.tj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i626
  %i.aqg = landingpad { ptr, i32 }
          cleanup
  br label %.body627

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit630: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i626
  %i.aqh = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.aqi = load ptr, ptr %i.aqh, align 8, !alias.scope !17344, !noundef !10
  %i.aqj = icmp eq ptr %i.aqi, null
  br i1 %i.aqj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit635, label %bb.tk

bb.tk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit630
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aqh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit635 unwind label %bb.tl

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit633: ; preds = %.body627, %bb.ti, %bb.tl
  %.pn269 = phi { ptr, i32 } [ %i.aql, %bb.tl ], [ %.pn267, %bb.ti ], [ %.pn267, %.body627 ]
  %i.aqk = getelementptr inbounds nuw i8, ptr %1, i64 504
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aqk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit637 unwind label %bb.ac

bb.tl:                                            ; preds = %bb.tk
  %i.aql = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit633

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit635: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit630, %bb.tk
  %i.aqm = getelementptr inbounds nuw i8, ptr %1, i64 504
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aqm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit639 unwind label %bb.tm

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit637: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit633, %bb.tm
  %.pn271 = phi { ptr, i32 } [ %i.aqo, %bb.tm ], [ %.pn269, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit633 ]
  %i.aqn = getelementptr inbounds nuw i8, ptr %1, i64 456
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.aqn) #44
          to label %.body642 unwind label %bb.ac

bb.tm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit635
  %i.aqo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit637

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit639: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit635
  %i.aqp = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 4 uses
  %i.aqq = load i64, ptr %i.aqp, align 8, !range !59, !alias.scope !17347, !noundef !10
  %i.aqr = icmp eq i64 %i.aqq, -9223372036854775808
  br i1 %i.aqr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit645, label %bb.tn

bb.tn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit639
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aqp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i641 unwind label %bb.to

bb.to:                                            ; preds = %bb.tn
  %i.aqs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aqp)
          to label %.body642 unwind label %bb.tp

bb.tp:                                            ; preds = %bb.to
  %i.aqt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i641: ; preds = %bb.tn
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aqp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit645 unwind label %bb.tq

.body642:                                         ; preds = %bb.tq, %bb.to, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit637
  %.pn273 = phi { ptr, i32 } [ %.pn271, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit637 ], [ %i.aqv, %bb.tq ], [ %i.aqs, %bb.to ]
  %i.aqu = getelementptr inbounds nuw i8, ptr %1, i64 480
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.aqu) #44
          to label %.body648 unwind label %bb.ac

bb.tq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i641
  %i.aqv = landingpad { ptr, i32 }
          cleanup
  br label %.body642

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit645: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit639, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i641
  %i.aqw = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 4 uses
  %i.aqx = load i64, ptr %i.aqw, align 8, !range !59, !alias.scope !17350, !noundef !10
  %i.aqy = icmp eq i64 %i.aqx, -9223372036854775808
  br i1 %i.aqy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit651, label %bb.tr

bb.tr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit645
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aqw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i647 unwind label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  %i.aqz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aqw)
          to label %.body648 unwind label %bb.tt

bb.tt:                                            ; preds = %bb.ts
  %i.ara = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i647: ; preds = %bb.tr
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aqw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit651 unwind label %bb.tu

.body648:                                         ; preds = %bb.tu, %bb.ts, %.body642
  %.pn275 = phi { ptr, i32 } [ %.pn273, %.body642 ], [ %i.arc, %bb.tu ], [ %i.aqz, %bb.ts ]
  %i.arb = getelementptr inbounds nuw i8, ptr %1, i64 552
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.arb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit653 unwind label %bb.ac

bb.tu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i647
  %i.arc = landingpad { ptr, i32 }
          cleanup
  br label %.body648

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit651: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit645, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i647
  %i.ard = getelementptr inbounds nuw i8, ptr %1, i64 552
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ard)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit655 unwind label %bb.tv

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit653: ; preds = %.body648, %bb.tv
  %.pn277 = phi { ptr, i32 } [ %i.are, %bb.tv ], [ %.pn275, %.body648 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_(ptr noalias noundef align 8 dereferenceable(88) %i.fn) #44
          to label %.body656 unwind label %bb.ac

bb.tv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit651
  %i.are = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit653

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit655: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit651
  %i.arf = getelementptr inbounds nuw i8, ptr %1, i64 368
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.arf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.tw

bb.tw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit655
  %i.arg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionEEB1l_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.fn) #44
          to label %.body656 unwind label %bb.tz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit655
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.fn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionEEB1l_.exit.i unwind label %bb.tx

bb.tx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.arh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.fn)
          to label %.body656 unwind label %bb.ty

bb.ty:                                            ; preds = %bb.tx
  %i.ari = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionEEB1l_.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.fn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_.exit unwind label %bb.uc

bb.tz:                                            ; preds = %bb.tw
  %i.arj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

.body656:                                         ; preds = %bb.uc, %bb.tx, %bb.tw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit653
  %.pn279 = phi { ptr, i32 } [ %.pn277, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit653 ], [ %i.arp, %bb.uc ], [ %i.arh, %bb.tx ], [ %i.arg, %bb.tw ] ; 3 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17353)
  %i.arl = load ptr, ptr %i.ark, align 8, !alias.scope !17353, !noundef !10 ; 2 uses
  %i.arm = icmp eq ptr %i.arl, null
  br i1 %i.arm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit, label %bb.ua

bb.ua:                                            ; preds = %.body656
  %i.arn = atomicrmw sub ptr %i.arl, i64 1 release, align 8, !noalias !17356
  %i.aro = icmp eq i64 %i.arn, 1
  br i1 %i.aro, label %bb.ub, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit

bb.ub:                                            ; preds = %bb.ua
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ark) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit unwind label %bb.ac

bb.uc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionEEB1l_.exit.i
  %i.arp = landingpad { ptr, i32 }
          cleanup
  br label %.body656

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionEEB1l_.exit.i
  %i.arq = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17361)
  %i.arr = load ptr, ptr %i.arq, align 8, !alias.scope !17361, !noundef !10 ; 2 uses
  %i.ars = icmp eq ptr %i.arr, null
  br i1 %i.ars, label %bb.nd, label %bb.ud

bb.ud:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_.exit
  %i.art = atomicrmw sub ptr %i.arr, i64 1 release, align 8, !noalias !17364
  %i.aru = icmp eq i64 %i.art, 1
  br i1 %i.aru, label %bb.ue, label %bb.nd

bb.ue:                                            ; preds = %bb.ud
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.arq) #48
          to label %bb.nd unwind label %bb.nc

bb.uf:                                            ; preds = %.body448
  %i.arv = getelementptr inbounds nuw i8, ptr %1, i64 1568
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.arv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit666 unwind label %bb.ac

bb.ug:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit372
  %i.arw = getelementptr inbounds nuw i8, ptr %1, i64 1456
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.arw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit668 unwind label %bb.ac

bb.uh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit
  %i.arx = getelementptr inbounds nuw i8, ptr %1, i64 784
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.arx) #44
          to label %.body615 unwind label %bb.ac

bb.ui:                                            ; preds = %.body615
  %i.ary = getelementptr inbounds nuw i8, ptr %1, i64 760
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ary) #44
          to label %.body618 unwind label %bb.ac

bb.uj:                                            ; preds = %bb.eu
  %i.arz = getelementptr inbounds nuw i8, ptr %1, i64 720
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.arz) #44
          to label %.body623 unwind label %bb.ac

bb.uk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %i.asa = getelementptr inbounds nuw i8, ptr %1, i64 747
  %i.asb = load i8, ptr %i.asa, align 1, !range !349, !noundef !10
  %i.asc = trunc nuw i8 %i.asb to i1
  br i1 %i.asc, label %bb.ul, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit670

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit670: ; preds = %bb.ul, %bb.um, %bb.uk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %i.asd = getelementptr inbounds nuw i8, ptr %1, i64 432
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.asd) #44
          to label %bb.un unwind label %bb.ac

bb.ul:                                            ; preds = %bb.uk
  %i.ase = atomicrmw sub ptr %i.fg, i64 1 release, align 8, !noalias !17369
  %i.asf = icmp eq i64 %i.ase, 1
  br i1 %i.asf, label %bb.um, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit670

bb.um:                                            ; preds = %bb.ul
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ff) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit670 unwind label %bb.ac

bb.un:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit670
  %i.asg = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.ash = load ptr, ptr %i.asg, align 8, !alias.scope !17374, !noundef !10
  %i.asi = icmp eq ptr %i.ash, null
  br i1 %i.asi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit672, label %bb.uo

bb.uo:                                            ; preds = %bb.un
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.asg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit672 unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit672: ; preds = %bb.un, %bb.uo
  %i.asj = getelementptr inbounds nuw i8, ptr %1, i64 504
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.asj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit674 unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit674: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit672
  %i.ask = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.asl = load i64, ptr %i.ask, align 8, !range !59, !noundef !10
  %.not264 = icmp eq i64 %i.asl, -9223372036854775808
  br i1 %.not264, label %bb.uq, label %bb.up

bb.up:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit674
  %i.asm = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.asn = load i8, ptr %i.asm, align 8, !range !349, !noundef !10
  %i.aso = trunc nuw i8 %i.asn to i1
  br i1 %i.aso, label %bb.ur, label %bb.uq

bb.uq:                                            ; preds = %bb.ur, %bb.up, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit674
  %i.asp = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.asq = load i64, ptr %i.asp, align 8, !range !59, !noundef !10
  %.not265 = icmp eq i64 %i.asq, -9223372036854775808
  br i1 %.not265, label %bb.ut, label %bb.us

bb.ur:                                            ; preds = %bb.up
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ask) #44
          to label %bb.uq unwind label %bb.ac

bb.us:                                            ; preds = %bb.uq
  %i.asr = getelementptr inbounds nuw i8, ptr %1, i64 751
  %i.ass = load i8, ptr %i.asr, align 1, !range !349, !noundef !10
  %i.ast = trunc nuw i8 %i.ass to i1
  br i1 %i.ast, label %bb.uu, label %bb.ut

bb.ut:                                            ; preds = %bb.uu, %bb.us, %bb.uq
  %i.asu = getelementptr inbounds nuw i8, ptr %1, i64 754
  %i.asv = load i8, ptr %i.asu, align 2, !range !349, !noundef !10
  %i.asw = trunc nuw i8 %i.asv to i1
  br i1 %i.asw, label %bb.uv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit676

bb.uu:                                            ; preds = %bb.us
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.asp) #44
          to label %bb.ut unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit676: ; preds = %bb.uv, %bb.ut
  %i.asx = getelementptr inbounds nuw i8, ptr %1, i64 753
  %i.asy = load i8, ptr %i.asx, align 1, !range !349, !noundef !10
  %i.asz = trunc nuw i8 %i.asy to i1
  br i1 %i.asz, label %bb.uz, label %bb.uw

bb.uv:                                            ; preds = %bb.ut
  %i.ata = getelementptr inbounds nuw i8, ptr %1, i64 552
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ata)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit676 unwind label %bb.ac

bb.uw:                                            ; preds = %bb.uz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit676
  %i.atb = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17377)
  %i.atc = load ptr, ptr %i.atb, align 8, !alias.scope !17377, !noundef !10 ; 2 uses
  %i.atd = icmp eq ptr %i.atc, null
  br i1 %i.atd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit, label %bb.ux

bb.ux:                                            ; preds = %bb.uw
  %i.ate = atomicrmw sub ptr %i.atc, i64 1 release, align 8, !noalias !17380
  %i.atf = icmp eq i64 %i.ate, 1
  br i1 %i.atf, label %bb.uy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit

bb.uy:                                            ; preds = %bb.ux
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.atb) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit unwind label %bb.ac

bb.uz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit676
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_(ptr noalias noundef align 8 dereferenceable(88) %i.fe) #44
          to label %bb.uw unwind label %bb.ac
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvMs3_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtB7_12RequestStateNtNtB7_5store19ParquetObjectReaderE13begin_request0Cs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [24 x i8], align 8            ; 3 uses
  %.sroa.6 = alloca [80 x i8], align 8            ; 3 uses
  %.sroa.3 = alloca [24 x i8], align 8            ; 3 uses
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !294, !noundef !10
  switch i8 %i.d, label %default.unreachable30 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

default.unreachable30:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.f = invoke { ptr, ptr } @_RNvXs0_NtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader5storeNtB5_19ParquetObjectReaderNtB7_15AsyncFileReader15get_byte_ranges(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.body

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = extractvalue { ptr, ptr } %i.f, 0
  %i.i = extractvalue { ptr, ptr } %i.f, 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.i, ptr %i.k, align 8
  br label %bb.h

.body:                                            ; preds = %bb.p, %bb.o, %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.l, %bb.g ], [ %i.x, %bb.o ], [ %i.x, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader5store19ParquetObjectReaderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %1) #44
          to label %bb.t unwind label %bb.v

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #49
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #49
  unreachable

bb.g:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val5 = load ptr, ptr %i.n, align 8
  %i.m = getelementptr i8, ptr %1, i64 128
  %.val6 = load ptr, ptr %i.m, align 8, !nonnull !10, !align !304, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val5, ptr nonnull %.val6) #44
          to label %.body unwind label %bb.v

bb.h:                                             ; preds = %bb.a, %bb.d
end_hunk_4
begin_hunk_5_@_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapIBY_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set10DifferenceNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtNtB1q_4hash6random11RandomStateENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation21validation_predicates0ENCINvXNtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB5H_14MapSpecialCaseB1d_INtB5H_18MapSpecialCaseFnOkNCB43_s_0EENtNtNtB4_6traits8iterator8Iterator7collectINtNtB6_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE0EIB86_NtNtB6_7convert10InfallibleB9I_EEB7p_4nextB49_
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapIBY_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set10DifferenceNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtNtB1q_4hash6random11RandomStateENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation21validation_predicates0ENCINvXNtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB5H_14MapSpecialCaseB1d_INtB5H_18MapSpecialCaseFnOkNCB43_s_0EENtNtNtB4_6traits8iterator8Iterator7collectINtNtB6_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE0EIB86_NtNtB6_7convert10InfallibleB9I_EEB7p_4nextB49_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [112 x i8], align 16              ; 6 uses
  %.sroa.6 = alloca [104 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19561)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19564
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !19561, !noalias !19566, !nonnull !10, !align !304, !noundef !10
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set10DifferenceNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtNtB1a_4hash6random11RandomStateENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation21validation_predicates0ENCINvXNtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB5r_14MapSpecialCaseBX_INtB5r_18MapSpecialCaseFnOkNCB3N_s_0EENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE0EB78_8try_folduNCINvXB8_INtB8_12GenericShuntBN_IB7P_NtNtBc_7convert10InfallibleB9r_EEB78_8try_folduNCINvNvB78_12try_for_each4callB8H_INtNtNtBc_3ops12control_flow11ControlFlowB8H_ENcNtBcB_5Break0E0BcB_E0IBcC_BcB_EEB3T_(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d), !noalias !19566
  %i.e = load i64, ptr %i.b, align 16, !range !6552, !noalias !19564, !noundef !10 ; 3 uses
  %.not.i = icmp eq i64 %i.e, 38
  br i1 %.not.i, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapIBZ_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set10DifferenceNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtNtB1r_4hash6random11RandomStateENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation21validation_predicates0ENCINvXNtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB5I_14MapSpecialCaseB1e_INtB5I_18MapSpecialCaseFnOkNCB44_s_0EENtNtNtB5_6traits8iterator8Iterator7collectINtNtB7_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE0EIB87_NtNtB7_7convert10InfallibleB9J_EEB7q_8try_folduNCINvNvB7q_12try_for_each4callB8Z_INtNtNtB7_3ops12control_flow11ControlFlowB8Z_ENcNtBc9_5Break0E0Bc9_EB4a_.exit.thread, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapIBZ_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set10DifferenceNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtNtB1r_4hash6random11RandomStateENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation21validation_predicates0ENCINvXNtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB5I_14MapSpecialCaseB1e_INtB5I_18MapSpecialCaseFnOkNCB44_s_0EENtNtNtB5_6traits8iterator8Iterator7collectINtNtB7_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE0EIB87_NtNtB7_7convert10InfallibleB9J_EEB7q_8try_folduNCINvNvB7q_12try_for_each4callB8Z_INtNtNtB7_3ops12control_flow11ControlFlowB8Z_ENcNtBc9_5Break0E0Bc9_EB4a_.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapIBZ_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set10DifferenceNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtNtB1r_4hash6random11RandomStateENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation21validation_predicates0ENCINvXNtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB5I_14MapSpecialCaseB1e_INtB5I_18MapSpecialCaseFnOkNCB44_s_0EENtNtNtB5_6traits8iterator8Iterator7collectINtNtB7_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE0EIB87_NtNtB7_7convert10InfallibleB9J_EEB7q_8try_folduNCINvNvB7q_12try_for_each4callB8Z_INtNtNtB7_3ops12control_flow11ControlFlowB8Z_ENcNtBc9_5Break0E0Bc9_EB4a_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19564
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapIBZ_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set10DifferenceNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtNtB1r_4hash6random11RandomStateENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation21validation_predicates0ENCINvXNtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB5I_14MapSpecialCaseB1e_INtB5I_18MapSpecialCaseFnOkNCB44_s_0EENtNtNtB5_6traits8iterator8Iterator7collectINtNtB7_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE0EIB87_NtNtB7_7convert10InfallibleB9J_EEB7q_8try_folduNCINvNvB7q_12try_for_each4callB8Z_INtNtNtB7_3ops12control_flow11ControlFlowB8Z_ENcNtBc9_5Break0E0Bc9_EB4a_.exit: ; preds = %bb.a
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx7, i64 104, i1 false), !noalias !19561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19564
  %.not = icmp eq i64 %i.e, 37
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapIBZ_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set10DifferenceNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtNtB1r_4hash6random11RandomStateENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation21validation_predicates0ENCINvXNtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB5I_14MapSpecialCaseB1e_INtB5I_18MapSpecialCaseFnOkNCB44_s_0EENtNtNtB5_6traits8iterator8Iterator7collectINtNtB7_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE0EIB87_NtNtB7_7convert10InfallibleB9J_EEB7q_8try_folduNCINvNvB7q_12try_for_each4callB8Z_INtNtNtB7_3ops12control_flow11ControlFlowB8Z_ENcNtBc9_5Break0E0Bc9_EB4a_.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, i64 104, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapIBZ_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set10DifferenceNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtNtB1r_4hash6random11RandomStateENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation21validation_predicates0ENCINvXNtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB5I_14MapSpecialCaseB1e_INtB5I_18MapSpecialCaseFnOkNCB44_s_0EENtNtNtB5_6traits8iterator8Iterator7collectINtNtB7_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE0EIB87_NtNtB7_7convert10InfallibleB9J_EEB7q_8try_folduNCINvNvB7q_12try_for_each4callB8Z_INtNtNtB7_3ops12control_flow11ControlFlowB8Z_ENcNtBc9_5Break0E0Bc9_EB4a_.exit, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapIBZ_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set10DifferenceNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtNtB1r_4hash6random11RandomStateENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation21validation_predicates0ENCINvXNtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB5I_14MapSpecialCaseB1e_INtB5I_18MapSpecialCaseFnOkNCB44_s_0EENtNtNtB5_6traits8iterator8Iterator7collectINtNtB7_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE0EIB87_NtNtB7_7convert10InfallibleB9J_EEB7q_8try_folduNCINvNvB7q_12try_for_each4callB8Z_INtNtNtB7_3ops12control_flow11ControlFlowB8Z_ENcNtBc9_5Break0E0Bc9_EB4a_.exit.thread, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 37, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapIBZ_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set10DifferenceNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtNtB1r_4hash6random11RandomStateENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation21validation_predicates0ENCINvXNtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB5I_14MapSpecialCaseB1e_INtB5I_18MapSpecialCaseFnOkNCB44_s_0EENtNtNtB5_6traits8iterator8Iterator7collectINtNtB7_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE0EIB87_NtNtB7_7convert10InfallibleB9J_EEB7q_8try_folduNCINvNvB7q_12try_for_each4callB8Z_INtNtNtB7_3ops12control_flow11ControlFlowB8Z_ENcNtBc9_5Break0E0Bc9_EB4a_.exit.thread ], [ 37, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapIBZ_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set10DifferenceNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtNtB1r_4hash6random11RandomStateENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation21validation_predicates0ENCINvXNtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB5I_14MapSpecialCaseB1e_INtB5I_18MapSpecialCaseFnOkNCB44_s_0EENtNtNtB5_6traits8iterator8Iterator7collectINtNtB7_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE0EIB87_NtNtB7_7convert10InfallibleB9J_EEB7q_8try_folduNCINvNvB7q_12try_for_each4callB8Z_INtNtNtB7_3ops12control_flow11ControlFlowB8Z_ENcNtBc9_5Break0E0Bc9_EB4a_.exit ]
  store i64 %.sink, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapIBY_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set10DifferenceNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameNtNtNtB1q_4hash6random11RandomStateENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation21validation_predicates0ENCINvXNtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB5H_14MapSpecialCaseB1d_INtB5H_18MapSpecialCaseFnOkNCB43_s_0EENtNtNtB4_6traits8iterator8Iterator7collectINtNtB6_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE0EIB86_NtNtB6_7convert10InfallibleB9I_EEB7p_9size_hintB49_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.d, align 8
  %.sink = select i1 %.not, i64 %.val, i64 0
  store i64 0, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_10filter_map9FilterMapINtNtB2_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB22_5array10byte_array16GenericByteArrayINtNtB22_5types17GenericStringTypelEEEB1X_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB4j_16parse_partitionss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4r_6errors15DeltaTableErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB4r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(184) %1) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !1180, !noundef !10
  %i.c = load i64, ptr %i.b, align 16, !range !203, !noundef !10
  %.not = icmp eq i64 %i.c, -9223372036854775711
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val15.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !19567, !noalias !19576, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val16.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !19567, !noalias !19576, !noundef !10
  %i.f = sub i64 %.val16.i.i.i.i, %.val15.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !19567, !noalias !19576, !noundef !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val14.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !19567, !noalias !19576, !noundef !10
  %i.i = sub i64 %.val14.i.i.i.i, %.val.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %.sroa.0.0.i.i.i.i.i, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_6filter6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3a_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs1_0ENCB31_s2_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB4o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [112 x i8], align 16              ; 6 uses
  %.sroa.6 = alloca [104 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19581)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19584
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !19581, !noalias !19586, !nonnull !10, !align !304, !noundef !10
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB2U_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs1_0ENCB2L_s2_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5Y_8try_folduNCINvNvB5Y_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtBc_3ops12control_flow11ControlFlowB9H_ENcNtBaq_5Break0E0Baq_E0IBar_Baq_EEB48_(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d), !noalias !19586
  %i.e = load i64, ptr %i.b, align 16, !range !6552, !noalias !19584, !noundef !10 ; 3 uses
  %.not.i = icmp eq i64 %i.e, 38
  br i1 %.not.i, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_6filter6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3b_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs1_0ENCB32_s2_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB82_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB9e_ENcNtB9X_5Break0E0B9X_EB4p_.exit.thread, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_6filter6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3b_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs1_0ENCB32_s2_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB82_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB9e_ENcNtB9X_5Break0E0B9X_EB4p_.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_6filter6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3b_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs1_0ENCB32_s2_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB82_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB9e_ENcNtB9X_5Break0E0B9X_EB4p_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19584
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_6filter6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3b_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs1_0ENCB32_s2_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB82_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB9e_ENcNtB9X_5Break0E0B9X_EB4p_.exit: ; preds = %bb.a
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx7, i64 104, i1 false), !noalias !19581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19584
  %.not = icmp eq i64 %i.e, 37
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_6filter6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3b_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs1_0ENCB32_s2_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB82_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB9e_ENcNtB9X_5Break0E0B9X_EB4p_.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, i64 104, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_6filter6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3b_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs1_0ENCB32_s2_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB82_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB9e_ENcNtB9X_5Break0E0B9X_EB4p_.exit, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_6filter6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3b_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs1_0ENCB32_s2_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB82_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB9e_ENcNtB9X_5Break0E0B9X_EB4p_.exit.thread, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 37, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_6filter6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3b_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs1_0ENCB32_s2_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB82_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB9e_ENcNtB9X_5Break0E0B9X_EB4p_.exit.thread ], [ 37, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_6filter6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3b_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs1_0ENCB32_s2_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB82_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB9e_ENcNtB9X_5Break0E0B9X_EB4p_.exit ]
  store i64 %.sink, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_6filter6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3a_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs1_0ENCB31_s2_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB4o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !10, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10
  %i.f = ptrtoint ptr %.val1 to i64
  %i.g = ptrtoint ptr %.val to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 328
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB1C_INtNtB1I_5boxed3BoxNtB2r_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB3N_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0ENCB3I_s_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB4S_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [112 x i8], align 16              ; 6 uses
  %.sroa.6 = alloca [104 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19587)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19590
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !19587, !noalias !19592, !nonnull !10, !align !304, !noundef !10
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB1m_INtNtB1s_5boxed3BoxNtB2b_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB3x_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0ENCB3s_s_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB6o_8try_folduNCINvNvB6o_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtBc_3ops12control_flow11ControlFlowBa7_ENcNtBaQ_5Break0E0BaQ_E0IBaR_BaQ_EEB4C_(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(128) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d), !noalias !19592
  %i.e = load i64, ptr %i.b, align 16, !range !6552, !noalias !19590, !noundef !10 ; 3 uses
  %.not.i = icmp eq i64 %i.e, 38
  br i1 %.not.i, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB1D_INtNtB1J_5boxed3BoxNtB2s_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB3O_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0ENCB3J_s_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB8s_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB9E_ENcNtBan_5Break0E0Ban_EB4T_.exit.thread, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB1D_INtNtB1J_5boxed3BoxNtB2s_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB3O_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0ENCB3J_s_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB8s_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB9E_ENcNtBan_5Break0E0Ban_EB4T_.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB1D_INtNtB1J_5boxed3BoxNtB2s_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB3O_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0ENCB3J_s_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB8s_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB9E_ENcNtBan_5Break0E0Ban_EB4T_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19590
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB1D_INtNtB1J_5boxed3BoxNtB2s_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB3O_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0ENCB3J_s_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB8s_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB9E_ENcNtBan_5Break0E0Ban_EB4T_.exit: ; preds = %bb.a
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx7, i64 104, i1 false), !noalias !19587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19590
  %.not = icmp eq i64 %i.e, 37
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB1D_INtNtB1J_5boxed3BoxNtB2s_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB3O_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0ENCB3J_s_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB8s_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB9E_ENcNtBan_5Break0E0Ban_EB4T_.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, i64 104, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB1D_INtNtB1J_5boxed3BoxNtB2s_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB3O_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0ENCB3J_s_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB8s_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB9E_ENcNtBan_5Break0E0Ban_EB4T_.exit, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB1D_INtNtB1J_5boxed3BoxNtB2s_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB3O_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0ENCB3J_s_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB8s_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB9E_ENcNtBan_5Break0E0Ban_EB4T_.exit.thread, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 37, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB1D_INtNtB1J_5boxed3BoxNtB2s_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB3O_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0ENCB3J_s_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB8s_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB9E_ENcNtBan_5Break0E0Ban_EB4T_.exit.thread ], [ 37, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB1D_INtNtB1J_5boxed3BoxNtB2s_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB3O_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0ENCB3J_s_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB8s_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB9E_ENcNtBan_5Break0E0Ban_EB4T_.exit ]
  store i64 %.sink, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB1C_INtNtB1I_5boxed3BoxNtB2r_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB3N_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0ENCB3I_s_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB4S_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [8 x i8], align 8             ; 5 uses
  %.sroa.7 = alloca [8 x i8], align 8             ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19596)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19606)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !19608, !noalias !19609, !noundef !10
  %.not.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !19608, !noalias !19609, !nonnull !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val4.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !19608, !noalias !19609, !nonnull !10
  %i.i = ptrtoint ptr %.val4.i.i.i.i to i64
  %i.j = ptrtoint ptr %.val.i.i.i.i to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %.sroa.7.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !19608, !noalias !19609, !noundef !10
  %.not54.i.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val.i63.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !19608, !noalias !19609, !nonnull !10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val4.i64.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !19608, !noalias !19609, !nonnull !10
  %i.q = ptrtoint ptr %.val4.i64.i.i.i to i64
  %i.r = ptrtoint ptr %.val.i63.i.i.i to i64
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = lshr exact i64 %i.s, 3
  %.sroa.8.0.i.i.i = select i1 %.not54.i.i.i, i64 0, i64 %i.t
  %i.u = add nuw nsw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i
  %i.v = load ptr, ptr %i.d, align 8, !alias.scope !19608, !noalias !19609, !noundef !10
  %.not55.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not55.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !19608, !noalias !19609, !nonnull !10, !noundef !10
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val62.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !19608, !noalias !19609, !nonnull !10, !noundef !10
  %i.y = icmp eq ptr %.val62.i.i.i, %.val.i.i.i
  br i1 %i.y, label %bb.d, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB1l_INtNtB1r_5boxed3BoxNtB2a_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB3w_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0ENCB3r_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4B_.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 1, ptr %.sroa.4, align 8, !alias.scope !19609, !noalias !19608
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB1l_INtNtB1r_5boxed3BoxNtB2a_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB3w_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0ENCB3r_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4B_.exit

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB1l_INtNtB1r_5boxed3BoxNtB2a_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB3w_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0ENCB3r_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4B_.exit: ; preds = %bb.c, %bb.d
  %.sink80.i.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.d ], [ %.sroa.4, %bb.c ]
  %.sink.i.i.i = phi i64 [ %i.u, %bb.d ], [ 0, %bb.c ]
  store i64 %.sink.i.i.i, ptr %.sink80.i.i.i.sroa.phi, align 8, !alias.scope !19609, !noalias !19608
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8. = load i64, ptr %.sroa.4, align 8
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16. = load i64, ptr %.sroa.7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB1l_INtNtB1r_5boxed3BoxNtB2a_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB3w_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0ENCB3r_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4B_.exit
  %.sroa.4.0..sroa.4.0..sroa.4.8..sink = phi i64 [ %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8., %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB1l_INtNtB1r_5boxed3BoxNtB2a_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB3w_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0ENCB3r_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4B_.exit ], [ 1, %bb.a ]
  %.sroa.7.0..sroa.7.0..sroa.7.16..sink = phi i64 [ %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16., %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB1l_INtNtB1r_5boxed3BoxNtB2a_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB3w_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literal0ENCB3r_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4B_.exit ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0..sroa.4.0..sroa.4.8..sink, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0..sroa.7.0..sroa.7.16..sink, ptr %i.aa, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_E0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs14kWLkQVSKO_14deltalake_core.exit:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19610)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19610
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 16, !alias.scope !19610, !nonnull !10, !align !304, !noundef !10
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1X_11transaction5stateNtB2Z_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4d_11ScalarValue13iter_to_arrayB1n_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB4f_5error15DataFusionErrorEEB5y_8try_folduNCINvNvB5y_12try_for_each4callINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB8O_ENcNtBa8_5Break0E0Ba8_E0IBa9_Ba8_EEB1Z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 16 dereferenceable(128) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
  %i.e = load i64, ptr %i.b, align 8, !range !343, !noalias !19610, !noundef !10
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !19610
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noalias !19610
  %.sroa.0.0.i = select i1 %i.f, ptr %i.h, ptr null ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19610
  %.not.not = icmp eq ptr %.sroa.0.0.i, null
  %spec.select = select i1 %.not.not, ptr undef, ptr %i.j
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %spec.select, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_E0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !19613, !noalias !19618, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !19613, !noalias !19618, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !19613, !noalias !19618, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Es2_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs14kWLkQVSKO_14deltalake_core.exit:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19621)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19621
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 16, !alias.scope !19621, !nonnull !10, !align !304, !noundef !10
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1X_11transaction5stateNtB2Z_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4d_11ScalarValue13iter_to_arrayB1n_Es2_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB4f_5error15DataFusionErrorEEB5B_8try_folduNCINvNvB5B_12try_for_each4callINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB8R_ENcNtBab_5Break0E0Bab_E0IBac_Bab_EEB1Z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 16 dereferenceable(128) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
  %i.e = load i64, ptr %i.b, align 8, !range !343, !noalias !19621, !noundef !10
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !19621
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noalias !19621
  %.sroa.0.0.i = select i1 %i.f, ptr %i.h, ptr null ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19621
  %.not.not = icmp eq ptr %.sroa.0.0.i, null
  %spec.select = select i1 %.not.not, ptr undef, ptr %i.j
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %spec.select, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Es2_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Es2_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !19624, !noalias !19629, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Es2_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !19624, !noalias !19629, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !19624, !noalias !19629, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Es2_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Es2_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Es4_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 16 captures(none) dereferenceable(64) initializes((0, 16)) %0, ptr noalias noundef align 16 dereferenceable(144) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 16               ; 6 uses
  %.sroa.6 = alloca [48 x i8], align 16           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19632)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19635
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load ptr, ptr %i.c, align 16, !alias.scope !19632, !noalias !19637, !nonnull !10, !align !304, !noundef !10
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1X_11transaction5stateNtB2Z_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4d_11ScalarValue13iter_to_arrayB1n_Es4_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB4f_5error15DataFusionErrorEEB5B_8try_folduNCINvNvB5B_12try_for_each4callB4T_INtNtNtBc_3ops12control_flow11ControlFlowB4T_ENcNtB8V_5Break0E0B8V_E0IB8W_B8V_EEB1Z_(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 16 dereferenceable(144) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d), !noalias !19637
  %i.e = load i128, ptr %i.b, align 16, !range !534, !noalias !19635, !noundef !10 ; 3 uses
  %.not.i = icmp eq i128 %i.e, 51
  br i1 %.not.i, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2e_11transaction5stateNtB3g_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4u_11ScalarValue13iter_to_arrayB1E_Es4_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB4w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7c_12try_for_each4callB5a_INtNtNtB7_3ops12control_flow11ControlFlowB5a_ENcNtB8s_5Break0E0B8s_EB2g_.exit.thread, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2e_11transaction5stateNtB3g_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4u_11ScalarValue13iter_to_arrayB1E_Es4_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB4w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7c_12try_for_each4callB5a_INtNtNtB7_3ops12control_flow11ControlFlowB5a_ENcNtB8s_5Break0E0B8s_EB2g_.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2e_11transaction5stateNtB3g_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4u_11ScalarValue13iter_to_arrayB1E_Es4_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB4w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7c_12try_for_each4callB5a_INtNtNtB7_3ops12control_flow11ControlFlowB5a_ENcNtB8s_5Break0E0B8s_EB2g_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19635
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2e_11transaction5stateNtB3g_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4u_11ScalarValue13iter_to_arrayB1E_Es4_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB4w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7c_12try_for_each4callB5a_INtNtNtB7_3ops12control_flow11ControlFlowB5a_ENcNtB8s_5Break0E0B8s_EB2g_.exit: ; preds = %bb.a
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6.0..sroa_idx7, i64 48, i1 false), !noalias !19632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19635
  %.not = icmp eq i128 %i.e, 50
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2e_11transaction5stateNtB3g_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4u_11ScalarValue13iter_to_arrayB1E_Es4_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB4w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7c_12try_for_each4callB5a_INtNtNtB7_3ops12control_flow11ControlFlowB5a_ENcNtB8s_5Break0E0B8s_EB2g_.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2e_11transaction5stateNtB3g_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4u_11ScalarValue13iter_to_arrayB1E_Es4_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB4w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7c_12try_for_each4callB5a_INtNtNtB7_3ops12control_flow11ControlFlowB5a_ENcNtB8s_5Break0E0B8s_EB2g_.exit, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2e_11transaction5stateNtB3g_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4u_11ScalarValue13iter_to_arrayB1E_Es4_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB4w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7c_12try_for_each4callB5a_INtNtNtB7_3ops12control_flow11ControlFlowB5a_ENcNtB8s_5Break0E0B8s_EB2g_.exit.thread, %bb.b
  %.sink = phi i128 [ %i.e, %bb.b ], [ 50, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2e_11transaction5stateNtB3g_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4u_11ScalarValue13iter_to_arrayB1E_Es4_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB4w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7c_12try_for_each4callB5a_INtNtNtB7_3ops12control_flow11ControlFlowB5a_ENcNtB8s_5Break0E0B8s_EB2g_.exit.thread ], [ 50, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2e_11transaction5stateNtB3g_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4u_11ScalarValue13iter_to_arrayB1E_Es4_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB4w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7c_12try_for_each4callB5a_INtNtNtB7_3ops12control_flow11ControlFlowB5a_ENcNtB8s_5Break0E0B8s_EB2g_.exit ]
  store i128 %.sink, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Es4_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(144) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Es4_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

end_hunk_5
begin_hunk_6_@_RNvXNtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB2_14MapSpecialCaseINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB1a_7sources4once4OnceINtNtB1c_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorEEINtNtB18_7flatten7FlattenINtNtB1c_6option8IntoIterIB2M_DNtNtNtB1a_6traits8iterator8Iteratorp4ItemB2o_NtNtB1c_6marker4SendEL_EEEEINtB2_18MapSpecialCaseFnOkNCNCNvMNtB3p_11log_segmentNtB7h_10LogSegment24create_checkpoint_streams_00EEB5A_4nextCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.lcssa.i.i.i.i, i64 noundef range(i64 1, 0) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #41, !noalias !22186
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.q, %bb.p
  store ptr null, ptr %i.i, align 8, !alias.scope !22183, !noalias !22186
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.b) #44
          to label %.body.i.i unwind label %bb.r, !noalias !22186

bb.r:                                             ; preds = %.body.i.i.i.i.i.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !22186
  unreachable

.loopexit.i.i.i.i:                                ; preds = %.noexc2.i.i, %.noexc.i.i
  %.lcssa.i.i.i.i = phi i64 [ %i.m, %.noexc.i.i ], [ %i.aa, %.noexc2.i.i ]
  %.sroa.7.0..sroa_idx29.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ao = load <2 x ptr>, ptr %.sroa.7.0..sroa_idx29.i.i.i.i.i, align 8, !noalias !22205
  %.sroa.9.sroa.7.0..sroa.7.0..sroa_idx29.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.9.sroa.7.sroa.0.0.copyload14 = load i8, ptr %.sroa.9.sroa.7.0..sroa.7.0..sroa_idx29.i.i.i.i.i.sroa_idx, align 8, !noalias !22205
  %.sroa.9.sroa.7.sroa.6.0..sroa.9.sroa.7.0..sroa.7.0..sroa_idx29.i.i.i.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.9.sroa.7.sroa.6, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.9.sroa.7.sroa.6.0..sroa.9.sroa.7.0..sroa.7.0..sroa_idx29.i.i.i.i.i.sroa_idx.sroa_idx, i64 71, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22204
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.k
  store ptr null, ptr %i.i, align 8, !alias.scope !22183, !noalias !22186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22204
  %i.ap = load i64, ptr %i.g, align 16, !range !343, !alias.scope !22195, !noalias !22198, !noundef !10
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1n_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB36_5error5ErrorENtNtBb_6marker4SendEL_EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1n_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB36_5error5ErrorENtNtBb_6marker4SendEL_EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i

_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1n_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB36_5error5ErrorENtNtBb_6marker4SendEL_EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  %i.ar = load <2 x ptr>, ptr %i.k, align 8, !alias.scope !22199, !noalias !22198
  %i.as = load ptr, ptr %i.k, align 8, !alias.scope !22199, !noalias !22198, !noundef !10
  store ptr null, ptr %i.k, align 8, !alias.scope !22199, !noalias !22198
  %.not5.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not5.i.i.i.i.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1n_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB36_5error5ErrorENtNtBb_6marker4SendEL_EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, !llvm.loop !22206

_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1n_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB36_5error5ErrorENtNtBb_6marker4SendEL_EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i: ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1n_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB36_5error5ErrorENtNtBb_6marker4SendEL_EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1n_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB36_5error5ErrorENtNtBb_6marker4SendEL_EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.peel.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.peel.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22207)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22210
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !22212, !noalias !22213, !noundef !10
  %.not.i8.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i8.i.i.i.i.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread24.sink.split, label %bb.s

bb.s:                                             ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1n_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB36_5error5ErrorENtNtBb_6marker4SendEL_EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultIBC_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2i_5error5ErrorENtNtBU_6marker4SendEL_EBM_4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %.noexc3.i.i unwind label %.loopexit.split-lp.i.i, !noalias !22193

.noexc3.i.i:                                      ; preds = %bb.s
  %i.av = load i64, ptr %i.a, align 16, !noalias !22214 ; 2 uses
  %.not3.i9.i.i.i.i.i = icmp eq i64 %i.av, -9223372036854775742
  br i1 %.not3.i9.i.i.i.i.i, label %bb.t, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread36

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread36: ; preds = %.noexc3.i.i
  %.sroa.9.0..sroa_idx538 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aw = load <2 x ptr>, ptr %.sroa.9.0..sroa_idx538, align 8, !noalias !22214
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx5.sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.9.sroa.7.sroa.0.0.copyload1343 = load i8, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx5.sroa_idx42, align 8, !noalias !22214
  %.sroa.9.sroa.7.sroa.6.0..sroa.9.sroa.7.0..sroa.9.0..sroa_idx5.sroa_idx.sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.9.sroa.7.sroa.6, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.9.sroa.7.sroa.6.0..sroa.9.sroa.7.0..sroa.9.0..sroa_idx5.sroa_idx.sroa_idx44, i64 71, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22210
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.t:                                             ; preds = %.noexc3.i.i
  %.val.i10.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !22212, !noalias !22213, !noundef !10 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val4.i11.i.i.i.i.i = load ptr, ptr %i.ax, align 16, !alias.scope !22212, !noalias !22213 ; 6 uses
  %i.ay = icmp eq ptr %.val.i10.i.i.i.i.i, null
  br i1 %i.ay, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i11.i.i.i.i.i) ]
  %i.az = load ptr, ptr %.val4.i11.i.i.i.i.i, align 8, !invariant.load !10, !noalias !22213 ; 2 uses
  %.not.i.i.i12.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i12.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void %i.az(ptr noundef nonnull %.val.i10.i.i.i.i.i)
          to label %bb.w unwind label %bb.y, !noalias !22213

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %.val4.i11.i.i.i.i.i, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !312, !invariant.load !10, !noalias !22213 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %.val4.i11.i.i.i.i.i, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !range !295, !invariant.load !10, !noalias !22213
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i10.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.bb, i64 noundef range(i64 1, 536870913) %i.be) #41, !noalias !22213
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit

bb.y:                                             ; preds = %bb.v
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = getelementptr inbounds nuw i8, ptr %.val4.i11.i.i.i.i.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !312, !invariant.load !10, !noalias !22213 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.body.i13.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %.val4.i11.i.i.i.i.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !range !295, !invariant.load !10, !noalias !22213
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i10.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.bh, i64 noundef range(i64 1, 536870913) %i.bk) #41, !noalias !22213
  br label %.body.i13.i.i.i.i.i

.body.i13.i.i.i.i.i:                              ; preds = %bb.z, %bb.y
  store ptr null, ptr %i.at, align 8, !alias.scope !22212, !noalias !22213
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.a) #44
          to label %.body.i.i unwind label %bb.aa, !noalias !22213

bb.aa:                                            ; preds = %.body.i13.i.i.i.i.i
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !22213
  unreachable

.loopexit.i.i:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.s, %bb.e
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i, %.body.i13.i.i.i.i.i, %.body.i.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.bf, %.body.i13.i.i.i.i.i ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB22_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.c) #44
          to label %common.resume.i.i unwind label %bb.ab, !noalias !22215

common.resume.i.i:                                ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.ab:                                            ; preds = %.body.i.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !22215
  unreachable

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.t, %bb.w, %bb.x
  store ptr null, ptr %i.at, align 8, !alias.scope !22212, !noalias !22213
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread24.sink.split

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %.loopexit.i.i.i.i, %bb.b, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread36
  %.sroa.0.123 = phi i64 [ %i.av, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread36 ], [ %.lcssa.i.i.i.i, %.loopexit.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %.sroa.9.sroa.7.sroa.0.122 = phi i8 [ %.sroa.9.sroa.7.sroa.0.0.copyload1343, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread36 ], [ %.sroa.9.sroa.7.sroa.0.0.copyload14, %.loopexit.i.i.i.i ], [ %.sroa.9.sroa.7.sroa.0.0.copyload, %bb.b ]
  %i.bn = phi <2 x ptr> [ %i.aw, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread36 ], [ %i.ao, %.loopexit.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22149
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %.not.i = icmp eq i64 %.sroa.0.123, -9223372036854775743
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.11, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.9.sroa.7.sroa.6, i64 71, i1 false)
  br label %_RNvXs1_NtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB5_18MapSpecialCaseFnOkNCNCNvMNtCs8ulvy0Wg6Ot_12delta_kernel11log_segmentNtB1h_10LogSegment24create_checkpoint_streams_00EINtB5_16MapSpecialCaseFnINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1j_11engine_data10EngineDataEL_ENtNtB1j_5error5ErrorEE4callCs14kWLkQVSKO_14deltalake_core.exit

bb.ad:                                            ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.bo = extractelement <2 x ptr> %i.bn, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  %i.bp = extractelement <2 x ptr> %i.bn, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ]
  br label %_RNvXs1_NtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB5_18MapSpecialCaseFnOkNCNCNvMNtCs8ulvy0Wg6Ot_12delta_kernel11log_segmentNtB1h_10LogSegment24create_checkpoint_streams_00EINtB5_16MapSpecialCaseFnINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1j_11engine_data10EngineDataEL_ENtNtB1j_5error5ErrorEE4callCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs1_NtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB5_18MapSpecialCaseFnOkNCNCNvMNtCs8ulvy0Wg6Ot_12delta_kernel11log_segmentNtB1h_10LogSegment24create_checkpoint_streams_00EINtB5_16MapSpecialCaseFnINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1j_11engine_data10EngineDataEL_ENtNtB1j_5error5ErrorEE4callCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ac, %bb.ad
  %.sroa.9.0 = phi i8 [ 0, %bb.ad ], [ %.sroa.9.sroa.7.sroa.0.122, %bb.ac ]
  store i64 %.sroa.0.123, ptr %0, align 16
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.bn, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.11, i64 71, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %bb.ae

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread24.sink.split: ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1n_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB36_5error5ErrorENtNtBb_6marker4SendEL_EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22210
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread24

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread24: ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread24.sink.split, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22149
  store i64 -9223372036854775742, ptr %0, align 16
  br label %bb.ae

bb.ae:                                            ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_4nextCs14kWLkQVSKO_14deltalake_core.exit.thread24, %_RNvXs1_NtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB5_18MapSpecialCaseFnOkNCNCNvMNtCs8ulvy0Wg6Ot_12delta_kernel11log_segmentNtB1h_10LogSegment24create_checkpoint_streams_00EINtB5_16MapSpecialCaseFnINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1j_11engine_data10EngineDataEL_ENtNtB1j_5error5ErrorEE4callCs14kWLkQVSKO_14deltalake_core.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB2_14MapSpecialCaseINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB1a_7sources4once4OnceINtNtB1c_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorEEINtNtB18_7flatten7FlattenINtNtB1c_6option8IntoIterIB2M_DNtNtNtB1a_6traits8iterator8Iteratorp4ItemB2o_NtNtB1c_6marker4SendEL_EEEEINtB2_18MapSpecialCaseFnOkNCNCNvMNtB3p_11log_segmentNtB7h_10LogSegment24create_checkpoint_streams_00EEB5A_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca [8 x i8], align 8           ; 6 uses
  %.sroa.8.i = alloca [8 x i8], align 8           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22219)
  %i.e = load i64, ptr %1, align 16, !range !22156, !alias.scope !22219, !noalias !22216, !noundef !10 ; 2 uses
  %.not.i = icmp eq i64 %i.e, -9223372036854775741
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = load i64, ptr %i.f, align 16, !range !84, !alias.scope !22219, !noalias !22216, !noundef !10 ; 3 uses
  %.not7.i = icmp eq i64 %i.g, 2                  ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ne i64 %i.e, -9223372036854775742
  %i.i = zext i1 %i.h to i64                      ; 5 uses
  br i1 %.not7.i, label %bb.r, label %bb.l

bb.c:                                             ; preds = %bb.a
  br i1 %.not7.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22229)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22231
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !22232, !noalias !22233, !noundef !10
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultIBC_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2i_5error5ErrorENtNtBU_6marker4SendEL_EBM_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.j), !noalias !22234
  %.pre.i.i.i = load i64, ptr %i.d, align 8, !noalias !22231
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre72.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !range !343, !noalias !22231
  %.phi.trans.insert73.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre74.i.i.i = load i64, ptr %.phi.trans.insert73.i.i.i, align 8, !noalias !22231
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %.pre74.i.i.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.m = phi i64 [ %.pre72.i.i.i, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %i.n = phi i64 [ %.pre.i.i.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22231
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !22232, !noalias !22233, !noundef !10
  %.not54.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not54.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultIBC_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2i_5error5ErrorENtNtBU_6marker4SendEL_EBM_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.o), !noalias !22237
  %.pre75.i.i.i = load i64, ptr %i.c, align 8, !noalias !22231
  %.phi.trans.insert76.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre77.i.i.i = load i64, ptr %.phi.trans.insert76.i.i.i, align 8, !range !343, !noalias !22231
  %.phi.trans.insert78.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre79.i.i.i = load i64, ptr %.phi.trans.insert78.i.i.i, align 8, !noalias !22231
  %i.q = call i64 @llvm.uadd.sat.i64(i64 %i.n, i64 %.pre75.i.i.i)
  %i.r = freeze i64 %.pre77.i.i.i
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i.i: ; preds = %bb.f, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.s = phi i64 [ %.pre79.i.i.i, %bb.f ], [ 0, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.fr6 = phi i64 [ %i.r, %bb.f ], [ 1, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ] ; 2 uses
  %i.t = phi i64 [ %i.q, %bb.f ], [ %i.n, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22231
  %i.u = trunc nuw i64 %i.g to i1
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !22232, !noalias !22233, !noundef !10
  %.not71.i.i.i = icmp eq ptr %.val.i.i.i, null
  %i.w = trunc nuw i64 %i.m to i1
  %i.x = trunc i64 %.fr6 to i1
  %op.rdx = and i1 %.not71.i.i.i, %i.x
  %op.rdx2 = select i1 %op.rdx, i1 %i.w, i1 false
  br i1 %op.rdx2, label %bb.j, label %bb.i

bb.h:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i.i
  %i.y = and i64 %.fr6, %i.m
  %or.cond55.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %or.cond55.not.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  store i64 %i.t, ptr %0, align 8, !alias.scope !22233, !noalias !22232
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.z = add i64 %i.s, %i.l                       ; 2 uses
  %i.aa = icmp uge i64 %i.z, %i.l
  %.56.i.i.i = zext i1 %i.aa to i64
  store i64 %i.t, ptr %0, align 8, !alias.scope !22233, !noalias !22232
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.56.i.i.i, ptr %i.ab, align 8, !alias.scope !22233, !noalias !22232
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.k:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !22216, !noalias !22219
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ac, align 8, !alias.scope !22216, !noalias !22219
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22248)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22250
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !22251, !noalias !22252, !noundef !10
  %.not.i.i11.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i11.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i17.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultIBC_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2i_5error5ErrorENtNtBU_6marker4SendEL_EBM_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.ad), !noalias !22253
  %.pre.i.i12.i = load i64, ptr %i.b, align 8, !noalias !22250
  %.phi.trans.insert.i.i13.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre72.i.i14.i = load i64, ptr %.phi.trans.insert.i.i13.i, align 8, !range !343, !noalias !22250
  %.phi.trans.insert73.i.i15.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre74.i.i16.i = load i64, ptr %.phi.trans.insert73.i.i15.i, align 8, !noalias !22250
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i17.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i17.i: ; preds = %bb.m, %bb.l
  %i.af = phi i64 [ %.pre74.i.i16.i, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.ag = phi i64 [ %.pre72.i.i14.i, %bb.m ], [ 1, %bb.l ] ; 2 uses
  %i.ah = phi i64 [ %.pre.i.i12.i, %bb.m ], [ 0, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22250
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !22251, !noalias !22252, !noundef !10
  %.not54.i.i18.i = icmp eq ptr %i.aj, null
  br i1 %.not54.i.i18.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i24.i, label %bb.n

bb.n:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i17.i
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultIBC_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2i_5error5ErrorENtNtBU_6marker4SendEL_EBM_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.ai), !noalias !22256
  %.pre75.i.i19.i = load i64, ptr %i.a, align 8, !noalias !22250
  %.phi.trans.insert76.i.i20.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre77.i.i21.i = load i64, ptr %.phi.trans.insert76.i.i20.i, align 8, !range !343, !noalias !22250
  %.phi.trans.insert78.i.i22.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre79.i.i23.i = load i64, ptr %.phi.trans.insert78.i.i22.i, align 8, !noalias !22250
  %i.ak = call i64 @llvm.uadd.sat.i64(i64 %i.ah, i64 %.pre75.i.i19.i)
  %i.al = freeze i64 %.pre77.i.i21.i
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i24.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i24.i: ; preds = %bb.n, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i17.i
  %i.am = phi i64 [ %.pre79.i.i23.i, %bb.n ], [ 0, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i17.i ]
  %.fr5 = phi i64 [ %i.al, %bb.n ], [ 1, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i17.i ] ; 2 uses
  %i.an = phi i64 [ %i.ak, %bb.n ], [ %i.ah, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i.i17.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22250
  %i.ao = trunc nuw i64 %i.g to i1
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i24.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val.i.i29.i = load ptr, ptr %i.ap, align 8, !alias.scope !22251, !noalias !22252, !noundef !10
  %.not71.i.i30.i = icmp eq ptr %.val.i.i29.i, null
  %i.aq = trunc nuw i64 %i.ag to i1
  %i.ar = trunc i64 %.fr5 to i1
  %op.rdx3 = and i1 %.not71.i.i30.i, %i.ar
  %op.rdx4 = select i1 %op.rdx3, i1 %i.aq, i1 false
  br i1 %op.rdx4, label %bb.q, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1t_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3c_5error5ErrorENtNtBb_6marker4SendEL_EEEB22_9size_hintCs14kWLkQVSKO_14deltalake_core.exit34.i

bb.p:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultIBK_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorENtNtB5_6marker4SendEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit61.i.i24.i
  %i.as = and i64 %.fr5, %i.ag
  %or.cond55.not.i.i25.i = icmp eq i64 %i.as, 0
  br i1 %or.cond55.not.i.i25.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1t_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3c_5error5ErrorENtNtBb_6marker4SendEL_EEEB22_9size_hintCs14kWLkQVSKO_14deltalake_core.exit34.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.at = add i64 %i.am, %i.af                    ; 2 uses
  %i.au = icmp uge i64 %i.at, %i.af
  %.56.i.i26.i = zext i1 %i.au to i64
  store i64 %.56.i.i26.i, ptr %.sroa.5.i, align 8, !alias.scope !22259, !noalias !22260
  br label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1t_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3c_5error5ErrorENtNtBb_6marker4SendEL_EEEB22_9size_hintCs14kWLkQVSKO_14deltalake_core.exit34.i

_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1t_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3c_5error5ErrorENtNtBb_6marker4SendEL_EEEB22_9size_hintCs14kWLkQVSKO_14deltalake_core.exit34.i: ; preds = %bb.q, %bb.p, %bb.o
  %.sink81.i.i27.sroa.phi.i = phi ptr [ %.sroa.8.i, %bb.q ], [ %.sroa.5.i, %bb.p ], [ %.sroa.5.i, %bb.o ]
  %.sink.i.i28.i = phi i64 [ %i.at, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ]
  store i64 %.sink.i.i28.i, ptr %.sink81.i.i27.sroa.phi.i, align 8, !alias.scope !22259, !noalias !22260
  %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i = load i64, ptr %.sroa.5.i, align 8, !noalias !22261
  %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i = load i64, ptr %.sroa.8.i, align 8, !noalias !22261
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.av = call i64 @llvm.uadd.sat.i64(i64 %i.i, i64 %i.an)
  %i.aw = trunc nuw i64 %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i to i1 ; 2 uses
  %i.ax = add i64 %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i, %i.i ; 2 uses
  %i.ay = icmp uge i64 %i.ax, %i.i
  %narrow.i = select i1 %i.aw, i1 %i.ay, i1 false
  %.sroa.05.0.i = zext i1 %narrow.i to i64
  %.sroa.4.0.i = select i1 %i.aw, i64 %i.ax, i64 undef
  store i64 %i.av, ptr %0, align 8, !alias.scope !22216, !noalias !22219
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0.i, ptr %i.az, align 8, !alias.scope !22216, !noalias !22219
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.r:                                             ; preds = %bb.b
  store i64 %i.i, ptr %0, align 8, !alias.scope !22262, !noalias !22219
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ba, align 8, !alias.scope !22262, !noalias !22219
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_9size_hintCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1O_DNtNtNtB8_6traits8iterator8Iteratorp4ItemB1r_NtNtBa_6marker4SendEL_EEEEB4A_9size_hintCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i, %bb.j, %bb.k, %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1t_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3c_5error5ErrorENtNtBb_6marker4SendEL_EEEB22_9size_hintCs14kWLkQVSKO_14deltalake_core.exit34.i, %bb.r
  %.sink39.i = phi i64 [ 16, %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1t_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3c_5error5ErrorENtNtBb_6marker4SendEL_EEEB22_9size_hintCs14kWLkQVSKO_14deltalake_core.exit34.i ], [ 16, %bb.r ], [ 16, %bb.k ], [ 16, %bb.j ], [ 8, %bb.i ]
  %.sroa.4.0.sink.i = phi i64 [ %.sroa.4.0.i, %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB1t_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3c_5error5ErrorENtNtBb_6marker4SendEL_EEEB22_9size_hintCs14kWLkQVSKO_14deltalake_core.exit34.i ], [ %i.i, %bb.r ], [ 0, %bb.k ], [ %i.z, %bb.j ], [ 0, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %.sink39.i
  store i64 %.sroa.4.0.sink.i, ptr %i.bb, align 8, !alias.scope !22216, !noalias !22219
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtB2_11PartialDrop12partial_dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.b
  %.sroa.0.010.i = phi i64 [ 0, %bb.b ], [ %i.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.0.010.i ; 4 uses
  %i.e = add nuw i64 %.sroa.0.010.i, 1            ; 4 uses
  %i.f = load i64, ptr %i.d, align 8, !range !5974, !alias.scope !22265, !noundef !10
  %switch1.i.i = icmp slt i64 %i.f, -9223372036854775783
  br i1 %switch1.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.c
  %i.i = icmp eq i64 %i.e, %i.b
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.g:                                             ; preds = %.lr.ph
  %i.j = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.b
  br i1 %i.k, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.g, %bb.e ]
  %i.m = icmp eq i64 %i.e, %i.b
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.g
  %.sroa.0.1.i6 = phi i64 [ %i.j, %bb.g ], [ %i.e, %.body.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.n) #44
          to label %bb.g unwind label %bb.i

._crit_edge:                                      ; preds = %bb.g, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.i:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts1_1__NtB7_13FileSelectionNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1M_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @324, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts3_1__NtB7_15SnapshotWrapperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1O_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @325, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts5_1__NtB7_9DeltaScanNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1H_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @324, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts_1__NtB7_17MissingFilePolicyNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1P_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @325, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs0_NtCs5wg436RVUAP_24datafusion_physical_plan5emptyNtB5_9EmptyExecNtNtB7_14execution_plan13ExecutionPlan10properties(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(368) %0) unnamed_addr #7 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs0_NtCs5wg436RVUAP_24datafusion_physical_plan5emptyNtB5_9EmptyExecNtNtB7_14execution_plan13ExecutionPlan4name(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @326, i64 9 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs0_NtCs5wg436RVUAP_24datafusion_physical_plan5emptyNtB5_9EmptyExecNtNtB7_14execution_plan13ExecutionPlan6as_any(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(368) %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @327, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs0_NtCs5wg436RVUAP_24datafusion_physical_plan5emptyNtB5_9EmptyExecNtNtB7_14execution_plan13ExecutionPlan8children(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #17 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtCs68df2UN7hGg_6either8iteratorINtB7_6EitherIBC_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtBX_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBZ_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2f_3vec9into_iter8IntoIterbEENCNvNtB3w_16delta_datafusion24files_matching_predicate0EINtNtBX_3map3MapB2a_NCB5o_s_0EEIB6h_INtNtBX_7flatten7FlatMapINtNtNtB11_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB6h_INtNtNtB11_3ops5range5RangejENCNCNvMs1_NtB3s_8log_dataNtB9k_14LogDataHandler4iter00ENCB9e_0ENCNvMNtNtB3u_11transaction16conflict_checkerNtBag_15TransactionInfo10read_filess_0EEB2K_9size_hintB3w_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8, !range !343, !noundef !10
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22283)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !22285, !noalias !22286, !noundef !10
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !22287, !noalias !22292, !noundef !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val4.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !22296, !noalias !22297, !noundef !10
  %spec.select.i.i.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val4.i.i.i.i, i64 %.val.i.i.i.i)
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.7.0.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !22285, !noalias !22286, !noundef !10
  %.not54.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not54.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit66.i.i.i, label %bb.d
end_hunk_6
