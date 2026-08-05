inline.NumInlined: 30293
inline.NumDeleted: 19117
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 102
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB1n_Es2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3B_8for_each4callB1n_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4R_3VecB1n_E14extend_trustedBN_E0E0ECskY9G75ZWc4U_11polars_expr:bb.a
  %.val15.i.epil.init = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.u, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.v, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %lcmp.mod9 = trunc i64 %i.e to i1, !dbg !262541
  tail call void @llvm.assume(i1 %lcmp.mod9), !dbg !262541
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !262524
  %.val16.i.epil = load ptr, ptr %i.y, align 8, !dbg !262528, !noalias !262529, !nonnull !15, !align !1335, !noundef !15 ; 2 uses
  %i.z = load i8, ptr %.val16.i.epil, align 8, !dbg !262532, !range !3056, !noalias !262538, !noundef !15
  %i.aa = icmp eq i8 %i.z, 29, !dbg !262541
  br i1 %i.aa, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.epilog-lcssa, label %.loopexit, !dbg !262541, !prof !5068

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.epilog-lcssa: ; preds = %.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %.val16.i.epil, i64 8, !dbg !262543
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !262543, !noalias !262538, !nonnull !15, !noundef !15
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i.epil.init, !dbg !262544
  store ptr %i.ac, ptr %i.ad, align 8, !dbg !262551, !noalias !262554
  %i.ae = add i64 %.val15.i.epil.init, 1, !dbg !262561
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.u, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %i.ae, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.epilog-lcssa ], !dbg !262578
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !262578, !noalias !262529
  ret void, !dbg !262584
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB1n_Es3_0ENtNtNtBa_6traits8iterator8Iterator4foldB1o_NCB2m_s4_0ECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !262585 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262586), !dbg !262589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262590), !dbg !262589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !262592
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ], !dbg !262592
  %i.f = icmp eq ptr %1, %2, !dbg !262601
  br i1 %i.f, label %bb.c, label %bb.b, !dbg !262602

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !262603, !noalias !262586
  %i.g = ptrtoint ptr %2 to i64, !dbg !262604
  %i.h = ptrtoint ptr %1 to i64, !dbg !262604
  %i.i = sub nuw i64 %i.g, %i.h, !dbg !262604
  %i.j = lshr exact i64 %i.i, 3, !dbg !262604
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.d, !dbg !262616

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !262617, !alias.scope !262618
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBR_NCINvNtNtB1T_8adapters3map8map_foldRBQ_BR_BR_NCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es3_0NCB3l_s4_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !262619

bb.d:                                             ; preds = %.preheader.i.i.i.1, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %.preheader.i.i.i.1 ], !dbg !262620 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !262621, !noalias !262618
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.0.i, !dbg !262623
  %.val.i = load ptr, ptr %i.m, align 8, !dbg !262621, !noalias !262618, !nonnull !15, !align !1335, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !262626, !noalias !262629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !262626, !noalias !262618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !262633, !noalias !262629
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val.i) #45
          to label %_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEs3_0CskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.i, !dbg !262634, !noalias !262629

_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEs3_0CskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !262637, !noalias !262640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !262637, !noalias !262618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !262637, !noalias !262629
  invoke void @_RINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 2)
          to label %.preheader.i.i.i.preheader unwind label %bb.e, !dbg !262645, !noalias !262646

bb.e:                                             ; preds = %_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEs3_0CskY9G75ZWc4U_11polars_expr.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypej2_ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(64) %i.a) #40
          to label %.body.i.i unwind label %bb.h, !dbg !262647, !noalias !262640

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l)
          to label %.preheader.i.i.i.1 unwind label %.peel.begin.i.i.i.i, !dbg !262648, !noalias !262640

.preheader.i.i.i.1:                               ; preds = %.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !262647, !noalias !262640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !262650, !noalias !262629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !262650, !noalias !262629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !262651, !noalias !262618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !262652, !noalias !262618
  %i.o = add nuw i64 %.sroa.01.0.i, 1, !dbg !262653 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.j, !dbg !262656
  br i1 %i.p, label %bb.k, label %bb.d, !dbg !262656

.preheader.i.i.i.preheader:                       ; preds = %_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEs3_0CskY9G75ZWc4U_11polars_expr.exit.i.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.a)
          to label %.preheader.i.i.i unwind label %.peel.begin.i.i.i.i, !dbg !262648, !noalias !262640

