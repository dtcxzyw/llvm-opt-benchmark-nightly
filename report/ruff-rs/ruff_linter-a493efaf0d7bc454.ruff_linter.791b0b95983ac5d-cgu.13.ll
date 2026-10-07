Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.13?download=true
inline.NumInlined: 4418
inline.NumDeleted: 1702
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvXsI_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_11SegmentsVecINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendReE6extendINtNtNtB19_3str4iter5SplitcEECsEhZmuQNqkz_11ruff_linter:bb.a
bb.s:                                             ; preds = %bb.r
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.r
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.q
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.q
  store i64 1, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.513)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.y

bb.w:                                             ; preds = %bb.n, %bb.o, %bb.l
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.d) #38
          to label %bb.z unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.y:                                             ; preds = %bb.v, %.split64, %bb.b
  ret void

bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i, %bb.w
  %.pn25 = phi { ptr, i32 } [ %eh.lpad-body, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i ], [ %i.cg, %bb.w ]
  resume { ptr, i32 } %.pn25
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtCscuBBDlOF0VN_8schemars6schemaNtB5_6SchemaNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 0, ptr %i.b, align 8
  call void @_RINvXs_NtNtCscuBBDlOF0VN_8schemars6schema3serNtB5_21OrderedKeywordWrapperNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXss_NtCsgQfI1edjipl_9hashbrown3setINtB6_8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1x_8adapters3map8map_foldBP_TBP_uEuNCINvXs8_B6_INtB6_7HashSetBP_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB1v_7collect6ExtendBP_E6extendINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetBP_B3E_EE0NCINvNvB1r_8for_each4callB34_NCINvXs1i_NtB8_3mapINtB6D_7HashMapBP_uB3E_EIB4n_B34_E6extendINtB2x_3MapINtB4Y_8IntoIterBP_EB3b_EE0E0E0ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5906
  invoke void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCscdodAO9FK5_5alloc6string6StringuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.d unwind label %bb.c, !noalias !5907

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCscdodAO9FK5_5alloc6string6StringuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw11RawIntoIterTNtNtCscdodAO9FK5_5alloc6string6StringuEEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.g, !noalias !5907

bb.d:                                             ; preds = %bb.b
  %i.e = load i64, ptr %i.b, align 8, !range !7, !noalias !5906, !noundef !4
  %.not.i = icmp eq i64 %i.e, -1
  br i1 %.not.i, label %_RINvYINtNtCsgQfI1edjipl_9hashbrown3raw11RawIntoIterTNtNtCscdodAO9FK5_5alloc6string6StringuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvXss_NtB8_3setINtB2C_8IntoIterBO_EB1s_4folduNCINvNtNtB1y_8adapters3map8map_foldBO_BN_uNCINvXs8_B2C_INtB2C_7HashSetBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB1w_7collect6ExtendBO_E6extendINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetBO_B4q_EE0NCINvNvB1s_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB7o_7HashMapBO_uB4q_EIB59_BN_E6extendINtB3k_3MapINtB5K_8IntoIterBO_EB3V_EE0E0E0E0ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !5906
  %i.f = invoke noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.c, !noalias !5907 ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5906
  br label %bb.b

