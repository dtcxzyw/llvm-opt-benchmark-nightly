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
  %.sroa.4 = alloca ptr, align 8                  ; 5 uses
  %.sroa.74 = alloca ptr, align 8                 ; 4 uses
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
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8. = load ptr, ptr %.sroa.4, align 8, !alias.scope !15695, !noalias !15698, !noundef !10
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
  %.sroa.4 = alloca ptr, align 8                  ; 5 uses
  %.sroa.74 = alloca ptr, align 8                 ; 4 uses
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
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8. = load ptr, ptr %.sroa.4, align 8, !alias.scope !15721, !noalias !15724, !noundef !10
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