.peel.begin.i.i.i.i:                              ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader
  %i.q = phi i1 [ false, %.preheader.i.i.i.preheader ], [ true, %.preheader.i.i.i ], !dbg !262648
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.q, label %.body.i.i, label %bb.f, !dbg !262648

bb.f:                                             ; preds = %.peel.begin.i.i.i.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.k) #40
          to label %.body.i.i unwind label %bb.g, !dbg !262648, !noalias !262640

bb.g:                                             ; preds = %bb.f
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !262648, !noalias !262640
  unreachable, !dbg !262648

bb.h:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !262657, !noalias !262640
  unreachable, !dbg !262657

.body.i.i:                                        ; preds = %bb.i, %bb.f, %.peel.begin.i.i.i.i, %bb.e
  %eh.lpad-body3.i.i = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.r, %.peel.begin.i.i.i.i ], [ %i.r, %bb.f ], [ %i.n, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body3.i.i, !dbg !262658

bb.i:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.c) #40
          to label %.body.i.i unwind label %bb.j, !dbg !262650, !noalias !262629

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !262658, !noalias !262629
  unreachable, !dbg !262658

bb.k:                                             ; preds = %.preheader.i.i.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !262659, !noalias !262590
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBR_NCINvNtNtB1T_8adapters3map8map_foldRBQ_BR_BR_NCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es3_0NCB3l_s4_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !262619

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBR_NCINvNtNtB1T_8adapters3map8map_foldRBQ_BR_BR_NCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es3_0NCB3l_s4_0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.c, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !262660
  ret void, !dbg !262661
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapENCINvNtNtB1u_7compute5utils27combine_validities_and_manyB1o_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4callNtNtB1s_8iterator17FastU64BitmapIterNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecB4r_E14extend_trustedBN_E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !262662 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !262663 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !262663
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !262663 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !262663
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !262663
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !262666
  %i.b = icmp eq ptr %0, %1, !dbg !262675
  br i1 %i.b, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRBQ_NtNtBV_8iterator17FastU64BitmapIteruNCINvNtNtBX_7compute5utils27combine_validities_and_manyBR_Es_0NCINvNvB1O_8for_each4callB3c_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5o_3VecB3c_E14extend_trustedINtB2E_3MapBF_B3M_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !262676

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64, !dbg !262677
  %i.d = ptrtoint ptr %0 to i64, !dbg !262677
  %i.e = sub nuw i64 %i.c, %i.d, !dbg !262677
  %i.f = lshr exact i64 %i.e, 3, !dbg !262677
  br label %bb.c, !dbg !262689

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ], !dbg !262690 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !262691
  %.val16.i = load ptr, ptr %i.g, align 8, !dbg !262695, !noalias !262696, !nonnull !15, !align !1335, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !262699, !noalias !262702
  invoke void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap13fast_iter_u64(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull align 8 %.val16.i)
          to label %bb.d unwind label %bb.e, !dbg !262705, !noalias !262696

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !262711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.a, i64 40, i1 false), !dbg !262718, !noalias !262721
  %i.i = add i64 %.val15.i, 1, !dbg !262726       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !262729, !noalias !262702
  %i.j = add nuw i64 %.sroa.01.0.i, 1, !dbg !262730 ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.f, !dbg !262733
  br i1 %i.k, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRBQ_NtNtBV_8iterator17FastU64BitmapIteruNCINvNtNtBX_7compute5utils27combine_validities_and_manyBR_Es_0NCINvNvB1O_8for_each4callB3c_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5o_3VecB3c_E14extend_trustedINtB2E_3MapBF_B3M_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !262733

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !262734, !noalias !262696
  resume { ptr, i32 } %i.l, !dbg !262743

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRBQ_NtNtBV_8iterator17FastU64BitmapIteruNCINvNtNtBX_7compute5utils27combine_validities_and_manyBR_Es_0NCINvNvB1O_8for_each4callB3c_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5o_3VecB3c_E14extend_trustedINtB2E_3MapBF_B3M_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ], !dbg !262744
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !262744, !noalias !262696
  ret void, !dbg !262750
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtBc_4time8DurationB1o_EENCNvMNtNtCskY9G75ZWc4U_11polars_expr5state10node_timerNtB1U_9NodeTimer6finish0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB36_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4j_3VecyE14extend_trustedBN_E0E0EB1Y_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !262751 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !262752 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !262752
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !262752 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !262752
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !262752
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !262755
  %i.a = icmp eq ptr %0, %1, !dbg !262764
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTNtNtBb_4time8DurationBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1n_8adapters3map8map_foldRBQ_yuNCNvMNtNtCskY9G75ZWc4U_11polars_expr5state10node_timerNtB2M_9NodeTimer6finish0NCINvNvB1h_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4w_3VecyE14extend_trustedINtB27_3MapBF_B2H_EE0E0E0EB2Q_.exit, label %bb.b, !dbg !262765

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !262766
  %i.c = ptrtoint ptr %0 to i64, !dbg !262766
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !262766
  %i.e = lshr exact i64 %i.d, 5, !dbg !262766
  br label %bb.c, !dbg !262778

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i.a = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %bb.c ], !dbg !262779 ; 2 uses
  %niter = phi i64 [ 0, %bb.b ], [ %niter.next.1, %bb.c ], !dbg !262783 ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %niter, !dbg !262779 ; 2 uses
  %.val16.i.1 = load i64, ptr %i.f, align 8, !dbg !262784, !noalias !262785, !noundef !15
  %i.g = getelementptr i8, ptr %i.f, i64 8, !dbg !262784
  %.val17.i.1 = load i32, ptr %i.g, align 8, !dbg !262784, !range !262788, !noalias !262785, !noundef !15
  %i.h = mul i64 %.val16.i.1, 1000000, !dbg !262789
  %i.i = udiv i32 %.val17.i.1, 1000, !dbg !262805
  %i.j = zext nneg i32 %i.i to i64, !dbg !262805
  %i.k = add i64 %i.h, %i.j, !dbg !262789
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.01.0.i.a, !dbg !262806
  store i64 %i.k, ptr %i.l, align 8, !dbg !262813, !noalias !262816
  %i.m = add i64 %.sroa.01.0.i.a, 1, !dbg !262823 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 1, !dbg !262826 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.e, !dbg !262829
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTNtNtBb_4time8DurationBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1n_8adapters3map8map_foldRBQ_yuNCNvMNtNtCskY9G75ZWc4U_11polars_expr5state10node_timerNtB2M_9NodeTimer6finish0NCINvNvB1h_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4w_3VecyE14extend_trustedINtB27_3MapBF_B2H_EE0E0E0EB2Q_.exit, label %bb.c, !dbg !262829

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTNtNtBb_4time8DurationBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1n_8adapters3map8map_foldRBQ_yuNCNvMNtNtCskY9G75ZWc4U_11polars_expr5state10node_timerNtB2M_9NodeTimer6finish0NCINvNvB1h_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4w_3VecyE14extend_trustedINtB27_3MapBF_B2H_EE0E0E0EB2Q_.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.m, %bb.c ], !dbg !262830
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !262830, !noalias !262785
  ret void, !dbg !262839
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtBc_4time8DurationB1o_EENCNvMNtNtCskY9G75ZWc4U_11polars_expr5state10node_timerNtB1U_9NodeTimer6finishs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB38_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4l_3VecyE14extend_trustedBN_E0E0EB1Y_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !262840 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !262841 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !262841
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !262841 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !262841
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !262841
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !262844
  %i.a = icmp eq ptr %0, %1, !dbg !262853
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTNtNtBb_4time8DurationBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1n_8adapters3map8map_foldRBQ_yuNCNvMNtNtCskY9G75ZWc4U_11polars_expr5state10node_timerNtB2M_9NodeTimer6finishs_0NCINvNvB1h_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4y_3VecyE14extend_trustedINtB27_3MapBF_B2H_EE0E0E0EB2Q_.exit, label %bb.b, !dbg !262854

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !262855
  %i.c = ptrtoint ptr %0 to i64, !dbg !262855
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !262855
  %i.e = lshr exact i64 %i.d, 5, !dbg !262855
  br label %bb.c, !dbg !262867

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i.a = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %bb.c ], !dbg !262868 ; 2 uses
  %niter = phi i64 [ 0, %bb.b ], [ %niter.next.1, %bb.c ], !dbg !262872 ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %niter, !dbg !262868 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16, !dbg !262873
  %.val16.i.1 = load i64, ptr %i.g, align 8, !dbg !262873, !noalias !262874, !noundef !15
  %i.h = getelementptr i8, ptr %i.f, i64 24, !dbg !262873
  %.val17.i.1 = load i32, ptr %i.h, align 8, !dbg !262873, !range !262788, !noalias !262874, !noundef !15
  %i.i = mul i64 %.val16.i.1, 1000000, !dbg !262877
  %i.j = udiv i32 %.val17.i.1, 1000, !dbg !262885
  %i.k = zext nneg i32 %i.j to i64, !dbg !262885
  %i.l = add i64 %i.i, %i.k, !dbg !262877
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.01.0.i.a, !dbg !262886
  store i64 %i.l, ptr %i.m, align 8, !dbg !262893, !noalias !262896
  %i.n = add i64 %.sroa.01.0.i.a, 1, !dbg !262903 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 1, !dbg !262906 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.e, !dbg !262909
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTNtNtBb_4time8DurationBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1n_8adapters3map8map_foldRBQ_yuNCNvMNtNtCskY9G75ZWc4U_11polars_expr5state10node_timerNtB2M_9NodeTimer6finishs_0NCINvNvB1h_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4y_3VecyE14extend_trustedINtB27_3MapBF_B2H_EE0E0E0EB2Q_.exit, label %bb.c, !dbg !262909

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTNtNtBb_4time8DurationBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1n_8adapters3map8map_foldRBQ_yuNCNvMNtNtCskY9G75ZWc4U_11polars_expr5state10node_timerNtB2M_9NodeTimer6finishs_0NCINvNvB1h_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4y_3VecyE14extend_trustedINtB27_3MapBF_B2H_EE0E0E0EB2Q_.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %bb.c ], !dbg !262910
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !262910, !noalias !262874
  ret void, !dbg !262919
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTmxEENCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortIBO_IBO_IBY_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1B_8downcastINtB1D_12ChunkedArrayNtNtB1F_9datatypes9Int64TypeE13downcast_iter0ENCINvB1z_16arg_sort_numericB52_Es_0EIBO_INtNtNtNtB3C_6bitmap5utils12zip_validity11ZipValidityRxIBY_xENtNtB6v_8iterator10BitmapIterENCNCB5O_s_00ExEs2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6copied9copy_foldmuNCINvNvB8d_8for_each4callmNCINvMsj_NtB33_3vecINtB9T_3VecmE14extend_trustedINtB8W_6CopiedBN_EE0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !262920 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !262921 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !262921
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !262921 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !262921
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !262921 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !262924
  %i.a = icmp eq ptr %0, %1, !dbg !262933
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTmxEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_RmuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtB1L_3MapIB3H_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2v_8downcastINtB2x_12ChunkedArrayNtNtB2z_9datatypes9Int64TypeE13downcast_iter0ENCINvB2t_16arg_sort_numericB64_Es_0EIB3H_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIBG_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs2_0NCINvNtB1N_6copied9copy_foldmuNCINvNvBV_8for_each4callmNCINvMsj_NtB45_3vecINtBah_3VecmE14extend_trustedINtB9k_6CopiedIB3H_BF_B2m_EEE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !262934

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !262935
  %i.c = ptrtoint ptr %0 to i64, !dbg !262935
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !262935     ; 4 uses
  %i.e = lshr i64 %i.d, 4, !dbg !262935           ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 272, !dbg !262947
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !262947

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2, !dbg !262947 ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !262947
  %i.g = lshr exact i64 %i.d, 2, !dbg !262947
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !262947
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g, !dbg !262947
  %i.i = and i64 %i.d, -16, !dbg !262947
  %i.j = getelementptr i8, ptr %0, i64 %i.i, !dbg !262947
  %scevgep3 = getelementptr i8, ptr %i.j, i64 -12, !dbg !262947
  %bound0 = icmp ult ptr %scevgep, %scevgep3, !dbg !262947
  %bound1 = icmp ult ptr %0, %scevgep2, !dbg !262947
  %found.conflict = and i1 %bound0, %bound1, !dbg !262947
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !262948

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %i.e, 7                     ; 2 uses
  %i.k = icmp eq i64 %n.mod.vf, 0
  %i.l = select i1 %i.k, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.e, %i.l                 ; 3 uses
  %i.m = add i64 %.sroa.5.0.copyload, %n.vec
  %i.n = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !262948

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !262948 ; 10 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index, !dbg !262949
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index, !dbg !262949
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !262949
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index, !dbg !262949
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32, !dbg !262949
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index, !dbg !262949
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48, !dbg !262949
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index, !dbg !262949
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64, !dbg !262949
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index, !dbg !262949
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80, !dbg !262949
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index, !dbg !262949
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96, !dbg !262949
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index, !dbg !262949
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 112, !dbg !262949
  %i.ad = load i32, ptr %i.o, align 4, !dbg !262953, !alias.scope !262954, !noalias !262957, !noundef !15
  %i.ae = load i32, ptr %i.q, align 4, !dbg !262953, !alias.scope !262954, !noalias !262957, !noundef !15
  %i.af = load i32, ptr %i.s, align 4, !dbg !262953, !alias.scope !262954, !noalias !262957, !noundef !15
  %i.ag = load i32, ptr %i.u, align 4, !dbg !262953, !alias.scope !262954, !noalias !262957, !noundef !15
  %i.ah = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %i.ai = insertelement <4 x i32> %i.ah, i32 %i.ae, i64 1
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.af, i64 2
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 3
  %i.al = load i32, ptr %i.w, align 4, !dbg !262953, !alias.scope !262954, !noalias !262957, !noundef !15
  %i.am = load i32, ptr %i.y, align 4, !dbg !262953, !alias.scope !262954, !noalias !262957, !noundef !15
  %i.an = load i32, ptr %i.aa, align 4, !dbg !262953, !alias.scope !262954, !noalias !262957, !noundef !15
  %i.ao = load i32, ptr %i.ac, align 4, !dbg !262953, !alias.scope !262954, !noalias !262957, !noundef !15
  %i.ap = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %i.aq = insertelement <4 x i32> %i.ap, i32 %i.am, i64 1
  %i.ar = insertelement <4 x i32> %i.aq, i32 %i.an, i64 2
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 3
  %i.at = getelementptr [4 x i8], ptr %i.n, i64 %index, !dbg !262960 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16, !dbg !262975
  store <4 x i32> %i.ak, ptr %i.at, align 4, !dbg !262975, !alias.scope !262978, !noalias !262980
  store <4 x i32> %i.as, ptr %i.au, align 4, !dbg !262975, !alias.scope !262978, !noalias !262980
  %index.next = add nuw i64 %index, 8, !dbg !262948 ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec, !dbg !262989
  br i1 %i.av, label %scalar.ph.preheader, label %vector.body, !dbg !262989, !llvm.loop !262990

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.aw = sub nsw i64 %i.e, %.sroa.01.0.i.ph, !dbg !262989
  %xtraiter = and i64 %i.aw, 3, !dbg !262989      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !262989
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !262989

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ax = phi i64 [ %i.ba, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !262949 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.bb, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !262948 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !262949
  %.val16.i.prol = load i32, ptr %i.ay, align 4, !dbg !262953, !noalias !262957, !noundef !15
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ax, !dbg !262960
  store i32 %.val16.i.prol, ptr %i.az, align 4, !dbg !262975, !noalias !262991
  %i.ba = add i64 %i.ax, 1, !dbg !262992          ; 3 uses
  %i.bb = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !262995 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !262989 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !262989
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !262989, !llvm.loop !262998

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !262989
  %i.bd = icmp ugt i64 %i.bc, -4, !dbg !262989
  br i1 %i.bd, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTmxEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_RmuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtB1L_3MapIB3H_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2v_8downcastINtB2x_12ChunkedArrayNtNtB2z_9datatypes9Int64TypeE13downcast_iter0ENCINvB2t_16arg_sort_numericB64_Es_0EIB3H_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIBG_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs2_0NCINvNtB1N_6copied9copy_foldmuNCINvNvBV_8for_each4callmNCINvMsj_NtB45_3vecINtBah_3VecmE14extend_trustedINtB9k_6CopiedIB3H_BF_B2m_EEE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !262989

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.be = phi i64 [ %i.bt, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !262949 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bu, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !262948 ; 5 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !262949
  %.val16.i = load i32, ptr %i.bf, align 4, !dbg !262953, !noalias !262957, !noundef !15
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.be, !dbg !262960
  store i32 %.val16.i, ptr %i.bg, align 4, !dbg !262975, !noalias !262991
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !262949
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16, !dbg !262949
  %.val16.i.1 = load i32, ptr %i.bi, align 4, !dbg !262953, !noalias !262957, !noundef !15
  %i.bj = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.be, !dbg !262960
  %i.bk = getelementptr i8, ptr %i.bj, i64 4, !dbg !262960
  store i32 %.val16.i.1, ptr %i.bk, align 4, !dbg !262975, !noalias !262991
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !262949
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32, !dbg !262949
  %.val16.i.2 = load i32, ptr %i.bm, align 4, !dbg !262953, !noalias !262957, !noundef !15
  %i.bn = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.be, !dbg !262960
  %i.bo = getelementptr i8, ptr %i.bn, i64 8, !dbg !262960
  store i32 %.val16.i.2, ptr %i.bo, align 4, !dbg !262975, !noalias !262991
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !262949
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48, !dbg !262949
  %.val16.i.3 = load i32, ptr %i.bq, align 4, !dbg !262953, !noalias !262957, !noundef !15
  %i.br = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.be, !dbg !262960
  %i.bs = getelementptr i8, ptr %i.br, i64 12, !dbg !262960
  store i32 %.val16.i.3, ptr %i.bs, align 4, !dbg !262975, !noalias !262991
  %i.bt = add i64 %i.be, 4, !dbg !262992          ; 2 uses
  %i.bu = add nuw i64 %.sroa.01.0.i, 4, !dbg !262995 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, %i.e, !dbg !262989
  br i1 %i.bv, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTmxEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_RmuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtB1L_3MapIB3H_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2v_8downcastINtB2x_12ChunkedArrayNtNtB2z_9datatypes9Int64TypeE13downcast_iter0ENCINvB2t_16arg_sort_numericB64_Es_0EIB3H_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIBG_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs2_0NCINvNtB1N_6copied9copy_foldmuNCINvNvBV_8for_each4callmNCINvMsj_NtB45_3vecINtBah_3VecmE14extend_trustedINtB9k_6CopiedIB3H_BF_B2m_EEE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !262989, !llvm.loop !262999

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterTmxEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_RmuNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtB1L_3MapIB3H_IBG_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2v_8downcastINtB2x_12ChunkedArrayNtNtB2z_9datatypes9Int64TypeE13downcast_iter0ENCINvB2t_16arg_sort_numericB64_Es_0EIB3H_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIBG_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs2_0NCINvNtB1N_6copied9copy_foldmuNCINvNvBV_8for_each4callmNCINvMsj_NtB45_3vecINtBah_3VecmE14extend_trustedINtB9k_6CopiedIB3H_BF_B2m_EEE0E0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bt, %scalar.ph ], !dbg !263000
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !263000, !noalias !262957
  ret void, !dbg !263011
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef double @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCNvXs_NtCslFlrwjHoTci_14polars_compute9float_sumaINtB1w_8FloatSumdE3sum0ENtNtNtBa_6traits8iterator8Iterator4folddNCINvXs26_NtB2F_5accumdNtB3p_3Sum3sumBN_E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, double noundef %2) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !263012 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !263013
  %i.a = icmp eq ptr %0, %1, !dbg !263022
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRaddNCNvXs_NtCslFlrwjHoTci_14polars_compute9float_sumaINtB2m_8FloatSumdE3sum0NCINvXs26_NtBW_5accumdNtB3A_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !263023

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !263024     ; 2 uses
  %i.c = ptrtoint ptr %0 to i64, !dbg !263024     ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !263024     ; 2 uses
  %xtraiter = and i64 %i.d, 3, !dbg !263036       ; 3 uses
  %i.e = sub i64 %i.c, %i.b, !dbg !263036
  %i.f = icmp ugt i64 %i.e, -4, !dbg !263036
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !263036

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.d, -4, !dbg !263036
  br label %bb.c, !dbg !263036

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.v, %bb.c ], !dbg !263037 ; 5 uses
  %.sroa.02.0.i = phi double [ %2, %.new ], [ %i.u, %bb.c ], !dbg !263038
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i, !dbg !263039
  %.val.i = load i8, ptr %i.g, align 1, !dbg !263043, !noundef !15
  %i.h = sitofp i8 %.val.i to double, !dbg !263044
  %i.i = fadd double %.sroa.02.0.i, %i.h, !dbg !263050
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i, !dbg !263039
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1, !dbg !263039
  %.val.i.1 = load i8, ptr %i.k, align 1, !dbg !263043, !noundef !15
  %i.l = sitofp i8 %.val.i.1 to double, !dbg !263044
  %i.m = fadd double %i.i, %i.l, !dbg !263050
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i, !dbg !263039
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2, !dbg !263039
  %.val.i.2 = load i8, ptr %i.o, align 1, !dbg !263043, !noundef !15
  %i.p = sitofp i8 %.val.i.2 to double, !dbg !263044
  %i.q = fadd double %i.m, %i.p, !dbg !263050
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i, !dbg !263039
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 3, !dbg !263039
  %.val.i.3 = load i8, ptr %i.s, align 1, !dbg !263043, !noundef !15
  %i.t = sitofp i8 %.val.i.3 to double, !dbg !263044
  %i.u = fadd double %i.q, %i.t, !dbg !263050     ; 3 uses
  %i.v = add nuw i64 %.sroa.04.0.i, 4, !dbg !263053 ; 2 uses
end_hunk_0
