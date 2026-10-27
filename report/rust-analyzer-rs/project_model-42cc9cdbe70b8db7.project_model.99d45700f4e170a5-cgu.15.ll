Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/project_model-42cc9cdbe70b8db7.project_model.99d45700f4e170a5-cgu.15?download=true
inline.NumInlined: 843
inline.NumDeleted: 469
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtCsixqsALXRULh_14cargo_metadata11FeatureNameENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldBX_NtNtBa_6string6StringuNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB3O_14CargoWorkspace3news3_0NCINvNvB1H_8for_each4callB3k_NCINvMsk_B8_INtB8_3VecB3k_E14extend_trustedINtB2N_3MapBI_B3G_EE0E0E0EB3Q_:bb.a
  %.val714 = phi i64 [ %.promoted20, %.lr.ph ], [ %i.ac, %bb.k ] ; 3 uses
  %i.o = phi ptr [ %.promoted, %.lr.ph ], [ %i.p, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.p, ptr %i.i, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !441
  store i64 0, ptr %i.c, align 8, !noalias !441
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !441
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !441
  store i64 1610612768, ptr %i.j, align 8, !noalias !441
  store ptr %i.c, ptr %i.b, align 8, !noalias !441
  store ptr @22, ptr %i.k, align 8, !noalias !441
  %i.q = invoke noundef zeroext i1 @_RNvXsn_CsixqsALXRULh_14cargo_metadataNtB5_11FeatureNameNtNtCshzWfHUSfYae_4core3fmt7Display3fmtCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !442

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #25
          to label %.body.i.i unwind label %bb.e, !noalias !442

bb.c:                                             ; preds = %bb.b
  br i1 %i.q, label %bb.d, label %bb.f, !prof !9

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #23
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !442

.noexc.i.i.i:                                     ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !442
  unreachable

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsixqsALXRULh_14cargo_metadata11FeatureNameECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #25
          to label %.thread11 unwind label %bb.i, !noalias !443

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !441
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB7_14CargoWorkspace3news3_0B9_.exit.i unwind label %bb.g, !noalias !443

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.thread11 unwind label %bb.h, !noalias !443

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !443
  unreachable

bb.i:                                             ; preds = %.body.i.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !443
  unreachable

_RNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB7_14CargoWorkspace3news3_0B9_.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.k unwind label %.thread16

.thread16:                                        ; preds = %_RNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB7_14CargoWorkspace3news3_0B9_.exit.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.thread11

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %i.w = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.y, ptr %i.f, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.w, ptr %i.z, align 8
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsixqsALXRULh_14cargo_metadata11FeatureNameENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !align !12, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.aa, align 8, !noundef !4
  store i64 %.val5, ptr %.val, align 8
  ret void

bb.k:                                             ; preds = %_RNCNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB7_14CargoWorkspace3news3_0B9_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !439
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.val714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !439
  %i.ac = add i64 %.val714, 1                     ; 2 uses
  store i64 %i.ac, ptr %i.n, align 8, !alias.scope !444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not.not = icmp eq ptr %i.p, %i.h
  br i1 %.not.not, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %.thread11
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.m:                                             ; preds = %._crit_edge
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8, !nonnull !4, !align !12, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.af, align 8, !noundef !4
  store i64 %.val7, ptr %.val6, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCsixqsALXRULh_14cargo_metadata11FeatureNameEECsdcPuHeDsw6v_13project_model.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCsixqsALXRULh_14cargo_metadata11FeatureNameEECsdcPuHeDsw6v_13project_model.exit: ; preds = %.thread11, %bb.m
  %.pn10 = phi { ptr, i32 } [ %eh.lpad-body15, %.thread11 ], [ %i.ae, %bb.m ]
  resume { ptr, i32 } %.pn10

.thread11:                                        ; preds = %.body.i.i, %bb.g, %.thread16
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.v, %.thread16 ], [ %lpad.loopexit.split-lp, %.body.i.i ], [ %i.s, %bb.g ]
  %.val617 = load ptr, ptr %1, align 8, !nonnull !4, !align !12, !noundef !4
  store i64 %.val714, ptr %.val617, align 8
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsixqsALXRULh_14cargo_metadata11FeatureNameENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCsixqsALXRULh_14cargo_metadata11FeatureNameEECsdcPuHeDsw6v_13project_model.exit unwind label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENCINvNtNtB1p_8adapters3map12map_try_foldBX_INtNtB1r_6result6ResultB2X_NtNtCs8yjYO7b73r2_10serde_json5error5ErrorEB2n_INtNtNtB1r_3ops12control_flow11ControlFlowIB4j_B2n_zEB2n_ENCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeQINtNtB4N_2de12DeserializerNtNtB4N_4read7StrReadEE0NCINvXB3I_INtB3I_12GenericShuntINtB3G_3MapBI_B6q_EIB4j_NtNtB1r_7convert10InfallibleB4J_EEB1j_8try_foldB2n_NCINvNtB8_16in_place_collect24write_in_place_with_dropB2X_E0B6a_E0E0B5u_EB6z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.h, align 8        ; 2 uses
  %.not23 = icmp eq ptr %.promoted, %i.g
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.t
  %.sroa.4.024 = phi ptr [ %3, %.lr.ph ], [ %i.ag, %bb.t ] ; 6 uses
  %i.n = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  store ptr %i.o, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !456
  store ptr %2, ptr %i.e, align 8, !noalias !456
  store ptr %.sroa.4.024, ptr %i.i, align 8, !noalias !456
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !458
  %i.p = load ptr, ptr %i.j, align 8, !alias.scope !457, !noalias !456, !nonnull !4, !noundef !4
  %i.q = load i64, ptr %i.k, align 8, !alias.scope !457, !noalias !456, !noundef !4
  invoke void @_RNvCsdcPuHeDsw6v_13project_model9parse_cfg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.q)
          to label %bb.d unwind label %bb.c, !noalias !458

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #25
          to label %bb.q unwind label %bb.k, !noalias !459

