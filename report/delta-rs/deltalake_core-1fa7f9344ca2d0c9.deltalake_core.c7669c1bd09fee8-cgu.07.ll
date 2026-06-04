inline.NumInlined: 9995
inline.NumDeleted: 4212
begin_hunk_0_@_RNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtB5_14MetricObserverNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore21with_exprs_and_inputs:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.0.sroa.41.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.65.i, i64 22, i1 false)
  %.sroa.0.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 %.sroa.152.0, ptr %.sroa.0.sroa.42.0..sroa_idx, align 8
  %.sroa.0.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 313
  store i8 %.sroa.153.0, ptr %.sroa.0.sroa.43.0..sroa_idx, align 1
  %.sroa.0.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 314
  store i8 %.sroa.154.0, ptr %.sroa.0.sroa.44.0..sroa_idx, align 2
  %.sroa.0.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 315
  store i8 %.sroa.155.0, ptr %.sroa.0.sroa.45.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i8 %i.amb, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.pu unwind label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.ame = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %.body22 unwind label %bb.pv

bb.pu:                                            ; preds = %bb.ps
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.pw

bb.pv:                                            ; preds = %bb.pt
  %i.amf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

.body22:                                          ; preds = %bb.pw, %bb.pt, %bb.b
  %.pn3 = phi { ptr, i32 } [ %.pn, %bb.b ], [ %i.amg, %bb.pw ], [ %i.ame, %bb.pt ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %2) #54
          to label %common.resume unwind label %bb.pz

bb.pw:                                            ; preds = %bb.pu
  %i.amg = landingpad { ptr, i32 }
          cleanup
  br label %.body22

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.pu
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.px

bb.px:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit
  %i.amh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.py

bb.py:                                            ; preds = %bb.px
  %i.ami = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %.body22, %bb.px
  %common.resume.op = phi { ptr, i32 } [ %i.amh, %bb.px ], [ %.pn3, %.body22 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.pz:                                            ; preds = %.body22, %.body, %bb.b
  %i.amj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtB5_14MetricObserverNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore35prevent_predicate_push_down_columns(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(352) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.c = load i8, ptr %i.b, align 8, !range !804, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(352) %1)
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18342
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !804, !noalias !18345, !noundef !3
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_RNvXs3_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_11RandomStateNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i, label %_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !20

_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.b
  %i.s = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !18356 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.c, label %_RNvXs3_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_11RandomStateNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i

bb.c:                                             ; preds = %_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #55, !noalias !18357
  unreachable

_RNvXs3_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_11RandomStateNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.b
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.s, %_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.o, %bb.b ] ; 3 uses
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.u = load <2 x i64>, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !18356
  %i.v = load i64, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !18356, !noundef !3
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !18356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @32, i64 32, i1 false), !noalias !18342
  store <2 x i64> %i.u, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !18342
  invoke void @_RINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2l_8adapters3map3MapINtNtNtB2n_5slice4iter4IterINtNtBS_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtB5k_14MetricObserverNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore35prevent_predicate_push_down_columns0EEB5o_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n)
          to label %_RINvXs7_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3setINtB6_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtNtB1Q_5slice4iter4IterINtNtB18_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtB4Z_14MetricObserverNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore35prevent_predicate_push_down_columns0EEB53_.exit unwind label %bb.d, !noalias !18342

bb.d:                                             ; preds = %_RNvXs3_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_11RandomStateNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.e, !noalias !18342

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !18342
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.x

_RINvXs7_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3setINtB6_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtNtB1Q_5slice4iter4IterINtNtB18_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtB4Z_14MetricObserverNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore35prevent_predicate_push_down_columns0EEB53_.exit: ; preds = %_RNvXs3_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_11RandomStateNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18342
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.z = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !804, !noalias !18358, !noundef !3
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit, !prof !20

