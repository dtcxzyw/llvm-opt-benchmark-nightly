Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.09?download=true
inline.NumInlined: 1776
inline.NumDeleted: 894
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtB8_3VecNtNtB11_15data_structures20ForeignKeyConstraintEENCINvNtNtB2f_8adapters3map12map_try_foldBX_INtNtB2h_6result6ResultB3N_NtNtCsjRvGck33osM_6diesel6result5ErrorEB3d_INtNtNtB2h_3ops12control_flow11ControlFlowIB5s_B3d_zEB3d_ENCNvNtB11_6sqlite28load_foreign_key_constraints0NCINvXB4R_INtB4R_12GenericShuntINtB4P_3MapBI_B7v_EIB5s_NtNtB2h_7convert10InfallibleB5S_EEB29_8try_foldB3d_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3N_E0B7f_E0E0B6z_EB13_:bb.a

bb.n:                                             ; preds = %bb.j
  %i.am = icmp ult i64 %.sroa.521.0.copyload.i.i, 60680079189834052
  call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [152 x i8], ptr %.sroa.420.0.copyload.i.i, i64 %.sroa.521.0.copyload.i.i
  %i.ao = icmp sgt i64 %.sroa.019.0.copyload.i.i, -1
  call void @llvm.assume(i1 %i.ao)
  store ptr %.sroa.420.0.copyload.i.i, ptr %i.d, align 8, !noalias !1954
  store ptr %.sroa.420.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1954
  store i64 %.sroa.019.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1954
  store ptr %i.an, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1954
  store ptr %.val.i, ptr %i.v, align 8, !noalias !1954
  store ptr %i.i, ptr %i.w, align 8, !noalias !1954
  invoke void @_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqlite17ForeignKeyListRowENCNCNvB1W_28load_foreign_key_constraints00ENtNtB1Y_15data_structures20ForeignKeyConstraintINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjRvGck33osM_6diesel6result5ErrorENCINvXso_B4F_IB4D_INtB1b_3VecB3R_EB5p_EINtNtNtB4_6traits7collect12FromIteratorIB4D_B3R_B5p_EE9from_iterBQ_E0B6k_EB20_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d)
          to label %bb.p unwind label %bb.o, !noalias !1952

bb.o:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #26
          to label %.body.i.i unwind label %bb.s, !noalias !1955

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1954
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i43.invoke.i.i unwind label %bb.q, !noalias !1955

bb.q:                                             ; preds = %bb.p
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i.i unwind label %bb.r, !noalias !1955

bb.r:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !1955
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i43.invoke.i.i: ; preds = %bb.p, %bb.k
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit41.i.i unwind label %bb.c, !noalias !1955

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit41.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i43.invoke.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1954
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameEBH_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %_RNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqlite28load_foreign_key_constraints0B7_.exit.i unwind label %bb.t, !noalias !1952

bb.s:                                             ; preds = %bb.o, %bb.h, %bb.e, %.body.i.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !1955
  unreachable

bb.t:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit41.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_RNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqlite28load_foreign_key_constraints0B7_.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit41.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1952
  %.sroa.4.16.copyload.i = load i64, ptr %i.j, align 8, !noalias !1952 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1952
  store ptr %2, ptr %i.a, align 8, !noalias !1956
  store ptr %.sroa.4.034, ptr %i.x, align 8, !noalias !1956
  %.not.i.i.i = icmp eq i64 %.sroa.4.16.copyload.i, -1
  br i1 %.not.i.i.i, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %_RNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqlite28load_foreign_key_constraints0B7_.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.au, align 8, !nonnull !12, !noundef !12 ; 6 uses
  %i.av = load i64, ptr %.val.le, align 8, !range !39, !alias.scope !1957, !noalias !1956, !noundef !12
  %i.aw = icmp eq i64 %i.av, -1
  br i1 %i.aw, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.le)
          to label %bb.aa unwind label %bb.w, !noalias !1956

bb.w:                                             ; preds = %bb.v
  %i.ax = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.4.16.copyload.i, ptr %.val.le, align 8, !noalias !1956
  %.sroa.5.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.431.0..sroa_idx.i.i, i64 24, i1 false), !noalias !1952
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop11InPlaceDropINtBG_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEEEB1O_(ptr noalias noundef align 8 dereferenceable(16) %i.a) #26
          to label %.body.i unwind label %bb.x, !noalias !1956

