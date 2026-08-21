Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.14?download=true
inline.NumInlined: 8764
inline.NumDeleted: 4182
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder24FullExpressionCacheEntryE9drop_slowBK_:bb.a
bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB2M_.exit12.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtB4s_13FxBuildHasherEEB3b_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtB4s_13FxBuildHasherEEB3b_.exit13.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB2M_.exit12.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsoTR8nlGN3X_18ty_python_semantic.exit14.i unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtB4s_13FxBuildHasherEEB3b_.exit.i
  %.pn4.i = phi { ptr, i32 } [ %i.n, %bb.e ], [ %.pn2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtB4s_13FxBuildHasherEEB3b_.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB2K_.exit15.i unwind label %bb.t

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtB4s_13FxBuildHasherEEB3b_.exit13.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsoTR8nlGN3X_18ty_python_semantic.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsoTR8nlGN3X_18ty_python_semantic.exit14.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtB4s_13FxBuildHasherEEB3b_.exit13.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB2K_.exit16.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB2K_.exit15.i: ; preds = %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsoTR8nlGN3X_18ty_python_semantic.exit.i
  %.pn6.i = phi { ptr, i32 } [ %i.p, %bb.f ], [ %.pn4.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsoTR8nlGN3X_18ty_python_semantic.exit.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder6VecMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtBI_4TypeEEBK_(ptr noalias noundef nonnull align 8 dereferenceable(312) %i.b) #52
          to label %.body.i unwind label %bb.t

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsoTR8nlGN3X_18ty_python_semantic.exit14.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB2K_.exit15.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB2K_.exit16.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsoTR8nlGN3X_18ty_python_semantic.exit14.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1F_(ptr noalias noundef nonnull align 8 dereferenceable(312) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB28_.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB2K_.exit16.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1M_(ptr noalias noundef nonnull align 8 dereferenceable(312) %i.b)
          to label %.body.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB28_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB2K_.exit16.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1M_(ptr noalias noundef nonnull align 8 dereferenceable(312) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder6VecMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtBI_4TypeEEBK_.exit.i unwind label %bb.i

.body.i:                                          ; preds = %bb.i, %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB2K_.exit15.i
  %.pn8.i = phi { ptr, i32 } [ %.pn6.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB2K_.exit15.i ], [ %i.t, %bb.i ], [ %i.q, %bb.g ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic20TypeCheckDiagnosticsEBH_(ptr noalias noundef align 8 dereferenceable(56) %i.s) #52
          to label %.body17.i unwind label %bb.t

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB28_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder6VecMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtBI_4TypeEEBK_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB28_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.u)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder6VecMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtBI_4TypeEEBK_.exit.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.u)
          to label %.body.i.i unwind label %bb.l

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder6VecMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionNtBI_4TypeEEBK_.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.m, %bb.j
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.x, %bb.m ], [ %i.v, %bb.j ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression17FileSuppressionIduEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %.body17.i unwind label %bb.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression17FileSuppressionIduEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic20TypeCheckDiagnosticsEBH_.exit.i unwind label %bb.o

bb.n:                                             ; preds = %.body.i.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53
  unreachable

.body17.i:                                        ; preds = %bb.o, %.body.i.i, %.body.i
  %.pn10.i = phi { ptr, i32 } [ %.pn8.i, %.body.i ], [ %i.ac, %bb.o ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1m_(ptr noalias noundef align 8 dereferenceable(56) %i.ab) #52
          to label %.body unwind label %bb.t

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body17.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic20TypeCheckDiagnosticsEBH_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic20TypeCheckDiagnosticsEBH_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeuEEEB1K_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ad) #52
          to label %.body unwind label %bb.s

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic20TypeCheckDiagnosticsEBH_.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1h_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1m_.exit.i unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1o_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ad)
          to label %.body unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1m_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1o_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder24FullExpressionCacheEntryEBJ_.exit unwind label %bb.u

bb.t:                                             ; preds = %.body17.i, %.body.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB2K_.exit15.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsoTR8nlGN3X_18ty_python_semantic.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtB4s_13FxBuildHasherEEB3b_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB2M_.exit.i, %bb.b
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1m_.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body17.i, %bb.p, %bb.q, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.u ], [ %i.ag, %bb.p ], [ %i.ah, %bb.q ], [ %.pn10.i, %.body17.i ]
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc4WeakNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder24FullExpressionCacheEntryRNtNtBG_5alloc6GlobalEEB1f_(ptr nonnull %i.a) #52
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder24FullExpressionCacheEntryEBJ_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1m_.exit.i
  %i.am = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.am, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc4WeakNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder24FullExpressionCacheEntryRNtNtBG_5alloc6GlobalEEB1f_.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder24FullExpressionCacheEntryEBJ_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noundef !8
  %i.ap = add i64 %i.ao, -1                       ; 2 uses
  store i64 %i.ap, ptr %i.an, align 8
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc4WeakNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder24FullExpressionCacheEntryRNtNtBG_5alloc6GlobalEEB1f_.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) 328, i64 noundef 8) #50
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc4WeakNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder24FullExpressionCacheEntryRNtNtBG_5alloc6GlobalEEB1f_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc4WeakNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder24FullExpressionCacheEntryRNtNtBG_5alloc6GlobalEEB1f_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder24FullExpressionCacheEntryEBJ_.exit, %bb.v, %bb.w
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance11to_instance(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, ptr noundef nonnull align 4 %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  %i.f = alloca [16 x i8], align 4                ; 4 uses
  %i.g = alloca [20 x i8], align 4                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 11 uses
  %i.k = alloca [8 x i8], align 4                 ; 5 uses
  %i.l = alloca [12 x i8], align 4                ; 7 uses
  %i.m = alloca [20 x i8], align 4                ; 5 uses
  %i.n = alloca [20 x i8], align 4                ; 6 uses
  %i.o = alloca [16 x i8], align 4                ; 7 uses
  %i.p = alloca [16 x i8], align 4                ; 7 uses
  %i.q = alloca [20 x i8], align 4                ; 6 uses
  %i.r = alloca [8 x i8], align 4                 ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [12 x i8], align 4                ; 2 uses
  %i.u = alloca [12 x i8], align 4                ; 6 uses
  %i.v = alloca [8 x i8], align 4                 ; 3 uses
  store i32 %1, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 %2, ptr %i.w, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13116)
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !8, !alias.scope !13116 ; 6 uses
  %i.z = tail call noundef nonnull align 8 ptr %i.y(ptr noundef nonnull %3), !noalias !13116, !inline_history !7702 ; 2 uses
  %i.aa = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars_1__NtB9_20BoundTypeVarInstance10ingredient5CACHE, ptr noundef nonnull align 8 %i.z), !noalias !13116
  %i.ab = tail call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceE6fieldsB12_(ptr noundef nonnull align 8 %i.aa, ptr noundef nonnull align 8 %i.z, i32 noundef range(i32 1, 0) %1, i32 noundef %2), !noalias !13116 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !range !16, !noalias !13116, !noundef !8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !noalias !13116, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13119)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i32 %i.ac, ptr %i.r, align 4, !noalias !13122
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %i.ae, ptr %i.af, align 4, !noalias !13122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !13122
  call void @_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance20bound_or_constraints(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.p, i32 noundef range(i32 1, 0) %i.ac, i32 noundef %i.ae, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, ptr noundef nonnull align 4 %5), !noalias !13124
  %i.ag = load i32, ptr %i.p, align 4, !range !1036, !noalias !13122, !noundef !8 ; 3 uses
  %.not.i = icmp eq i32 %i.ag, -2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.412.0.copyload.i = load i32, ptr %.sroa.412.0..sroa_idx.i, align 4, !noalias !13122 ; 2 uses
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ah = load <2 x i32>, ptr %.sroa.513.0..sroa_idx.i, align 4, !noalias !13122
  %.sroa.513.0.copyload.i = load i32, ptr %.sroa.513.0..sroa_idx.i, align 4, !noalias !13122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13122
  %i.ai = icmp eq i32 %i.ag, -1
  br i1 %i.ai, label %bb.d, label %bb.r

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13122
  br label %_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance11to_instance.exit.thread

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13125)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13128
  store i64 0, ptr %i.h, align 8, !noalias !13128
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.aj, align 8, !noalias !13128
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 0, ptr %i.ak, align 8, !noalias !13128
  %i.al = invoke noundef nonnull align 8 ptr %i.y(ptr noundef nonnull %3)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !noalias !13130, !inline_history !3035 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.d
  %i.am = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar18TypeVarConstraintsEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars8_1__NtB9_18TypeVarConstraints10ingredient5CACHE, ptr noundef nonnull align 8 %i.al)
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !noalias !13130