bb.g:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !5907
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw11RawIntoIterTNtNtCscdodAO9FK5_5alloc6string6StringuEEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvYINtNtCsgQfI1edjipl_9hashbrown3raw11RawIntoIterTNtNtCscdodAO9FK5_5alloc6string6StringuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvXss_NtB8_3setINtB2C_8IntoIterBO_EB1s_4folduNCINvNtNtB1y_8adapters3map8map_foldBO_BN_uNCINvXs8_B2C_INtB2C_7HashSetBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB1w_7collect6ExtendBO_E6extendINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetBO_B4q_EE0NCINvNvB1s_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB7o_7HashMapBO_uB4q_EIB59_BN_E6extendINtB3k_3MapINtB5K_8IntoIterBO_EB3V_EE0E0E0E0ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5906
  call void @_RNvXsC_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCscdodAO9FK5_5alloc6string6StringuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c), !noalias !5907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXss_NtCsgQfI1edjipl_9hashbrown3setINtB6_8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldBP_TBP_uEuNCINvXs8_B6_INtB6_7HashSetBP_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB1E_7collect6ExtendBP_E6extendINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetBP_B3N_EE0NCINvNvB1A_8for_each4callB3d_NCINvXs1i_NtB8_3mapINtB6M_7HashMapBP_uB3N_EIB4w_B3d_E6extendINtB2G_3MapINtB57_8IntoIterBP_EB3k_EE0E0E0ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  br label %_RNCINvXss_NtCsgQfI1edjipl_9hashbrown3setINtB8_8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldBR_TBR_uEuNCINvXs8_B8_INtB8_7HashSetBR_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB1G_7collect6ExtendBR_E6extendINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetBR_B3P_EE0NCINvNvB1C_8for_each4callB3f_NCINvXs1i_NtBa_3mapINtB6O_7HashMapBR_uB3P_EIB4y_B3f_E6extendINtB2I_3MapINtB59_8IntoIterBR_EB3m_EE0E0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i

_RNCINvXss_NtCsgQfI1edjipl_9hashbrown3setINtB8_8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldBR_TBR_uEuNCINvXs8_B8_INtB8_7HashSetBR_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB1G_7collect6ExtendBR_E6extendINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetBR_B3P_EE0NCINvNvB1C_8for_each4callB3f_NCINvXs1i_NtBa_3mapINtB6O_7HashMapBR_uB3P_EIB4y_B3f_E6extendINtB2I_3MapINtB59_8IntoIterBR_EB3m_EE0E0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.d, %bb.a
  %i.b = invoke noundef align 8 ptr @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.c unwind label %bb.b, !noalias !5911 ; 2 uses

bb.b:                                             ; preds = %bb.d, %_RNCINvXss_NtCsgQfI1edjipl_9hashbrown3setINtB8_8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldBR_TBR_uEuNCINvXs8_B8_INtB8_7HashSetBR_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB1G_7collect6ExtendBR_E6extendINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetBR_B3P_EE0NCINvNvB1C_8for_each4callB3f_NCINvXs1i_NtBa_3mapINtB6O_7HashMapBR_uB3P_EIB4y_B3f_E6extendINtB2I_3MapINtB59_8IntoIterBR_EB3m_EE0E0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw11RawIntoIterTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.e, !noalias !5911