bb.x:                                             ; preds = %bb.w
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !1956
  unreachable

.body.i:                                          ; preds = %bb.y, %bb.w
  %eh.lpad-body3.i = phi { ptr, i32 } [ %eh.lpad-body.ph.i, %bb.y ], [ %i.ax, %bb.w ]
  resume { ptr, i32 } %eh.lpad-body3.i

bb.y:                                             ; preds = %bb.t, %.body.i.i
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %i.at, %bb.t ], [ %.pn.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop11InPlaceDropINtBG_3VecNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintEEEB1O_(ptr noalias noundef align 8 dereferenceable(16) %i.k) #26
          to label %.body.i unwind label %bb.z, !noalias !1952

bb.z:                                             ; preds = %bb.y
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !1952
  unreachable

._crit_edge:                                      ; preds = %bb.ab, %bb.a, %bb.aa
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.034, %bb.aa ], [ %3, %bb.a ], [ %i.bc, %bb.ab ]
  %storemerge = phi i64 [ 1, %bb.aa ], [ 0, %bb.a ], [ 0, %bb.ab ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.bb, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.aa:                                            ; preds = %bb.u, %bb.v
  store i64 %.sroa.4.16.copyload.i, ptr %.val.le, align 8, !noalias !1956
  %.sroa.5.0..8.val.sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..8.val.sroa_idx8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.431.0..sroa_idx.i.i, i64 24, i1 false), !noalias !1952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %._crit_edge

bb.ab:                                            ; preds = %_RNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqlite28load_foreign_key_constraints0B7_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.034, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.431.0..sroa_idx.i.i, i64 24, i1 false), !noalias !1952
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.4.034, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not = icmp eq ptr %i.z, %i.m
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2f_8adapters3map12map_try_foldBX_INtNtB2h_6result6ResultNtBZ_9TableDataNtNtB13_6errors5ErrorEuINtNtNtB2h_3ops12control_flow11ControlFlowIB4V_B4i_EENCNvNtB13_12print_schema13output_schema0NCINvXB3l_INtB3l_12GenericShuntINtB3j_3MapBI_B5L_EIB3W_NtNtB2h_7convert10InfallibleB4x_EEB29_8try_folduNCINvNvB29_12try_for_each4callB4i_B5A_NcNtB5A_5Break0E0B5A_E0E0B4U_EB13_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.410.i.i = alloca [136 x i8], align 8     ; 3 uses
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [144 x i8], align 8               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not19 = icmp eq ptr %.promoted, %i.d
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.h = getelementptr i8, ptr %.val3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.410.96..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.410.i.i, i64 88
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.j = phi ptr [ %.promoted, %.lr.ph ], [ %i.k, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 3 uses
  store ptr %i.k, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val.i = load ptr, ptr %.val3, align 8, !noalias !1964, !nonnull !12, !align !13, !noundef !12
  %.val2.i = load ptr, ptr %i.h, align 8, !noalias !1964, !nonnull !12, !align !13, !noundef !12
  call void @_RNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals9inference15load_table_data(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(104) %.val.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %.val2.i), !noalias !1964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1964
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !1964 ; 3 uses
  %i.l = icmp eq i64 %.sroa.0.0.copyload.i, -1
  br i1 %i.l, label %bb.c, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameINtNtBa_6result6ResultNtB11_9TableDataNtNtB15_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3a_B2w_EENCNvNtB15_12print_schema13output_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBZ_EB3Z_EIB2b_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB2w_B3O_NcNtB3O_5Break0E0B3O_E0E0B15_.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.m, align 8, !nonnull !12, !noundef !12 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs2bNgeUs5Jlc_6diesel6errors5ErrorEEEB1O_(ptr noalias noundef align 8 dereferenceable(88) %.val.le)
          to label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameINtNtBa_6result6ResultNtB11_9TableDataNtNtB15_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3a_B2w_EENCNvNtB15_12print_schema13output_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBZ_EB3Z_EIB2b_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB2w_B3O_NcNtB3O_5Break0E0B3O_E0E0B15_.exit.thread unwind label %bb.d, !noalias !1965

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.val.le, ptr noundef nonnull align 8 dereferenceable(88) %i.g, i64 88, i1 false), !noalias !1964
  resume { ptr, i32 } %i.n

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameINtNtBa_6result6ResultNtB11_9TableDataNtNtB15_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3a_B2w_EENCNvNtB15_12print_schema13output_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBZ_EB3Z_EIB2b_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB2w_B3O_NcNtB3O_5Break0E0B3O_E0E0B15_.exit.thread: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.val.le, ptr noundef nonnull align 8 dereferenceable(88) %i.g, i64 88, i1 false), !noalias !1964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameINtNtBa_6result6ResultNtB11_9TableDataNtNtB15_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3a_B2w_EENCNvNtB15_12print_schema13output_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBZ_EB3Z_EIB2b_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB2w_B3O_NcNtB3O_5Break0E0B3O_E0E0B15_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.410.96..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.410.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.g, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, -2
  br i1 %.not.i, label %bb.e, label %.loopexit