.noexc6.i.i:                                      ; preds = %.noexc.i.i
  %i.an = invoke noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar18TypeVarConstraintsE6fieldsB12_(ptr noundef nonnull align 8 %i.am, ptr noundef nonnull align 8 %i.al, i32 noundef range(i32 1, 0) %.sroa.412.0.copyload.i, i32 noundef %.sroa.513.0.copyload.i)
          to label %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars8_1__NtB8_18TypeVarConstraints8elementsDNtNtBc_2db2DbEL_EBc_.exit.i.i unwind label %.loopexit.split-lp.i.i, !noalias !13130 ; 2 uses

_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars8_1__NtB8_18TypeVarConstraints8elementsDNtNtBc_2db2DbEL_EBc_.exit.i.i: ; preds = %.noexc6.i.i
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !13130, !nonnull !8, !noundef !8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !13130, !noundef !8 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.aq, 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i.i
  %i.as = icmp eq i64 %i.aq, 0
  br i1 %i.as, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars8_1__NtB8_18TypeVarConstraints8elementsDNtNtBc_2db2DbEL_EBc_.exit.i.i
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  br label %bb.e

bb.e:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.027.i.i = phi i1 [ true, %.lr.ph.i.i ], [ %i.bg, %bb.l ]
  %.sroa.02.026.i.i = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %i.at, %bb.l ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.02.026.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.02.026.i.i, i64 16, i1 false), !noalias !13131
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type11to_instance(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.g, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, ptr noundef nonnull align 4 %5)
          to label %bb.f unwind label %.loopexit.i.i, !noalias !13131