bb.d:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.c, align 8, !range !7, !noalias !458, !noundef !4
  %.not.i.not.i = icmp eq i64 %i.s, -1            ; 2 uses
  br i1 %.not.i.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !458
  %i.t = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCs8yjYO7b73r2_10serde_json5errorNtB6_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error6customNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.j unwind label %bb.c, !noalias !458

bb.f:                                             ; preds = %bb.d
  %.sroa.5.8.copyload.i = load ptr, ptr %i.l, align 8, !noalias !460
  %.sroa.8.8.copyload.i = load i64, ptr %.sroa.8.8..sroa_idx.i, align 8, !noalias !460
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %.sroa.8.0.i = phi i64 [ %.sroa.8.8.copyload.i, %bb.f ], [ undef, %bb.j ]
  %.sroa.5.0.i = phi ptr [ %.sroa.5.8.copyload.i, %bb.f ], [ %i.t, %bb.j ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !458
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model.exit.i.i unwind label %bb.h, !noalias !459

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.q unwind label %bb.i, !noalias !459

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !459
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model.exit.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeQINtNtCs8yjYO7b73r2_10serde_json2de12DeserializerNtNtB1d_4read7StrReadEE0B8_.exit.i unwind label %bb.l, !noalias !456

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !458
  br label %bb.g

bb.k:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !459
  unreachable

bb.l:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model.exit.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_RNCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeQINtNtCs8yjYO7b73r2_10serde_json2de12DeserializerNtNtB1d_4read7StrReadEE0B8_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !456
  store ptr %2, ptr %i.a, align 8, !noalias !461
  store ptr %.sroa.4.024, ptr %i.m, align 8, !noalias !461
  br i1 %.not.i.not.i, label %bb.t, label %bb.m

bb.m:                                             ; preds = %_RNCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeQINtNtCs8yjYO7b73r2_10serde_json2de12DeserializerNtNtB1d_4read7StrReadEE0B8_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i) ]
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.z = load ptr, ptr %.val.le, align 8, !alias.scope !462, !noalias !461, !align !12, !noundef !4
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5error5ErrorECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %.val.le)
          to label %bb.s unwind label %bb.o, !noalias !461

bb.o:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.5.0.i, ptr %.val.le, align 8, !noalias !461
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #25
          to label %.body.i unwind label %bb.p, !noalias !461

bb.p:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !461
  unreachable

.body.i:                                          ; preds = %bb.q, %bb.o
  %eh.lpad-body4.i = phi { ptr, i32 } [ %eh.lpad-body.ph.i, %bb.q ], [ %i.ab, %bb.o ]
  resume { ptr, i32 } %eh.lpad-body4.i

bb.q:                                             ; preds = %bb.l, %bb.h, %bb.c
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %i.x, %bb.l ], [ %i.u, %bb.h ], [ %i.r, %bb.c ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(16) %i.e) #25
          to label %.body.i unwind label %bb.r, !noalias !456