_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f
  %i.ad = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !18369 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.g, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #55, !noalias !18370
  unreachable

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f, %_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.0.i.i.i5 = phi ptr [ %i.ad, %_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit ], [ %i.z, %bb.f ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @32, i64 32, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load <2 x i64>, ptr %.sroa.0.0.i.i.i5, align 8, !noalias !18369
  %i.ag = load i64, ptr %.sroa.0.0.i.i.i5, align 8, !noalias !18369, !noundef !3
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %.sroa.0.0.i.i.i5, align 8, !noalias !18369
  store <2 x i64> %i.af, ptr %.sroa.42.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXs7_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3setINtB6_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtNtB1Q_5slice4iter4IterINtNtB18_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtB4Z_14MetricObserverNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore35prevent_predicate_push_down_columns0EEB53_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtB5_14MetricObserverNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore6inputs(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(352) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #48 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #57
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8
  store i64 1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtB5_14MetricObserverNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore6schema(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(352) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBT_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBP_IB1H_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3k_5error5ErrorENtNtBT_6marker4SendEL_EEB4f_EENtNtNtBT_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !128, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1n_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1j_IB2c_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3Q_5error5ErrorENtNtB1n_6marker4SendEL_EEB4L_EEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1n_3ops4drop4Drop4drop0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_4list7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1m_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1i_IB2b_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3P_5error5ErrorENtNtB1m_6marker4SendEL_EEB4K_EEE7releaseNCNvXs4_B5_INtB5_6SenderB1h_ENtNtNtB1m_3ops4drop4Drop4drops_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_4zero7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1m_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1i_IB2b_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3P_5error5ErrorENtNtB1m_6marker4SendEL_EEB4K_EEE7releaseNCNvXs4_B5_INtB5_6SenderB1h_ENtNtNtB1m_3ops4drop4Drop4drops0_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBT_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBP_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3c_5error5ErrorENtNtBT_6marker4SendEL_EEB3N_EENtNtNtBT_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !128, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1n_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1j_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3I_5error5ErrorENtNtB1n_6marker4SendEL_EEB4j_EEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1n_3ops4drop4Drop4drop0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_4list7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1m_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1i_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3H_5error5ErrorENtNtB1m_6marker4SendEL_EEB4i_EEE7releaseNCNvXs4_B5_INtB5_6SenderB1h_ENtNtNtB1m_3ops4drop4Drop4drops_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_4zero7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1m_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1i_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3H_5error5ErrorENtNtB1m_6marker4SendEL_EEB4i_EEE7releaseNCNvXs4_B5_INtB5_6SenderB1h_ENtNtNtB1m_3ops4drop4Drop4drops0_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBT_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBP_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBT_6marker4SendEL_EEB3K_EENtNtNtBT_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !128, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1n_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1j_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1n_6marker4SendEL_EEB4g_EEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1n_3ops4drop4Drop4drop0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_4list7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1m_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1i_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1m_6marker4SendEL_EEB4f_EEE7releaseNCNvXs4_B5_INtB5_6SenderB1h_ENtNtNtB1m_3ops4drop4Drop4drops_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_4zero7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1m_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1i_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1m_6marker4SendEL_EEB4f_EEE7releaseNCNvXs4_B5_INtB5_6SenderB1h_ENtNtNtB1m_3ops4drop4Drop4drops0_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1s_5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !128, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1W_5error5ErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1n_3ops4drop4Drop4drop0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_4list7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1V_5error5ErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1h_ENtNtNtB1m_3ops4drop4Drop4drops_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_4zero7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1V_5error5ErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1h_ENtNtNtB1m_3ops4drop4Drop4drops0_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1s_5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !128, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1W_5error5ErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1n_3ops4drop4Drop4drop0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_4list7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1V_5error5ErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1h_ENtNtNtB1m_3ops4drop4Drop4drops_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_4zero7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1V_5error5ErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1h_ENtNtNtB1m_3ops4drop4Drop4drops0_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !128, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1n_3ops4drop4Drop4drop0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_4list7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1h_ENtNtNtB1m_3ops4drop4Drop4drops_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_4zero7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEE7releaseNCNvXs4_B5_INtB5_6SenderB1h_ENtNtNtB1m_3ops4drop4Drop4drops0_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBU_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2r_5error5ErrorEEINtNtBU_3pin3PinIB1O_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1r_NtNtBU_6marker4SendEL_EEEENtNtNtBU_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !128, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1o_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2W_5error5ErrorEEINtNtB1o_3pin3PinIB2j_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1V_NtNtB1o_6marker4SendEL_EEEEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1o_3ops4drop4Drop4drop0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_4list7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1n_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2V_5error5ErrorEEINtNtB1n_3pin3PinIB2i_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1U_NtNtB1n_6marker4SendEL_EEEEE7releaseNCNvXs4_B5_INtB5_6SenderB1h_ENtNtNtB1n_3ops4drop4Drop4drops_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_4zero7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1n_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2V_5error5ErrorEEINtNtB1n_3pin3PinIB2i_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1U_NtNtB1n_6marker4SendEL_EEEEE7releaseNCNvXs4_B5_INtB5_6SenderB1h_ENtNtNtB1n_3ops4drop4Drop4drops0_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBU_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1P_5error5ErrorEEINtNtBU_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1r_NtNtBU_6marker4SendEL_EEEENtNtNtBU_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !128, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1o_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2k_5error5ErrorEEINtNtB1o_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1V_NtNtB1o_6marker4SendEL_EEEEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1o_3ops4drop4Drop4drop0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_4list7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1n_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2j_5error5ErrorEEINtNtB1n_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1U_NtNtB1n_6marker4SendEL_EEEEE7releaseNCNvXs4_B5_INtB5_6SenderB1h_ENtNtNtB1n_3ops4drop4Drop4drops_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_4zero7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1n_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2j_5error5ErrorEEINtNtB1n_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1U_NtNtB1n_6marker4SendEL_EEEEE7releaseNCNvXs4_B5_INtB5_6SenderB1h_ENtNtNtB1n_3ops4drop4Drop4drops0_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBU_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBU_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1r_NtNtBU_6marker4SendEL_EEEENtNtNtBU_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !128, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1o_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB1o_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1V_NtNtB1o_6marker4SendEL_EEEEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtB1o_3ops4drop4Drop4drop0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_4list7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1n_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB1n_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1U_NtNtB1n_6marker4SendEL_EEEEE7releaseNCNvXs4_B5_INtB5_6SenderB1h_ENtNtNtB1n_3ops4drop4Drop4drops_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_4zero7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1n_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB1n_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1U_NtNtB1n_6marker4SendEL_EEEEE7releaseNCNvXs4_B5_INtB5_6SenderB1h_ENtNtNtB1n_3ops4drop4Drop4drops0_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCs4lawaffTVVK_9sqlparser3ast3dmlNtB5_6InsertNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1072) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1072) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1070
  %i.b = load i8, ptr %i.a, align 2, !range !2247, !noundef !3 ; 3 uses
  %.not = icmp eq i8 %i.b, 5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1070
  %i.d = load i8, ptr %i.c, align 2, !range !2247, !noundef !3 ; 3 uses
  %.not62 = icmp eq i8 %i.d, 5                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not62, label %bb.bf, label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %.not62, label %bb.d, label %bb.bf

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.f = load i8, ptr %i.e, align 8, !range !804, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %i.h = load i8, ptr %i.g, align 8, !range !804, !noundef !3
  %i.i = sub nsw i8 %i.f, %i.h                    ; 2 uses
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.bf

bb.e:                                             ; preds = %bb.b
  %i.k = zext nneg i8 %i.b to i64
  %i.l = zext nneg i8 %i.d to i64
  %i.m = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.k, i64 %i.l)
  %i.n = icmp eq i8 %i.b, %i.d
  br i1 %i.n, label %bb.d, label %bb.bf

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1065
  %i.p = load i8, ptr %i.o, align 1, !range !804, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1065
  %i.r = load i8, ptr %i.q, align 1, !range !804, !noundef !3
  %i.s = sub nsw i8 %i.p, %i.r                    ; 2 uses
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.bf

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18374)
  %i.w = load i64, ptr %i.u, align 8, !range !17168, !alias.scope !18371, !noalias !18374, !noundef !3
  %i.x = icmp ne i64 %i.w, 6                      ; 2 uses
  %i.y = zext i1 %i.x to i8
  %i.z = load i64, ptr %i.v, align 8, !range !17168, !alias.scope !18374, !noalias !18371, !noundef !3
  %i.aa = icmp ne i64 %i.z, 6                     ; 3 uses
  %.neg.i = sext i1 %i.aa to i8
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.aa, label %bb.l, label %bb.j