._crit_edge.loopexit.i.i:                         ; preds = %bb.l
  %i.au = xor i1 %i.bg, true
  %i.av = zext i1 %i.au to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars8_1__NtB8_18TypeVarConstraints8elementsDNtNtBc_2db2DbEL_EBc_.exit.i.i
  %.sroa.0.0.lcssa.i.i = phi i32 [ 0, %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars8_1__NtB8_18TypeVarConstraints8elementsDNtNtBc_2db2DbEL_EBc_.exit.i.i ], [ %i.av, %._crit_edge.loopexit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !13128
  %i.aw = call { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE16into_boxed_sliceBH_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !13131 ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0      ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13128
  call void @llvm.experimental.noalias.scope.decl(metadata !13132)
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !invariant.load !8, !alias.scope !13135, !noalias !13136, !nonnull !8
  %i.bb = invoke { ptr, ptr } %i.ba(ptr noundef nonnull %3)
          to label %bb.m unwind label %bb.n, !noalias !13138 ; 2 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13128
  %i.bc = load i32, ptr %i.g, align 4, !range !314, !noalias !13128, !noundef !8 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bc, 2
  br i1 %.not.i.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13128
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.aa unwind label %bb.h, !noalias !13131

bb.h:                                             ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume.i unwind label %bb.i, !noalias !13131

bb.i:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53, !noalias !13131
  unreachable

common.resume.i:                                  ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.af, %bb.ae, %bb.p, %bb.o, %bb.n, %bb.h
  %common.resume.op.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %bb.n ], [ %i.bd, %bb.h ], [ %lpad.thr_comm.i.i.i, %bb.o ], [ %lpad.phi.i.i, %bb.p ], [ %lpad.thr_comm.i, %bb.aj ], [ %lpad.thr_comm.i.i, %bb.ag ], [ %lpad.thr_comm.i.i, %bb.ae ], [ %lpad.thr_comm.i.i, %bb.af ], [ %lpad.thr_comm.i, %bb.ak ], [ %lpad.thr_comm.i, %bb.ai ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.416.0..sroa_idx.i.i, i64 16, i1 false), !noalias !13128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13128
  %i.bf = icmp eq i32 %i.bc, 0
  %i.bg = and i1 %.sroa.0.027.i.i, %i.bf          ; 2 uses
  %i.bh = load i64, ptr %i.ak, align 8, !alias.scope !13139, !noalias !13142, !noundef !8 ; 3 uses
  %i.bi = load i64, ptr %i.h, align 8, !range !1006, !alias.scope !13139, !noalias !13142, !noundef !8
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.l unwind label %.loopexit.i.i, !noalias !13131

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bk = load ptr, ptr %i.aj, align 8, !alias.scope !13139, !noalias !13142, !nonnull !8, !noundef !8
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bl, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !13131
  %i.bm = add i64 %i.bh, 1
  store i64 %i.bm, ptr %i.ak, align 8, !alias.scope !13139, !noalias !13142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bn = icmp eq ptr %i.at, %i.ar
  br i1 %i.bn, label %._crit_edge.loopexit.i.i, label %bb.e

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.bo = extractvalue { ptr, ptr } %i.bb, 0      ; 2 uses
  %i.bp = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar18TypeVarConstraintsEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars8_1__NtB9_18TypeVarConstraints10ingredient5CACHE, ptr noundef nonnull align 8 %i.bo)
          to label %bb.z unwind label %bb.n, !noalias !13138

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = icmp eq i64 %i.ay, 0
  br i1 %i.bq, label %common.resume.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = shl nuw nsw i64 %i.ay, 4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.ax, i64 noundef range(i64 1, -9223372036854775808) %i.br, i64 noundef 4) #50, !noalias !13144
  br label %common.resume.i

