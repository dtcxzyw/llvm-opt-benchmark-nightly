Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_parser-4204840c537c9517.yara_x_parser.b6715538e8e8d337-cgu.12?download=true
inline.NumInlined: 259
inline.NumDeleted: 130
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortjNvYjNtNtBa_3cmp10PartialOrd2ltECsfF8zpZz1lvn_13yara_x_parser:bb.a
  %i.ch = icmp ugt i64 %i.bc, 1
  br i1 %i.ch, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ci = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cj = lshr i64 %.sroa.018.0, 1
  %i.ck = add nuw i64 %i.cj, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cl = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cl, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cm = or i64 %1, 1
  %i.cn = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #21
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden { i64, i64 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtB6_8Iterator8try_foldjNCINvNvXs7_NtNtBa_8adapters4takeINtB2M_4TakepENtB2M_8SpecTake13spec_for_each5checkB1F_NCINvMsk_BW_INtBW_3VecB1F_E14extend_trustedIB38_BQ_EE0E0INtNtBc_6option6OptionjEECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !177, !noalias !176, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %.promoted.i.i = load ptr, ptr %i.c, align 8, !alias.scope !177, !noalias !176 ; 3 uses
  %.not14.i.i = icmp eq ptr %.promoted.i.i, %i.b
  br i1 %.not14.i.i, label %._crit_edge26.i.i, label %.lr.ph.i.i

._crit_edge26.i.i:                                ; preds = %bb.a
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val9.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !179
  br label %_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs7_NtNtBa_8adapters4takeINtB30_4TakepENtB30_8SpecTake13spec_for_each5checkB1F_NCINvMsk_BW_INtBW_3VecB1F_E14extend_trustedIB3m_BQ_EE0E0INtNtBc_6option6OptionjEECsfF8zpZz1lvn_13yara_x_parser.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !180, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.promoted18.i.i = load i64, ptr %i.f, align 8, !alias.scope !180 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.promoted.i.i, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %.promoted18.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %.promoted.i.i, i64 48, i1 false), !noalias !181
  %i.i = add i64 %.promoted18.i.i, 1              ; 2 uses
  %i.j = icmp eq i64 %1, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge.i.i:                                  ; preds = %.lr.ph
  store ptr %i.p, ptr %i.c, align 8, !alias.scope !177, !noalias !176
  br label %_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs7_NtNtBa_8adapters4takeINtB30_4TakepENtB30_8SpecTake13spec_for_each5checkB1F_NCINvMsk_BW_INtBW_3VecB1F_E14extend_trustedIB3m_BQ_EE0E0INtNtBc_6option6OptionjEECsfF8zpZz1lvn_13yara_x_parser.exit

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.o
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !181
  %i.m = add i64 %i.o, 1                          ; 2 uses
  %i.n = icmp eq i64 %i.q, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.i, %bb.b
  %i.o = phi i64 [ %i.m, %bb.b ], [ %i.i, %.lr.ph.i.i ] ; 3 uses
  %i.p = phi ptr [ %i.k, %bb.b ], [ %i.g, %.lr.ph.i.i ] ; 4 uses
  %.sroa.0.015.i.i18 = phi i64 [ %i.q, %bb.b ], [ %1, %.lr.ph.i.i ]
  %i.q = add i64 %.sroa.0.015.i.i18, -1           ; 3 uses
  %.not.i.i = icmp eq ptr %i.p, %i.b
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i.i
  %.lcssa15 = phi ptr [ %i.g, %.lr.ph.i.i ], [ %i.k, %bb.b ]
  %.lcssa = phi i64 [ %i.i, %.lr.ph.i.i ], [ %i.m, %bb.b ]
  store ptr %.lcssa15, ptr %i.c, align 8, !alias.scope !177, !noalias !176
  br label %_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs7_NtNtBa_8adapters4takeINtB30_4TakepENtB30_8SpecTake13spec_for_each5checkB1F_NCINvMsk_BW_INtBW_3VecB1F_E14extend_trustedIB3m_BQ_EE0E0INtNtBc_6option6OptionjEECsfF8zpZz1lvn_13yara_x_parser.exit

