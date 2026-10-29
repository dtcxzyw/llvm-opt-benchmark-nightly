Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/quote-04d84f77cf38217f.quote.fbc62d481bd6151c-cgu.0?download=true
inline.NumInlined: 386
inline.NumDeleted: 43
begin_hunk_0_@_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs3_NtCs1K5DUQUZc67_11proc_macro25rcvecINtB5_13RcVecIntoIterNtB7_9TokenTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator9size_hintB7_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs0_NtCs1K5DUQUZc67_11proc_macro25rcvecINtB6_8RcVecMutNtB8_9TokenTreeE6extendINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtB1m_3map3MapIB2e_INtNtNtB1o_7sources4once4OnceNtB8_11TokenStreamENCINvXs5_B8_B32_INtNtNtB1o_6traits7collect6ExtendB32_E6extendB2z_E0ENvMs_NtB8_3impNtB4w_11TokenStream13unwrap_stableEEECslCbDOIcU2Dw_5quote(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  call void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeE16extend_desugaredINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtB1H_3map3MapIB2z_INtNtNtB1J_7sources4once4OnceNtBI_11TokenStreamENCINvXs5_BI_B3n_INtNtNtB1J_6traits7collect6ExtendB3n_E6extendB2U_E0ENvMs_NtBI_3impNtB4R_11TokenStream13unwrap_stableEEECslCbDOIcU2Dw_5quote(ptr align 8 %i.b, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define nonnull ptr @_RINvMsk_NtCsbSS6DM8SDEO_5alloc2rcINtB6_2RcINtNtB8_3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeEE19allocate_for_layoutNCNvMs1O_B6_INtB6_14UniqueRcUninitBE_NtNtB8_5alloc6GlobalE3new0NCB1W_s_0ECslCbDOIcU2Dw_5quote(i64 %0, i64 %1, ptr nofree readnone captures(none) %2, ptr nofree readnone align 8 captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvNtCsbSS6DM8SDEO_5alloc2rc32rc_inner_layout_for_value_layout(i64 %0, i64 %1) ; 2 uses
  %i.b = tail call { i64, i64 } @_RNvNtCsbSS6DM8SDEO_5alloc2rc32rc_inner_layout_for_value_layout(i64 %0, i64 %1) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.b, 1        ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %i.c to ptr
  br label %_RNCNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CslCbDOIcU2Dw_5quote.exit.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.g = tail call ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 %i.d, i64 %i.c) #19
  br label %_RNCNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CslCbDOIcU2Dw_5quote.exit.i

_RNCNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CslCbDOIcU2Dw_5quote.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ] ; 4 uses
  %i.h = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNCNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CslCbDOIcU2Dw_5quote.exit.i
  %i.i = extractvalue { i64, i64 } %i.a, 1
  %i.j = extractvalue { i64, i64 } %i.a, 0
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 %i.j, i64 %i.i) #20
  unreachable

