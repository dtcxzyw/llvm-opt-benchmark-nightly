Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/project_model-42cc9cdbe70b8db7.project_model.99d45700f4e170a5-cgu.07?download=true
inline.NumInlined: 640
inline.NumDeleted: 275
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCshzWfHUSfYae_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeQINtNtCs8yjYO7b73r2_10serde_json2de12DeserializerNtNtB4g_4read7StrReadEE0EINtNtB1d_6result6ResultNtNtB1d_7convert10InfallibleNtNtB4g_5error5ErrorEENtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEB3b_:bb.a
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.p, align 8
  invoke void @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringE32forget_allocation_drop_remainingCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtBI_6string6StringNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #30
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = and i64 %i.g, 8
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.h, %bb.i, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.x, %bb.i ], [ inttoptr (i64 8 to ptr), %bb.h ]
  %i.s = lshr i64 %i.g, 4
  store i64 %i.s, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.g, -16                        ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #32
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.x = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.v) #32 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %.thread, !prof !309

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.v) #28
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1A_6string6StringENCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeQINtNtCs8yjYO7b73r2_10serde_json2de12DeserializerNtNtB3S_4read7StrReadEE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtB3S_5error5ErrorEEEB2N_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtCs9p4rgIae0RV_6camino11Utf8PathBufENCNvMs_NtCsdcPuHeDsw6v_13project_model12project_jsonNtB33_11ProjectJson3new0ENtCs9R0CJ7nmiec_5paths10AbsPathBufEB35_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs9p4rgIae0RV_6camino11Utf8PathBufENCNvMs_NtCsdcPuHeDsw6v_13project_model12project_jsonNtB2t_11ProjectJson3new0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtCs9R0CJ7nmiec_5paths10AbsPathBufENCINvNtB12_16in_place_collect24write_in_place_with_dropB4T_E0INtNtBc_6result6ResultB4i_zEEB2v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs9p4rgIae0RV_6camino11Utf8PathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs9p4rgIae0RV_6camino11Utf8PathBufENCNvMs_NtCsdcPuHeDsw6v_13project_model12project_jsonNtB2F_11ProjectJson3new0EEB2H_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs9p4rgIae0RV_6camino11Utf8PathBufE32forget_allocation_drop_remainingCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs9p4rgIae0RV_6camino11Utf8PathBufNtCs9R0CJ7nmiec_5paths10AbsPathBufEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #30
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs9p4rgIae0RV_6camino11Utf8PathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs9p4rgIae0RV_6camino11Utf8PathBufENCNvMs_NtCsdcPuHeDsw6v_13project_model12project_jsonNtB2F_11ProjectJson3new0EEB2H_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCsdcPuHeDsw6v_13project_model12project_json12RunnableDataENvYNtB2n_8RunnableINtNtB1f_7convert4FromB2l_E4fromEB3o_EB2p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsdcPuHeDsw6v_13project_model12project_json12RunnableDataENvYNtB1N_8RunnableINtNtBc_7convert4FromB1L_E4fromENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2O_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB2O_E0INtNtBc_6result6ResultB4g_zEEB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdcPuHeDsw6v_13project_model12project_json12RunnableDataENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsdcPuHeDsw6v_13project_model12project_json12RunnableDataENvYNtB1Z_8RunnableINtNtB4_7convert4FromB1X_E4fromEEB21_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 80                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdcPuHeDsw6v_13project_model12project_json12RunnableDataE32forget_allocation_drop_remainingB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCsdcPuHeDsw6v_13project_model12project_json12RunnableDataNtB1N_8RunnableEEB1P_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #30
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdcPuHeDsw6v_13project_model12project_json12RunnableDataENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsdcPuHeDsw6v_13project_model12project_json12RunnableDataENvYNtB1Z_8RunnableINtNtB4_7convert4FromB1X_E4fromEEB21_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCsdcPuHeDsw6v_13project_model12project_json9CrateDataENCNvMs_B2n_NtB2n_11ProjectJson3news0_0ENtB2n_5CrateEB2p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %i.g = mul i64 %i.c, 432                        ; 7 uses
  %i.h = udiv i64 %i.g, 376                       ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsdcPuHeDsw6v_13project_model12project_json9CrateDataENCNvMs_B1N_NtB1N_11ProjectJson3news0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB1N_5CrateENCINvNtB12_16in_place_collect24write_in_place_with_dropB4C_E0INtNtBc_6result6ResultB41_zEEB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdcPuHeDsw6v_13project_model12project_json9CrateDataENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsdcPuHeDsw6v_13project_model12project_json9CrateDataENCNvMs_B1Z_NtB1Z_11ProjectJson3news0_0EEB21_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 376                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdcPuHeDsw6v_13project_model12project_json9CrateDataE32forget_allocation_drop_remainingB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCsdcPuHeDsw6v_13project_model12project_json9CrateDataNtB1N_5CrateEEB1P_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #30
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 376                    ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtNtCsdcPuHeDsw6v_13project_model12project_json9CrateDataNtB13_5CrateEB15_.exit.thread