_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs7_NtNtBa_8adapters4takeINtB30_4TakepENtB30_8SpecTake13spec_for_each5checkB1F_NCINvMsk_BW_INtBW_3VecB1F_E14extend_trustedIB3m_BQ_EE0E0INtNtBc_6option6OptionjEECsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %._crit_edge26.i.i, %._crit_edge.i.i, %._crit_edge
  %.lcssa.sink.i.i = phi i64 [ %.lcssa, %._crit_edge ], [ %i.o, %._crit_edge.i.i ], [ %.val9.pre.i.i, %._crit_edge26.i.i ]
  %.sroa.0.013.i.i = phi i64 [ 0, %._crit_edge ], [ %i.q, %._crit_edge.i.i ], [ %1, %._crit_edge26.i.i ]
  %.sroa.02.0.i.i = phi i64 [ 0, %._crit_edge ], [ 1, %._crit_edge.i.i ], [ 1, %._crit_edge26.i.i ]
  %.val.i.i = load ptr, ptr %2, align 8, !alias.scope !179, !nonnull !4, !align !10, !noundef !4
  store i64 %.lcssa.sink.i.i, ptr %.val.i.i, align 8, !noalias !181
  %i.r = insertvalue { i64, i64 } poison, i64 %.sroa.02.0.i.i, 0
  %i.s = insertvalue { i64, i64 } %i.r, i64 %.sroa.0.013.i.i, 1
  ret { i64, i64 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldBX_NCNvXs0_NtNtCs2CmfWUMKNor_9itertools8adaptors8coalesceINtB2T_10CoalesceByBI_NCNvMs0_NtBZ_7cst2astINtB47_7BuilderNtNtB11_6parser6ParserE4term0NtB2T_7NoCountEB1E_4next0INtNtB1M_6result6ResultBX_BX_EEB11_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(16) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 7 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not7 = icmp eq ptr %.promoted, %i.d
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !noalias !196, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.j, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs4_NtNtCs2CmfWUMKNor_9itertools8adaptors8coalesceNCNvMs0_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtBX_7BuilderNtNtB11_6parser6ParserE4term0INtB5_17CoalescePredicateNtBZ_4ExprB2M_E13coalesce_pairB11_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.f), !noalias !197
  %i.k = load i32, ptr %i.a, align 8, !range !7, !noalias !196, !noundef !4
  %.not.i = icmp eq i32 %i.k, -1
  br i1 %.not.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.m = load ptr, ptr %4, align 8, !noalias !196, !nonnull !4, !align !10, !noundef !4 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !range !198, !alias.scope !199, !noalias !196, !noundef !4
  %switch.i.i = icmp ugt i32 %i.n, -3
  br i1 %switch.i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.m)
          to label %bb.i unwind label %bb.e, !noalias !196, !inline_history !188

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !noalias !196
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #18
          to label %bb.g unwind label %bb.f, !noalias !196

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !196
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

._crit_edge:                                      ; preds = %bb.j, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  store i64 0, ptr %0, align 8, !alias.scope !200
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %._crit_edge
  ret void

bb.i:                                             ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !noalias !196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false), !alias.scope !202
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  store i64 1, ptr %0, align 8, !alias.scope !203
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.h

bb.j:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false), !alias.scope !202
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq ptr %i.j, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsw_NtCsjqcU1oJFKXj_9hashbrown3setINtB6_5DrainNtCsfF8zpZz1lvn_13yara_x_parser4SpanENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldINtNtB1v_3cmp11KeyAndValuejBM_ENCINvNtNtB1t_8adapters3map8map_foldBM_B2n_B2n_NCINvNvB1n_10max_by_key3keyBM_jNCNvMs2_NtBO_6parserNtB4f_10ParserImpl13handle_errorss_0E0NvYB2n_NtB2q_3Ord3maxE0EBO_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [12 x i8], align 4                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false), !noalias !222
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.6.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !223
  invoke void @_RNvXsL_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawDrainTNtCsfF8zpZz1lvn_13yara_x_parser4SpanuEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBR_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %bb.d unwind label %bb.c, !noalias !224

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsK_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawDrainTNtCsfF8zpZz1lvn_13yara_x_parser4SpanuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawDrainTNtCsfF8zpZz1lvn_13yara_x_parser4SpanuEEEB1k_.exit.i unwind label %bb.f, !noalias !224

bb.d:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.b, align 4, !range !225, !noalias !223, !noundef !4
  %i.i = trunc nuw i32 %i.h to i1
  br i1 %i.i, label %bb.e, label %_RINvYINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawDrainTNtCsfF8zpZz1lvn_13yara_x_parser4SpanuEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldINtNtB1v_3cmp11KeyAndValuejBK_ENCINvXsw_NtB8_3setINtB31_5DrainBK_EB1n_4foldB2n_NCINvNtNtB1t_8adapters3map8map_foldBK_B2n_B2n_NCINvNvB1n_10max_by_key3keyBK_jNCNvMs2_NtBM_6parserNtB51_10ParserImpl13handle_errorss_0E0NvYB2n_NtB2q_3Ord3maxE0E0EBM_.exit