bb.c:                                             ; preds = %_RNCINvXss_NtCsgQfI1edjipl_9hashbrown3setINtB8_8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldBR_TBR_uEuNCINvXs8_B8_INtB8_7HashSetBR_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB1G_7collect6ExtendBR_E6extendINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetBR_B3P_EE0NCINvNvB1C_8for_each4callB3f_NCINvXs1i_NtBa_3mapINtB6O_7HashMapBR_uB3P_EIB4y_B3f_E6extendINtB2I_3MapINtB59_8IntoIterBR_EB3m_EE0E0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RINvYINtNtCsgQfI1edjipl_9hashbrown3raw11RawIntoIterTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvXss_NtB8_3setINtB2L_8IntoIterBO_EB1B_4folduNCINvNtNtB1H_8adapters3map8map_foldBO_BN_uNCINvXs8_B2L_INtB2L_7HashSetBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB1F_7collect6ExtendBO_E6extendINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetBO_B4z_EE0NCINvNvB1B_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB7x_7HashMapBO_uB4z_EIB5i_BN_E6extendINtB3t_3MapINtB5T_8IntoIterBO_EB44_EE0E0E0E0ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = invoke noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %_RNCINvXss_NtCsgQfI1edjipl_9hashbrown3setINtB8_8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldBR_TBR_uEuNCINvXs8_B8_INtB8_7HashSetBR_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB1G_7collect6ExtendBR_E6extendINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetBR_B3P_EE0NCINvNvB1C_8for_each4callB3f_NCINvXs1i_NtBa_3mapINtB6O_7HashMapBR_uB3P_EIB4y_B3f_E6extendINtB2I_3MapINtB59_8IntoIterBR_EB3m_EE0E0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.b, !noalias !5911 ; 0 uses

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !5911
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw11RawIntoIterTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RINvYINtNtCsgQfI1edjipl_9hashbrown3raw11RawIntoIterTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvXss_NtB8_3setINtB2L_8IntoIterBO_EB1B_4folduNCINvNtNtB1H_8adapters3map8map_foldBO_BN_uNCINvXs8_B2L_INtB2L_7HashSetBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB1F_7collect6ExtendBO_E6extendINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetBO_B4z_EE0NCINvNvB1B_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB7x_7HashMapBO_uB4z_EIB5i_BN_E6extendINtB3t_3MapINtB5T_8IntoIterBO_EB44_EE0E0E0E0ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c
  call void @_RNvXsC_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a), !noalias !5911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXst_NtCs6Wt4yPw39th_9itertools10tuple_implTRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpBJ_ENtB6_12TupleCollect24collect_from_iter_no_bufINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtB2p_7sources4once4OnceBJ_EQIB2j_INtNtNtB2r_5slice4iter4IterBK_EB3N_EEECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8, !alias.scope !5953
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !5953 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !5953 ; 11 uses
  %i.a = trunc nuw i64 %.sroa.0.0.copyload to i1
  %.not.i.i = icmp ne ptr %.sroa.8.0.copyload, null
  %or.cond.not = select i1 %i.a, i1 %.not.i.i, i1 false
  %.not.i.i.i11 = icmp eq ptr %.sroa.12.0.copyload, null ; 2 uses
  br i1 %or.cond.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.i11, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEQIBO_INtNtNtBa_5slice4iter4IterB1s_EB2j_EENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %.sroa.12.0.copyload, align 8, !alias.scope !5954, !noalias !5955, !noundef !4 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !5956, !noalias !5955, !nonnull !4, !noundef !4
  %i.e = icmp eq ptr %i.b, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %i.e, ptr null, ptr %i.f
  store ptr %spec.select.i.i.i.i.i.i, ptr %.sroa.12.0.copyload, align 8, !alias.scope !5954, !noalias !5955
  br i1 %i.e, label %select.unfold.i.i.i.i.i, label %.thread36

select.unfold.i.i.i.i.i:                          ; preds = %.sink.split.i.i.i.i.i.i, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !5957, !noalias !5958, !noundef !4 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !5957, !noalias !5958, !nonnull !4
  %i.k = icmp eq ptr %i.h, %i.j
  %or.cond.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 true, i1 %i.k
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEQIBO_INtNtNtBa_5slice4iter4IterB1s_EB2j_EENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit, label %bb.d

bb.d:                                             ; preds = %select.unfold.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !5959, !noalias !5958
  br label %.thread36

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i.i.i11, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEQIBO_INtNtNtBa_5slice4iter4IterB1s_EB2j_EENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit, label %..thread36_crit_edge

..thread36_crit_edge:                             ; preds = %bb.e
  %.pre = load ptr, ptr %.sroa.12.0.copyload, align 8, !alias.scope !5960, !noalias !5961
  br label %.thread36