bb.i:                                             ; preds = %bb.g
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = add nsw i8 %.neg.i, %i.y
  br label %_RNvXsyT_NtCs4lawaffTVVK_9sqlparser3astNtB6_11TableObjectNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.val.i = load ptr, ptr %i.ac, align 8, !alias.scope !18371, !noalias !18374, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.val1.i = load i64, ptr %i.ad, align 8, !alias.scope !18371, !noalias !18374, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 400
  %.val2.i = load ptr, ptr %i.ae, align 8, !alias.scope !18374, !noalias !18371, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 408
  %.val3.i = load i64, ptr %i.af, align 8, !alias.scope !18374, !noalias !18371, !noundef !3
  %i.ag = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2.i, i64 noundef %.val3.i), !noalias !18376
  br label %_RNvXsyT_NtCs4lawaffTVVK_9sqlparser3astNtB6_11TableObjectNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.l:                                             ; preds = %bb.h
  %i.ah = tail call fastcc noundef i8 @_RNvXsiq_NtCs4lawaffTVVK_9sqlparser3astNtB6_8FunctionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.v) #56, !inline_history !18377
  br label %_RNvXsyT_NtCs4lawaffTVVK_9sqlparser3astNtB6_11TableObjectNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXsyT_NtCs4lawaffTVVK_9sqlparser3astNtB6_11TableObjectNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.0.0.i = phi i8 [ %i.ah, %bb.l ], [ %i.ab, %bb.j ], [ %i.ag, %bb.k ] ; 2 uses
  %i.ai = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.ai, label %bb.m, label %bb.bf

bb.m:                                             ; preds = %_RNvXsyT_NtCs4lawaffTVVK_9sqlparser3astNtB6_11TableObjectNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !range !57, !noundef !3
  %.not64 = icmp eq i64 %i.ak, -9223372036854775808
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !range !57, !noundef !3
  %.not65 = icmp eq i64 %i.am, -9223372036854775808 ; 2 uses
  br i1 %.not64, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not65, label %bb.bf, label %bb.r

bb.o:                                             ; preds = %bb.m
  br i1 %.not65, label %bb.p, label %bb.bf

bb.p:                                             ; preds = %bb.r, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !3, !noundef !3
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !3 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !3, !noundef !3
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.au = load i64, ptr %i.at, align 8, !noundef !3 ; 2 uses
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 144115188075855872) %i.au, i64 range(i64 0, 144115188075855872) %i.aq) ; 2 uses
  %exitcond.not.i158 = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %exitcond.not.i158, label %._crit_edge, label %.lr.ph

bb.q:                                             ; preds = %.lr.ph
  %i.av = add nuw nsw i64 %.sroa.01.0.i159, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.av, %.sroa.0.0.i.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.q, %bb.p
  %i.aw = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 144115188075855872) %i.aq, i64 range(i64 0, 144115188075855872) %i.au)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph:                                           ; preds = %bb.p, %bb.q
  %.sroa.01.0.i159 = phi i64 [ %i.av, %bb.q ], [ 0, %bb.p ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.ao, i64 %.sroa.01.0.i159
  %i.ay = getelementptr inbounds nuw [64 x i8], ptr %i.as, i64 %.sroa.01.0.i159
  %i.az = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ay) ; 2 uses
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.q, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph, %._crit_edge
  %.sroa.0.0.i97 = phi i8 [ %i.aw, %._crit_edge ], [ %i.az, %.lr.ph ] ; 2 uses
  %i.bb = icmp eq i8 %.sroa.0.0.i97, 0
  br i1 %i.bb, label %bb.s, label %bb.bf

bb.r:                                             ; preds = %bb.n
  %i.bc = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.al) ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.p, label %bb.bf

bb.s:                                             ; preds = %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1066
  %i.bf = load i8, ptr %i.be, align 2, !range !804, !noundef !3
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 1066
  %i.bh = load i8, ptr %i.bg, align 2, !range !804, !noundef !3
  %i.bi = sub nsw i8 %i.bf, %i.bh                 ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.t, label %bb.bf

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.bl = load ptr, ptr %i.bk, align 8, !align !356, !noundef !3 ; 2 uses
  %.not67 = icmp eq ptr %i.bl, null
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 1056
  %i.bn = load ptr, ptr %i.bm, align 8, !align !356, !noundef !3 ; 2 uses
  %.not68 = icmp eq ptr %i.bn, null               ; 2 uses
  br i1 %.not67, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not68, label %bb.bf, label %bb.x

bb.v:                                             ; preds = %bb.t
  br i1 %.not68, label %bb.w, label %bb.bf

bb.w:                                             ; preds = %bb.x, %bb.v
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !3, !noundef !3
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.br = load i64, ptr %i.bq, align 8, !noundef !3
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !3, !noundef !3
end_hunk_0
begin_hunk_1_@_RNvXsdK_NtCs4lawaffTVVK_9sqlparser3astNtB6_8OnInsertNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp:bb.a
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast10AssignmentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2G_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.ac:                                            ; preds = %bb.aa
  %i.db = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.ba) #56, !inline_history !21834
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast10AssignmentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2G_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.ad:                                            ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21838)
  %i.dc = trunc nuw i64 %i.a to i1
  %i.dd = trunc nuw i64 %i.d to i1                ; 2 uses
  br i1 %i.dc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.dd, label %bb.aj, label %bb.ag