bb.r:                                             ; preds = %bb.q
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !456
  unreachable

._crit_edge:                                      ; preds = %bb.t, %bb.a, %bb.s
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.024, %bb.s ], [ %3, %bb.a ], [ %i.ag, %bb.t ]
  %storemerge = phi i64 [ 1, %bb.s ], [ 0, %bb.a ], [ 0, %bb.t ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.af, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.s:                                             ; preds = %bb.m, %bb.n
  store ptr %.sroa.5.0.i, ptr %.val.le, align 8, !noalias !461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !456
  br label %._crit_edge

bb.t:                                             ; preds = %_RNCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeQINtNtCs8yjYO7b73r2_10serde_json2de12DeserializerNtNtB1d_4read7StrReadEE0B8_.exit.i
  store ptr %.sroa.5.0.i, ptr %.sroa.4.024, align 8, !noalias !461
  %.sroa.6.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 8
  store i64 %.sroa.8.0.i, ptr %.sroa.6.16..sroa_idx.i.i, align 8, !noalias !461
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !456
  %.not = icmp eq ptr %i.o, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNvB1B_8for_each4callBX_NCINvXs1_B11_NtB11_10CfgOptionsINtNtB1F_7collect6ExtendBX_E6extendINtB8_3VecBX_EE0E0ECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not.not4 = icmp eq ptr %.promoted, %i.d
  br i1 %.not.not4, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEECsdcPuHeDsw6v_13project_model.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.g, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8
  invoke void @_RNvMs0_Cs4kMRW8zVVbM_3cfgNtB5_10CfgOptions15insert_any_atom(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEECsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.j, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.k, align 8
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !465
  %.not.not = icmp eq ptr %i.g, %i.d
  br i1 %.not.not, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEECsdcPuHeDsw6v_13project_model.exit, label %.lr.ph

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEECsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.l

bb.c:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEECsdcPuHeDsw6v_13project_model.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsdcPuHeDsw6v_13project_model12project_json12RunnableDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtBZ_8RunnableENCINvNtNtB23_8adapters3map12map_try_foldBX_B3B_B31_INtNtB25_6result6ResultB31_zENvYB3B_INtNtB25_7convert4FromBX_E4fromNCINvNtB8_16in_place_collect24write_in_place_with_dropB3B_E0E0B4F_EB11_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.01.i = alloca [72 x i8], align 8         ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.c, align 8        ; 2 uses
  %.not14 = icmp eq ptr %.promoted, %i.b
  br i1 %.not14, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.01.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i, i64 24
  %.sroa.01.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i, i64 48
  br label %switch.lookup

switch.lookup:                                    ; preds = %.lr.ph, %switch.lookup
  %.sroa.4.015 = phi ptr [ %2, %.lr.ph ], [ %i.h, %switch.lookup ] ; 3 uses
  %i.d = phi ptr [ %.promoted, %.lr.ph ], [ %i.e, %switch.lookup ] ; 5 uses
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.sroa.412.0.copyload = load i8, ptr %.sroa.412.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i)
  %switch.cast = zext i8 %.sroa.412.0.copyload to i64
  %switch.shiftamt = shl nuw nsw i64 %switch.cast, 3
  %switch.downshift = lshr i64 505814944114081798, %switch.shiftamt
  %switch.masked = trunc i64 %switch.downshift to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.48..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.015, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.01.i, i64 72, i1 false), !noalias !468
  %.sroa.4.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.015, i64 72
  store i8 %switch.masked, ptr %.sroa.4.sroa.4.0..sroa_idx.i, align 8, !noalias !468
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.4.015, i64 80 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  %.not = icmp eq ptr %i.e, %i.b
  br i1 %.not, label %._crit_edge, label %switch.lookup

._crit_edge:                                      ; preds = %switch.lookup
  store ptr %i.e, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %i.h, %._crit_edge ], [ %2, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsdcPuHeDsw6v_13project_model12project_json9CrateDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtBZ_5CrateENCINvNtNtB1Z_8adapters3map12map_try_foldBX_B3x_B2X_INtNtB21_6result6ResultB2X_zENCNvMs_BZ_NtBZ_11ProjectJson3news0_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3x_E0E0B4y_EB11_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %.sroa.528.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.k = alloca [56 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i = alloca [48 x i8], align 8        ; 4 uses
  %i.w = alloca [128 x i8], align 8               ; 13 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.015.i.i = alloca [48 x i8], align 8      ; 5 uses
end_hunk_0