bb.e:                                             ; preds = %bb.d
  %4 = load i32, ptr %3, align 4, !noalias !223, !noundef !4
  %5 = load i32, ptr %i.e, align 4, !noalias !223, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !223
  %6 = zext i32 %4 to i64                         ; 3 uses
  %7 = zext i32 %5 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or disjoint i64 %8, %6
  store i64 %6, ptr %i.f, align 8, !noalias !227
  store i64 %9, ptr %.sroa.6.16..sroa_idx.i.i.i, align 8, !noalias !227
  %.val1.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !228, !noalias !229, !noundef !4
  %i.j = icmp ugt i64 %.val1.i.i.i.i.i, %6
  %..i.i.i.i.i = select i1 %i.j, ptr %i.a, ptr %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i.i.i, i64 16, i1 false), !noalias !223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !223
  br label %bb.b

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !224
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawDrainTNtCsfF8zpZz1lvn_13yara_x_parser4SpanuEEEB1k_.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RINvYINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawDrainTNtCsfF8zpZz1lvn_13yara_x_parser4SpanuEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldINtNtB1v_3cmp11KeyAndValuejBK_ENCINvXsw_NtB8_3setINtB31_5DrainBK_EB1n_4foldB2n_NCINvNtNtB1t_8adapters3map8map_foldBK_B2n_B2n_NCINvNvB1n_10max_by_key3keyBK_jNCNvMs2_NtBM_6parserNtB51_10ParserImpl13handle_errorss_0E0NvYB2n_NtB2q_3Ord3maxE0E0EBM_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXsK_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawDrainTNtCsfF8zpZz1lvn_13yara_x_parser4SpanuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d), !noalias !224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsdJkkaF0JZ31_10ascii_tree4TreeENtB5_8Iterator9size_hintCsfF8zpZz1lvn_13yara_x_parser(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 24
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 48                  ; 2 uses
  store i64 %i.g, ptr %0, align 8, !alias.scope !233
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8, !alias.scope !233
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8, !alias.scope !233
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %.val = load i8, ptr %i.a, align 1, !range !234, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsfF8zpZz1lvn_13yara_x_parser, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsfF8zpZz1lvn_13yara_x_parser.66, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCsfF8zpZz1lvn_13yara_x_parser(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 48                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !237
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !237
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !237
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define hidden void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsfF8zpZz1lvn_13yara_x_parser(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.d = ptrtoint ptr %4 to i64
  %i.e = ptrtoint ptr %3 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.c)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %..i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 48                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a
  br i1 %i.j, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 3 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtCsdJkkaF0JZ31_10ascii_tree4TreeNtNtBO_5alloc6GlobalEECsfF8zpZz1lvn_13yara_x_parser.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = icmp ult i64 %i.n, 192153584101141163
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.q, %i.n
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l
  store i64 %i.r, ptr %i.m, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtCsdJkkaF0JZ31_10ascii_tree4TreeNtNtBO_5alloc6GlobalEECsfF8zpZz1lvn_13yara_x_parser.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.n
  %i.w = mul nuw nsw i64 %i.l, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false)
  br label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtCsdJkkaF0JZ31_10ascii_tree4TreeNtNtBO_5alloc6GlobalEECsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsdJkkaF0JZ31_10ascii_tree4TreeECsfF8zpZz1lvn_13yara_x_parser.exit, %bb.d, %bb.b
  ret void

.body:                                            ; preds = %bb.h, %bb.i
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtCsdJkkaF0JZ31_10ascii_tree4TreeNtNtBO_5alloc6GlobalEECsfF8zpZz1lvn_13yara_x_parser(ptr nonnull %0) #18
  resume { ptr, i32 } %i.ah

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub nuw i64 %i.e, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.ae, %i.g
  br i1 %i.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsdJkkaF0JZ31_10ascii_tree4TreeECsfF8zpZz1lvn_13yara_x_parser.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.i17 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %.sroa.0.0.i17
  %i.ae = add nuw nsw i64 %.sroa.0.0.i17, 1       ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdJkkaF0JZ31_10ascii_tree4TreeECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ad)
          to label %bb.f unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph19
  %i.af = add nuw nsw i64 %.sroa.0.1.i18, 1       ; 2 uses
  %i.ag = icmp eq i64 %i.af, %i.g
  br i1 %i.ag, label %.body, label %.lr.ph19

bb.i:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = icmp eq i64 %i.ae, %i.g
  br i1 %i.ai, label %.body, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.i, %bb.h
  %.sroa.0.1.i18 = phi i64 [ %i.af, %bb.h ], [ %i.ae, %bb.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %.sroa.0.1.i18
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdJkkaF0JZ31_10ascii_tree4TreeECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj) #18
          to label %bb.h unwind label %bb.j

bb.j:                                             ; preds = %.lr.ph19
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

end_hunk_0