bb.af:                                            ; preds = %bb.ad
  br i1 %i.dd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.de = sub nsw i64 %i.a, %i.d
  %i.df = trunc nsw i64 %i.de to i8
  br label %_RNvXsee_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ConflictTargetNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.ah:                                            ; preds = %bb.af
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !21835, !noalias !21838, !nonnull !3, !noundef !3
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !21835, !noalias !21838, !noundef !3 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !21838, !noalias !21835, !nonnull !3, !noundef !3
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !21838, !noalias !21835, !noundef !3 ; 2 uses
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 144115188075855872) %i.dn, i64 range(i64 0, 144115188075855872) %i.dj) ; 2 uses
  %exitcond.not.i.i63 = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %exitcond.not.i.i63, label %._crit_edge67, label %.lr.ph66

bb.ai:                                            ; preds = %.lr.ph66
  %i.do = add nuw nsw i64 %.sroa.01.0.i.i64, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.do, %.sroa.0.0.i.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge67, label %.lr.ph66

._crit_edge67:                                    ; preds = %bb.ai, %bb.ah
  %i.dp = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 144115188075855872) %i.dj, i64 range(i64 0, 144115188075855872) %i.dn)
  br label %_RNvXsee_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ConflictTargetNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

.lr.ph66:                                         ; preds = %bb.ah, %bb.ai
  %.sroa.01.0.i.i64 = phi i64 [ %i.do, %bb.ai ], [ 0, %bb.ah ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [64 x i8], ptr %i.dh, i64 %.sroa.01.0.i.i64
  %i.dr = getelementptr inbounds nuw [64 x i8], ptr %i.dl, i64 %.sroa.01.0.i.i64
  %i.ds = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dr), !noalias !21840 ; 2 uses
  %i.dt = icmp eq i8 %i.ds, 0
  br i1 %i.dt, label %bb.ai, label %_RNvXsee_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ConflictTargetNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.aj:                                            ; preds = %bb.ae
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i5 = load ptr, ptr %i.du, align 8, !alias.scope !21835, !noalias !21838, !nonnull !3, !noundef !3
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load i64, ptr %i.dv, align 8, !alias.scope !21835, !noalias !21838, !noundef !3
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load ptr, ptr %i.dw, align 8, !alias.scope !21838, !noalias !21835, !nonnull !3, !noundef !3
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3.i = load i64, ptr %i.dx, align 8, !alias.scope !21838, !noalias !21835, !noundef !3
  %i.dy = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i5, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2.i, i64 noundef %.val3.i), !noalias !21840
  br label %_RNvXsee_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ConflictTargetNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXsee_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ConflictTargetNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %.lr.ph66, %bb.ag, %._crit_edge67, %bb.aj
  %.sroa.0.0.i4 = phi i8 [ %i.dy, %bb.aj ], [ %i.df, %bb.ag ], [ %i.dp, %._crit_edge67 ], [ %i.ds, %.lr.ph66 ] ; 2 uses
  %i.dz = icmp eq i8 %.sroa.0.0.i4, 0
  br i1 %i.dz, label %bb.p, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast10AssignmentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2G_s_0ECs14kWLkQVSKO_14deltalake_core.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXsdU_NtCs4lawaffTVVK_9sqlparser3astNtB6_13InsertAliasesNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load i64, ptr %i.b, align 8, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val8 = load i64, ptr %i.d, align 8, !noundef !3
  %i.e = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val7, i64 noundef %.val8) ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !range !57, !noundef !3
  %.not = icmp eq i64 %i.h, -9223372036854775808
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !range !57, !noundef !3 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not5 = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not5, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.e

bb.d:                                             ; preds = %bb.b
  %.not4 = icmp ne i64 %i.j, -9223372036854775808
  %. = sext i1 %.not4 to i8
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !noundef !3 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load i64, ptr %i.q, align 8, !noundef !3 ; 2 uses
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 144115188075855872) %i.r, i64 range(i64 0, 144115188075855872) %i.n) ; 2 uses
  %exitcond.not.i10 = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %exitcond.not.i10, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.s = add nuw nsw i64 %.sroa.01.0.i11, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %.sroa.0.0.i.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %i.t = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 144115188075855872) %i.n, i64 range(i64 0, 144115188075855872) %i.r)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.01.0.i11 = phi i64 [ %i.s, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %.sroa.01.0.i11
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %.sroa.01.0.i11
  %i.w = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.v) ; 2 uses
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.f, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph, %._crit_edge, %bb.c, %bb.d, %bb.a
  %.sroa.0.0 = phi i8 [ 1, %bb.c ], [ %i.e, %bb.a ], [ %., %bb.d ], [ %i.t, %._crit_edge ], [ %i.w, %.lr.ph ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXsdY_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TopQuantityNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5725, !noundef !3
  %i.b = icmp eq i64 %i.a, 69                     ; 2 uses
  %i.c = zext i1 %i.b to i8
  %i.d = load i64, ptr %1, align 8, !range !5725, !noundef !3
  %i.e = icmp eq i64 %i.d, 69                     ; 3 uses
  %.neg = sext i1 %i.e to i8
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = add nsw i8 %.neg, %i.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) #56
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  %.sroa.0.0 = phi i8 [ %i.l, %bb.g ], [ %i.f, %bb.d ], [ %i.g, %bb.e ]
  ret i8 %.sroa.0.0

bb.g:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !3
  %i.l = tail call i8 @llvm.ucmp.i8.i64(i64 %i.i, i64 %i.k)
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 16 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = tail call noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21841
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.c) #56
          to label %bb.b unwind label %bb.c, !inline_history !21844

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !21841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21841
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 112, i64 noundef 16) #48
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr readonly captures(address, read_provenance) %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [144 x i8], align 8               ; 6 uses
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21845)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21848)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21851
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.0.val)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21851
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke void @_RNvXNtCsbpG6u9KFjWn_8indexmap3mapINtB2_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.f)
          to label %bb.d unwind label %bb.c, !noalias !21853

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.i.i = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.g, %bb.c ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #54
          to label %bb.i unwind label %bb.f, !noalias !21853