bb.e:                                             ; preds = %_RNCNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CslCbDOIcU2Dw_5quote.exit.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  store i64 1, ptr %i.k, align 8
  ret ptr %.sroa.0.0.i.i.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_RINvMsk_NtCsbSS6DM8SDEO_5alloc2rcINtB6_2RcINtNtB8_3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeEE23try_allocate_for_layoutNCNvMs1O_B6_INtB6_14UniqueRcUninitBE_NtNtB8_5alloc6GlobalE3new0NCB20_s_0ECslCbDOIcU2Dw_5quote(i64 %0, i64 %1, ptr nofree readnone captures(none) %2, ptr nofree readnone align 8 captures(none) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvNtCsbSS6DM8SDEO_5alloc2rc32rc_inner_layout_for_value_layout(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr
  br label %_RNCNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CslCbDOIcU2Dw_5quote.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.f = tail call ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 %i.c, i64 %i.b) #19
  br label %_RNCNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CslCbDOIcU2Dw_5quote.exit

_RNCNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CslCbDOIcU2Dw_5quote.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 4 uses
  %i.g = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNCNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CslCbDOIcU2Dw_5quote.exit
  store i64 1, ptr %.sroa.0.0.i.i.i, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  store i64 1, ptr %i.h, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNCNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CslCbDOIcU2Dw_5quote.exit, %bb.d
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 1, %_RNCNvMs1O_NtCsbSS6DM8SDEO_5alloc2rcINtB8_14UniqueRcUninitINtNtBa_3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeENtNtBa_5alloc6GlobalE3new0CslCbDOIcU2Dw_5quote.exit ]
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.0.0.i.i.i, 1
  ret { i64, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeE16extend_desugaredINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtB1H_3map3MapIB2z_INtNtNtB1J_7sources4once4OnceNtBI_11TokenStreamENCINvXs5_BI_B3n_INtNtNtB1J_6traits7collect6ExtendB3n_E6extendB2U_E0ENvMs_NtBI_3impNtB4R_11TokenStream13unwrap_stableEEECslCbDOIcU2Dw_5quote(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.3 = alloca i64, align 8                  ; 2 uses
  %.sroa.5 = alloca i64, align 8
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.phi.trans.insert76.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.phi.trans.insert79.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.phi.trans.insert81.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeE7reserveCslCbDOIcU2Dw_5quote.exit, %bb.a
  invoke void @_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B20_B1Y_INtNtNtB9_6traits7collect6ExtendB1Y_E6extendB1w_E0ENvMs_NtB20_3impNtB3Q_11TokenStream13unwrap_stableEINtNtB20_5rcvec13RcVecIntoIterNtB20_9TokenTreeEENtNtB31_8iterator8Iterator4nextCslCbDOIcU2Dw_5quote(ptr nonnull sret([32 x i8]) align 8 %i.d, ptr align 8 %1) #21
          to label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_3map3MapIB15_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1T_B1R_INtNtNtB9_6traits7collect6ExtendB1R_E6extendB1p_E0ENvMs_NtB1T_3impNtB3J_11TokenStream13unwrap_stableEENtNtB2U_8iterator8Iterator4nextCslCbDOIcU2Dw_5quote.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.n, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.n ], [ %i.i, %bb.d ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtBG_3map3MapIB1p_INtNtNtBI_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B2d_B2b_INtNtNtBI_6traits7collect6ExtendB2b_E6extendB1J_E0ENvMs_NtB2d_3impNtB43_11TokenStream13unwrap_stableEINtNtB2d_5rcvec13RcVecIntoIterNtB2d_9TokenTreeEEECslCbDOIcU2Dw_5quote(ptr align 8 %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapIB1i_INtNtNtBI_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B26_B24_INtNtNtBI_6traits7collect6ExtendB24_E6extendB1C_E0ENvMs_NtB26_3impNtB3W_11TokenStream13unwrap_stableEEECslCbDOIcU2Dw_5quote.exit unwind label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_3map3MapIB15_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1T_B1R_INtNtNtB9_6traits7collect6ExtendB1R_E6extendB1p_E0ENvMs_NtB1T_3impNtB3J_11TokenStream13unwrap_stableEENtNtB2U_8iterator8Iterator4nextCslCbDOIcU2Dw_5quote.exit: ; preds = %bb.b
  %i.j = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.j, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_3map3MapIB15_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1T_B1R_INtNtNtB9_6traits7collect6ExtendB1R_E6extendB1p_E0ENvMs_NtB1T_3impNtB3J_11TokenStream13unwrap_stableEENtNtB2U_8iterator8Iterator4nextCslCbDOIcU2Dw_5quote.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.k = load i64, ptr %i.e, align 8              ; 3 uses
  %i.l = load i64, ptr %0, align 8
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.g, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeE7reserveCslCbDOIcU2Dw_5quote.exit

bb.f:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_3map3MapIB15_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1T_B1R_INtNtNtB9_6traits7collect6ExtendB1R_E6extendB1p_E0ENvMs_NtB1T_3impNtB3J_11TokenStream13unwrap_stableEENtNtB2U_8iterator8Iterator4nextCslCbDOIcU2Dw_5quote.exit
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtBG_3map3MapIB1p_INtNtNtBI_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B2d_B2b_INtNtNtBI_6traits7collect6ExtendB2b_E6extendB1J_E0ENvMs_NtB2d_3impNtB43_11TokenStream13unwrap_stableEINtNtB2d_5rcvec13RcVecIntoIterNtB2d_9TokenTreeEEECslCbDOIcU2Dw_5quote(ptr align 8 %1)
  ret void

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = load ptr, ptr %i.f, align 8
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXs3_NtCs1K5DUQUZc67_11proc_macro25rcvecINtB5_13RcVecIntoIterNtB7_9TokenTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator9size_hintB7_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.f)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load i64, ptr %i.b, align 8
  %.pre75.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8
  %.pre77.i.i = load i64, ptr %.phi.trans.insert76.i.i, align 8
  %i.o = trunc nuw i64 %.pre75.i.i to i1
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit.i.i

bb.i:                                             ; preds = %bb.g
  store i64 0, ptr %i.b, align 8
  store i64 1, ptr %.phi.trans.insert.i.i, align 8
  store i64 0, ptr %.phi.trans.insert76.i.i, align 8
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit.i.i: ; preds = %bb.i, %.noexc
  %i.p = phi i64 [ %.pre77.i.i, %.noexc ], [ 0, %bb.i ]
  %i.q = phi i1 [ %i.o, %.noexc ], [ true, %bb.i ] ; 2 uses
  %i.r = phi i64 [ %.pre.i.i, %.noexc ], [ 0, %bb.i ] ; 2 uses
  %i.s = load ptr, ptr %i.g, align 8
  %.not53.i.i = icmp eq ptr %i.s, null
  br i1 %.not53.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit63.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit.i.i
  invoke void @_RNvXs3_NtCs1K5DUQUZc67_11proc_macro25rcvecINtB5_13RcVecIntoIterNtB7_9TokenTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator9size_hintB7_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.g)
          to label %.noexc3 unwind label %bb.n

.noexc3:                                          ; preds = %bb.j
  %.pre78.i.i = load i64, ptr %i.a, align 8
  %.pre80.i.i = load i64, ptr %.phi.trans.insert79.i.i, align 8
  %.pre82.i.i = load i64, ptr %.phi.trans.insert81.i.i, align 8
  %i.t = call i64 @llvm.uadd.sat.i64(i64 %i.r, i64 %.pre78.i.i)
  %i.u = trunc nuw i64 %.pre80.i.i to i1
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit63.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit63.i.i: ; preds = %.noexc3, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit.i.i
  %i.v = phi i64 [ %.pre82.i.i, %.noexc3 ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit.i.i ]
  %i.w = phi i1 [ %i.u, %.noexc3 ], [ true, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit.i.i ] ; 2 uses
  %i.x = phi i64 [ %i.t, %.noexc3 ], [ %i.r, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit.i.i ]
  %i.y = load i64, ptr %1, align 8                ; 2 uses
  %.not54.i.i = icmp eq i64 %i.y, -3
  br i1 %.not54.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit63.i.i
  %.not74.i.i = icmp eq i64 %i.y, -2
  %op.rdx = select i1 %.not74.i.i, i1 %i.q, i1 false
  %op.rdx7 = select i1 %op.rdx, i1 %i.w, i1 false
  br i1 %op.rdx7, label %bb.m, label %bb.o

bb.l:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit63.i.i
  %or.cond55.i.i = select i1 %i.q, i1 %i.w, i1 false
  br i1 %or.cond55.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.z = add i64 %i.v, %i.p
  br label %bb.o

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeE7reserveCslCbDOIcU2Dw_5quote.exit: ; preds = %bb.o, %bb.p, %bb.e
  %i.aa = load ptr, ptr %i.h, align 8
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.ac = add i64 %i.k, 1
  store i64 %i.ac, ptr %i.e, align 8
  br label %bb.b

bb.n:                                             ; preds = %bb.p, %bb.j, %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.c) #22
          to label %bb.c unwind label %bb.q

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.sink84.i.i.sroa.phi = phi ptr [ %.sroa.5, %bb.m ], [ %.sroa.3, %bb.l ], [ %.sroa.3, %bb.k ]
  %.sink.i.i = phi i64 [ %i.z, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ]
  store i64 %.sink.i.i, ptr %.sink84.i.i.sroa.phi, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call i64 @llvm.uadd.sat.i64(i64 %i.x, i64 1) ; 2 uses
  %i.af = load i64, ptr %i.e, align 8             ; 2 uses
  %i.ag = load i64, ptr %0, align 8
  %i.ah = sub i64 %i.ag, %i.af
  %i.ai = icmp ugt i64 %i.ae, %i.ah
  br i1 %i.ai, label %bb.p, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeE7reserveCslCbDOIcU2Dw_5quote.exit

bb.p:                                             ; preds = %bb.o
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseVpsqJvcPM7_9addr2line(ptr nonnull align 8 %0, i64 %i.af, i64 %i.ae, i64 8, i64 32)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeE7reserveCslCbDOIcU2Dw_5quote.exit unwind label %bb.n