.loopexit.i.i:                                    ; preds = %bb.k, %bb.e
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp.i.i:                           ; preds = %.noexc6.i.i, %.noexc.i.i, %bb.d
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.h) #52
          to label %common.resume.i unwind label %bb.q, !noalias !13131

bb.q:                                             ; preds = %bb.p
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53, !noalias !13131
  unreachable

bb.r:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !13122
  store i32 %i.ag, ptr %i.o, align 4, !noalias !13122
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %.sroa.412.0.copyload.i, ptr %.sroa.3.0..sroa_idx2.i, align 4, !noalias !13122
  %.sroa.4.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store <2 x i32> %i.ah, ptr %.sroa.4.0..sroa_idx4.i, align 4, !noalias !13122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !13122
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type11to_instance(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.n, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.o, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, ptr noundef nonnull align 4 %5), !noalias !13124
  %i.bt = load i32, ptr %i.n, align 4, !range !314, !noalias !13122, !noundef !8
  %.not18.i = icmp eq i32 %i.bt, 2
  br i1 %.not18.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.m, ptr noundef nonnull align 4 dereferenceable(20) %i.n, i64 20, i1 false), !noalias !13122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13122
  call void @_RINvMsj_NtCsoTR8nlGN3X_18ty_python_semantic5typesINtB6_18InstanceProjectionNtB6_4TypeE3mapNtNtB6_7typevar25TypeVarBoundOrConstraintsNcNtB1q_10UpperBound0EB8_(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.q, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.m), !noalias !13124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13122
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13122
  br label %_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance11to_instance.exit.thread

bb.u:                                             ; preds = %bb.z, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13122
  %i.bu = call noundef nonnull align 8 ptr %i.y(ptr noundef nonnull %3), !noalias !13145, !inline_history !13150 ; 2 uses
  %i.bv = call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarInstanceEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar1__NtB9_15TypeVarInstance10ingredient5CACHE, ptr noundef nonnull align 8 %i.bu), !noalias !13145
  %i.bw = call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarInstanceE6fieldsB12_(ptr noundef nonnull align 8 %i.bv, ptr noundef nonnull align 8 %i.bu, i32 noundef range(i32 1, 0) %i.ac, i32 noundef %i.ae), !noalias !13145 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i32, ptr %i.bx, align 4, !range !16, !noalias !13145, !noundef !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  %i.ca = load i32, ptr %i.bz, align 4, !noalias !13145, !noundef !8
  %i.cb = call noundef nonnull align 8 ptr %i.y(ptr noundef nonnull %3), !noalias !13151, !inline_history !13154 ; 2 uses
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarIdentityEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars0_1__NtB9_15TypeVarIdentity10ingredient5CACHE, ptr noundef nonnull align 8 %i.cb), !noalias !13151
  %i.cd = call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarIdentityE6fieldsB12_(ptr noundef nonnull align 8 %i.cc, ptr noundef nonnull align 8 %i.cb, i32 noundef range(i32 1, 0) %i.by, i32 noundef %i.ca), !noalias !13151 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 15
  %i.cf = load i8, ptr %i.ce, align 1, !range !115, !alias.scope !13155, !noalias !13124, !noundef !8 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !13155, !noalias !13124, !noundef !8
  %i.ci = and i64 %i.ch, 72057594037927935
  %i.cj = icmp ult i8 %i.cf, -48
  %i.ck = zext i8 %i.cf to i64
  %i.cl = add nsw i64 %i.ck, -192
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.cl, i64 16)
  %.sroa.0.0.i.i = select i1 %i.cj, i64 %spec.store.select.i.i, i64 %i.ci ; 7 uses
  %i.cm = icmp ugt i8 %i.cf, -49
  %i.cn = load ptr, ptr %i.cd, align 8, !alias.scope !13155, !noalias !13124
  %.sroa.01.0.i.i = select i1 %i.cm, ptr %i.cn, ptr %i.cd ; 4 uses
  %i.co = add nuw nsw i64 %.sroa.0.0.i.i, 9       ; 4 uses
  %i.cp = icmp samesign ult i64 %.sroa.0.0.i.i, 8
  br i1 %i.cp, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = icmp samesign ugt i64 %.sroa.0.0.i.i, 72057594037927926
  br i1 %i.cq, label %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = call noundef ptr @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer18allocate_exact_ptr(i64 noundef range(i64 17, 0) %i.co), !noalias !13158 ; 4 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i, label %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.thread79.i