bb.c:                                             ; preds = %.noexc
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21851
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21857)
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 128
  %i.j = load <2 x i64>, ptr %i.i, align 8, !alias.scope !21859, !noalias !21860
  invoke void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h)
          to label %bb.h unwind label %bb.e, !noalias !21853

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.b) #54
          to label %bb.b unwind label %bb.f, !noalias !21853

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !21853
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <2 x i64> %i.j, ptr %i.n, align 8, !alias.scope !21854, !noalias !21861
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !21862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21851
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !21862
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !21862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21851
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull align 8 dereferenceable(144) %i.d, i64 144, i1 false), !noalias !21845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.e

bb.i:                                             ; preds = %bb.g, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.g ], [ %.pn.i.i, %bb.b ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 144, i64 noundef 8) #48
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 16 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = tail call noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21863
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.c) #56
          to label %bb.b unwind label %bb.c, !inline_history !21866

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !21863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21863
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #48
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCsbvkFyIu7lgC_4core5alloc6layoutNtB5_11LayoutErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @496, i64 noundef 11)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCsjyY8HP3IvQ6_12object_store6client5retryNtB5_11RetryConfigNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @499, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @500, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @497, ptr noalias noundef nonnull readonly captures(address, read_provenance) @501, i64 noundef 11, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @308, ptr noalias noundef nonnull readonly captures(address, read_provenance) @502, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @498)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connectionNtB5_10HttpClientNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @504, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @503)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXseC_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11GroupByExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !57, !noundef !3
  %i.b = icmp ne i64 %i.a, -9223372036854775808   ; 2 uses
  %i.c = zext i1 %i.b to i8
  %i.d = load i64, ptr %1, align 8, !range !57, !noundef !3
  %i.e = icmp ne i64 %i.d, -9223372036854775808   ; 3 uses
  %.neg = sext i1 %i.e to i8
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.i, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = add nsw i8 %.neg, %i.c
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19GroupByWithModifierINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2X_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !3 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noundef !3 ; 2 uses
  %.sroa.0.0.i19 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 28120036697727976) %i.n, i64 range(i64 0, 28120036697727976) %i.j) ; 2 uses
  %exitcond.not43 = icmp eq i64 %.sroa.0.0.i19, 0
  br i1 %exitcond.not43, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19GroupByWithModifierNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit
  %exitcond.not = icmp eq i64 %i.p, %.sroa.0.0.i19
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %i.o = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.j, i64 %i.n)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19GroupByWithModifierINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2X_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.01.0.i44 = phi i64 [ %i.p, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.p = add nuw i64 %.sroa.01.0.i44, 1           ; 2 uses
  %i.q = getelementptr inbounds nuw [328 x i8], ptr %i.h, i64 %.sroa.01.0.i44 ; 2 uses
  %i.r = getelementptr inbounds nuw [328 x i8], ptr %i.l, i64 %.sroa.01.0.i44 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21875)
  %i.s = load i64, ptr %i.q, align 8, !range !5717, !alias.scope !21877, !noalias !21878, !noundef !3 ; 2 uses
  %i.t = add nsw i64 %i.s, -69
  %i.u = icmp samesign ugt i64 %i.s, 68
  %i.v = select i1 %i.u, i64 %i.t, i64 3          ; 2 uses
  %i.w = load i64, ptr %i.r, align 8, !range !5717, !alias.scope !21878, !noalias !21877, !noundef !3 ; 2 uses
  %i.x = add nsw i64 %i.w, -69
  %i.y = icmp samesign ugt i64 %i.w, 68
  %i.z = select i1 %i.y, i64 %i.x, i64 3          ; 2 uses
  %i.aa = icmp eq i64 %i.v, 3
  %i.ab = icmp eq i64 %i.z, 3
  %or.cond.i.i = and i1 %i.aa, %i.ab
  br i1 %or.cond.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ac = tail call i8 @llvm.scmp.i8.i64(i64 %i.v, i64 %i.z)
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19GroupByWithModifierNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %.lr.ph
end_hunk_1
begin_hunk_2_@_RNvXsiK_NtCs4lawaffTVVK_9sqlparser3astNtB6_20FunctionArgumentListNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp:bb.a
  br i1 %i.u, label %bb.d, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i64, ptr %i.x, align 8, !noundef !3 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !3, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !3 ; 2 uses
  %.sroa.0.0.i20 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 27450512014448738) %i.ac, i64 range(i64 0, 27450512014448738) %i.y) ; 2 uses
  %exitcond48.not72 = icmp eq i64 %.sroa.0.0.i20, 0
  br i1 %exitcond48.not72, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread._crit_edge, label %.lr.ph75

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit
  %exitcond48.not = icmp eq i64 %i.ae, %.sroa.0.0.i20
  br i1 %exitcond48.not, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread._crit_edge, label %.lr.ph75

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread._crit_edge: ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.g
  %i.ad = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.y, i64 %i.ac)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph75:                                         ; preds = %bb.g, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.01.0.i1373 = phi i64 [ %i.ae, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread ], [ 0, %bb.g ] ; 3 uses
  %i.ae = add nuw i64 %.sroa.01.0.i1373, 1        ; 2 uses
  %i.af = getelementptr inbounds nuw [336 x i8], ptr %i.w, i64 %.sroa.01.0.i1373 ; 13 uses
  %i.ag = getelementptr inbounds nuw [336 x i8], ptr %i.aa, i64 %.sroa.01.0.i1373 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22303)
  %i.ah = load i64, ptr %i.af, align 8, !range !20187, !alias.scope !22305, !noalias !22306, !noundef !3 ; 3 uses
  %i.ai = icmp ne i64 %i.ah, 73
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nsw i64 %i.ah, -69
  %i.ak = icmp samesign ugt i64 %i.ah, 68
  %i.al = select i1 %i.ak, i64 %i.aj, i64 4       ; 3 uses
  %i.am = load i64, ptr %i.ag, align 8, !range !20187, !alias.scope !22306, !noalias !22305, !noundef !3 ; 3 uses
  %i.an = icmp ne i64 %i.am, 73
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nsw i64 %i.am, -69
  %i.ap = icmp samesign ugt i64 %i.am, 68
  %i.aq = select i1 %i.ap, i64 %i.ao, i64 4       ; 2 uses
  %.not.i.i = icmp eq i64 %i.al, %i.aq
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph75
  switch i64 %i.al, label %bb.j [
    i64 0, label %bb.k
    i64 1, label %bb.l
    i64 2, label %bb.n
    i64 3, label %bb.o
    i64 4, label %bb.v
    i64 5, label %bb.x
    i64 6, label %bb.y
    i64 7, label %bb.z
  ]