._crit_edge:                                      ; preds = %bb.e, %bb.a, %.loopexit
  %storemerge = phi i64 [ %.sroa.0.0.copyload.i32, %.loopexit ], [ -2, %bb.a ], [ -2, %bb.e ]
  store i64 %storemerge, ptr %0, align 8
  ret void

.loopexit:                                        ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameINtNtBa_6result6ResultNtB11_9TableDataNtNtB15_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3a_B2w_EENCNvNtB15_12print_schema13output_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBZ_EB3Z_EIB2b_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB2w_B3O_NcNtB3O_5Break0E0B3O_E0E0B15_.exit, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameINtNtBa_6result6ResultNtB11_9TableDataNtNtB15_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3a_B2w_EENCNvNtB15_12print_schema13output_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBZ_EB3Z_EIB2b_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB2w_B3O_NcNtB3O_5Break0E0B3O_E0E0B15_.exit.thread
  %.sroa.0.0.copyload.i32 = phi i64 [ -1, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameINtNtBa_6result6ResultNtB11_9TableDataNtNtB15_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3a_B2w_EENCNvNtB15_12print_schema13output_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBZ_EB3Z_EIB2b_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB2w_B3O_NcNtB3O_5Break0E0B3O_E0E0B15_.exit.thread ], [ %.sroa.0.0.copyload.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameINtNtBa_6result6ResultNtB11_9TableDataNtNtB15_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3a_B2w_EENCNvNtB15_12print_schema13output_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBZ_EB3Z_EIB2b_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB2w_B3O_NcNtB3O_5Break0E0B3O_E0E0B15_.exit ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.410.i.i, i64 136, i1 false)
  br label %._crit_edge

bb.e:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameINtNtBa_6result6ResultNtB11_9TableDataNtNtB15_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3a_B2w_EENCNvNtB15_12print_schema13output_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBZ_EB3Z_EIB2b_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB2w_B3O_NcNtB3O_5Break0E0B3O_E0E0B15_.exit
  %.not = icmp eq ptr %i.k, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures17ColumnInformationENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2t_8adapters3map12map_try_foldBX_INtNtB2v_6result6ResultNtBZ_16ColumnDefinitionNtNtB13_6errors5ErrorEuINtNtNtB2v_3ops12control_flow11ControlFlowIB5h_B4w_EENCNvNtB11_9inference15load_table_datas0_0NCINvXB3z_INtB3z_12GenericShuntINtB3x_3MapBI_B67_EIB4a_NtNtB2v_7convert10InfallibleB4T_EEB2n_8try_folduNCINvNvB2n_12try_for_each4callB4w_B5W_NcNtB5W_5Break0E0B5W_E0E0B5g_EB13_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.410.i.i = alloca [184 x i8], align 8     ; 3 uses
  %.sroa.55.i = alloca [96 x i8], align 8         ; 7 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [120 x i8], align 8               ; 7 uses
  %.sroa.6.i.i = alloca [88 x i8], align 8        ; 6 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [120 x i8], align 8               ; 13 uses
  %.sroa.5.i = alloca [88 x i8], align 8          ; 6 uses
  %i.g = alloca [120 x i8], align 8               ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !12, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %.not = icmp eq ptr %i.k, %i.i
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.k, i64 120, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store ptr %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.m, align 8             ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.n, align 8, !nonnull !12, !align !13, !noundef !12 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1983
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull align 8 dereferenceable(120) %i.k, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1985)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1986
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1986
  %i.o = load ptr, ptr %.val3, align 8, !alias.scope !1984, !noalias !1983, !nonnull !12, !align !13, !noundef !12
  %i.p = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1984, !noalias !1983, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1984, !noalias !1983, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !1986, !nonnull !12, !noundef !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noalias !1986, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1984, !noalias !1983, !nonnull !12, !align !13, !noundef !12
  %i.z = getelementptr inbounds nuw i8, ptr %.val3, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !1984, !noalias !1983, !nonnull !12, !align !13, !noundef !12
  invoke void @_RNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals9inference21determine_column_type(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.u, i64 noundef %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.aa)
          to label %bb.c unwind label %bb.q, !noalias !1987