_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.thread79.i: ; preds = %bb.w
  %i.ct = or disjoint i64 %i.co, -3458764513820540928 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13164
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ct, ptr %i.cu, align 8, !noalias !13164
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr nonnull readonly align 1 %.sroa.01.0.i.i, i64 %.sroa.0.0.i.i, i1 false), !noalias !13165
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.0.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.cv, ptr noundef nonnull readonly align 1 dereferenceable(9) @238, i64 9, i1 false), !noalias !13165
  store ptr null, ptr %i.c, align 8, !noalias !13164
  call void @_RNvXs_NtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB4_16ExactBufferGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !noalias !13158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13164
  br label %bb.ab

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false), !noalias !13168
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  store i8 -64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !noalias !13168
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 1 %.sroa.01.0.i.i, i64 %.sroa.0.0.i.i, i1 false), !alias.scope !13172, !noalias !13176
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.cw, ptr noundef nonnull readonly align 1 dereferenceable(9) @238, i64 9, i1 false), !alias.scope !13172, !noalias !13178
  %.not.i21.i = icmp eq i64 %i.co, 16
  br i1 %.not.i21.i, label %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cx = trunc nuw nsw i64 %i.co to i8
  %i.cy = or disjoint i8 %i.cx, -64
  %.15..15..15..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  store i8 %i.cy, ptr %.15..15..15..sroa_idx9, align 1, !noalias !13168
  br label %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.i

_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.y, %bb.x
  %.sroa.032.0.copyload33.i = load ptr, ptr %i.b, align 8, !noalias !13179
  %.sroa.634.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.634.0.copyload36.i = load i64, ptr %.sroa.634.0..sroa_idx35.i, align 8, !noalias !13179 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cz = icmp ugt i64 %.sroa.634.0.copyload36.i, -72057594037927937
  br i1 %i.cz, label %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i, label %bb.ab, !prof !7988

bb.z:                                             ; preds = %bb.m
  %i.da = extractvalue { ptr, ptr } %i.bb, 1
  %i.db = call { i32, i32 } @_RINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB6_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar18TypeVarConstraintsE9intern_idINtNvBZ_s8_1__9StructKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB11_4TypeEENCINvMs9_B2m_BX_3newDNtNtB13_2db2DbEL_B2H_E0EB13_(ptr noundef nonnull align 8 %i.bp, ptr noundef nonnull align 8 %i.bo, ptr noundef nonnull align 8 %i.da, ptr noalias noundef nonnull align 4 %i.ax, i64 noundef %i.ay), !noalias !13131 ; 2 uses
  %i.dc = extractvalue { i32, i32 } %i.db, 0
  %i.dd = extractvalue { i32, i32 } %i.db, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13128
  store i32 %.sroa.0.0.lcssa.i.i, ptr %i.l, align 4, !noalias !13122
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.dc, ptr %.sroa.531.0..sroa_idx.i, align 4, !noalias !13122
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %i.dd, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !13122
  call void @_RINvMsj_NtCsoTR8nlGN3X_18ty_python_semantic5typesINtB6_18InstanceProjectionNtNtB6_7typevar18TypeVarConstraintsE3mapNtB1d_25TypeVarBoundOrConstraintsNcNtB1P_11Constraints0EB8_(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.q, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.l), !noalias !13124
  br label %bb.u

bb.aa:                                            ; preds = %bb.g
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !noalias !13131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13128
  br label %_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance11to_instance.exit.thread

