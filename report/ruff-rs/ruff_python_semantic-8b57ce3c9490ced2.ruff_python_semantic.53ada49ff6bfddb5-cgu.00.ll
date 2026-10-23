Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_semantic-8b57ce3c9490ced2.ruff_python_semantic.53ada49ff6bfddb5-cgu.00?download=true
inline.NumInlined: 672
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel29resolve_qualified_import_name:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !895
  store ptr %i.a, ptr %i.b, align 8, !noalias !895
  %i.bl = icmp samesign ult i64 %i.bk, 2
  br i1 %i.bl, label %bb.n, label %bb.j, !prof !17

bb.j:                                             ; preds = %.noexc18
  %i.bm = icmp samesign ult i64 %i.bk, 21
  br i1 %i.bm, label %bb.l, label %bb.k, !prof !17

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB6_SBT_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_BV_NtBV_13SemanticModel29resolve_qualified_import_name0s_0E0EBX_(ptr noalias noundef nonnull align 8 %i.bj, i64 noundef range(i64 0, 230584300921369396) %i.bk, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %thread-pre-split.i.i.i.i unwind label %bb.m, !noalias !887

bb.l:                                             ; preds = %bb.j
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB1m_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B1o_NtB1o_13SemanticModel29resolve_qualified_import_name0s_0E0EB1q_(ptr noalias noundef nonnull align 8 %i.bj, i64 noundef range(i64 0, 230584300921369396) %i.bk, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %thread-pre-split.i.i.i.i unwind label %bb.m, !noalias !887

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.j) #23
          to label %.body unwind label %bb.s, !noalias !887

thread-pre-split.i.i.i.i:                         ; preds = %bb.l, %bb.k
  %.pr.i.i.i.i = load i64, ptr %i.ai, align 8, !noalias !880
  br label %bb.n

bb.n:                                             ; preds = %thread-pre-split.i.i.i.i, %.noexc18
  %i.bo = phi i64 [ %.pr.i.i.i.i, %thread-pre-split.i.i.i.i ], [ %i.bk, %.noexc18 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !895
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = add nsw i64 %i.bo, -1                   ; 3 uses
  store i64 %i.bq, ptr %i.ai, align 8, !noalias !880
  %i.br = load i64, ptr %i.j, align 8, !range !9, !noalias !880, !noundef !4
  %i.bs = icmp samesign ult i64 %i.bq, %i.br
  call void @llvm.assume(i1 %i.bs)
  %i.bt = load ptr, ptr %i.ah, align 8, !noalias !880, !nonnull !4, !noundef !4
  %i.bu = icmp ult i64 %i.bo, 230584300921369397
  call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.bq ; 2 uses
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.bv, align 8, !noalias !896
  %.sroa.8.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx3.i.i.i, i64 32, i1 false), !noalias !896
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.0.0.i.i5.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %bb.o ], [ -1, %bb.n ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameEEB1b_.exit.i.i.i.i unwind label %bb.q, !noalias !887

bb.q:                                             ; preds = %bb.p
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.r, !noalias !887

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameEEB1b_.exit.i.i.i.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameEEB1b_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !880
  br label %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel29resolve_qualified_import_name0B8_.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !887
  unreachable

bb.s:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !887
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %.lr.ph.i52.i.i.i.i, %bb.g
  %lpad.loopexit.split-lp85 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameEBF_(ptr noalias noundef align 8 dereferenceable(40) %i.k) #23
          to label %.body unwind label %bb.s, !noalias !887

_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel29resolve_qualified_import_name0B8_.exit.i.i.i: ; preds = %.noexc19, %.loopexit115.i.i.i.i
  %.sroa.0.1.i.i.i = phi i64 [ %.sroa.0.0.i.i5.i, %.noexc19 ], [ %i.ax, %.loopexit115.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !880
  %.not.i.i6.i = icmp eq i64 %.sroa.0.1.i.i.i, -1
  br i1 %.not.i.i6.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel29resolve_qualified_import_name0B8_.exit.i.i.i, %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel29resolve_qualified_import_name0B8_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  %i.bz = add i64 %.sroa.9.0, 1
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameEEB1k_.exit, label %bb.b

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameEEB1b_.exit.i.i.i.i, %bb.i, %.noexc14, %bb.e, %.invoke
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m, %bb.q, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body = phi { ptr, i32 } [ %i.bw, %bb.q ], [ %i.bn, %bb.m ], [ %lpad.loopexit.split-lp85, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp89, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef align 8 dereferenceable(24) %i.o) #23
          to label %common.resume unwind label %bb.x

bb.u:                                             ; preds = %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel29resolve_qualified_import_name0B8_.exit.i.i.i
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameEEB1k_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameEEB1k_.exit: ; preds = %bb.t, %bb.u
  %storemerge = phi i64 [ %.sroa.0.1.i.i.i, %bb.u ], [ -1, %bb.t ]
  store i64 %storemerge, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit unwind label %bb.v

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameEEB1k_.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %.body, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %bb.v ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameEEB1k_.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.x:                                             ; preds = %.body
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel30current_expression_grandparent(ptr noalias noundef readonly align 8 captures(none) dereferenceable(472) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !911, !noundef !4 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel19current_expressions.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #20, !noalias !912
  unreachable

_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel19current_expressions.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.c, align 8, !noalias !913, !noundef !4 ; 5 uses
  %i.f = load ptr, ptr %i.d, align 8, !nonnull !4 ; 3 uses
  %i.g = add i32 %i.b, -1
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %i.i = icmp ugt i64 %i.e, %i.h
  br i1 %i.i, label %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.e, %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel19current_expressions.exit
  %.lcssa50 = phi i64 [ %i.h, %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel19current_expressions.exit ], [ %i.p, %bb.e ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa50, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20, !noalias !913
  unreachable

_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i: ; preds = %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel19current_expressions.exit
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !noalias !913, !noundef !4 ; 3 uses
  %i.m = load i64, ptr %i.j, align 8, !range !5, !noalias !914, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1                 ; 2 uses
  br i1 %i.n, label %bb.d, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB6_8MapWhileINtNtNtBa_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1Q_NtB1Q_5Nodes12ancestor_ids0ENCNvMs_NtB1S_5modelNtB3n_13SemanticModel19current_expressions0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4h_10advance_byBT_NtB5B_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4Y_EEB1S_.exit

bb.d:                                             ; preds = %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i
  %.not.i.i.i.1 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.1, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add i32 %i.l, -1
  %i.p = zext i32 %i.o to i64                     ; 3 uses
  %i.q = icmp ugt i64 %i.e, %i.p
  br i1 %i.q, label %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i.1, label %bb.c

_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i.1: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i32, ptr %i.s, align 8, !noalias !913, !noundef !4
  %i.u = load i64, ptr %i.r, align 8, !range !5, !noalias !914, !noundef !4
  %1 = trunc nuw i64 %i.u to i1
  br label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB6_8MapWhileINtNtNtBa_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1Q_NtB1Q_5Nodes12ancestor_ids0ENCNvMs_NtB1S_5modelNtB3n_13SemanticModel19current_expressions0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4h_10advance_byBT_NtB5B_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4Y_EEB1S_.exit

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB6_8MapWhileINtNtNtBa_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1Q_NtB1Q_5Nodes12ancestor_ids0ENCNvMs_NtB1S_5modelNtB3n_13SemanticModel19current_expressions0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4h_10advance_byBT_NtB5B_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4Y_EEB1S_.exit: ; preds = %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i.1, %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i
  %.lcssa53 = phi i32 [ %i.l, %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i ], [ %i.t, %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i.1 ] ; 2 uses
  %.lcssa52.not = phi i1 [ false, %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i ], [ %1, %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i.1 ]
  %.not.i.i = icmp ne i32 %.lcssa53, 0
  %.not54 = and i1 %.not.i.i, %.lcssa52.not
  %or.cond.not = and i1 %.not54, %i.n
  br i1 %or.cond.not, label %bb.f, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit

bb.f:                                             ; preds = %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB6_8MapWhileINtNtNtBa_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1Q_NtB1Q_5Nodes12ancestor_ids0ENCNvMs_NtB1S_5modelNtB3n_13SemanticModel19current_expressions0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4h_10advance_byBT_NtB5B_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4Y_EEB1S_.exit
  %i.v = add i32 %.lcssa53, -1
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = icmp ugt i64 %i.e, %i.w
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.w, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20, !noalias !915
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.w ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !range !5, !noalias !916, !noundef !4
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !916, !nonnull !4, !align !3, !noundef !4
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit: ; preds = %bb.d, %bb.i, %bb.h, %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB6_8MapWhileINtNtNtBa_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1Q_NtB1Q_5Nodes12ancestor_ids0ENCNvMs_NtB1S_5modelNtB3n_13SemanticModel19current_expressions0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4h_10advance_byBT_NtB5B_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4Y_EEB1S_.exit
  %.sroa.0.0 = phi ptr [ %i.ac, %bb.i ], [ null, %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB6_8MapWhileINtNtNtBa_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1Q_NtB1Q_5Nodes12ancestor_ids0ENCNvMs_NtB1S_5modelNtB3n_13SemanticModel19current_expressions0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4h_10advance_byBT_NtB5B_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4Y_EEB1S_.exit ], [ null, %bb.h ], [ null, %bb.d ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel30in_protocol_or_abstract_method(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 7 uses
  %i.b = alloca [144 x i8], align 8               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.d = load i32, ptr %i.c, align 8, !range !13, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 5 uses
  %i.g = add i32 %i.d, -1
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %.lr.ph27.i, label %bb.s

.lr.ph27.i:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %i.h ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !934
  %i.o = and i32 %i.n, 114688
  %i.p = icmp eq i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !934
  %.not.i9.i = icmp eq i64 %i.r, 0
  %or.cond.i.i = select i1 %i.p, i1 %.not.i9.i, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %or.cond.i.fr.i = freeze i1 %or.cond.i.i
  br i1 %or.cond.i.fr.i, label %.lr.ph27.split.us.i, label %.lr.ph27.split.i

.lr.ph27.split.us.i:                              ; preds = %.lr.ph27.i, %.backedge.us.i
  %i.t = phi ptr [ %.sroa.0.0.i.i.us.i, %.backedge.us.i ], [ %i.l, %.lr.ph27.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.v = load i32, ptr %i.u, align 8, !noalias !935, !noundef !4 ; 2 uses
  %.not.i.i.us.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.us.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph27.split.us.i
  %i.w = add i32 %i.v, -1
  %i.x = zext i32 %i.w to i64                     ; 3 uses
  %i.y = icmp ugt i64 %i.f, %i.x
  br i1 %i.y, label %bb.c, label %.split30.us.i

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %i.x
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph27.split.us.i
  %.sroa.0.0.i.i.us.i = phi ptr [ %i.z, %bb.c ], [ null, %.lr.ph27.split.us.i ] ; 2 uses
  %i.aa = getelementptr i8, ptr %i.t, i64 24
  %.val6.us.i = load i8, ptr %i.aa, align 8, !range !18, !noalias !936, !noundef !4
  %cond = icmp eq i8 %.val6.us.i, 2
  br i1 %cond, label %.split14.us.i, label %.backedge.us.i

.split14.us.i:                                    ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.t, i64 32
  %.val7.us.i = load ptr, ptr %i.ab, align 8, !noalias !936, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.val7.us.i, i64 32 ; 2 uses
  %i.ad = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorE8data_rawCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac), !noalias !936
  %i.ae = load ptr, ptr %i.ac, align 8, !noalias !936, !nonnull !4, !noundef !4
  %i.af = load i64, ptr %i.ae, align 8, !noalias !936, !noundef !4
  %i.ag = tail call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility11is_abstract(ptr noundef nonnull align 8 %i.ad, i64 noundef %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %0), !noalias !936
  br i1 %i.ag, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsRNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope5ScopeNCNvMs0_B19_NtB19_6Scopes9ancestors0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_3any5checkB16_NCNvMs_NtB1b_5modelNtB3M_13SemanticModel30in_protocol_or_abstract_method0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1b_.exit, label %.backedge.us.i

.backedge.us.i:                                   ; preds = %bb.d, %.split14.us.i
  %.not.i.us.not.i = icmp eq ptr %.sroa.0.0.i.i.us.i, null
  br i1 %.not.i.us.not.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsRNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope5ScopeNCNvMs0_B19_NtB19_6Scopes9ancestors0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_3any5checkB16_NCNvMs_NtB1b_5modelNtB3M_13SemanticModel30in_protocol_or_abstract_method0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1b_.exit, label %.lr.ph27.split.us.i

.lr.ph27.split.i:                                 ; preds = %.lr.ph27.i, %.backedge.i
  %i.ah = phi ptr [ %.sroa.0.0.i.i.i, %.backedge.i ], [ %i.l, %.lr.ph27.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  %i.aj = load i32, ptr %i.ai, align 8, !noalias !935, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph27.split.i
  %i.ak = add i32 %i.aj, -1
  %i.al = zext i32 %i.ak to i64                   ; 3 uses
  %i.am = icmp ugt i64 %i.f, %i.al
  br i1 %i.am, label %bb.f, label %.split30.us.i

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %i.al
  br label %bb.g

.split30.us.i:                                    ; preds = %bb.e, %bb.b
  %.us-phi31.i = phi i64 [ %i.x, %bb.b ], [ %i.al, %bb.e ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi31.i, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20, !noalias !935
  unreachable

bb.g:                                             ; preds = %bb.f, %.lr.ph27.split.i
  %.sroa.0.0.i.i.i = phi ptr [ %i.an, %bb.f ], [ null, %.lr.ph27.split.i ] ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ah, i64 24
  %.val6.i = load i8, ptr %i.ao, align 8, !range !18, !noalias !936, !noundef !4
  %i.ap = getelementptr i8, ptr %i.ah, i64 32
  %.val7.i = load ptr, ptr %i.ap, align 8, !noalias !936 ; 4 uses
  switch i8 %.val6.i, label %.backedge.i [
    i8 0, label %bb.h
    i8 2, label %.split14.i
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i) ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !936, !align !3, !noundef !4 ; 3 uses
  %.not.i.i8.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i8.i, label %.backedge.i, label %bb.i

.split14.i:                                       ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i) ]
  %i.as = getelementptr inbounds nuw i8, ptr %.val7.i, i64 32 ; 2 uses
  %i.at = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorE8data_rawCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.as), !noalias !936
  %i.au = load ptr, ptr %i.as, align 8, !noalias !936, !nonnull !4, !noundef !4
  %i.av = load i64, ptr %i.au, align 8, !noalias !936, !noundef !4
  %i.aw = call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze10visibility11is_abstract(ptr noundef nonnull align 8 %i.at, i64 noundef %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %0), !noalias !936
  br i1 %i.aw, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsRNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope5ScopeNCNvMs0_B19_NtB19_6Scopes9ancestors0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_3any5checkB16_NCNvMs_NtB1b_5modelNtB3M_13SemanticModel30in_protocol_or_abstract_method0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1b_.exit, label %.backedge.i

.backedge.i:                                      ; preds = %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17match_typing_expr.exit.backedge.i, %bb.i, %.split14.i, %bb.h, %bb.g
  %.not.i.not.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %.not.i.not.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsRNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope5ScopeNCNvMs0_B19_NtB19_6Scopes9ancestors0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2y_3any5checkB16_NCNvMs_NtB1b_5modelNtB3M_13SemanticModel30in_protocol_or_abstract_method0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1b_.exit, label %.lr.ph27.split.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr %i.ar, align 8, !noalias !936, !nonnull !4, !noundef !4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !noalias !936, !noundef !4 ; 2 uses
  %i.ba = mul nuw nsw i64 %i.az, 72
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba
  %.not.not.not.i.not.not.i.not.i24.i = icmp eq i64 %i.az, 0
  br i1 %.not.not.not.i.not.not.i.not.i24.i, label %.backedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17match_typing_expr.exit.backedge.i
  %i.bc = phi ptr [ %i.bd, %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17match_typing_expr.exit.backedge.i ], [ %i.ax, %bb.i ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 72 ; 2 uses
  %i.be = load i32, ptr %i.bc, align 8, !range !10, !noalias !937, !noundef !4
  %i.bf = icmp eq i32 %i.be, 26
  br i1 %i.bf, label %bb.j, label %_RNCNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB8_13SemanticModel30in_protocol_or_abstract_method00Ba_.exit.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !937, !nonnull !4, !noundef !4
  br label %_RNCNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB8_13SemanticModel30in_protocol_or_abstract_method00Ba_.exit.i.i.i.i

_RNCNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB8_13SemanticModel30in_protocol_or_abstract_method00Ba_.exit.i.i.i.i: ; preds = %bb.j, %.lr.ph.i
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.bh, %bb.j ], [ %i.bc, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !938
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_qualified_name(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %0, ptr noundef nonnull align 8 %.sroa.0.0.i.i.i.i.i), !noalias !939
  %i.bi = load i64, ptr %i.b, align 8, !range !19, !noalias !938, !noundef !4
  %.not1.i.i = icmp eq i64 %i.bi, 2
  br i1 %.not1.i.i, label %.split.i, label %bb.k

bb.k:                                             ; preds = %_RNCNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB8_13SemanticModel30in_protocol_or_abstract_method00Ba_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !938
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false), !noalias !938
  %i.bj = invoke noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27match_typing_qualified_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 8)
          to label %bb.m unwind label %bb.l, !noalias !940

bb.l:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.a) #23
          to label %common.resume.i.i.i unwind label %bb.r, !noalias !940

bb.m:                                             ; preds = %bb.k
  %i.bl = load i64, ptr %i.a, align 8, !range !5, !alias.scope !941, !noalias !938, !noundef !4
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.s), !noalias !940
  br label %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel17match_typing_expr0B8_.exit.i.i

bb.o:                                             ; preds = %bb.m
end_hunk_0