bb.c:                                             ; preds = %bb.b
  %i.ab = load i64, ptr %i.d, align 8, !range !26, !noalias !1986, !noundef !12 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.ad, i64 88, i1 false), !noalias !1986
  br i1 %i.ac, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.59.0..sroa_idx.i.i, i64 24, i1 false), !noalias !1986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1986
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.i.i, i64 88, i1 false), !noalias !1986
  store i64 %i.ab, ptr %i.e, align 8, !noalias !1986
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1986
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !1988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1986
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !1988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1986
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !1986, !nonnull !12, !noundef !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !1986, !noundef !12
  invoke void @_RNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals9inference22rust_name_for_sql_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) %i.q)
          to label %bb.f unwind label %bb.e, !noalias !1987

bb.e:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.b) #26
          to label %bb.n unwind label %bb.m, !noalias !1987

bb.f:                                             ; preds = %bb.d
  %.sroa.55.120..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.55.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55.120..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !1988
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx.i.i, i64 88, i1 false), !noalias !1989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i, i64 24, i1 false), !noalias !1983
  %.sroa.55.168..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.55.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55.168..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !1988
  %.sroa.55.144..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.55.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55.144..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1986
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i.i.i unwind label %bb.g, !noalias !1987

bb.g:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body.i.i unwind label %bb.h, !noalias !1987

bb.h:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !1987
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i unwind label %bb.i, !noalias !1987

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.g
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ao, %bb.i ], [ %i.am, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.ap) #26
          to label %common.resume.i unwind label %bb.m, !noalias !1987

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !range !16, !alias.scope !1990, !noalias !1983, !noundef !12
  %i.as = icmp eq i64 %i.ar, -1
  br i1 %i.as, label %bb.v, label %bb.j

bb.j:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i unwind label %bb.k, !noalias !1987

bb.k:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %common.resume.i unwind label %bb.l, !noalias !1987

bb.l:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !1987
  unreachable

common.resume.i:                                  ; preds = %bb.w, %bb.t, %bb.s, %bb.k, %.body.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bb, %bb.w ], [ %i.at, %bb.k ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %.pn17.i.i, %bb.t ], [ %.pn17.i.i, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i: ; preds = %bb.j
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq), !noalias !1987
  br label %bb.v

bb.m:                                             ; preds = %bb.t, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %.body.i.i, %bb.e
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !1987
  unreachable

bb.n:                                             ; preds = %bb.e
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #26
          to label %bb.o unwind label %bb.m, !noalias !1987

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEBH_(ptr noalias noundef align 8 dereferenceable(120) %i.e) #26
          to label %bb.p unwind label %bb.m, !noalias !1987

bb.p:                                             ; preds = %bb.q, %bb.o
  %.sroa.05.019.i.i = phi i1 [ true, %bb.q ], [ false, %bb.o ]
  %.pn17.i.i = phi { ptr, i32 } [ %i.ax, %bb.q ], [ %i.ak, %bb.o ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw) #26
          to label %bb.r unwind label %bb.m, !noalias !1987

bb.q:                                             ; preds = %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay) #26
end_hunk_0