_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtNtCsdcPuHeDsw6v_13project_model12project_json9CrateDataNtB13_5CrateEB15_.exit.thread: ; preds = %bb.h, %2, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdcPuHeDsw6v_13project_model12project_json9CrateDataENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 376
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtNtCsdcPuHeDsw6v_13project_model12project_json9CrateDataNtB13_5CrateEB15_.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #32
  br label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtNtCsdcPuHeDsw6v_13project_model12project_json9CrateDataNtB13_5CrateEB15_.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #32 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtNtCsdcPuHeDsw6v_13project_model12project_json9CrateDataNtB13_5CrateEB15_.exit.thread, !prof !310

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #28
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsdcPuHeDsw6v_13project_model12project_json9CrateDataENCNvMs_B1Z_NtB1Z_11ProjectJson3news0_0EEB21_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native5eager7destroyNtNtCsaMQbKjKCVRW_12tracing_core10dispatcher5StateECsdcPuHeDsw6v_13project_model(ptr noundef initializes((40, 41)) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 2, ptr %i.a, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.c = load i64, ptr %i.b, align 8, !range !9, !alias.scope !331, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %_RINvNtNtCscAsMj0W7j8b_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCsaMQbKjKCVRW_12tracing_core10dispatcher5StateE0ECsdcPuHeDsw6v_13project_model.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtNtCscAsMj0W7j8b_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCsaMQbKjKCVRW_12tracing_core10dispatcher5StateE0ECsdcPuHeDsw6v_13project_model.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !336, !nonnull !4, !noundef !4
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !336
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtNtCscAsMj0W7j8b_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCsaMQbKjKCVRW_12tracing_core10dispatcher5StateE0ECsdcPuHeDsw6v_13project_model.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtCshzWfHUSfYae_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #31
          to label %_RINvNtNtCscAsMj0W7j8b_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCsaMQbKjKCVRW_12tracing_core10dispatcher5StateE0ECsdcPuHeDsw6v_13project_model.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCscAsMj0W7j8b_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop() #33
          to label %.noexc1.i unwind label %bb.f

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtNtCscAsMj0W7j8b_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCsaMQbKjKCVRW_12tracing_core10dispatcher5StateE0ECsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsaUNMb2qFvZy_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_anyINtNvXs3d_NtB28_5implsINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8BTreeMapppENtB28_11Deserialize11deserialize10MapVisitorNtNtB3D_6string6StringINtNtB3D_3vec3VecB5e_EEECsdcPuHeDsw6v_13project_model(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs8yjYO7b73r2_10serde_json5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error13missing_fieldCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsaUNMb2qFvZy_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCsbSS6DM8SDEO_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtCs9p4rgIae0RV_6camino11Utf8PathBufEECsdcPuHeDsw6v_13project_model(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs8yjYO7b73r2_10serde_json5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error13missing_fieldCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsaUNMb2qFvZy_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCsbSS6DM8SDEO_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtCsixqsALXRULh_14cargo_metadata10TargetKindEECsdcPuHeDsw6v_13project_model(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs8yjYO7b73r2_10serde_json5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error13missing_fieldCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsaUNMb2qFvZy_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCsbSS6DM8SDEO_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtCsixqsALXRULh_14cargo_metadata4NodeEECsdcPuHeDsw6v_13project_model(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs8yjYO7b73r2_10serde_json5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error13missing_fieldCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsaUNMb2qFvZy_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCsbSS6DM8SDEO_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtCsixqsALXRULh_14cargo_metadata6TargetEECsdcPuHeDsw6v_13project_model(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs8yjYO7b73r2_10serde_json5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error13missing_fieldCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsaUNMb2qFvZy_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCsbSS6DM8SDEO_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtCsixqsALXRULh_14cargo_metadata7PackageEECsdcPuHeDsw6v_13project_model(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs8yjYO7b73r2_10serde_json5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error13missing_fieldCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsaUNMb2qFvZy_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCsbSS6DM8SDEO_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtCsixqsALXRULh_14cargo_metadata9PackageIdEECsdcPuHeDsw6v_13project_model(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs8yjYO7b73r2_10serde_json5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error13missing_fieldCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsaUNMb2qFvZy_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCsbSS6DM8SDEO_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtNtB3y_6string6StringEECsdcPuHeDsw6v_13project_model(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs8yjYO7b73r2_10serde_json5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error13missing_fieldCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsaUNMb2qFvZy_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCsbSS6DM8SDEO_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtNtCsdcPuHeDsw6v_13project_model12project_json3DepEEB4O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs8yjYO7b73r2_10serde_json5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error13missing_fieldCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsaUNMb2qFvZy_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCsbSS6DM8SDEO_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtNtCsdcPuHeDsw6v_13project_model12project_json9CrateDataEEB4O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs8yjYO7b73r2_10serde_json5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error13missing_fieldCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsaUNMb2qFvZy_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCsbSS6DM8SDEO_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtNtCsixqsALXRULh_14cargo_metadata10dependency10DependencyEECsdcPuHeDsw6v_13project_model(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs8yjYO7b73r2_10serde_json5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error13missing_fieldCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsaUNMb2qFvZy_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCsbSS6DM8SDEO_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtNtCsixqsALXRULh_14cargo_metadata10diagnostic10DiagnosticEECsdcPuHeDsw6v_13project_model(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs8yjYO7b73r2_10serde_json5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error13missing_fieldCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

end_hunk_0
