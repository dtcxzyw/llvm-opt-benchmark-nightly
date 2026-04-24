inline.NumInlined: 12053
inline.NumDeleted: 5555
begin_hunk_0_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast12merge_schema22merge_arrow_vec_fields0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1Z_5error10ArrowErrorEEB4i_8try_folduNCINvNvB4i_12try_for_each4callB1V_INtNtNtBc_3ops12control_flow11ControlFlowB1V_ENcNtB7x_5Break0E0B7x_E0IB7y_B7x_EEB2R_:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !12997
  unreachable

common.resume.i.i:                                ; preds = %bb.al, %.body.i.i.i, %.thread.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit25.i.i.i, %bb.e
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.ci, %bb.al ], [ %.pn.i.i.i.i, %bb.e ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %.pn93.i.i.i, %.thread.i.i.i ], [ %.pn7.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit25.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNvXs7_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB5_5FieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.g
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast12merge_schema22merge_arrow_vec_fields0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1Z_5error10ArrowErrorEEB4i_8try_folduNCINvNvB4i_12try_for_each4callB1V_INtNtNtBc_3ops12control_flow11ControlFlowB1V_ENcNtB7x_5Break0E0B7x_E0IB7y_B7x_EEB2R_:bb.a
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bh)
          to label %bb.p unwind label %.loopexit.i, !noalias !12991

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit25.i.i.i: ; preds = %bb.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit13.i.i.i
  br i1 %.sroa.03.1.i.i.i, label %.thread.i.i.i, label %common.resume.i.i

.loopexit.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.o
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast12merge_schema22merge_arrow_vec_fields0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1Z_5error10ArrowErrorEEB4i_8try_folduNCINvNvB4i_12try_for_each4callB1V_INtNtNtBc_3ops12control_flow11ControlFlowB1V_ENcNtB7x_5Break0E0B7x_E0IB7y_B7x_EEB2R_:bb.a
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bj)
          to label %bb.s unwind label %.loopexit39.i, !noalias !12991

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit13.i.i.i: ; preds = %.body14.i.i.i, %5
  %.sroa.03.1.i.i.i = phi i1 [ %6, %5 ], [ true, %.body14.i.i.i ]
  %.sroa.02.0.i.i.i = phi i8 [ %.sroa.02.1.i.i.i, %5 ], [ %.sroa.02.2.i.i.i, %.body14.i.i.i ]
  %.pn7.i.i.i = phi { ptr, i32 } [ %lpad.phi43.i, %5 ], [ %.pn.i.i.i, %.body14.i.i.i ] ; 2 uses
  %4 = trunc nuw i8 %.sroa.02.0.i.i.i to i1
  br i1 %4, label %bb.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit25.i.i.i

.loopexit39.i:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i, %bb.r
  %.sroa.02.1.i.i.ph.i = phi i8 [ 1, %bb.r ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i ]
  %lpad.loopexit41.i = landingpad { ptr, i32 }
          cleanup
  br label %5

.loopexit.split-lp40.i:                           ; preds = %bb.z
  %lpad.loopexit.split-lp42.i = landingpad { ptr, i32 }
          cleanup
  br label %5

5:                                                ; preds = %.loopexit.split-lp40.i, %.loopexit39.i
  %.sroa.02.1.i.i.i = phi i8 [ %.sroa.02.1.i.i.ph.i, %.loopexit39.i ], [ 1, %.loopexit.split-lp40.i ] ; 2 uses
  %lpad.phi43.i = phi { ptr, i32 } [ %lpad.loopexit41.i, %.loopexit39.i ], [ %lpad.loopexit.split-lp42.i, %.loopexit.split-lp40.i ]
  %6 = trunc nuw i8 %.sroa.02.1.i.i.i to i1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit13.i.i.i

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !12991
end_hunk_2
begin_hunk_3_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast12merge_schema22merge_arrow_vec_fields0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1Z_5error10ArrowErrorEEB4i_8try_folduNCINvNvB4i_12try_for_each4callB1V_INtNtNtBc_3ops12control_flow11ControlFlowB1V_ENcNtB7x_5Break0E0B7x_E0IB7y_B7x_EEB2R_:bb.a
          to label %bb.u unwind label %bb.t, !noalias !12991

.body14.i.i.i:                                    ; preds = %bb.ab, %bb.w, %bb.t
  %.sroa.02.2.i.i.i = phi i8 [ 0, %bb.ab ], [ 1, %bb.t ], [ 1, %bb.w ]
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bq, %bb.ab ], [ %i.bk, %bb.t ], [ %i.bn, %bb.w ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit13.i.i.i unwind label %bb.ad, !noalias !12991

end_hunk_3
begin_hunk_4_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast12merge_schema22merge_arrow_vec_fields0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1Z_5error10ArrowErrorEEB4i_8try_folduNCINvNvB4i_12try_for_each4callB1V_INtNtNtBc_3ops12control_flow11ControlFlowB1V_ENcNtB7x_5Break0E0B7x_E0IB7y_B7x_EEB2R_:bb.a
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !13008
  %i.br = load <2 x i8>, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !noalias !13008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.14.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.14.0..sroa_idx.i.i, i64 6, i1 false), !noalias !12998
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit21.i.i.i unwind label %.loopexit39.i, !noalias !12991

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit21.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit19.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !12991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !12991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !12991
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit21.i.i.i
  %.sroa.11.0.i.i = phi i64 [ undef, %bb.aj ], [ %.sroa.11.0.copyload.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit21.i.i.i ]
  %.sroa.01.0.i.i = phi i64 [ -9223372036854775808, %bb.aj ], [ %.sroa.01.0.copyload.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit21.i.i.i ]
  %i.bs = phi <2 x i8> [ undef, %bb.aj ], [ %i.br, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit21.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !12991
  br label %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast12merge_schema22merge_arrow_vec_fields0Bb_.exit.i.i

end_hunk_4
begin_hunk_5_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast12merge_schema22merge_arrow_vec_fields0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1Z_5error10ArrowErrorEEB4i_8try_folduNCINvNvB4i_12try_for_each4callB1V_INtNtNtBc_3ops12control_flow11ControlFlowB1V_ENcNtB7x_5Break0E0B7x_E0IB7y_B7x_EEB2R_:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !12991
  unreachable

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit13.i.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit25.i.i.i unwind label %bb.ad, !noalias !12991

.thread.i.i.i:                                    ; preds = %bb.q, %.loopexit.split-lp.i, %.loopexit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit25.i.i.i
  %.pn93.i.i.i = phi { ptr, i32 } [ %.pn7.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit25.i.i.i ], [ %i.bi, %bb.q ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(112) %i.p) #44
          to label %common.resume.i.i unwind label %bb.ad, !noalias !12991

end_hunk_5