_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i: ; preds = %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.w, %bb.v
  call void @_RINvNvXsQ_Csj8vhLppEnlJ_8char_strINtNtCs4NRVxsYgnAr_4core6result6ResultppENtB8_13UnwrapWithMsg15unwrap_with_msg17do_panic_with_msgNtNtNtB8_6errors13reserve_error12ReserveErrorEB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #51, !noalias !13124
  unreachable

bb.ab:                                            ; preds = %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.i, %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.thread79.i
  %.sroa.634.183.i = phi i64 [ %i.ct, %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.thread79.i ], [ %.sroa.634.0.copyload36.i, %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.i ]
  %.sroa.032.182.i = phi ptr [ %i.cr, %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.thread79.i ], [ %.sroa.032.0.copyload33.i, %_RINvMNtCsj8vhLppEnlJ_8char_str4reprNtB3_4Repr24from_exact_joined_slicesReECsoTR8nlGN3X_18ty_python_semantic.exit.i ]
  store ptr %.sroa.032.182.i, ptr %i.j, align 8, !noalias !13122
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.634.183.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !13122
  %i.de = invoke noundef nonnull align 8 ptr %i.y(ptr noundef nonnull %3)
          to label %.noexc.i unwind label %bb.ai, !noalias !13124, !inline_history !13180 ; 2 uses

.noexc.i:                                         ; preds = %bb.ab
  %i.df = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarInstanceEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar1__NtB9_15TypeVarInstance10ingredient5CACHE, ptr noundef nonnull align 8 %i.de)
          to label %.noexc22.i unwind label %bb.ai, !noalias !13124

.noexc22.i:                                       ; preds = %.noexc.i
  %i.dg = invoke noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarInstanceE6fieldsB12_(ptr noundef nonnull align 8 %i.df, ptr noundef nonnull align 8 %i.de, i32 noundef range(i32 1, 0) %i.ac, i32 noundef %i.ae)
          to label %.noexc23.i unwind label %bb.ai, !noalias !13124 ; 2 uses

.noexc23.i:                                       ; preds = %.noexc22.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i32, ptr %i.dh, align 4, !range !16, !noalias !13181, !noundef !8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 20
  %i.dk = load i32, ptr %i.dj, align 4, !noalias !13181, !noundef !8
  %i.dl = invoke noundef nonnull align 8 ptr %i.y(ptr noundef nonnull %3)
          to label %.noexc24.i unwind label %bb.ai, !noalias !13124, !inline_history !13180 ; 2 uses

.noexc24.i:                                       ; preds = %.noexc23.i
  %i.dm = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarIdentityEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars0_1__NtB9_15TypeVarIdentity10ingredient5CACHE, ptr noundef nonnull align 8 %i.dl)
          to label %.noexc25.i unwind label %bb.ai, !noalias !13124

.noexc25.i:                                       ; preds = %.noexc24.i
  %i.dn = invoke noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarIdentityE6fieldsB12_(ptr noundef nonnull align 8 %i.dm, ptr noundef nonnull align 8 %i.dl, i32 noundef range(i32 1, 0) %i.di, i32 noundef %i.dk)
          to label %bb.ac unwind label %bb.ai, !noalias !13124

bb.ac:                                            ; preds = %.noexc25.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load i8, ptr %i.do, align 8, !range !994, !noalias !13186, !noundef !8
  call void @llvm.experimental.noalias.scope.decl(metadata !13189)
  call void @llvm.experimental.noalias.scope.decl(metadata !13192)
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !invariant.load !8, !alias.scope !13194, !noalias !13195, !nonnull !8
  %i.ds = invoke { ptr, ptr } %i.dr(ptr noundef nonnull %3)
          to label %bb.ad unwind label %bb.ae, !noalias !13196 ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.dt = extractvalue { ptr, ptr } %i.ds, 0      ; 2 uses
  %i.du = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarIdentityEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars0_1__NtB9_15TypeVarIdentity10ingredient5CACHE, ptr noundef nonnull align 8 %i.dt)
          to label %_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance11to_instance.exit unwind label %bb.ae, !noalias !13196

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13197)
  call void @llvm.experimental.noalias.scope.decl(metadata !13200)
  call void @llvm.experimental.noalias.scope.decl(metadata !13203)
  call void @llvm.experimental.noalias.scope.decl(metadata !13206)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %i.dw = load i8, ptr %i.dv, align 1, !range !115, !alias.scope !13209, !noalias !13210, !noundef !8
  %i.dx = and i8 %i.dw, -2
  %switch.i.i.i.i.i.i = icmp eq i8 %i.dx, -48
  br i1 %switch.i.i.i.i.i.i, label %bb.af, label %common.resume.i