bb.i:                                             ; preds = %.lr.ph75
  %i.ar = tail call i8 @llvm.scmp.i8.i64(i64 %i.al, i64 %i.aq)
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val.i.i = load i8, ptr %i.as, align 8, !range !804, !alias.scope !22305, !noalias !22306, !noundef !3
  %.val2.i.i = load i8, ptr %i.at, align 8, !range !804, !alias.scope !22306, !noalias !22305, !noundef !3
  %i.au = sub nsw i8 %.val.i.i, %.val2.i.i
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !22305, !noalias !22306, !nonnull !3, !noundef !3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !22305, !noalias !22306, !noundef !3 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !22306, !noalias !22305, !nonnull !3, !noundef !3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !22306, !noalias !22305, !noundef !3 ; 2 uses
  %.sroa.0.0.i.i25 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 6987403058223316) %i.bc, i64 range(i64 0, 6987403058223316) %i.ay) ; 2 uses
  %exitcond47.not69 = icmp eq i64 %.sroa.0.0.i.i25, 0
  br i1 %exitcond47.not69, label %._crit_edge, label %.lr.ph71

bb.m:                                             ; preds = %.lr.ph71
  %i.bd = add nuw i64 %.sroa.01.0.i2870, 1        ; 2 uses
  %exitcond47.not = icmp eq i64 %i.bd, %.sroa.0.0.i.i25
  br i1 %exitcond47.not, label %._crit_edge, label %.lr.ph71

._crit_edge:                                      ; preds = %bb.m, %bb.l
  %i.be = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.ay, i64 %i.bc)
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

.lr.ph71:                                         ; preds = %bb.l, %bb.m
  %.sroa.01.0.i2870 = phi i64 [ %i.bd, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [1320 x i8], ptr %i.aw, i64 %.sroa.01.0.i2870
  %i.bg = getelementptr inbounds nuw [1320 x i8], ptr %i.ba, i64 %.sroa.01.0.i2870
  %i.bh = tail call fastcc noundef i8 @_RNvXsbq_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11OrderByExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1320) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1320) %i.bg) #56, !noalias !22307, !inline_history !22308 ; 2 uses
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.n:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bl = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.bk) #56, !inline_history !22309
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22313)
  %i.bo = load i8, ptr %i.bm, align 8, !range !804, !alias.scope !22310, !noalias !22313, !noundef !3 ; 2 uses
  %i.bp = load i8, ptr %i.bn, align 8, !range !804, !alias.scope !22313, !noalias !22310, !noundef !3 ; 2 uses
  %i.bq = and i8 %i.bp, %i.bo
  %or.cond.not.i = icmp eq i8 %i.bq, 0
  br i1 %or.cond.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.br = sub nsw i8 %i.bo, %i.bp
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.q:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !22310, !noalias !22313, !align !356, !noundef !3 ; 2 uses
  %.not.i23 = icmp eq ptr %i.bt, null
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !22313, !noalias !22310, !align !356, !noundef !3 ; 2 uses
  %.not6.i = icmp eq ptr %i.bv, null              ; 2 uses
  br i1 %.not.i23, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %.not6.i, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.u