.thread36:                                        ; preds = %..thread36_crit_edge, %.sink.split.i.i.i.i.i.i, %bb.d
  %1 = phi ptr [ %.pre, %..thread36_crit_edge ], [ %i.f, %.sink.split.i.i.i.i.i.i ], [ null, %bb.d ] ; 4 uses
  %.sroa.0.0.i2.i.ph3539 = phi ptr [ %.sroa.8.0.copyload, %..thread36_crit_edge ], [ %i.b, %.sink.split.i.i.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %.not.i.i.i.i.i.i12 = icmp eq ptr %1, null
  br i1 %.not.i.i.i.i.i.i12, label %select.unfold.i.i.i.i.i16, label %.sink.split.i.i.i.i.i.i13

.sink.split.i.i.i.i.i.i13:                        ; preds = %.thread36
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !5962, !noalias !5961, !nonnull !4, !noundef !4
  %i.o = icmp eq ptr %1, %i.n                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i.i.i.i.i.i14 = select i1 %i.o, ptr null, ptr %i.p
  store ptr %spec.select.i.i.i.i.i.i14, ptr %.sroa.12.0.copyload, align 8, !alias.scope !5960, !noalias !5961
  br i1 %i.o, label %select.unfold.i.i.i.i.i16, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEQIBO_INtNtNtBa_5slice4iter4IterB1s_EB2j_EENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit

select.unfold.i.i.i.i.i16:                        ; preds = %.sink.split.i.i.i.i.i.i13, %.thread36
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !5963, !noalias !5964, !noundef !4 ; 4 uses
  %.not.i.i.i.i.i.i.i17 = icmp eq ptr %i.r, null
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !5963, !noalias !5964, !nonnull !4
  %i.u = icmp eq ptr %i.r, %i.t
  %or.cond.i.i.i.i.i.i.i18 = select i1 %.not.i.i.i.i.i.i.i17, i1 true, i1 %i.u
  br i1 %or.cond.i.i.i.i.i.i.i18, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEQIBO_INtNtNtBa_5slice4iter4IterB1s_EB2j_EENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit, label %bb.f

bb.f:                                             ; preds = %select.unfold.i.i.i.i.i16
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.v, ptr %i.q, align 8, !alias.scope !5965, !noalias !5964
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEQIBO_INtNtNtBa_5slice4iter4IterB1s_EB2j_EENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEQIBO_INtNtNtBa_5slice4iter4IterB1s_EB2j_EENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %select.unfold.i.i.i.i.i16, %bb.e, %.sink.split.i.i.i.i.i.i13, %bb.f, %bb.b, %select.unfold.i.i.i.i.i
  %.sroa.4.0 = phi ptr [ undef, %bb.b ], [ %i.r, %bb.f ], [ undef, %select.unfold.i.i.i.i.i ], [ %1, %.sink.split.i.i.i.i.i.i13 ], [ undef, %bb.e ], [ undef, %select.unfold.i.i.i.i.i16 ]
  %.sroa.0.1 = phi ptr [ null, %bb.b ], [ %.sroa.0.0.i2.i.ph3539, %bb.f ], [ null, %select.unfold.i.i.i.i.i ], [ %.sroa.0.0.i2.i.ph3539, %.sink.split.i.i.i.i.i.i13 ], [ null, %bb.e ], [ null, %select.unfold.i.i.i.i.i16 ]
  %i.w = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1, 0
  %i.x = insertvalue { ptr, ptr } %i.w, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.x
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { ptr, ptr } @_RINvXst_NtCs6Wt4yPw39th_9itertools10tuple_implTRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpBJ_ENtB6_12TupleCollect24collect_from_iter_no_bufQINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtB2s_5slice4iter4IterBK_EB3b_EECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !5996, !noundef !4 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %select.unfold.i.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !5997, !nonnull !4, !noundef !4
  %i.d = icmp eq ptr %i.a, %i.c                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %spec.select.i.i.i = select i1 %i.d, ptr null, ptr %i.e
  store ptr %spec.select.i.i.i, ptr %0, align 8, !alias.scope !5996
  br i1 %i.d, label %select.unfold.i.i, label %.sink.split.i.i.i12

select.unfold.i.i:                                ; preds = %.sink.split.i.i.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !5998, !noalias !5999, !noundef !4 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !5998, !noalias !5999, !nonnull !4
  %i.j = icmp eq ptr %i.g, %i.i
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %i.j
  br i1 %or.cond.i.i.i.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEB1l_ENtB5_8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit, label %bb.b

bb.b:                                             ; preds = %select.unfold.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.k, ptr %i.f, align 8, !alias.scope !6000, !noalias !5999
  br label %select.unfold.i.i15

.sink.split.i.i.i12:                              ; preds = %.sink.split.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !6001, !nonnull !4, !noundef !4
  %i.n = icmp eq ptr %i.e, %i.m                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %spec.select.i.i.i13 = select i1 %i.n, ptr null, ptr %i.o
  store ptr %spec.select.i.i.i13, ptr %0, align 8, !alias.scope !6002
  br i1 %i.n, label %select.unfold.i.i15, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEB1l_ENtB5_8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit

select.unfold.i.i15:                              ; preds = %bb.b, %.sink.split.i.i.i12
  %.sroa.0.0.i2.i.i.ph32 = phi ptr [ %i.a, %.sink.split.i.i.i12 ], [ %i.g, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !6003, !noalias !6004, !noundef !4 ; 4 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !6003, !noalias !6004, !nonnull !4
  %i.t = icmp eq ptr %i.q, %i.s
  %or.cond.i.i.i.i17 = select i1 %.not.i.i.i.i16, i1 true, i1 %i.t
  br i1 %or.cond.i.i.i.i17, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEB1l_ENtB5_8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

bb.c:                                             ; preds = %select.unfold.i.i15
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.u, ptr %i.p, align 8, !alias.scope !6005, !noalias !6004
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEB1l_ENtB5_8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEB1l_ENtB5_8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.sink.split.i.i.i12, %bb.c, %select.unfold.i.i, %select.unfold.i.i15
  %.sroa.4.0 = phi ptr [ undef, %select.unfold.i.i ], [ undef, %select.unfold.i.i15 ], [ %i.e, %.sink.split.i.i.i12 ], [ %i.q, %bb.c ]
  %.sroa.0.1 = phi ptr [ null, %select.unfold.i.i ], [ null, %select.unfold.i.i15 ], [ %i.a, %.sink.split.i.i.i12 ], [ %.sroa.0.0.i2.i.i.ph32, %bb.c ]
  %i.v = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1, 0
  %i.w = insertvalue { ptr, ptr } %i.v, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXst_NtCs6Wt4yPw39th_9itertools10tuple_implTRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorBJ_ENtB6_12TupleCollect24collect_from_iter_no_bufINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtB2t_7sources4once4OnceBJ_EQINtNtNtB2v_5slice4iter4IterBK_EEECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8, !alias.scope !6017
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !6017 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !6017 ; 7 uses
  %i.a = trunc nuw i64 %.sroa.0.0.copyload to i1
  %.not.i.i = icmp ne ptr %.sroa.8.0.copyload, null
  %or.cond.not = select i1 %i.a, i1 %.not.i.i, i1 false
  %.not.i.i.i11 = icmp eq ptr %.sroa.12.0.copyload, null ; 2 uses
  br i1 %or.cond.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.i11, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEQINtNtNtBa_5slice4iter4IterB1s_EENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %.sroa.12.0.copyload, align 8, !alias.scope !6018, !noalias !6019, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !6018, !noalias !6019, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEQINtNtNtBa_5slice4iter4IterB1s_EENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread, label %.thread

.thread:                                          ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  store ptr %i.f, ptr %.sroa.12.0.copyload, align 8, !alias.scope !6018, !noalias !6019
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br i1 %.not.i.i.i11, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEQINtNtNtBa_5slice4iter4IterB1s_EENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %.sroa.12.0.copyload, align 8, !alias.scope !6020, !noalias !6021
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 8
  %.pre37 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !6020, !noalias !6021
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %.thread
  %i.g = phi ptr [ %i.d, %.thread ], [ %.pre37, %._crit_edge ]
  %i.h = phi ptr [ %i.f, %.thread ], [ %.pre, %._crit_edge ] ; 3 uses
  %.sroa.0.0.i2.i2832 = phi ptr [ %i.b, %.thread ], [ %.sroa.8.0.copyload, %._crit_edge ]
  %i.i = icmp eq ptr %i.h, %i.g
  br i1 %i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEQINtNtNtBa_5slice4iter4IterB1s_EENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store ptr %i.j, ptr %.sroa.12.0.copyload, align 8, !alias.scope !6020, !noalias !6021
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEQINtNtNtBa_5slice4iter4IterB1s_EENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEQINtNtNtBa_5slice4iter4IterB1s_EENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %bb.d, %bb.e, %bb.b, %bb.c, %bb.f
  %.sroa.4.0 = phi ptr [ %i.h, %bb.f ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.e ], [ undef, %bb.d ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0.i2.i2832, %bb.f ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.d ]
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { ptr, ptr } @_RINvXst_NtCs6Wt4yPw39th_9itertools10tuple_implTRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorBJ_ENtB6_12TupleCollect24collect_from_iter_no_bufQINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBK_EECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !6026, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !6026, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorENtB5_8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !alias.scope !6026
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorENtB5_8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.g, ptr %0, align 8, !alias.scope !6027
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorENtB5_8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorENtB5_8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.4.0 = phi ptr [ %i.e, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.1 = phi ptr [ %i.a, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skip4SkipNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderENtCs6Wt4yPw39th_9itertools9Itertools13partition_mapINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBX_9generated4ExprEIB2L_NtBV_7KeywordENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules25legacy_form_pytest_raises23generate_with_statement0B3g_B3I_EB48_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.0.i.i.i.i.i.i = alloca [104 x i8], align 8 ; 5 uses
  %i.f = alloca [120 x i8], align 8               ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8, !alias.scope !6064
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !alias.scope !6064
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.l, align 8, !alias.scope !6064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8, !alias.scope !6065
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8, !alias.scope !6065
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %i.n, align 8, !alias.scope !6065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6067)
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !6068, !noalias !6069, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.b:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.j) #38
          to label %bb.u unwind label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.q = add i64 %i.p, -1                         ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthCsEhZmuQNqkz_11ruff_linter.exit.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %i.t, %bb.d ], [ %i.q, %bb.c ]
  %i.r = invoke { i64, ptr } @_RNvXs24_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %.preheader.i.i.i.i.i
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %.not.i.i.i.i.i.i = icmp eq i64 %i.s, 2
  br i1 %.not.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skip4SkipNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvYB3_NtCs6Wt4yPw39th_9itertools9Itertools13partition_mapINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBX_9generated4ExprEIB3B_NtBV_7KeywordENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules25legacy_form_pytest_raises23generate_with_statement0B46_B4y_E0EB4Y_.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.t = add i64 %.sroa.01.0.i.i.i.i.i.i, -1      ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthCsEhZmuQNqkz_11ruff_linter.exit.i.i, label %.preheader.i.i.i.i.i

_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthCsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.d, %bb.c
  %i.v = invoke { i64, ptr } @_RNvXs24_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthCsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %.not4.i.i = icmp eq i64 %i.w, 2
  br i1 %.not4.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skip4SkipNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvYB3_NtCs6Wt4yPw39th_9itertools9Itertools13partition_mapINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBX_9generated4ExprEIB3B_NtBV_7KeywordENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules25legacy_form_pytest_raises23generate_with_statement0B46_B4y_E0EB4Y_.exit, label %bb.e

bb.e:                                             ; preds = %.noexc5, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 48, i1 false), !noalias !6069
  %i.x = invoke { i64, ptr } @_RNvXs24_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc6:                                          ; preds = %bb.e
  %i.y = extractvalue { i64, ptr } %i.x, 0        ; 2 uses
  %.not2.i.i.i = icmp eq i64 %i.y, 2
  br i1 %.not2.i.i.i, label %_RINvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB14_8for_each4callNtB5_12ArgOrKeywordNCINvYINtNtNtB1a_8adapters4skip4SkipB3_ENtCs6Wt4yPw39th_9itertools9Itertools13partition_mapINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB7_9generated4ExprEIB4h_NtB5_7KeywordENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules25legacy_form_pytest_raises23generate_with_statement0B4M_B5e_E0E0EB5E_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc6
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 23
  %.sroa.0.72..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i.i, i64 72
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  br label %bb.f

bb.f:                                             ; preds = %.noexc12, %.lr.ph.i.i.i
  %i.ab = phi i64 [ %i.y, %.lr.ph.i.i.i ], [ %i.bd, %.noexc12 ]
  %i.ac = phi { i64, ptr } [ %i.x, %.lr.ph.i.i.i ], [ %i.bc, %.noexc12 ]
end_hunk_0