bb.q:                                             ; preds = %bb.c, %bb.n
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapIB1i_INtNtNtBI_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B26_B24_INtNtNtBI_6traits7collect6ExtendB24_E6extendB1C_E0ENvMs_NtB26_3impNtB3W_11TokenStream13unwrap_stableEEECslCbDOIcU2Dw_5quote.exit: ; preds = %bb.c
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option4ItemNtCs1K5DUQUZc67_11proc_macro211TokenStreamEECslCbDOIcU2Dw_5quote(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, -2
  br i1 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs1K5DUQUZc67_11proc_macro211TokenStreamEECslCbDOIcU2Dw_5quote.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs1K5DUQUZc67_11proc_macro23imp11TokenStreamEBF_(ptr nonnull align 8 %0)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs1K5DUQUZc67_11proc_macro211TokenStreamEECslCbDOIcU2Dw_5quote.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs1K5DUQUZc67_11proc_macro211TokenStreamEECslCbDOIcU2Dw_5quote.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option4ItemNtCs1K5DUQUZc67_11proc_macro29TokenTreeEECslCbDOIcU2Dw_5quote(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs1K5DUQUZc67_11proc_macro29TokenTreeEECslCbDOIcU2Dw_5quote.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %0)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs1K5DUQUZc67_11proc_macro29TokenTreeEECslCbDOIcU2Dw_5quote.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs1K5DUQUZc67_11proc_macro29TokenTreeEECslCbDOIcU2Dw_5quote.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtB12_9TokenTreeEEECslCbDOIcU2Dw_5quote(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBG_9TokenTreeEEBG_(ptr nonnull align 8 %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapIBY_INtNtNtB14_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B24_B22_INtNtNtB14_6traits7collect6ExtendB22_E6extendB1z_E0ENvMs_NtB24_3impNtB3V_11TokenStream13unwrap_stableEEECslCbDOIcU2Dw_5quote(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.off = add i64 %i.a, 3
  %switch = icmp ult i64 %.off, 2
  br i1 %switch, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapIBC_INtNtNtBI_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1H_B1F_INtNtNtBI_6traits7collect6ExtendB1F_E6extendB1d_E0ENvMs_NtB1H_3impNtB3x_11TokenStream13unwrap_stableEECslCbDOIcU2Dw_5quote.exit, label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapIBC_INtNtNtBI_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1H_B1F_INtNtNtBI_6traits7collect6ExtendB1F_E6extendB1d_E0ENvMs_NtB1H_3impNtB3x_11TokenStream13unwrap_stableEECslCbDOIcU2Dw_5quote.exit: ; preds = %bb.a, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs1K5DUQUZc67_11proc_macro23imp11TokenStreamEBF_(ptr nonnull align 8 %0)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapIBC_INtNtNtBI_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1H_B1F_INtNtNtBI_6traits7collect6ExtendB1F_E6extendB1d_E0ENvMs_NtB1H_3impNtB3x_11TokenStream13unwrap_stableEECslCbDOIcU2Dw_5quote.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs1K5DUQUZc67_11proc_macro211TokenStreamEECslCbDOIcU2Dw_5quote(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, -2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs1K5DUQUZc67_11proc_macro23imp11TokenStreamEBF_(ptr nonnull align 8 %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs1K5DUQUZc67_11proc_macro29TokenTreeEECslCbDOIcU2Dw_5quote(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtCs1K5DUQUZc67_11proc_macro211TokenStreamEECslCbDOIcU2Dw_5quote(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, -2
  br i1 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option4ItemNtCs1K5DUQUZc67_11proc_macro211TokenStreamEECslCbDOIcU2Dw_5quote.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs1K5DUQUZc67_11proc_macro23imp11TokenStreamEBF_(ptr nonnull align 8 %0)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option4ItemNtCs1K5DUQUZc67_11proc_macro211TokenStreamEECslCbDOIcU2Dw_5quote.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option4ItemNtCs1K5DUQUZc67_11proc_macro211TokenStreamEECslCbDOIcU2Dw_5quote.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtCs1K5DUQUZc67_11proc_macro29TokenTreeEECslCbDOIcU2Dw_5quote(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option4ItemNtCs1K5DUQUZc67_11proc_macro29TokenTreeEECslCbDOIcU2Dw_5quote.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %0)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option4ItemNtCs1K5DUQUZc67_11proc_macro29TokenTreeEECslCbDOIcU2Dw_5quote.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option4ItemNtCs1K5DUQUZc67_11proc_macro29TokenTreeEECslCbDOIcU2Dw_5quote.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc2rc14UniqueRcUninitINtNtBG_3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeENtNtBG_5alloc6GlobalEECslCbDOIcU2Dw_5quote(ptr nofree align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load i64, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call { i64, i64 } @_RNvNtCsbSS6DM8SDEO_5alloc2rc32rc_inner_layout_for_value_layout(i64 %i.f, i64 %i.h) ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 1        ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs1P_NtCsbSS6DM8SDEO_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslCbDOIcU2Dw_5quote.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { i64, i64 } %i.i, 0
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr %i.e, i64 %i.j, i64 %i.l) #19
  br label %_RNvXs1P_NtCsbSS6DM8SDEO_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCs1K5DUQUZc67_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslCbDOIcU2Dw_5quote.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr nonnull align 8 @14) #24
  unreachable
end_hunk_0
begin_hunk_1_@_RNvXs6_NtCslCbDOIcU2Dw_5quote9to_tokensNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB5_8ToTokens9to_tokens:bb.a
  %i.f = getelementptr i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsG_Cs1K5DUQUZc67_11proc_macro2NtB5_7Literal6string(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr %.val, i64 %.val1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvXso_Cs1K5DUQUZc67_11proc_macro2NtB5_9TokenTreeINtNtCshzWfHUSfYae_4core7convert4FromNtB5_7LiteralE4from(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RINvXs7_NtCs1K5DUQUZc67_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECslCbDOIcU2Dw_5quote(ptr align 8 %1, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs7_NtCslCbDOIcU2Dw_5quote14ident_fragmenttNtB5_13IdentFragment3fmt(ptr align 2 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvXs3_NtNtNtCshzWfHUSfYae_4core3fmt3num3imptNtB9_7Display3fmt(ptr align 2 %0, ptr align 8 %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtCslCbDOIcU2Dw_5quote9to_tokensaNtB5_8ToTokens9to_tokens(ptr nofree readonly captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = load i8, ptr %0, align 1
  call void @_RNvMsG_Cs1K5DUQUZc67_11proc_macro2NtB5_7Literal11i8_suffixed(ptr nonnull sret([24 x i8]) align 8 %i.d, i8 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvXso_Cs1K5DUQUZc67_11proc_macro2NtB5_9TokenTreeINtNtCshzWfHUSfYae_4core7convert4FromNtB5_7LiteralE4from(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RINvXs7_NtCs1K5DUQUZc67_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECslCbDOIcU2Dw_5quote(ptr align 8 %1, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs8_NtCslCbDOIcU2Dw_5quote14ident_fragmentmNtB5_13IdentFragment3fmt(ptr align 4 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt(ptr align 4 %0, ptr align 8 %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs8_NtCslCbDOIcU2Dw_5quote9to_tokenssNtB5_8ToTokens9to_tokens(ptr nofree readonly align 2 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = load i16, ptr %0, align 2
  call void @_RNvMsG_Cs1K5DUQUZc67_11proc_macro2NtB5_7Literal12i16_suffixed(ptr nonnull sret([24 x i8]) align 8 %i.d, i16 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvXso_Cs1K5DUQUZc67_11proc_macro2NtB5_9TokenTreeINtNtCshzWfHUSfYae_4core7convert4FromNtB5_7LiteralE4from(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RINvXs7_NtCs1K5DUQUZc67_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECslCbDOIcU2Dw_5quote(ptr align 8 %1, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs9_NtCslCbDOIcU2Dw_5quote14ident_fragmentyNtB5_13IdentFragment3fmt(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt(ptr align 8 %0, ptr align 8 %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtCslCbDOIcU2Dw_5quote9to_tokenslNtB5_8ToTokens9to_tokens(ptr nofree readonly align 4 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = load i32, ptr %0, align 4
  call void @_RNvMsG_Cs1K5DUQUZc67_11proc_macro2NtB5_7Literal12i32_suffixed(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvXso_Cs1K5DUQUZc67_11proc_macro2NtB5_9TokenTreeINtNtCshzWfHUSfYae_4core7convert4FromNtB5_7LiteralE4from(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RINvXs7_NtCs1K5DUQUZc67_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECslCbDOIcU2Dw_5quote(ptr align 8 %1, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define ptr @_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1M_B1K_INtNtNtB9_6traits7collect6ExtendB1K_E6extendB1i_E0ENvMs_NtB1M_3impNtB3C_11TokenStream13unwrap_stableEEINtB5_8FuseImplBY_E4nextCslCbDOIcU2Dw_5quote(ptr nofree align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %0, align 8                ; 3 uses
  %.not = icmp eq i64 %i.b, -3
  br i1 %.not, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1u_B1s_INtNtNtB9_6traits7collect6ExtendB1s_E6extendB10_E0ENvMs_NtB1u_3impNtB3k_11TokenStream13unwrap_stableENtNtB2v_8iterator8Iterator4nextCslCbDOIcU2Dw_5quote.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  %.not.i.i = icmp eq i64 %i.b, -2
  br i1 %.not.i.i, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1u_B1s_INtNtNtB9_6traits7collect6ExtendB1s_E6extendB10_E0ENvMs_NtB1u_3impNtB3k_11TokenStream13unwrap_stableENtNtB2v_8iterator8Iterator4nextCslCbDOIcU2Dw_5quote.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.23.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx2.i.i, i64 24, i1 false)
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call ptr @_RNvMs_NtCs1K5DUQUZc67_11proc_macro23impNtB4_11TokenStream13unwrap_stable(ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1u_B1s_INtNtNtB9_6traits7collect6ExtendB1s_E6extendB10_E0ENvMs_NtB1u_3impNtB3k_11TokenStream13unwrap_stableENtNtB2v_8iterator8Iterator4nextCslCbDOIcU2Dw_5quote.exit

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1u_B1s_INtNtNtB9_6traits7collect6ExtendB1s_E6extendB10_E0ENvMs_NtB1u_3impNtB3k_11TokenStream13unwrap_stableENtNtB2v_8iterator8Iterator4nextCslCbDOIcU2Dw_5quote.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.c, %bb.c ], [ null, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_3map3MapIB15_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1T_B1R_INtNtNtB9_6traits7collect6ExtendB1R_E6extendB1p_E0ENvMs_NtB1T_3impNtB3J_11TokenStream13unwrap_stableEENtNtB2U_8iterator8Iterator4nextCslCbDOIcU2Dw_5quote(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B20_B1Y_INtNtNtB9_6traits7collect6ExtendB1Y_E6extendB1w_E0ENvMs_NtB20_3impNtB3Q_11TokenStream13unwrap_stableEINtNtB20_5rcvec13RcVecIntoIterNtB20_9TokenTreeEENtNtB31_8iterator8Iterator4nextCslCbDOIcU2Dw_5quote(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) #21
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_3map3MapIB15_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1T_B1R_INtNtNtB9_6traits7collect6ExtendB1R_E6extendB1p_E0ENvMs_NtB1T_3impNtB3J_11TokenStream13unwrap_stableEENtNtB2U_8iterator8Iterator9size_hintCslCbDOIcU2Dw_5quote(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs3_NtCs1K5DUQUZc67_11proc_macro25rcvecINtB5_13RcVecIntoIterNtB7_9TokenTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator9size_hintB7_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.c)
  %.pre.i = load i64, ptr %i.b, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre75.i = load i64, ptr %.phi.trans.insert.i, align 8
  %.phi.trans.insert76.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre77.i = load i64, ptr %.phi.trans.insert76.i, align 8
  %i.e = trunc nuw i64 %.pre75.i to i1
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit.i

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.b, align 8
  %.sroa.272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.272.0..sroa_idx.i, align 8
  %.sroa.373.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.373.0..sroa_idx.i, align 8
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit.i: ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %.pre77.i, %bb.b ], [ 0, %bb.c ] ; 2 uses
  %i.g = phi i1 [ %i.e, %bb.b ], [ true, %bb.c ]  ; 2 uses
  %i.h = phi i64 [ %.pre.i, %bb.b ], [ 0, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not53.i = icmp eq ptr %i.j, null
  br i1 %.not53.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit63.i, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit.i
  call void @_RNvXs3_NtCs1K5DUQUZc67_11proc_macro25rcvecINtB5_13RcVecIntoIterNtB7_9TokenTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator9size_hintB7_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.i)
  %.pre78.i = load i64, ptr %i.a, align 8
  %.phi.trans.insert79.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre80.i = load i64, ptr %.phi.trans.insert79.i, align 8
  %.phi.trans.insert81.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre82.i = load i64, ptr %.phi.trans.insert81.i, align 8
  %i.k = call i64 @llvm.uadd.sat.i64(i64 %i.h, i64 %.pre78.i)
  %i.l = trunc nuw i64 %.pre80.i to i1
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit63.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit63.i: ; preds = %bb.d, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit.i
  %i.m = phi i64 [ %.pre82.i, %bb.d ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit.i ]
  %i.n = phi i1 [ %i.l, %bb.d ], [ true, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit.i ] ; 2 uses
  %i.o = phi i64 [ %i.k, %bb.d ], [ %i.h, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit.i ] ; 2 uses
  %i.p = load i64, ptr %1, align 8                ; 2 uses
  %.not54.i = icmp eq i64 %i.p, -3
  br i1 %.not54.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit63.i
  %.not74.i = icmp eq i64 %i.p, -2
  %op.rdx = select i1 %.not74.i, i1 %i.g, i1 false
  %op.rdx1 = select i1 %op.rdx, i1 %i.n, i1 false
  br i1 %op.rdx1, label %bb.h, label %bb.g

bb.f:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit63.i
  %or.cond55.i = select i1 %i.g, i1 %i.n, i1 false
  br i1 %or.cond55.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i64 %i.o, ptr %0, align 8
  br label %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B20_B1Y_INtNtNtB9_6traits7collect6ExtendB1Y_E6extendB1w_E0ENvMs_NtB20_3impNtB3Q_11TokenStream13unwrap_stableEINtNtB20_5rcvec13RcVecIntoIterNtB20_9TokenTreeEENtNtB31_8iterator8Iterator9size_hintCslCbDOIcU2Dw_5quote.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.q = add i64 %i.m, %i.f                       ; 2 uses
  %i.r = icmp uge i64 %i.q, %i.f
  %.56.i = zext i1 %i.r to i64
  store i64 %i.o, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.56.i, ptr %i.s, align 8
  br label %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B20_B1Y_INtNtNtB9_6traits7collect6ExtendB1Y_E6extendB1w_E0ENvMs_NtB20_3impNtB3Q_11TokenStream13unwrap_stableEINtNtB20_5rcvec13RcVecIntoIterNtB20_9TokenTreeEENtNtB31_8iterator8Iterator9size_hintCslCbDOIcU2Dw_5quote.exit

_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B20_B1Y_INtNtNtB9_6traits7collect6ExtendB1Y_E6extendB1w_E0ENvMs_NtB20_3impNtB3Q_11TokenStream13unwrap_stableEINtNtB20_5rcvec13RcVecIntoIterNtB20_9TokenTreeEENtNtB31_8iterator8Iterator9size_hintCslCbDOIcU2Dw_5quote.exit: ; preds = %bb.g, %bb.h
  %.sink84.i = phi i64 [ 8, %bb.g ], [ 16, %bb.h ]
  %.sink.i = phi i64 [ 0, %bb.g ], [ %i.q, %bb.h ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.sink84.i
  store i64 %.sink.i, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define i32 @_RNvXs_NtCslCbDOIcU2Dw_5quote7spannedNtNtCs1K5DUQUZc67_11proc_macro25extra9DelimSpanNtB4_7Spanned6___span(ptr align 4 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_RNvMNtCs1K5DUQUZc67_11proc_macro25extraNtB2_9DelimSpan4join(ptr align 4 %0)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RNvXs_NtCslCbDOIcU2Dw_5quote9___privateINtB4_11HasIteratorKb1_EINtNtNtCshzWfHUSfYae_4core3ops3bit5BitOrIBC_Kb0_EE5bitor() unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXsa_NtCslCbDOIcU2Dw_5quote14ident_fragmentoNtB5_13IdentFragment3fmt(ptr align 16 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvXNtNtCshzWfHUSfYae_4core3fmt3numoNtB4_7Display3fmt(ptr align 16 %0, ptr align 8 %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsa_NtCslCbDOIcU2Dw_5quote9to_tokensxNtB5_8ToTokens9to_tokens(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = load i64, ptr %0, align 8
  call void @_RNvMsG_Cs1K5DUQUZc67_11proc_macro2NtB5_7Literal12i64_suffixed(ptr nonnull sret([24 x i8]) align 8 %i.d, i64 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvXso_Cs1K5DUQUZc67_11proc_macro2NtB5_9TokenTreeINtNtCshzWfHUSfYae_4core7convert4FromNtB5_7LiteralE4from(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RINvXs7_NtCs1K5DUQUZc67_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECslCbDOIcU2Dw_5quote(ptr align 8 %1, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXsb_NtCslCbDOIcU2Dw_5quote14ident_fragmentjNtB5_13IdentFragment3fmt(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt(ptr align 8 %0, ptr align 8 %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NtCslCbDOIcU2Dw_5quote9to_tokensnNtB5_8ToTokens9to_tokens(ptr nofree readonly align 16 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = load i128, ptr %0, align 16
  call void @_RNvMsG_Cs1K5DUQUZc67_11proc_macro2NtB5_7Literal13i128_suffixed(ptr nonnull sret([24 x i8]) align 8 %i.d, i128 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvXso_Cs1K5DUQUZc67_11proc_macro2NtB5_9TokenTreeINtNtCshzWfHUSfYae_4core7convert4FromNtB5_7LiteralE4from(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RINvXs7_NtCs1K5DUQUZc67_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECslCbDOIcU2Dw_5quote(ptr align 8 %1, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsc_NtCslCbDOIcU2Dw_5quote9to_tokensiNtB5_8ToTokens9to_tokens(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = load i64, ptr %0, align 8
  call void @_RNvMsG_Cs1K5DUQUZc67_11proc_macro2NtB5_7Literal14isize_suffixed(ptr nonnull sret([24 x i8]) align 8 %i.d, i64 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvXso_Cs1K5DUQUZc67_11proc_macro2NtB5_9TokenTreeINtNtCshzWfHUSfYae_4core7convert4FromNtB5_7LiteralE4from(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RINvXs7_NtCs1K5DUQUZc67_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECslCbDOIcU2Dw_5quote(ptr align 8 %1, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsd_NtCslCbDOIcU2Dw_5quote9to_tokenshNtB5_8ToTokens9to_tokens(ptr nofree readonly captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = load i8, ptr %0, align 1
  call void @_RNvMsG_Cs1K5DUQUZc67_11proc_macro2NtB5_7Literal11u8_suffixed(ptr nonnull sret([24 x i8]) align 8 %i.d, i8 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvXso_Cs1K5DUQUZc67_11proc_macro2NtB5_9TokenTreeINtNtCshzWfHUSfYae_4core7convert4FromNtB5_7LiteralE4from(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RINvXs7_NtCs1K5DUQUZc67_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECslCbDOIcU2Dw_5quote(ptr align 8 %1, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXse_NtCslCbDOIcU2Dw_5quote9to_tokenstNtB5_8ToTokens9to_tokens(ptr nofree readonly align 2 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = load i16, ptr %0, align 2
  call void @_RNvMsG_Cs1K5DUQUZc67_11proc_macro2NtB5_7Literal12u16_suffixed(ptr nonnull sret([24 x i8]) align 8 %i.d, i16 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvXso_Cs1K5DUQUZc67_11proc_macro2NtB5_9TokenTreeINtNtCshzWfHUSfYae_4core7convert4FromNtB5_7LiteralE4from(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RINvXs7_NtCs1K5DUQUZc67_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECslCbDOIcU2Dw_5quote(ptr align 8 %1, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsf_NtCslCbDOIcU2Dw_5quote9to_tokensmNtB5_8ToTokens9to_tokens(ptr nofree readonly align 4 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = load i32, ptr %0, align 4
  call void @_RNvMsG_Cs1K5DUQUZc67_11proc_macro2NtB5_7Literal12u32_suffixed(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvXso_Cs1K5DUQUZc67_11proc_macro2NtB5_9TokenTreeINtNtCshzWfHUSfYae_4core7convert4FromNtB5_7LiteralE4from(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RINvXs7_NtCs1K5DUQUZc67_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECslCbDOIcU2Dw_5quote(ptr align 8 %1, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsg_NtCslCbDOIcU2Dw_5quote9to_tokensyNtB5_8ToTokens9to_tokens(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = load i64, ptr %0, align 8
  call void @_RNvMsG_Cs1K5DUQUZc67_11proc_macro2NtB5_7Literal12u64_suffixed(ptr nonnull sret([24 x i8]) align 8 %i.d, i64 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false)
end_hunk_1
begin_hunk_2_@_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B20_B1Y_INtNtNtB9_6traits7collect6ExtendB1Y_E6extendB1w_E0ENvMs_NtB20_3impNtB3Q_11TokenStream13unwrap_stableEINtNtB20_5rcvec13RcVecIntoIterNtB20_9TokenTreeEENtNtB31_8iterator8Iterator4nextCslCbDOIcU2Dw_5quote:bb.a
  br i1 %i.m, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.c)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.s, %bb.f, %bb.g, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.u ], [ %i.k, %bb.f ], [ %i.k, %bb.g ], [ %i.x, %bb.s ], [ %i.x, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtB1b_9TokenTreeEB1X_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECslCbDOIcU2Dw_5quote.exit: ; preds = %bb.e
  %.sroa.0.0.copyload16.pre.pre = load i32, ptr %i.c, align 8 ; 2 uses
  store ptr null, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx17, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i32 %.sroa.0.0.copyload16.pre.pre, -1
  br i1 %.not, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs1K5DUQUZc67_11proc_macro29TokenTreeEECslCbDOIcU2Dw_5quote.exit, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtB1b_9TokenTreeEB1X_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECslCbDOIcU2Dw_5quote.exit, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtB1b_9TokenTreeEB1X_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECslCbDOIcU2Dw_5quote.exit.thread22
  %.sroa.0.0.copyload1626 = phi i32 [ %i.h, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtB1b_9TokenTreeEB1X_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECslCbDOIcU2Dw_5quote.exit.thread22 ], [ %.sroa.0.0.copyload16.pre.pre, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtB1b_9TokenTreeEB1X_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECslCbDOIcU2Dw_5quote.exit ]
  store i32 %.sroa.0.0.copyload1626, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4, i64 28, i1 false)
  br label %bb.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs1K5DUQUZc67_11proc_macro29TokenTreeEECslCbDOIcU2Dw_5quote.exit.sink.split: ; preds = %bb.b, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtB1b_9TokenTreeEB1X_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECslCbDOIcU2Dw_5quote.exit.thread27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs1K5DUQUZc67_11proc_macro29TokenTreeEECslCbDOIcU2Dw_5quote.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs1K5DUQUZc67_11proc_macro29TokenTreeEECslCbDOIcU2Dw_5quote.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs1K5DUQUZc67_11proc_macro29TokenTreeEECslCbDOIcU2Dw_5quote.exit.sink.split, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtB1b_9TokenTreeEB1X_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECslCbDOIcU2Dw_5quote.exit
  %i.o = load i64, ptr %1, align 8                ; 3 uses
  %.not.i4 = icmp eq i64 %i.o, -3
  br i1 %.not.i4, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1M_B1K_INtNtNtB9_6traits7collect6ExtendB1K_E6extendB1i_E0ENvMs_NtB1M_3impNtB3C_11TokenStream13unwrap_stableEEINtB5_8FuseImplBY_E4nextCslCbDOIcU2Dw_5quote.exit.thread, label %bb.i

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs1K5DUQUZc67_11proc_macro29TokenTreeEECslCbDOIcU2Dw_5quote.exit
  store i64 -2, ptr %1, align 8
  %.not.i.i.i = icmp eq i64 %i.o, -2
  br i1 %.not.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1M_B1K_INtNtNtB9_6traits7collect6ExtendB1K_E6extendB1i_E0ENvMs_NtB1M_3impNtB3C_11TokenStream13unwrap_stableEEINtB5_8FuseImplBY_E4nextCslCbDOIcU2Dw_5quote.exit.thread, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1M_B1K_INtNtNtB9_6traits7collect6ExtendB1K_E6extendB1i_E0ENvMs_NtB1M_3impNtB3C_11TokenStream13unwrap_stableEEINtB5_8FuseImplBY_E4nextCslCbDOIcU2Dw_5quote.exit

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1M_B1K_INtNtNtB9_6traits7collect6ExtendB1K_E6extendB1i_E0ENvMs_NtB1M_3impNtB3C_11TokenStream13unwrap_stableEEINtB5_8FuseImplBY_E4nextCslCbDOIcU2Dw_5quote.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.23.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx2.i.i.i, i64 24, i1 false)
  store i64 %i.o, ptr %i.b, align 8
  %i.p = call ptr @_RNvMs_NtCs1K5DUQUZc67_11proc_macro23impNtB4_11TokenStream13unwrap_stable(ptr nonnull align 8 %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not3 = icmp eq ptr %i.p, null
  br i1 %.not3, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1M_B1K_INtNtNtB9_6traits7collect6ExtendB1K_E6extendB1i_E0ENvMs_NtB1M_3impNtB3C_11TokenStream13unwrap_stableEEINtB5_8FuseImplBY_E4nextCslCbDOIcU2Dw_5quote.exit.thread, label %bb.k

bb.j:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtB1b_9TokenTreeEB1X_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECslCbDOIcU2Dw_5quote.exit9, %.loopexit
  ret void

bb.k:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1M_B1K_INtNtNtB9_6traits7collect6ExtendB1K_E6extendB1i_E0ENvMs_NtB1M_3impNtB3C_11TokenStream13unwrap_stableEEINtB5_8FuseImplBY_E4nextCslCbDOIcU2Dw_5quote.exit
  call void @_RNvXsc_NtCs1K5DUQUZc67_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iter(ptr nonnull sret([32 x i8]) align 8 %i.d, ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.q = load ptr, ptr %i.f, align 8
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtB12_9TokenTreeEEECslCbDOIcU2Dw_5quote.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBG_9TokenTreeEEBG_(ptr nonnull align 8 %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtB12_9TokenTreeEEECslCbDOIcU2Dw_5quote.exit unwind label %bb.u

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1M_B1K_INtNtNtB9_6traits7collect6ExtendB1K_E6extendB1i_E0ENvMs_NtB1M_3impNtB3C_11TokenStream13unwrap_stableEEINtB5_8FuseImplBY_E4nextCslCbDOIcU2Dw_5quote.exit.thread: ; preds = %bb.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs1K5DUQUZc67_11proc_macro29TokenTreeEECslCbDOIcU2Dw_5quote.exit, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1M_B1K_INtNtNtB9_6traits7collect6ExtendB1K_E6extendB1i_E0ENvMs_NtB1M_3impNtB3C_11TokenStream13unwrap_stableEEINtB5_8FuseImplBY_E4nextCslCbDOIcU2Dw_5quote.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = load ptr, ptr %i.s, align 8
  %.not.i5 = icmp eq ptr %i.t, null
  br i1 %.not.i5, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1M_B1K_INtNtNtB9_6traits7collect6ExtendB1K_E6extendB1i_E0ENvMs_NtB1M_3impNtB3C_11TokenStream13unwrap_stableEEINtB5_8FuseImplBY_E4nextCslCbDOIcU2Dw_5quote.exit.thread
  call void @_RNvXs3_NtCs1K5DUQUZc67_11proc_macro25rcvecINtB5_13RcVecIntoIterNtB7_9TokenTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB7_(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %i.s)
  %i.u = load i32, ptr %i.a, align 8
  %.not6.i6 = icmp eq i32 %i.u, -1
  br i1 %.not6.i6, label %bb.p, label %bb.o

bb.n:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B1M_B1K_INtNtNtB9_6traits7collect6ExtendB1K_E6extendB1i_E0ENvMs_NtB1M_3impNtB3C_11TokenStream13unwrap_stableEEINtB5_8FuseImplBY_E4nextCslCbDOIcU2Dw_5quote.exit.thread
  store i32 -1, ptr %0, align 8
  br label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtB1b_9TokenTreeEB1X_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECslCbDOIcU2Dw_5quote.exit9

bb.o:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtB12_9TokenTreeEEECslCbDOIcU2Dw_5quote.exit.i8, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtB1b_9TokenTreeEB1X_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECslCbDOIcU2Dw_5quote.exit9

bb.p:                                             ; preds = %bb.m
  %i.v = load ptr, ptr %i.s, align 8
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtB12_9TokenTreeEEECslCbDOIcU2Dw_5quote.exit.i8, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBG_9TokenTreeEEBG_(ptr nonnull align 8 %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtB12_9TokenTreeEEECslCbDOIcU2Dw_5quote.exit.i8 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr null, ptr %i.s, align 8
  %i.y = load i32, ptr %i.a, align 8
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %common.resume, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.a)
          to label %common.resume unwind label %bb.t

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtB12_9TokenTreeEEECslCbDOIcU2Dw_5quote.exit.i8: ; preds = %bb.q, %bb.p
  store ptr null, ptr %i.s, align 8
  br label %bb.o

bb.t:                                             ; preds = %bb.s
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtB1b_9TokenTreeEB1X_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECslCbDOIcU2Dw_5quote.exit9: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.u:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  br label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtB12_9TokenTreeEEECslCbDOIcU2Dw_5quote.exit: ; preds = %bb.k, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtB9_7sources4once4OnceNtCs1K5DUQUZc67_11proc_macro211TokenStreamENCINvXs5_B20_B1Y_INtNtNtB9_6traits7collect6ExtendB1Y_E6extendB1w_E0ENvMs_NtB20_3impNtB3Q_11TokenStream13unwrap_stableEINtNtB20_5rcvec13RcVecIntoIterNtB20_9TokenTreeEENtNtB31_8iterator8Iterator9size_hintCslCbDOIcU2Dw_5quote(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs3_NtCs1K5DUQUZc67_11proc_macro25rcvecINtB5_13RcVecIntoIterNtB7_9TokenTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator9size_hintB7_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.c)
  %.pre = load i64, ptr %i.b, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre75 = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert76 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre77 = load i64, ptr %.phi.trans.insert76, align 8
  %i.e = trunc nuw i64 %.pre75 to i1
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.b, align 8
  %.sroa.272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.272.0..sroa_idx, align 8
  %.sroa.373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.373.0..sroa_idx, align 8
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit: ; preds = %bb.b, %bb.c
  %i.f = phi i64 [ %.pre77, %bb.b ], [ 0, %bb.c ] ; 2 uses
  %i.g = phi i1 [ %i.e, %bb.b ], [ true, %bb.c ]  ; 2 uses
  %i.h = phi i64 [ %.pre, %bb.b ], [ 0, %bb.c ]   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not53 = icmp eq ptr %i.j, null
  br i1 %.not53, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit63, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit
  call void @_RNvXs3_NtCs1K5DUQUZc67_11proc_macro25rcvecINtB5_13RcVecIntoIterNtB7_9TokenTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator9size_hintB7_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.i)
  %.pre78 = load i64, ptr %i.a, align 8
  %.phi.trans.insert79 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre80 = load i64, ptr %.phi.trans.insert79, align 8
  %.phi.trans.insert81 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre82 = load i64, ptr %.phi.trans.insert81, align 8
  %i.k = call i64 @llvm.uadd.sat.i64(i64 %i.h, i64 %.pre78)
  %i.l = trunc nuw i64 %.pre80 to i1
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit63

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit63: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit, %bb.d
  %i.m = phi i64 [ %.pre82, %bb.d ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit ]
  %i.n = phi i1 [ %i.l, %bb.d ], [ true, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit ] ; 2 uses
  %i.o = phi i64 [ %i.k, %bb.d ], [ %i.h, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit ] ; 2 uses
  %i.p = load i64, ptr %1, align 8                ; 2 uses
  %.not54 = icmp eq i64 %i.p, -3
  br i1 %.not54, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.h, %bb.i
  %.sink84 = phi i64 [ 8, %bb.h ], [ 16, %bb.i ]
  %.sink = phi i64 [ 0, %bb.h ], [ %i.r, %bb.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.sink84
  store i64 %.sink, ptr %i.q, align 8
  ret void

bb.f:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit63
  %.not74 = icmp eq i64 %i.p, -2
  %op.rdx = select i1 %.not74, i1 %i.g, i1 false
  %op.rdx85 = select i1 %op.rdx, i1 %i.n, i1 false
  br i1 %op.rdx85, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtCs1K5DUQUZc67_11proc_macro25rcvec13RcVecIntoIterNtBO_9TokenTreeEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslCbDOIcU2Dw_5quote.exit63
  %or.cond55 = select i1 %i.g, i1 %i.n, i1 false
  br i1 %or.cond55, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i64 %i.o, ptr %0, align 8
  br label %bb.e

bb.i:                                             ; preds = %bb.f, %bb.g
  %i.r = add i64 %i.m, %i.f                       ; 2 uses
  %i.s = icmp uge i64 %i.r, %i.f
  %.56 = zext i1 %i.s to i64
  store i64 %i.o, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.56, ptr %i.t, align 8
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsj_NtCslCbDOIcU2Dw_5quote9to_tokensfNtB5_8ToTokens9to_tokens(ptr nofree readonly align 4 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = load float, ptr %0, align 4
  call void @_RNvMsG_Cs1K5DUQUZc67_11proc_macro2NtB5_7Literal12f32_suffixed(ptr nonnull sret([24 x i8]) align 8 %i.d, float %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvXso_Cs1K5DUQUZc67_11proc_macro2NtB5_9TokenTreeINtNtCshzWfHUSfYae_4core7convert4FromNtB5_7LiteralE4from(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RINvXs7_NtCs1K5DUQUZc67_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECslCbDOIcU2Dw_5quote(ptr align 8 %1, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsk_NtCslCbDOIcU2Dw_5quote9to_tokensdNtB5_8ToTokens9to_tokens(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = load double, ptr %0, align 8
  call void @_RNvMsG_Cs1K5DUQUZc67_11proc_macro2NtB5_7Literal12f64_suffixed(ptr nonnull sret([24 x i8]) align 8 %i.d, double %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvXso_Cs1K5DUQUZc67_11proc_macro2NtB5_9TokenTreeINtNtCshzWfHUSfYae_4core7convert4FromNtB5_7LiteralE4from(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RINvXs7_NtCs1K5DUQUZc67_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECslCbDOIcU2Dw_5quote(ptr align 8 %1, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsl_NtCslCbDOIcU2Dw_5quote9to_tokenscNtB5_8ToTokens9to_tokens(ptr nofree readonly align 4 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = load i32, ptr %0, align 4
  call void @_RNvMsG_Cs1K5DUQUZc67_11proc_macro2NtB5_7Literal9character(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvXso_Cs1K5DUQUZc67_11proc_macro2NtB5_9TokenTreeINtNtCshzWfHUSfYae_4core7convert4FromNtB5_7LiteralE4from(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RINvXs7_NtCs1K5DUQUZc67_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECslCbDOIcU2Dw_5quote(ptr align 8 %1, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsm_NtCslCbDOIcU2Dw_5quote9to_tokensbNtB5_8ToTokens9to_tokens(ptr nofree readonly captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = load i8, ptr %0, align 1
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %. = select i1 %i.f, i64 4, i64 5
  %.1 = select i1 %i.f, ptr @16, ptr @15
  %i.g = tail call i32 @_RNvMsi_Cs1K5DUQUZc67_11proc_macro2NtB5_4Span9call_site()
  call void @_RNvMsx_Cs1K5DUQUZc67_11proc_macro2NtB5_5Ident3new(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull %.1, i64 %., i32 %i.g, ptr nonnull align 8 @18)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvXsm_Cs1K5DUQUZc67_11proc_macro2NtB5_9TokenTreeINtNtCshzWfHUSfYae_4core7convert4FromNtB5_5IdentE4from(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RINvXs7_NtCs1K5DUQUZc67_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECslCbDOIcU2Dw_5quote(ptr align 8 %1, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsn_NtCslCbDOIcU2Dw_5quote9to_tokensNtNtNtCshzWfHUSfYae_4core3ffi5c_str4CStrNtB5_8ToTokens9to_tokens(ptr %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  call void @_RNvMsG_Cs1K5DUQUZc67_11proc_macro2NtB5_7Literal8c_string(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr %0, i64 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvXso_Cs1K5DUQUZc67_11proc_macro2NtB5_9TokenTreeINtNtCshzWfHUSfYae_4core7convert4FromNtB5_7LiteralE4from(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RINvXs7_NtCs1K5DUQUZc67_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECslCbDOIcU2Dw_5quote(ptr align 8 %2, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvXsn_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenNtNtCs1K5DUQUZc67_11proc_macro28fallback11TokenStreamNtB5_21ConstSizeIntoIterator4sizeCslCbDOIcU2Dw_5quote() unnamed_addr #5 {
bb.a:
  ret { i64, i64 } { i64 0, i64 undef }
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXso_NtCslCbDOIcU2Dw_5quote9to_tokensNtNtNtCsbSS6DM8SDEO_5alloc3ffi5c_str7CStringNtB5_8ToTokens9to_tokens(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %.val = load ptr, ptr %0, align 8
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.e, align 8
  call void @_RNvMsG_Cs1K5DUQUZc67_11proc_macro2NtB5_7Literal8c_string(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr %.val, i64 %.val1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvXso_Cs1K5DUQUZc67_11proc_macro2NtB5_9TokenTreeINtNtCshzWfHUSfYae_4core7convert4FromNtB5_7LiteralE4from(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RINvXs7_NtCs1K5DUQUZc67_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECslCbDOIcU2Dw_5quote(ptr align 8 %1, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client11TokenStreamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslCbDOIcU2Dw_5quote(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client11TokenStreamECslCbDOIcU2Dw_5quote.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client11TokenStreamECslCbDOIcU2Dw_5quote.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client11TokenStreamECs1K5DUQUZc67_11proc_macro2(ptr align 4 %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiwvLk4GMN8X_10proc_macro6bridge6client11TokenStreamECs1K5DUQUZc67_11proc_macro2(ptr align 4 %i.m) #22
          to label %bb.c unwind label %bb.e
end_hunk_2