bb.af:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !13211)
  %.pn.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !13214, !noalias !13210, !nonnull !8, !noundef !8
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i, i64 -8
  %i.dy = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !13215
  %i.dz = icmp eq i64 %i.dy, 1
  br i1 %i.dz, label %bb.ag, label %common.resume.i, !prof !9

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %common.resume.i unwind label %bb.ah, !noalias !13216

bb.ah:                                            ; preds = %bb.ag
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53, !noalias !13216
  unreachable

bb.ai:                                            ; preds = %.noexc25.i, %.noexc24.i, %.noexc23.i, %.noexc22.i, %.noexc.i, %bb.ab
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13217)
  call void @llvm.experimental.noalias.scope.decl(metadata !13220)
  call void @llvm.experimental.noalias.scope.decl(metadata !13223)
  call void @llvm.experimental.noalias.scope.decl(metadata !13226)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %i.ec = load i8, ptr %i.eb, align 1, !range !115, !alias.scope !13229, !noalias !13122, !noundef !8
  %i.ed = and i8 %i.ec, -2
  %switch.i.i.i.i.i = icmp eq i8 %i.ed, -48
  br i1 %switch.i.i.i.i.i, label %bb.aj, label %common.resume.i

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !13230)
  %.pn.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !13233, !noalias !13122, !nonnull !8, !noundef !8
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i, i64 -8
  %i.ee = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i, i64 1 release, align 8, !noalias !13234
  %i.ef = icmp eq i64 %i.ee, 1
  br i1 %i.ef, label %bb.ak, label %common.resume.i, !prof !9

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %common.resume.i unwind label %bb.al, !noalias !13124

bb.al:                                            ; preds = %bb.ak
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53, !noalias !13124
  unreachable

_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance11to_instance.exit.thread: ; preds = %bb.c, %bb.t, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.an

_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance11to_instance.exit: ; preds = %bb.ad
  %i.eh = extractvalue { ptr, ptr } %i.ds, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !noalias !13210
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.ei, align 8, !noalias !13235
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %i.dp, ptr %i.ej, align 8, !noalias !13235
  %i.ek = call { i32, i32 } @_RINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB6_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarIdentityE9intern_idINtNvBZ_s0_1__9StructKeyNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENtBZ_11TypeVarKindENCINvMs9_B2j_BX_3newDNtNtB13_2db2DbEL_B2E_B3n_B4W_E0EB13_(ptr noundef nonnull align 8 %i.du, ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull align 8 %i.eh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !13124 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13235
  %i.el = extractvalue { i32, i32 } %i.ek, 0
  %i.em = extractvalue { i32, i32 } %i.ek, 1
  store i32 %i.el, ptr %i.k, align 4, !noalias !13122
  %i.en = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.em, ptr %i.en, align 4, !noalias !13122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13122
  store ptr %3, ptr %i.i, align 8, !noalias !13122
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %4, ptr %i.eo, align 8, !noalias !13122
  %i.ep = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.k, ptr %i.ep, align 8, !noalias !13122
  %i.eq = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.r, ptr %i.eq, align 8, !noalias !13122
  call void @_RINvMsj_NtCsoTR8nlGN3X_18ty_python_semantic5typesINtB6_18InstanceProjectionNtNtB6_7typevar25TypeVarBoundOrConstraintsE3mapNtB1d_15TypeVarInstanceNCNvMsx_B1d_B1W_11to_instance0EB8_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.u, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13122
  %.pr = load i32, ptr %i.u, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.not = icmp eq i32 %.pr, 2
  br i1 %.not, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance11to_instance.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %i.u, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %3, ptr %i.s, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %4, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.v, ptr %i.es, align 8
  call void @_RINvMsj_NtCsoTR8nlGN3X_18ty_python_semantic5typesINtB6_18InstanceProjectionNtNtB6_7typevar15TypeVarInstanceE3mapNtB1d_20BoundTypeVarInstanceNCNvMs6_B1d_B1M_11to_instance0EB8_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ao

bb.an:                                            ; preds = %_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance11to_instance.exit.thread, %_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance11to_instance.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i32 2, ptr %0, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  ret void
}

end_hunk_0