bb.s:                                             ; preds = %bb.q
  br i1 %.not6.i, label %bb.t, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  %i.bx = load i8, ptr %i.bw, align 1, !range !804, !alias.scope !22310, !noalias !22313, !noundef !3
  %i.by = getelementptr inbounds nuw i8, ptr %i.ag, i64 9
  %i.bz = load i8, ptr %i.by, align 1, !range !804, !alias.scope !22313, !noalias !22310, !noundef !3
  %i.ca = sub nsw i8 %i.bx, %i.bz
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.r
  %i.cb = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.bv) #56, !noalias !22315, !inline_history !22316 ; 2 uses
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %bb.t, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.v:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22320)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.af, i64 328
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ag, i64 328
  %.val.i21 = load i8, ptr %i.cd, align 8, !range !804, !alias.scope !22317, !noalias !22320, !noundef !3
  %.val4.i = load i8, ptr %i.ce, align 8, !range !804, !alias.scope !22320, !noalias !22317, !noundef !3
  %i.cf = sub nsw i8 %.val.i21, %.val4.i          ; 2 uses
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %bb.w, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.w:                                             ; preds = %bb.v
  %i.ch = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.ag) #56, !inline_history !22322
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ck = tail call fastcc noundef i8 @_RNvXso_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cj) #56, !inline_history !22309
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.y:                                             ; preds = %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val3.i.i = load i8, ptr %i.cl, align 8, !range !804, !alias.scope !22305, !noalias !22306, !noundef !3
  %.val4.i.i = load i8, ptr %i.cm, align 8, !range !804, !alias.scope !22306, !noalias !22305, !noundef !3
  %i.cn = sub nsw i8 %.val3.i.i, %.val4.i.i
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.z:                                             ; preds = %bb.h
  %i.co = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.cq = tail call fastcc noundef range(i8 -1, 3) i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.co, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cp) #56, !inline_history !22323
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.p, %._crit_edge, %bb.i, %bb.k, %bb.n, %bb.x, %bb.y, %bb.z
  %.sroa.0.0.i.i = phi i8 [ %i.ar, %bb.i ], [ %i.au, %bb.k ], [ %i.cq, %bb.z ], [ %i.bl, %bb.n ], [ %i.br, %bb.p ], [ %i.ch, %bb.w ], [ %i.ck, %bb.x ], [ %i.cn, %bb.y ], [ %i.be, %._crit_edge ], [ %i.ca, %bb.t ], [ %i.cb, %bb.u ], [ %i.cf, %bb.v ]
  %.sroa.0.0.i.i.fr = freeze i8 %.sroa.0.0.i.i    ; 2 uses
  %i.cr = icmp eq i8 %.sroa.0.0.i.i.fr, 0
  br i1 %i.cr, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph, %bb.r, %bb.s, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit, %.lr.ph71, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread._crit_edge, %bb.b, %bb.c, %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit, %bb.f
  %.sroa.0.0 = phi i8 [ %i.bh, %.lr.ph71 ], [ %i.r, %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.t, %bb.f ], [ -1, %bb.c ], [ 1, %bb.b ], [ %i.ad, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread._crit_edge ], [ %.sroa.0.0.i.i.fr, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit ], [ -1, %bb.s ], [ 1, %bb.r ], [ %i.p, %.lr.ph ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_IB1J_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3m_5error5ErrorENtNtBV_6marker4SendEL_EEB4h_EENtNtNtBV_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !128, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1s_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1o_IB2h_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3V_5error5ErrorENtNtB1s_6marker4SendEL_EEB4Q_EEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtB1s_3ops4drop4Drop4drop0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_4list7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1r_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1n_IB2g_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3U_5error5ErrorENtNtB1r_6marker4SendEL_EEB4P_EEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1m_ENtNtNtB1r_3ops4drop4Drop4drops_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_4zero7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1r_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1n_IB2g_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3U_5error5ErrorENtNtB1r_6marker4SendEL_EEB4P_EEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1m_ENtNtNtB1r_3ops4drop4Drop4drops0_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3e_5error5ErrorENtNtBV_6marker4SendEL_EEB3P_EENtNtNtBV_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !128, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1s_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1o_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3N_5error5ErrorENtNtB1s_6marker4SendEL_EEB4o_EEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtB1s_3ops4drop4Drop4drop0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_4list7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1r_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1n_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3M_5error5ErrorENtNtB1r_6marker4SendEL_EEB4n_EEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1m_ENtNtNtB1r_3ops4drop4Drop4drops_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_4zero7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1r_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1n_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3M_5error5ErrorENtNtB1r_6marker4SendEL_EEB4n_EEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1m_ENtNtNtB1r_3ops4drop4Drop4drops0_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBV_6marker4SendEL_EEB3M_EENtNtNtBV_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !128, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1s_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1o_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1s_6marker4SendEL_EEB4l_EEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtB1s_3ops4drop4Drop4drop0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_4list7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1r_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1n_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1r_6marker4SendEL_EEB4k_EEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1m_ENtNtNtB1r_3ops4drop4Drop4drops_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_4zero7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1r_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1n_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1r_6marker4SendEL_EEB4k_EEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1m_ENtNtNtB1r_3ops4drop4Drop4drops0_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1u_5error5ErrorEENtNtNtBV_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !128, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB21_5error5ErrorEEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtB1s_3ops4drop4Drop4drop0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_4list7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB20_5error5ErrorEEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1m_ENtNtNtB1r_3ops4drop4Drop4drops_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_4zero7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB20_5error5ErrorEEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1m_ENtNtNtB1r_3ops4drop4Drop4drops0_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1u_5error5ErrorEENtNtNtBV_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !128, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB21_5error5ErrorEEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtB1s_3ops4drop4Drop4drop0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_4list7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB20_5error5ErrorEEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1m_ENtNtNtB1r_3ops4drop4Drop4drops_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_4zero7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB20_5error5ErrorEEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1m_ENtNtNtB1r_3ops4drop4Drop4drops0_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEENtNtNtBV_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !128, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtB1s_3ops4drop4Drop4drop0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_4list7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1m_ENtNtNtB1r_3ops4drop4Drop4drops_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_4zero7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1m_ENtNtNtB1r_3ops4drop4Drop4drops0_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorEEINtNtBW_3pin3PinIB1Q_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEENtNtNtBW_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !128, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1t_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB31_5error5ErrorEEINtNtB1t_3pin3PinIB2o_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB20_NtNtB1t_6marker4SendEL_EEEEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtB1t_3ops4drop4Drop4drop0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_4list7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1s_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB30_5error5ErrorEEINtNtB1s_3pin3PinIB2n_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1Z_NtNtB1s_6marker4SendEL_EEEEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1m_ENtNtNtB1s_3ops4drop4Drop4drops_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_4zero7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1s_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB30_5error5ErrorEEINtNtB1s_3pin3PinIB2n_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1Z_NtNtB1s_6marker4SendEL_EEEEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1m_ENtNtNtB1s_3ops4drop4Drop4drops0_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1R_5error5ErrorEEINtNtBW_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEENtNtNtBW_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !128, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1t_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2p_5error5ErrorEEINtNtB1t_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB20_NtNtB1t_6marker4SendEL_EEEEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtB1t_3ops4drop4Drop4drop0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_4list7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1s_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2o_5error5ErrorEEINtNtB1s_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1Z_NtNtB1s_6marker4SendEL_EEEEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1m_ENtNtNtB1s_3ops4drop4Drop4drops_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_4zero7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1s_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2o_5error5ErrorEEINtNtB1s_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1Z_NtNtB1s_6marker4SendEL_EEEEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1m_ENtNtNtB1s_3ops4drop4Drop4drops0_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBW_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEENtNtNtBW_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !128, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1t_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB1t_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB20_NtNtB1t_6marker4SendEL_EEEEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtB1t_3ops4drop4Drop4drop0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_4list7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1s_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB1s_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1Z_NtNtB1s_6marker4SendEL_EEEEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1m_ENtNtNtB1s_3ops4drop4Drop4drops_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_4zero7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB1s_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB1s_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1Z_NtNtB1s_6marker4SendEL_EEEEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1m_ENtNtNtB1s_3ops4drop4Drop4drops0_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !22089, !noundef !3 ; 3 uses
  %i.b = load i64, ptr %1, align 16, !range !22089, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.a, label %default.unreachable13 [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.l
    i64 3, label %bb.t
    i64 4, label %bb.u
    i64 5, label %bb.v
    i64 6, label %bb.w
    i64 7, label %bb.x
    i64 8, label %bb.y
    i64 9, label %bb.z
    i64 10, label %bb.aa
  ]

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i8 @llvm.scmp.i8.i64(i64 %i.a, i64 %i.b)
  br label %_RNvXsw_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

default.unreachable13:                            ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call noundef i8 @_RNvXs2_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(312) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(312) %i.e)
  br label %_RNvXsw_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22327)
  %i.i = tail call fastcc noundef i8 @_RNvXsj_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h) #56, !inline_history !22329 ; 2 uses
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_RNvXsw_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !22324, !noalias !22327, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i64, ptr %i.m, align 16, !alias.scope !22324, !noalias !22327, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !22327, !noalias !22324, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load i64, ptr %i.q, align 16, !alias.scope !22327, !noalias !22324, !noundef !3
  %i.s = tail call fastcc noundef i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies10ConstraintINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB3a_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.l, i64 noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.p, i64 noundef %i.r) #56, !noalias !22330, !inline_history !22329 ; 2 uses
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.g, label %_RNvXsw_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = load ptr, ptr %i.u, align 16, !alias.scope !22324, !noalias !22327, !nonnull !3, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.y = load ptr, ptr %i.x, align 16, !alias.scope !22327, !noalias !22324, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = tail call fastcc noundef i8 @_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.w, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.z) #56, !noalias !22330, !inline_history !22329 ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %_RNvXsw_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ad = load i8, ptr %i.ac, align 8, !range !804, !alias.scope !22324, !noalias !22327, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.af = load i8, ptr %i.ae, align 8, !range !804, !alias.scope !22327, !noalias !22324, !noundef !3
  %i.ag = sub nsw i8 %i.ad, %i.af                 ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %_RNvXsw_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.aj = load i8, ptr %i.ai, align 1, !range !804, !alias.scope !22324, !noalias !22327, !noundef !3
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.al = load i8, ptr %i.ak, align 1, !range !804, !alias.scope !22327, !noalias !22324, !noundef !3
  %i.am = sub nsw i8 %i.aj, %i.al                 ; 2 uses
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.j, label %_RNvXsw_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ap = load ptr, ptr %i.ao, align 16, !alias.scope !22324, !noalias !22327, !nonnull !3, !noundef !3
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !22324, !noalias !22327, !noundef !3
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.at = load ptr, ptr %i.as, align 16, !alias.scope !22327, !noalias !22324, !nonnull !3, !noundef !3
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !22327, !noalias !22324, !noundef !3
  %i.aw = tail call fastcc noundef i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB3l_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.ap, i64 noundef %i.ar, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.at, i64 noundef %i.av) #56, !noalias !22330, !inline_history !22329 ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %_RNvXsw_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.az = load i8, ptr %i.ay, align 2, !range !804, !alias.scope !22324, !noalias !22327, !noundef !3
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 122
  %i.bb = load i8, ptr %i.ba, align 2, !range !804, !alias.scope !22327, !noalias !22324, !noundef !3
  %i.bc = sub nsw i8 %i.az, %i.bb
  br label %_RNvXsw_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.l:                                             ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22334)
  %i.bf = tail call fastcc noundef i8 @_RNvXsj_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.be) #56, !inline_history !22336 ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.m, label %_RNvXsw_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !22331, !noalias !22334, !nonnull !3, !noundef !3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !22334, !noalias !22331, !nonnull !3, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = tail call fastcc noundef i8 @_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.bj, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.bm) #56, !noalias !22337, !inline_history !22336 ; 2 uses
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.n, label %_RNvXsw_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bq = load i8, ptr %i.bp, align 16, !range !804, !alias.scope !22331, !noalias !22334, !noundef !3
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bs = load i8, ptr %i.br, align 16, !range !804, !alias.scope !22334, !noalias !22331, !noundef !3
  %i.bt = sub nsw i8 %i.bq, %i.bs                 ; 2 uses
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.o, label %_RNvXsw_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bw = load i64, ptr %i.bv, align 16, !range !57, !alias.scope !22331, !noalias !22334, !noundef !3
  %.not.i = icmp eq i64 %i.bw, -9223372036854775808
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.by = load i64, ptr %i.bx, align 16, !range !57, !alias.scope !22334, !noalias !22331, !noundef !3
  %.not20.i = icmp eq i64 %i.by, -9223372036854775808 ; 2 uses
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not20.i, label %_RNvXsw_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, label %bb.s

bb.q:                                             ; preds = %bb.o
  br i1 %.not20.i, label %bb.r, label %_RNvXsw_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.ca = load i8, ptr %i.bz, align 1, !range !804, !alias.scope !22331, !noalias !22334, !noundef !3
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.cc = load i8, ptr %i.cb, align 1, !range !804, !alias.scope !22334, !noalias !22331, !noundef !3
  %i.cd = sub nsw i8 %i.ca, %i.cc
  br label %_RNvXsw_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.s:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !22331, !noalias !22334, !nonnull !3, !noundef !3
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ch = load i64, ptr %i.cg, align 16, !alias.scope !22331, !noalias !22334, !noundef !3 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !22334, !noalias !22331, !nonnull !3, !noundef !3
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cl = load i64, ptr %i.ck, align 16, !alias.scope !22334, !noalias !22331, !noundef !3 ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.cl)
  %i.cm = tail call i32 @memcmp(ptr nonnull %i.cf, ptr nonnull %i.cj, i64 %spec.store.select.i), !noalias !22337, !inline_history !22336 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
end_hunk_2
