Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.04?download=true
inline.NumInlined: 9870
inline.NumDeleted: 3940
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4join25IEJoinCompatiblePredicateE12get_index_ofBL_EB1C_:bb.a
._crit_edge.i:                                    ; preds = %bb.d, %bb.b
  %i.aa = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1), !dbg !26600
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !26604
  %i.ac = icmp eq i16 %i.ab, 0, !dbg !26606
  br i1 %i.ac, label %bb.e, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4join25IEJoinCompatiblePredicateB1I_E0EB2z_.exit.thread, !dbg !26606, !prof !261

bb.d:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4join25IEJoinCompatiblePredicateB1K_E0E0B2B_.exit.i
  %i.ad = add i16 %.sroa.05.0.i39.i, -1, !dbg !26608
  %i.ae = and i16 %i.ad, %.sroa.05.0.i39.i, !dbg !26610 ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ae, 0, !dbg !26557
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !26560

bb.e:                                             ; preds = %._crit_edge.i
  %i.af = add i64 %.sroa.011.0.i.i, 16, !dbg !26612 ; 2 uses
  %i.ag = add i64 %.sroa.01.0.i.i, %i.af, !dbg !26614
  br label %bb.b, !dbg !26540

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4join25IEJoinCompatiblePredicateB1I_E0EB2z_.exit.thread: ; preds = %._crit_edge.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4join25IEJoinCompatiblePredicateB1K_E0E0B2B_.exit.i
  %.sroa.3.0 = phi i64 [ %.val.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4join25IEJoinCompatiblePredicateB1K_E0E0B2B_.exit.i ], [ undef, %._crit_edge.i ], !dbg !26615
  %.sroa.0.0 = phi i64 [ 1, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4join25IEJoinCompatiblePredicateB1K_E0E0B2B_.exit.i ], [ 0, %._crit_edge.i ], !dbg !26615
  %i.ah = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !26618
  %i.ai = insertvalue { i64, i64 } %i.ah, i64 %.sroa.3.0, 1, !dbg !26618
  ret { i64, i64 } %i.ai, !dbg !26618
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4join17predicate_pruning13InnerJoinKeysE12get_index_ofBL_EB1E_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !26619 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26620
  %i.b = load ptr, ptr %i.a, align 8, !dbg !26620, !nonnull !13, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26633
  %i.d = load i64, ptr %i.c, align 8, !dbg !26633, !noundef !13 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !26634
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26638), !dbg !26641
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26644), !dbg !26647
  %i.f = lshr i64 %1, 57, !dbg !26650
  %i.g = trunc nuw nsw i64 %i.f to i8, !dbg !26653
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !26654
  %i.i = load i64, ptr %i.h, align 8, !dbg !26654, !alias.scope !26656, !noalias !26657, !noundef !13 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !26656, !noalias !26657, !nonnull !13, !noundef !13 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i = load i64, ptr %2, align 8
  br label %bb.b, !dbg !26660

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.011.0.i.i = phi i64 [ 0, %bb.a ], [ %i.af, %bb.e ], !dbg !26661
  %.pn.i.i = phi i64 [ %1, %bb.a ], [ %i.ag, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i, !dbg !26661 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i, !dbg !26662
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.m, align 1, !dbg !26665, !noalias !26669 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.l, !dbg !26672
  %i.o = bitcast <16 x i1> %i.n to i16, !dbg !26675 ; 2 uses
  %.not.i.not38.i = icmp eq i16 %i.o, 0, !dbg !26677
  br i1 %.not.i.not38.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !26680

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.sroa.05.0.i39.i = phi i16 [ %i.ae, %bb.d ], [ %i.o, %bb.b ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i39.i, i1 true), !dbg !26681
  %i.q = zext nneg i16 %i.p to i64, !dbg !26684
  %i.r = add i64 %.sroa.01.0.i.i, %i.q, !dbg !26685
  %i.s = and i64 %i.r, %i.i, !dbg !26685
  %i.t = sub nsw i64 0, %i.s, !dbg !26686
  %i.u = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.t, !dbg !26695
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8, !dbg !26696
  %.val.i.i = load i64, ptr %i.v, align 8, !dbg !26702, !noalias !26703, !noundef !13 ; 4 uses
  %i.w = icmp ult i64 %.val.i.i, %i.d, !dbg !26706
  br i1 %i.w, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4join17predicate_pruning13InnerJoinKeysB1K_E0E0B2D_.exit.i, label %bb.c, !dbg !26706

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #44, !dbg !26706, !noalias !26710
  unreachable, !dbg !26706

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4join17predicate_pruning13InnerJoinKeysB1K_E0E0B2D_.exit.i: ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.val.i.i, !dbg !26713
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !26713
  %.val2.i.i.i = load i64, ptr %i.y, align 8, !dbg !26714, !noalias !26710, !noundef !13
  %i.z = icmp eq i64 %.val.i.i.i, %.val2.i.i.i, !dbg !26715
  br i1 %i.z, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4join17predicate_pruning13InnerJoinKeysB1I_E0EB2B_.exit.thread, label %bb.d, !dbg !26718, !prof !1152

._crit_edge.i:                                    ; preds = %bb.d, %bb.b
  %i.aa = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1), !dbg !26720
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !26724
  %i.ac = icmp eq i16 %i.ab, 0, !dbg !26726
  br i1 %i.ac, label %bb.e, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4join17predicate_pruning13InnerJoinKeysB1I_E0EB2B_.exit.thread, !dbg !26726, !prof !261

bb.d:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4join17predicate_pruning13InnerJoinKeysB1K_E0E0B2D_.exit.i
  %i.ad = add i16 %.sroa.05.0.i39.i, -1, !dbg !26728
  %i.ae = and i16 %i.ad, %.sroa.05.0.i39.i, !dbg !26730 ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ae, 0, !dbg !26677
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !26680

bb.e:                                             ; preds = %._crit_edge.i
  %i.af = add i64 %.sroa.011.0.i.i, 16, !dbg !26732 ; 2 uses
  %i.ag = add i64 %.sroa.01.0.i.i, %i.af, !dbg !26734
  br label %bb.b, !dbg !26660

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4join17predicate_pruning13InnerJoinKeysB1I_E0EB2B_.exit.thread: ; preds = %._crit_edge.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4join17predicate_pruning13InnerJoinKeysB1K_E0E0B2D_.exit.i
  %.sroa.3.0 = phi i64 [ %.val.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4join17predicate_pruning13InnerJoinKeysB1K_E0E0B2D_.exit.i ], [ undef, %._crit_edge.i ], !dbg !26735
  %.sroa.0.0 = phi i64 [ 1, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4join17predicate_pruning13InnerJoinKeysB1K_E0E0B2D_.exit.i ], [ 0, %._crit_edge.i ], !dbg !26735
  %i.ah = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !26738
  %i.ai = insertvalue { i64, i64 } %i.ah, i64 %.sroa.3.0, 1, !dbg !26738
  ret { i64, i64 } %i.ai, !dbg !26738
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodemE12get_index_ofBL_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !26739 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26740
  %i.b = load ptr, ptr %i.a, align 8, !dbg !26740, !nonnull !13, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26753
  %i.d = load i64, ptr %i.c, align 8, !dbg !26753, !noundef !13 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !26754
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26758), !dbg !26761
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26764), !dbg !26767
  %i.f = lshr i64 %1, 57, !dbg !26770
  %i.g = trunc nuw nsw i64 %i.f to i8, !dbg !26773
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !26774
  %i.i = load i64, ptr %i.h, align 8, !dbg !26774, !alias.scope !26776, !noalias !26777, !noundef !13 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !26776, !noalias !26777, !nonnull !13, !noundef !13 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i = load i64, ptr %2, align 8
  br label %bb.b, !dbg !26780

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.011.0.i.i = phi i64 [ 0, %bb.a ], [ %i.af, %bb.e ], !dbg !26781
  %.pn.i.i = phi i64 [ %1, %bb.a ], [ %i.ag, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i, !dbg !26781 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i, !dbg !26782
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.m, align 1, !dbg !26785, !noalias !26789 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.l, !dbg !26792
  %i.o = bitcast <16 x i1> %i.n to i16, !dbg !26795 ; 2 uses
  %.not.i.not38.i = icmp eq i16 %i.o, 0, !dbg !26797
  br i1 %.not.i.not38.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !26800

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.sroa.05.0.i39.i = phi i16 [ %i.ae, %bb.d ], [ %i.o, %bb.b ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i39.i, i1 true), !dbg !26801
  %i.q = zext nneg i16 %i.p to i64, !dbg !26804
  %i.r = add i64 %.sroa.01.0.i.i, %i.q, !dbg !26805
  %i.s = and i64 %i.r, %i.i, !dbg !26805
  %i.t = sub nsw i64 0, %i.s, !dbg !26806
  %i.u = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.t, !dbg !26815
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8, !dbg !26816
  %.val.i.i = load i64, ptr %i.v, align 8, !dbg !26822, !noalias !26823, !noundef !13 ; 4 uses
  %i.w = icmp ult i64 %.val.i.i, %i.d, !dbg !26826
  br i1 %i.w, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodemB1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, label %bb.c, !dbg !26826

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #44, !dbg !26826, !noalias !26830
  unreachable, !dbg !26826

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodemB1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.val.i.i, !dbg !26833
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !26833
  %.val2.i.i.i = load i64, ptr %i.y, align 8, !dbg !26834, !noalias !26830, !noundef !13
  %i.z = icmp eq i64 %.val.i.i.i, %.val2.i.i.i, !dbg !26835
  br i1 %i.z, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodemB1I_E0ECsfcROwRM8ZtH_11polars_plan.exit.thread, label %bb.d, !dbg !26838, !prof !1152

._crit_edge.i:                                    ; preds = %bb.d, %bb.b
  %i.aa = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1), !dbg !26840
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !26844
  %i.ac = icmp eq i16 %i.ab, 0, !dbg !26846
  br i1 %i.ac, label %bb.e, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodemB1I_E0ECsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !26846, !prof !261

bb.d:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodemB1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i
  %i.ad = add i16 %.sroa.05.0.i39.i, -1, !dbg !26848
  %i.ae = and i16 %i.ad, %.sroa.05.0.i39.i, !dbg !26850 ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ae, 0, !dbg !26797
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !26800

bb.e:                                             ; preds = %._crit_edge.i
  %i.af = add i64 %.sroa.011.0.i.i, 16, !dbg !26852 ; 2 uses
  %i.ag = add i64 %.sroa.01.0.i.i, %i.af, !dbg !26854
  br label %bb.b, !dbg !26780

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodemB1I_E0ECsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %._crit_edge.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodemB1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i
  %.sroa.3.0 = phi i64 [ %.val.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodemB1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ], [ undef, %._crit_edge.i ], !dbg !26855
  %.sroa.0.0 = phi i64 [ 1, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils5arena4NodemB1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ], [ 0, %._crit_edge.i ], !dbg !26855
  %i.ah = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !26858
  %i.ai = insertvalue { i64, i64 } %i.ah, i64 %.sroa.3.0, 1, !dbg !26858
  ret { i64, i64 } %i.ai, !dbg !26858
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodeuE5drainNtNtNtCscgRAwXFJnXP_4core3ops5range9RangeFullECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !26859 {
_RNvMNtCscgRAwXFJnXP_4core5sliceSINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils5arena4NodeuE8split_atCsfcROwRM8ZtH_11polars_plan.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !26860
  %i.b = load i64, ptr %i.a, align 8, !dbg !26860, !noundef !13 ; 5 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488, !dbg !26863
  tail call void @llvm.assume(i1 %i.c), !dbg !26865
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26866), !dbg !26869
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !26871 ; 2 uses
  %i.e = icmp eq i64 %i.b, 0, !dbg !26882
  br i1 %i.e, label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodeuE13erase_indicesCsfcROwRM8ZtH_11polars_plan.exit, label %bb.a, !dbg !26882

bb.a:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils5arena4NodeuE8split_atCsfcROwRM8ZtH_11polars_plan.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !26884 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !26884, !alias.scope !26866, !noundef !13 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !26871 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !26871, !alias.scope !26866, !noundef !13 ; 5 uses
  %i.j = add i64 %i.i, %i.g, !dbg !26871
  %.not = icmp ult i64 %i.j, 2, !dbg !26885
  br i1 %.not, label %bb.e, label %bb.b, !dbg !26885

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26886), !dbg !26889
  %i.k = icmp eq i64 %i.i, 0, !dbg !26892
  br i1 %i.k, label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodeuE13erase_indicesCsfcROwRM8ZtH_11polars_plan.exit, label %bb.c, !dbg !26892

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !26894
  %i.m = load i64, ptr %i.l, align 8, !dbg !26894, !alias.scope !26901, !noundef !13 ; 5 uses
  %i.n = icmp eq i64 %i.m, 0, !dbg !26902
  br i1 %i.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTablejENCNvMs6_B1B_B1y_5clear0EECsfcROwRM8ZtH_11polars_plan.exit5.i.i, label %bb.d, !dbg !26902

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.d, align 8, !dbg !26903, !alias.scope !26901, !nonnull !13, !noundef !13
  %i.p = add i64 %i.m, 17, !dbg !26905
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.o, i8 -1, i64 %i.p, i1 false), !dbg !26907, !noalias !26901
  %i.q = icmp ult i64 %i.m, 8, !dbg !26912
  %i.r = add i64 %i.m, 1, !dbg !26912
  %i.s = lshr i64 %i.r, 3, !dbg !26912
  %i.t = mul nuw i64 %i.s, 7, !dbg !26912
  %spec.select.i.i.i4.i.i = select i1 %i.q, i64 %i.m, i64 %i.t, !dbg !26912
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTablejENCNvMs6_B1B_B1y_5clear0EECsfcROwRM8ZtH_11polars_plan.exit5.i.i, !dbg !26912

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTablejENCNvMs6_B1B_B1y_5clear0EECsfcROwRM8ZtH_11polars_plan.exit5.i.i: ; preds = %bb.d, %bb.c
  %i.u = phi i64 [ %spec.select.i.i.i4.i.i, %bb.d ], [ 0, %bb.c ], !dbg !26912
  store i64 0, ptr %i.h, align 8, !dbg !26914, !alias.scope !26901
  store i64 %i.u, ptr %i.f, align 8, !dbg !26915, !alias.scope !26901
  br label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodeuE13erase_indicesCsfcROwRM8ZtH_11polars_plan.exit, !dbg !26916

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26917), !dbg !26920
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26922), !dbg !26925
  %i.v = icmp eq i64 %i.i, 0, !dbg !26930
  br i1 %i.v, label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodeuE13erase_indicesCsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph.i11.i, !dbg !26930

.lr.ph.i11.i:                                     ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !26936
  %i.x = load ptr, ptr %i.d, align 8, !dbg !26942, !alias.scope !26945, !noalias !26946, !nonnull !13, !noundef !13 ; 6 uses
  %.val24.i.i.i = load <16 x i8>, ptr %i.x, align 16, !dbg !26949, !noalias !26956
  %i.y = icmp sgt <16 x i8> %.val24.i.i.i, splat (i8 -1), !dbg !26957
  %i.z = bitcast <16 x i1> %i.y to i16, !dbg !26964
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !26965
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = load i64, ptr %i.w, align 8, !alias.scope !26866
  br label %bb.f, !dbg !26930

bb.f:                                             ; preds = %bb.h, %.lr.ph.i11.i
  %3 = phi i64 [ %i.i, %.lr.ph.i11.i ], [ %4, %bb.h ] ; 2 uses
  %i.ad = phi i64 [ %i.g, %.lr.ph.i11.i ], [ %i.bl, %bb.h ] ; 3 uses
  %.sroa.14.015.i.i = phi i64 [ %i.i, %.lr.ph.i11.i ], [ %i.ap, %bb.h ]
  %.sroa.10.014.i.i = phi i16 [ %i.z, %.lr.ph.i11.i ], [ %i.am, %bb.h ] ; 2 uses
  %.sroa.6.013.i.i = phi ptr [ %i.aa, %.lr.ph.i11.i ], [ %.sroa.6.1.i.i, %bb.h ] ; 2 uses
  %.sroa.07.012.i.i = phi ptr [ %i.x, %.lr.ph.i11.i ], [ %.sroa.07.1.i.i, %bb.h ] ; 2 uses
  %.not11.i.i.i = icmp eq i16 %.sroa.10.014.i.i, 0, !dbg !26971
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsfcROwRM8ZtH_11polars_plan.exit.i.i, !dbg !26980

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %i.ae = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.sroa.6.013.i.i, %bb.f ], !dbg !26981 ; 2 uses
  %i.af = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.sroa.07.012.i.i, %bb.f ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.ae, align 16, !dbg !26982, !noalias !26985
  %i.ag = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1), !dbg !26988
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -128, !dbg !26995 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !27001 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ag to i16, !dbg !27004 ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0, !dbg !26971
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsfcROwRM8ZtH_11polars_plan.exit.i.i, !dbg !26980

_RINvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.f
  %.sroa.07.1.i.i = phi ptr [ %.sroa.07.012.i.i, %bb.f ], [ %i.ah, %.lr.ph.i.i.i ], !dbg !26964 ; 3 uses
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.013.i.i, %bb.f ], [ %i.ai, %.lr.ph.i.i.i ], !dbg !26964
  %.lcssa.i.i.i = phi i16 [ %.sroa.10.014.i.i, %bb.f ], [ %.cast.i.i.i, %.lr.ph.i.i.i ], !dbg !27004 ; 3 uses
  %i.aj = add i16 %.lcssa.i.i.i, -1, !dbg !27005
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true), !dbg !27012
  %i.al = zext nneg i16 %i.ak to i64, !dbg !27013
  %i.am = and i16 %i.aj, %.lcssa.i.i.i, !dbg !27014
  %i.an = sub nsw i64 0, %i.al, !dbg !27018
  %i.ao = getelementptr inbounds [8 x i8], ptr %.sroa.07.1.i.i, i64 %i.an, !dbg !27021 ; 2 uses
  %i.ap = add i64 %.sroa.14.015.i.i, -1, !dbg !27022 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -8, !dbg !27024 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !27032, !alias.scope !27037, !noalias !27040, !noundef !13 ; 2 uses
  %.not.i5.i.i = icmp ult i64 %i.ar, %i.b, !dbg !27032
  br i1 %.not.i5.i.i, label %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodeuE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.i.i, label %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodeuE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i, !dbg !27032

_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodeuE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i: ; preds = %_RINvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.as = sub nuw i64 %i.ar, %i.b, !dbg !27042
  store i64 %i.as, ptr %i.aq, align 8, !dbg !27042, !alias.scope !27037, !noalias !27040
  br label %bb.h, !dbg !27043

_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodeuE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %_RINvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsfcROwRM8ZtH_11polars_plan.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27044), !dbg !27047
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.1.i.i) ]
  %i.at = ptrtoint ptr %i.ao to i64, !dbg !27050
  %i.au = sub i64 %i.ab, %i.at, !dbg !27050
  %i.av = ashr exact i64 %i.au, 3, !dbg !27050    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27062), !dbg !27065
  %i.aw = add nsw i64 %i.av, -16, !dbg !27067
  %i.ax = and i64 %i.aw, %i.ac, !dbg !27072
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ax, !dbg !27073 ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i.i = load <16 x i8>, ptr %i.ay, align 1, !dbg !27080, !noalias !27085
  %i.az = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i, splat (i8 -1), !dbg !27088
  %i.ba = bitcast <16 x i1> %i.az to i16, !dbg !27095
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.av, !dbg !27098 ; 2 uses
  %.sroa.0.0.copyload.i926.i.i.i.i = load <16 x i8>, ptr %i.bb, align 1, !dbg !27102, !noalias !27106
  %i.bc = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i.i, splat (i8 -1), !dbg !27109
  %i.bd = bitcast <16 x i1> %i.bc to i16, !dbg !27115
  %i.be = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ba, i1 false), !dbg !27118
  %i.bf = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bd, i1 false), !dbg !27125
  %narrow.i.i.i.i = add nuw nsw i16 %i.bf, %i.be, !dbg !27130
  %i.bg = icmp samesign ugt i16 %narrow.i.i.i.i, 15, !dbg !27130
  br i1 %i.bg, label %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i, label %bb.g, !dbg !27130

bb.g:                                             ; preds = %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodeuE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.bh = add i64 %i.ad, 1, !dbg !27131           ; 2 uses
  store i64 %i.bh, ptr %i.f, align 8, !dbg !27131, !alias.scope !27132, !noalias !27133
  br label %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i, !dbg !27134

_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %bb.g, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodeuE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.bi = phi i64 [ %i.bh, %bb.g ], [ %i.ad, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodeuE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.i.i ]
  %.sroa.0.0.i.i.i12.i = phi i8 [ -1, %bb.g ], [ -128, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodeuE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.i.i ], !dbg !27135 ; 2 uses
  store i8 %.sroa.0.0.i.i.i12.i, ptr %i.bb, align 1, !dbg !27136, !noalias !27141
  %i.bj = getelementptr i8, ptr %i.ay, i64 16, !dbg !27142
  store i8 %.sroa.0.0.i.i.i12.i, ptr %i.bj, align 1, !dbg !27146, !noalias !27141
  %i.bk = add i64 %3, -1, !dbg !27147             ; 2 uses
  store i64 %i.bk, ptr %i.h, align 8, !dbg !27147, !alias.scope !27132, !noalias !27133
  br label %bb.h, !dbg !27148

bb.h:                                             ; preds = %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodeuE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i
  %4 = phi i64 [ %i.bk, %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i ], [ %3, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodeuE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i ]
  %i.bl = phi i64 [ %i.bi, %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i ], [ %i.ad, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodeuE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i ]
  %i.bm = icmp eq i64 %i.ap, 0, !dbg !26930
  br i1 %i.bm, label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodeuE13erase_indicesCsfcROwRM8ZtH_11polars_plan.exit, label %bb.f, !dbg !26930

_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodeuE13erase_indicesCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.h, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTablejENCNvMs6_B1B_B1y_5clear0EECsfcROwRM8ZtH_11polars_plan.exit5.i.i, %bb.b, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils5arena4NodeuE8split_atCsfcROwRM8ZtH_11polars_plan.exit.i, %bb.e
  tail call void @_RINvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils5arena4NodeuEE5drainINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 noundef %i.b), !dbg !27149
  ret void, !dbg !27150
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBL_E12get_index_ofBL_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !27151 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27152
  %i.b = load ptr, ptr %i.a, align 8, !dbg !27152, !nonnull !13, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !27165
  %i.d = load i64, ptr %i.c, align 8, !dbg !27165, !noundef !13 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !27166
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27170), !dbg !27173
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27176), !dbg !27179
  %i.f = lshr i64 %1, 57, !dbg !27182
  %i.g = trunc nuw nsw i64 %i.f to i8, !dbg !27185
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !27186
  %i.i = load i64, ptr %i.h, align 8, !dbg !27186, !alias.scope !27188, !noalias !27189, !noundef !13 ; 4 uses
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !27188, !noalias !27189, !nonnull !13, !noundef !13 ; 4 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 23
  %i.n = load i8, ptr %i.m, align 1, !range !188
  %.fr13 = freeze i8 %i.n                         ; 2 uses
  %i.o = icmp ugt i8 %.fr13, -41
  %i.p = add i8 %.fr13, 64
  %i.q = tail call i8 @llvm.umin.i8(i8 %i.p, i8 24)
  %.sroa.0.0.i.i.i.i.i.i = zext nneg i8 %i.q to i64 ; 2 uses
  %i.r = load ptr, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  br i1 %i.o, label %.split10.us, label %.split10

.split10.us:                                      ; preds = %bb.a, %bb.b
  %.sroa.011.0.i.i.us = phi i64 [ %i.aa, %bb.b ], [ 0, %bb.a ], !dbg !27192
  %.pn.i.i.us = phi i64 [ %i.ab, %bb.b ], [ %1, %bb.a ]
  %.sroa.01.0.i.i.us = and i64 %.pn.i.i.us, %i.i, !dbg !27192 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i.us, !dbg !27193
  %.sroa.0.0.copyload.i27.i.us = load <16 x i8>, ptr %i.u, align 1, !dbg !27196, !noalias !27200 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.us, %i.l, !dbg !27203
  %i.w = bitcast <16 x i1> %i.v to i16, !dbg !27206 ; 2 uses
  %.not.i.not39.i.us = icmp eq i16 %i.w, 0, !dbg !27208
  br i1 %.not.i.not39.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us, !dbg !27211

._crit_edge.i.us:                                 ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.us.us, %.split10.us
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.us, splat (i8 -1), !dbg !27212
  %i.y = bitcast <16 x i1> %i.x to i16, !dbg !27216
  %i.z = icmp eq i16 %i.y, 0, !dbg !27218
  br i1 %i.z, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1I_B1I_E0ECsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !27218, !prof !261

bb.b:                                             ; preds = %._crit_edge.i.us
  %i.aa = add i64 %.sroa.011.0.i.i.us, 16, !dbg !27220 ; 2 uses
  %i.ab = add i64 %.sroa.01.0.i.i.us, %i.aa, !dbg !27222
  br label %.split10.us, !dbg !27223

.lr.ph.i.us.us:                                   ; preds = %.split10.us, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.us.us
  %.sroa.05.0.i40.i.us.us = phi i16 [ %i.ax, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.us.us ], [ %i.w, %.split10.us ] ; 3 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i40.i.us.us, i1 true), !dbg !27224
  %i.ad = zext nneg i16 %i.ac to i64, !dbg !27227
  %i.ae = add i64 %.sroa.01.0.i.i.us, %i.ad, !dbg !27228
  %i.af = and i64 %i.ae, %i.i, !dbg !27228
  %i.ag = sub nsw i64 0, %i.af, !dbg !27229
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ag, !dbg !27238
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8, !dbg !27239
  %.val.i.i.us.us = load i64, ptr %i.ai, align 8, !dbg !27245, !noalias !27246, !noundef !13 ; 4 uses
  %i.aj = icmp ult i64 %.val.i.i.us.us, %i.d, !dbg !27249
  br i1 %i.aj, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i.us.us, label %.split.us, !dbg !27249

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i.us.us: ; preds = %.lr.ph.i.us.us
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.val.i.i.us.us, !dbg !27253 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !27253 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 31, !dbg !27254
  %i.an = load i8, ptr %i.am, align 1, !dbg !27254, !range !188, !alias.scope !27271, !noalias !27276, !noundef !13 ; 2 uses
  %i.ao = icmp ugt i8 %i.an, -41, !dbg !27280
  br i1 %i.ao, label %bb.d, label %bb.c, !dbg !27280

bb.c:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i.us.us
  %i.ap = add i8 %i.an, 64, !dbg !27281
  %i.aq = tail call i8 @llvm.umin.i8(i8 %i.ap, i8 24), !dbg !27283
  %.sroa.0.0.i.i2.i.i.i.i.us.us = zext nneg i8 %i.aq to i64, !dbg !27283
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i.us.us, !dbg !27286

bb.d:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i.us.us
  %i.ar = load ptr, ptr %i.al, align 8, !dbg !27287, !alias.scope !27271, !noalias !27276, !noundef !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !27288
  %i.at = load i64, ptr %i.as, align 8, !dbg !27288, !alias.scope !27271, !noalias !27276, !noundef !13
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i.us.us, !dbg !27289

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i.us.us: ; preds = %bb.d, %bb.c
  %.sroa.01.0.i3.i.i.i.i.us.us = phi i64 [ %i.at, %bb.d ], [ %.sroa.0.0.i.i2.i.i.i.i.us.us, %bb.c ], !dbg !27290
  %.sroa.0.0.i4.i.i.i.i.us.us = phi ptr [ %i.ar, %bb.d ], [ %i.al, %bb.c ], !dbg !27291
  %i.au = icmp eq i64 %i.t, %.sroa.01.0.i3.i.i.i.i.us.us, !dbg !27292
  br i1 %i.au, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i.us.us, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.us.us, !dbg !27292, !prof !234

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i.us.us: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i.us.us
  %bcmp.i.i.i.i.i.us.us = tail call i32 @bcmp(ptr %i.r, ptr %.sroa.0.0.i4.i.i.i.i.us.us, i64 %i.t), !dbg !27303, !noalias !27307
  %i.av = icmp eq i32 %bcmp.i.i.i.i.i.us.us, 0, !dbg !27303
  br i1 %i.av, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1I_B1I_E0ECsfcROwRM8ZtH_11polars_plan.exit.thread, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.us.us, !dbg !27308, !prof !249

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.us.us: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i.us.us, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i.us.us
  %i.aw = add i16 %.sroa.05.0.i40.i.us.us, -1, !dbg !27310
  %i.ax = and i16 %i.aw, %.sroa.05.0.i40.i.us.us, !dbg !27312 ; 2 uses
  %.not.i.not.i.us.us = icmp eq i16 %i.ax, 0, !dbg !27208
  br i1 %.not.i.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us, !dbg !27211

.split10:                                         ; preds = %bb.a, %bb.g
  %.sroa.011.0.i.i = phi i64 [ %i.ca, %bb.g ], [ 0, %bb.a ], !dbg !27192
  %.pn.i.i = phi i64 [ %i.cb, %bb.g ], [ %1, %bb.a ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i, !dbg !27192 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i, !dbg !27193
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.ay, align 1, !dbg !27196, !noalias !27200 ; 2 uses
  %i.az = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.l, !dbg !27203
  %i.ba = bitcast <16 x i1> %i.az to i16, !dbg !27206 ; 2 uses
  %.not.i.not39.i = icmp eq i16 %i.ba, 0, !dbg !27208
  br i1 %.not.i.not39.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !27211

.lr.ph.i:                                         ; preds = %.split10, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i
  %.sroa.05.0.i40.i = phi i16 [ %i.bz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i ], [ %i.ba, %.split10 ] ; 3 uses
  %i.bb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i40.i, i1 true), !dbg !27224
  %i.bc = zext nneg i16 %i.bb to i64, !dbg !27227
  %i.bd = add i64 %.sroa.01.0.i.i, %i.bc, !dbg !27228
  %i.be = and i64 %i.bd, %i.i, !dbg !27228
  %i.bf = sub nsw i64 0, %i.be, !dbg !27229
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.bf, !dbg !27238
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -8, !dbg !27239
  %.val.i.i = load i64, ptr %i.bh, align 8, !dbg !27245, !noalias !27246, !noundef !13 ; 4 uses
  %i.bi = icmp ult i64 %.val.i.i, %i.d, !dbg !27249
  br i1 %i.bi, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i, label %.split.us, !dbg !27249

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.bj = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.val.i.i, !dbg !27253 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8, !dbg !27253 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 31, !dbg !27254
  %i.bm = load i8, ptr %i.bl, align 1, !dbg !27254, !range !188, !alias.scope !27271, !noalias !27276, !noundef !13 ; 2 uses
  %i.bn = icmp ugt i8 %i.bm, -41, !dbg !27280
  br i1 %i.bn, label %bb.f, label %bb.e, !dbg !27280

bb.e:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i
  %i.bo = add i8 %i.bm, 64, !dbg !27281
  %i.bp = tail call i8 @llvm.umin.i8(i8 %i.bo, i8 24), !dbg !27283
  %.sroa.0.0.i.i2.i.i.i.i = zext nneg i8 %i.bp to i64, !dbg !27283
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i, !dbg !27286

bb.f:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i
  %i.bq = load ptr, ptr %i.bk, align 8, !dbg !27287, !alias.scope !27271, !noalias !27276, !noundef !13
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 16, !dbg !27288
  %i.bs = load i64, ptr %i.br, align 8, !dbg !27288, !alias.scope !27271, !noalias !27276, !noundef !13
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i, !dbg !27289

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.01.0.i3.i.i.i.i = phi i64 [ %i.bs, %bb.f ], [ %.sroa.0.0.i.i2.i.i.i.i, %bb.e ], !dbg !27290
  %.sroa.0.0.i4.i.i.i.i = phi ptr [ %i.bq, %bb.f ], [ %i.bk, %bb.e ], !dbg !27291
  %i.bt = icmp eq i64 %.sroa.01.0.i3.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i, !dbg !27292
  br i1 %i.bt, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i, !dbg !27292, !prof !234

.split.us:                                        ; preds = %.lr.ph.i, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %.val.i.i.us.us, %.lr.ph.i.us.us ], [ %.val.i.i, %.lr.ph.i ], !dbg !27249
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #44, !dbg !27249, !noalias !27307
  unreachable, !dbg !27249

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %2, ptr %.sroa.0.0.i4.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i), !dbg !27303, !noalias !27307
  %i.bu = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !27303
  br i1 %i.bu, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1I_B1I_E0ECsfcROwRM8ZtH_11polars_plan.exit.thread, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i, !dbg !27308, !prof !249

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i, %.split10
  %i.bv = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1), !dbg !27212
  %i.bw = bitcast <16 x i1> %i.bv to i16, !dbg !27216
  %i.bx = icmp eq i16 %i.bw, 0, !dbg !27218
  br i1 %i.bx, label %bb.g, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1I_B1I_E0ECsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !27218, !prof !261

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i
  %i.by = add i16 %.sroa.05.0.i40.i, -1, !dbg !27310
  %i.bz = and i16 %i.by, %.sroa.05.0.i40.i, !dbg !27312 ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.bz, 0, !dbg !27208
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !27211

bb.g:                                             ; preds = %._crit_edge.i
  %i.ca = add i64 %.sroa.011.0.i.i, 16, !dbg !27220 ; 2 uses
  %i.cb = add i64 %.sroa.01.0.i.i, %i.ca, !dbg !27222
  br label %.split10, !dbg !27223

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1I_B1I_E0ECsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %._crit_edge.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %._crit_edge.i.us, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i.us.us
  %.sroa.3.0 = phi i64 [ undef, %._crit_edge.i.us ], [ %.val.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ], [ %.val.i.i.us.us, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i.us.us ], [ undef, %._crit_edge.i ], !dbg !27314
  %.sroa.0.0 = phi i64 [ 0, %._crit_edge.i.us ], [ 1, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ], [ 1, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1K_B1K_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i.us.us ], [ 0, %._crit_edge.i ], !dbg !27314
  %i.cc = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !27317
  %i.cd = insertvalue { i64, i64 } %i.cc, i64 %.sroa.3.0, 1, !dbg !27317
  ret { i64, i64 } %i.cd, !dbg !27317
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE12get_index_ofBL_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !27318 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27319
  %i.b = load ptr, ptr %i.a, align 8, !dbg !27319, !nonnull !13, !noundef !13 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE16swap_remove_fullBL_EB1G_:bb.a
  %i.cr = load i64, ptr %i.cq, align 8, !dbg !29063, !alias.scope !29064, !noalias !29065, !noundef !13
  %i.cs = add i64 %i.cr, 1, !dbg !29063
  store i64 %i.cs, ptr %i.cq, align 8, !dbg !29063, !alias.scope !29064, !noalias !29065
  br label %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsfcROwRM8ZtH_11polars_plan.exit, !dbg !29066

_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRB1I_E0EB2D_.exit, %bb.h
  %.sroa.0.0.i.i = phi i8 [ -1, %bb.h ], [ -128, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRB1I_E0EB2D_.exit ], !dbg !29067 ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ce, !dbg !28952
  store i8 %.sroa.0.0.i.i, ptr %i.cf, align 1, !dbg !29068, !noalias !29070
  %i.cu = getelementptr i8, ptr %i.ci, i64 16, !dbg !29071
  store i8 %.sroa.0.0.i.i, ptr %i.cu, align 1, !dbg !29074, !noalias !29070
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !29075 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !dbg !29075, !alias.scope !29064, !noalias !29065, !noundef !13
  %i.cx = add i64 %i.cw, -1, !dbg !29075
  store i64 %i.cx, ptr %i.cv, align 8, !dbg !29075, !alias.scope !29064, !noalias !29065
  %i.cy = getelementptr inbounds i8, ptr %i.ct, i64 -8, !dbg !29076
  %i.cz = load i64, ptr %i.cy, align 8, !dbg !29082, !noalias !29085, !noundef !13 ; 2 uses
  call fastcc void @_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE18swap_remove_finishB1F_(ptr noalias noundef align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef align 8 dereferenceable(56) %1, i64 noundef %i.cz), !dbg !29086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !29088
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !29088
  store i64 %i.cz, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !29088
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !29088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.56.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !dbg !29088
  br label %bb.i, !dbg !29090

.split23.us:                                      ; preds = %._crit_edge.i, %._crit_edge.i.us
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !29091
  store i64 5, ptr %i.da, align 16, !dbg !29091
  br label %bb.i, !dbg !29090

bb.i:                                             ; preds = %.split23.us, %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsfcROwRM8ZtH_11polars_plan.exit
  ret void, !dbg !29090
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE16swap_remove_fulleEB1G_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(none) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !29097 {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !29098
  %i.d = load ptr, ptr %i.c, align 8, !dbg !29098, !nonnull !13, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !29111
  %i.f = load i64, ptr %i.e, align 8, !dbg !29111, !noundef !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !29112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29114), !dbg !29117
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29120), !dbg !29123
  %i.h = lshr i64 %2, 57, !dbg !29125
  %i.i = trunc nuw nsw i64 %i.h to i8, !dbg !29128
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !29129
  %i.k = load i64, ptr %i.j, align 8, !dbg !29129, !alias.scope !29131, !noalias !29132, !noundef !13 ; 3 uses
  %i.l = load ptr, ptr %i.g, align 8, !alias.scope !29131, !noalias !29132, !nonnull !13, !noundef !13 ; 4 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b, !dbg !29135

bb.b:                                             ; preds = %bb.g, %bb.a
  %.sroa.011.0.i.i = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.g ], !dbg !29136
  %.pn.i.i = phi i64 [ %2, %bb.a ], [ %i.ar, %bb.g ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.k, !dbg !29136 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i, !dbg !29137
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.o, align 1, !dbg !29140, !noalias !29144 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.n, !dbg !29147
  %i.q = bitcast <16 x i1> %i.p to i16, !dbg !29150 ; 2 uses
  %.not.i.not39.i = icmp eq i16 %i.q, 0, !dbg !29152
  br i1 %.not.i.not39.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !29155

.lr.ph.i:                                         ; preds = %bb.b, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIReE0E0B2F_.exit.thread.i
  %.sroa.05.0.i40.i = phi i16 [ %i.ap, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIReE0E0B2F_.exit.thread.i ], [ %i.q, %bb.b ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i40.i, i1 true), !dbg !29156
  %i.s = zext nneg i16 %i.r to i64, !dbg !29159
  %i.t = add i64 %.sroa.01.0.i.i, %i.s, !dbg !29160
  %i.u = and i64 %i.t, %i.k, !dbg !29160          ; 3 uses
  %i.v = sub nsw i64 0, %i.u, !dbg !29161
  %i.w = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.v, !dbg !29166 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8, !dbg !29167
  %.val.i.i = load i64, ptr %i.x, align 8, !dbg !29171, !noalias !29172, !noundef !13 ; 3 uses
  %i.y = icmp ult i64 %.val.i.i, %i.f, !dbg !29175
  br i1 %i.y, label %bb.c, label %bb.f, !dbg !29175

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw [144 x i8], ptr %i.d, i64 %.val.i.i, !dbg !29177 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 112, !dbg !29177 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 135, !dbg !29178
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !29178, !range !188, !alias.scope !29186, !noalias !29191, !noundef !13 ; 2 uses
  %i.ad = icmp ugt i8 %i.ac, -41, !dbg !29195
  br i1 %i.ad, label %bb.e, label %bb.d, !dbg !29195

bb.d:                                             ; preds = %bb.c
  %i.ae = add i8 %i.ac, 64, !dbg !29196
  %i.af = tail call i8 @llvm.umin.i8(i8 %i.ae, i8 24), !dbg !29198
  %.sroa.0.0.i.i.i.i.i.i = zext nneg i8 %i.af to i64, !dbg !29198
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i, !dbg !29201

bb.e:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.aa, align 8, !dbg !29202, !alias.scope !29186, !noalias !29191, !noundef !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 120, !dbg !29203
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !29203, !alias.scope !29186, !noalias !29191, !noundef !13
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i, !dbg !29204

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.ai, %bb.e ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.d ], !dbg !29205
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.ag, %bb.e ], [ %i.aa, %bb.d ], !dbg !29206
  %i.aj = icmp eq i64 %4, %.sroa.01.0.i.i.i.i.i, !dbg !29207
  br i1 %i.aj, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIReE0E0B2F_.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIReE0E0B2F_.exit.thread.i, !dbg !29207, !prof !234

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #44, !dbg !29175, !noalias !29211
  unreachable, !dbg !29175

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIReE0E0B2F_.exit.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %3, ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, i64 %4), !dbg !29212, !alias.scope !29214, !noalias !29211
  %i.ak = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !29212
  br i1 %i.ak, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIReE0EB2D_.exit, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIReE0E0B2F_.exit.thread.i, !dbg !29218, !prof !249

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIReE0E0B2F_.exit.thread.i, %bb.b
  %i.al = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1), !dbg !29220
  %i.am = bitcast <16 x i1> %i.al to i16, !dbg !29224
  %i.an = icmp eq i16 %i.am, 0, !dbg !29226
  br i1 %i.an, label %bb.g, label %bb.i, !dbg !29226, !prof !261

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIReE0E0B2F_.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIReE0E0B2F_.exit.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i
  %i.ao = add i16 %.sroa.05.0.i40.i, -1, !dbg !29228
  %i.ap = and i16 %i.ao, %.sroa.05.0.i40.i, !dbg !29230 ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ap, 0, !dbg !29152
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !29155

bb.g:                                             ; preds = %._crit_edge.i
  %i.aq = add i64 %.sroa.011.0.i.i, 16, !dbg !29232 ; 2 uses
  %i.ar = add i64 %.sroa.01.0.i.i, %i.aq, !dbg !29234
  br label %bb.b, !dbg !29135

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIReE0EB2D_.exit: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIReE0E0B2F_.exit.i
  %i.as = getelementptr inbounds i8, ptr %i.w, i64 -8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29235), !dbg !29238
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.u, !dbg !29241 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29245), !dbg !29248
  %i.au = add nsw i64 %i.u, -16, !dbg !29249
  %i.av = and i64 %i.au, %i.k, !dbg !29252
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.av, !dbg !29253 ; 2 uses
  %.sroa.0.0.copyload.i25.i.i = load <16 x i8>, ptr %i.aw, align 1, !dbg !29256, !noalias !29260
  %i.ax = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i, splat (i8 -1), !dbg !29264
  %i.ay = bitcast <16 x i1> %i.ax to i16, !dbg !29268
  %.sroa.0.0.copyload.i926.i.i = load <16 x i8>, ptr %i.at, align 1, !dbg !29270, !noalias !29274
  %i.az = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i, splat (i8 -1), !dbg !29277
  %i.ba = bitcast <16 x i1> %i.az to i16, !dbg !29281
  %i.bb = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ay, i1 false), !dbg !29283
  %i.bc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ba, i1 false), !dbg !29286
  %narrow.i.i = add nuw nsw i16 %i.bc, %i.bb, !dbg !29289
  %i.bd = icmp samesign ugt i16 %narrow.i.i, 15, !dbg !29289
  br i1 %i.bd, label %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsfcROwRM8ZtH_11polars_plan.exit, label %bb.h, !dbg !29289

bb.h:                                             ; preds = %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIReE0EB2D_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !29290 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !dbg !29290, !alias.scope !29291, !noalias !29292, !noundef !13
  %i.bg = add i64 %i.bf, 1, !dbg !29290
  store i64 %i.bg, ptr %i.be, align 8, !dbg !29290, !alias.scope !29291, !noalias !29292
  br label %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsfcROwRM8ZtH_11polars_plan.exit, !dbg !29293

_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIReE0EB2D_.exit, %bb.h
  %.sroa.0.0.i.i = phi i8 [ -1, %bb.h ], [ -128, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIReE0EB2D_.exit ], !dbg !29294 ; 2 uses
  store i8 %.sroa.0.0.i.i, ptr %i.at, align 1, !dbg !29295, !noalias !29297
  %i.bh = getelementptr i8, ptr %i.aw, i64 16, !dbg !29298
  store i8 %.sroa.0.0.i.i, ptr %i.bh, align 1, !dbg !29301, !noalias !29297
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !29302 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !dbg !29302, !alias.scope !29291, !noalias !29292, !noundef !13
  %i.bk = add i64 %i.bj, -1, !dbg !29302
  store i64 %i.bk, ptr %i.bi, align 8, !dbg !29302, !alias.scope !29291, !noalias !29292
  %i.bl = load i64, ptr %i.as, align 8, !dbg !29303, !noalias !29307, !noundef !13 ; 2 uses
  call fastcc void @_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE18swap_remove_finishB1F_(ptr noalias noundef align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef align 8 dereferenceable(56) %1, i64 noundef %i.bl), !dbg !29308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !29310
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !29310
  store i64 %i.bl, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !29310
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !29310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.56.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !dbg !29310
  br label %bb.j, !dbg !29312

bb.i:                                             ; preds = %._crit_edge.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !29313
  store i64 5, ptr %i.bm, align 16, !dbg !29313
  br label %bb.j, !dbg !29312

bb.j:                                             ; preds = %bb.i, %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsfcROwRM8ZtH_11polars_plan.exit
  ret void, !dbg !29312
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE5drainNtNtNtCscgRAwXFJnXP_4core3ops5range9RangeFullEB1G_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !29319 {
_RNvMNtCscgRAwXFJnXP_4core5sliceSINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE8split_atB1W_.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !29320
  %i.b = load i64, ptr %i.a, align 8, !dbg !29320, !noundef !13 ; 5 uses
  %i.c = icmp ult i64 %i.b, 64051194700380388, !dbg !29323
  tail call void @llvm.assume(i1 %i.c), !dbg !29325
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29326), !dbg !29329
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !29331 ; 2 uses
  %i.e = icmp eq i64 %i.b, 0, !dbg !29342
  br i1 %i.e, label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE13erase_indicesB1F_.exit, label %bb.a, !dbg !29342

bb.a:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE8split_atB1W_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !29344 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !29344, !alias.scope !29326, !noundef !13 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !29331 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !29331, !alias.scope !29326, !noundef !13 ; 5 uses
  %i.j = add i64 %i.i, %i.g, !dbg !29331
  %.not = icmp ult i64 %i.j, 2, !dbg !29345
  br i1 %.not, label %bb.e, label %bb.b, !dbg !29345

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29346), !dbg !29349
  %i.k = icmp eq i64 %i.i, 0, !dbg !29352
  br i1 %i.k, label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE13erase_indicesB1F_.exit, label %bb.c, !dbg !29352

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !29354
  %i.m = load i64, ptr %i.l, align 8, !dbg !29354, !alias.scope !29361, !noundef !13 ; 5 uses
  %i.n = icmp eq i64 %i.m, 0, !dbg !29362
  br i1 %i.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTablejENCNvMs6_B1B_B1y_5clear0EECsfcROwRM8ZtH_11polars_plan.exit5.i.i, label %bb.d, !dbg !29362

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.d, align 8, !dbg !29363, !alias.scope !29361, !nonnull !13, !noundef !13
  %i.p = add i64 %i.m, 17, !dbg !29365
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.o, i8 -1, i64 %i.p, i1 false), !dbg !29367, !noalias !29361
  %i.q = icmp ult i64 %i.m, 8, !dbg !29372
  %i.r = add i64 %i.m, 1, !dbg !29372
  %i.s = lshr i64 %i.r, 3, !dbg !29372
  %i.t = mul nuw i64 %i.s, 7, !dbg !29372
  %spec.select.i.i.i4.i.i = select i1 %i.q, i64 %i.m, i64 %i.t, !dbg !29372
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTablejENCNvMs6_B1B_B1y_5clear0EECsfcROwRM8ZtH_11polars_plan.exit5.i.i, !dbg !29372

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTablejENCNvMs6_B1B_B1y_5clear0EECsfcROwRM8ZtH_11polars_plan.exit5.i.i: ; preds = %bb.d, %bb.c
  %i.u = phi i64 [ %spec.select.i.i.i4.i.i, %bb.d ], [ 0, %bb.c ], !dbg !29372
  store i64 0, ptr %i.h, align 8, !dbg !29374, !alias.scope !29361
  store i64 %i.u, ptr %i.f, align 8, !dbg !29375, !alias.scope !29361
  br label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE13erase_indicesB1F_.exit, !dbg !29376

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29377), !dbg !29380
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29382), !dbg !29385
  %i.v = icmp eq i64 %i.i, 0, !dbg !29390
  br i1 %i.v, label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE13erase_indicesB1F_.exit, label %.lr.ph.i11.i, !dbg !29390

.lr.ph.i11.i:                                     ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !29395
  %i.x = load ptr, ptr %i.d, align 8, !dbg !29398, !alias.scope !29400, !noalias !29401, !nonnull !13, !noundef !13 ; 6 uses
  %.val24.i.i.i = load <16 x i8>, ptr %i.x, align 16, !dbg !29404, !noalias !29407
  %i.y = icmp sgt <16 x i8> %.val24.i.i.i, splat (i8 -1), !dbg !29408
  %i.z = bitcast <16 x i1> %i.y to i16, !dbg !29412
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !29413
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = load i64, ptr %i.w, align 8, !alias.scope !29326
  br label %bb.f, !dbg !29390

bb.f:                                             ; preds = %bb.h, %.lr.ph.i11.i
  %3 = phi i64 [ %i.i, %.lr.ph.i11.i ], [ %4, %bb.h ] ; 2 uses
  %i.ad = phi i64 [ %i.g, %.lr.ph.i11.i ], [ %i.bl, %bb.h ] ; 3 uses
  %.sroa.14.015.i.i = phi i64 [ %i.i, %.lr.ph.i11.i ], [ %i.ap, %bb.h ]
  %.sroa.10.014.i.i = phi i16 [ %i.z, %.lr.ph.i11.i ], [ %i.am, %bb.h ] ; 2 uses
  %.sroa.6.013.i.i = phi ptr [ %i.aa, %.lr.ph.i11.i ], [ %.sroa.6.1.i.i, %bb.h ] ; 2 uses
  %.sroa.07.012.i.i = phi ptr [ %i.x, %.lr.ph.i11.i ], [ %.sroa.07.1.i.i, %bb.h ] ; 2 uses
  %.not11.i.i.i = icmp eq i16 %.sroa.10.014.i.i, 0, !dbg !29415
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsfcROwRM8ZtH_11polars_plan.exit.i.i, !dbg !29419

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %i.ae = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.sroa.6.013.i.i, %bb.f ], !dbg !29420 ; 2 uses
  %i.af = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.sroa.07.012.i.i, %bb.f ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.ae, align 16, !dbg !29421, !noalias !29423
  %i.ag = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1), !dbg !29426
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -128, !dbg !29430 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !29433 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ag to i16, !dbg !29435 ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0, !dbg !29415
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsfcROwRM8ZtH_11polars_plan.exit.i.i, !dbg !29419

_RINvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.f
  %.sroa.07.1.i.i = phi ptr [ %.sroa.07.012.i.i, %bb.f ], [ %i.ah, %.lr.ph.i.i.i ], !dbg !29412 ; 3 uses
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.013.i.i, %bb.f ], [ %i.ai, %.lr.ph.i.i.i ], !dbg !29412
  %.lcssa.i.i.i = phi i16 [ %.sroa.10.014.i.i, %bb.f ], [ %.cast.i.i.i, %.lr.ph.i.i.i ], !dbg !29435 ; 3 uses
  %i.aj = add i16 %.lcssa.i.i.i, -1, !dbg !29436
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true), !dbg !29440
  %i.al = zext nneg i16 %i.ak to i64, !dbg !29441
  %i.am = and i16 %i.aj, %.lcssa.i.i.i, !dbg !29442
  %i.an = sub nsw i64 0, %i.al, !dbg !29444
  %i.ao = getelementptr inbounds [8 x i8], ptr %.sroa.07.1.i.i, i64 %i.an, !dbg !29447 ; 2 uses
  %i.ap = add i64 %.sroa.14.015.i.i, -1, !dbg !29448 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -8, !dbg !29450 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !29458, !alias.scope !29461, !noalias !29464, !noundef !13 ; 2 uses
  %.not.i5.i.i = icmp ult i64 %i.ar, %i.b, !dbg !29458
  br i1 %.not.i5.i.i, label %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE13erase_indices0B1H_.exit.i.i, label %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE13erase_indices0B1H_.exit.thread.i.i, !dbg !29458

_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE13erase_indices0B1H_.exit.thread.i.i: ; preds = %_RINvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.as = sub nuw i64 %i.ar, %i.b, !dbg !29466
  store i64 %i.as, ptr %i.aq, align 8, !dbg !29466, !alias.scope !29461, !noalias !29464
  br label %bb.h, !dbg !29467

_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE13erase_indices0B1H_.exit.i.i: ; preds = %_RINvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsfcROwRM8ZtH_11polars_plan.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29468), !dbg !29471
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.1.i.i) ]
  %i.at = ptrtoint ptr %i.ao to i64, !dbg !29474
  %i.au = sub i64 %i.ab, %i.at, !dbg !29474
  %i.av = ashr exact i64 %i.au, 3, !dbg !29474    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29480), !dbg !29483
  %i.aw = add nsw i64 %i.av, -16, !dbg !29484
  %i.ax = and i64 %i.aw, %i.ac, !dbg !29487
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ax, !dbg !29488 ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i.i = load <16 x i8>, ptr %i.ay, align 1, !dbg !29491, !noalias !29495
  %i.az = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i, splat (i8 -1), !dbg !29498
  %i.ba = bitcast <16 x i1> %i.az to i16, !dbg !29502
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.av, !dbg !29504 ; 2 uses
  %.sroa.0.0.copyload.i926.i.i.i.i = load <16 x i8>, ptr %i.bb, align 1, !dbg !29507, !noalias !29511
  %i.bc = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i.i, splat (i8 -1), !dbg !29514
  %i.bd = bitcast <16 x i1> %i.bc to i16, !dbg !29518
  %i.be = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ba, i1 false), !dbg !29520
  %i.bf = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bd, i1 false), !dbg !29523
  %narrow.i.i.i.i = add nuw nsw i16 %i.bf, %i.be, !dbg !29526
  %i.bg = icmp samesign ugt i16 %narrow.i.i.i.i, 15, !dbg !29526
  br i1 %i.bg, label %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i, label %bb.g, !dbg !29526

bb.g:                                             ; preds = %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE13erase_indices0B1H_.exit.i.i
  %i.bh = add i64 %i.ad, 1, !dbg !29527           ; 2 uses
  store i64 %i.bh, ptr %i.f, align 8, !dbg !29527, !alias.scope !29528, !noalias !29529
  br label %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i, !dbg !29530

_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %bb.g, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE13erase_indices0B1H_.exit.i.i
  %i.bi = phi i64 [ %i.bh, %bb.g ], [ %i.ad, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE13erase_indices0B1H_.exit.i.i ]
  %.sroa.0.0.i.i.i12.i = phi i8 [ -1, %bb.g ], [ -128, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE13erase_indices0B1H_.exit.i.i ], !dbg !29531 ; 2 uses
  store i8 %.sroa.0.0.i.i.i12.i, ptr %i.bb, align 1, !dbg !29532, !noalias !29534
  %i.bj = getelementptr i8, ptr %i.ay, i64 16, !dbg !29535
  store i8 %.sroa.0.0.i.i.i12.i, ptr %i.bj, align 1, !dbg !29538, !noalias !29534
  %i.bk = add i64 %3, -1, !dbg !29539             ; 2 uses
  store i64 %i.bk, ptr %i.h, align 8, !dbg !29539, !alias.scope !29528, !noalias !29529
  br label %bb.h, !dbg !29540

bb.h:                                             ; preds = %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE13erase_indices0B1H_.exit.thread.i.i
  %4 = phi i64 [ %i.bk, %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i ], [ %3, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE13erase_indices0B1H_.exit.thread.i.i ]
  %i.bl = phi i64 [ %i.bi, %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i ], [ %i.ad, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE13erase_indices0B1H_.exit.thread.i.i ]
  %i.bm = icmp eq i64 %i.ap, 0, !dbg !29390
  br i1 %i.bm, label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE13erase_indicesB1F_.exit, label %bb.f, !dbg !29390

_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE13erase_indicesB1F_.exit: ; preds = %bb.h, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTablejENCNvMs6_B1B_B1y_5clear0EECsfcROwRM8ZtH_11polars_plan.exit5.i.i, %bb.b, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE8split_atB1W_.exit.i, %bb.e
  tail call void @_RINvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREE5drainINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEEB27_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 noundef %i.b), !dbg !29541
  ret void, !dbg !29542
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsE12get_index_ofBL_EB1I_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !29543 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !29544
  %i.b = load ptr, ptr %i.a, align 8, !dbg !29544, !nonnull !13, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !29557
  %i.d = load i64, ptr %i.c, align 8, !dbg !29557, !noundef !13 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !29558
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29562), !dbg !29565
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29568), !dbg !29571
  %i.f = lshr i64 %1, 57, !dbg !29574
  %i.g = trunc nuw nsw i64 %i.f to i8, !dbg !29577
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !29578
  %i.i = load i64, ptr %i.h, align 8, !dbg !29578, !alias.scope !29580, !noalias !29581, !noundef !13 ; 4 uses
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !29580, !noalias !29581, !nonnull !13, !noundef !13 ; 4 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 23
  %i.n = load i8, ptr %i.m, align 1, !range !188
  %.fr13 = freeze i8 %i.n                         ; 2 uses
  %i.o = icmp ugt i8 %.fr13, -41
  %i.p = add i8 %.fr13, 64
  %i.q = tail call i8 @llvm.umin.i8(i8 %i.p, i8 24)
  %.sroa.0.0.i.i.i.i.i.i = zext nneg i8 %i.q to i64 ; 2 uses
  %i.r = load ptr, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  br i1 %i.o, label %.split10.us, label %.split10

.split10.us:                                      ; preds = %bb.a, %bb.b
  %.sroa.011.0.i.i.us = phi i64 [ %i.aa, %bb.b ], [ 0, %bb.a ], !dbg !29584
  %.pn.i.i.us = phi i64 [ %i.ab, %bb.b ], [ %1, %bb.a ]
  %.sroa.01.0.i.i.us = and i64 %.pn.i.i.us, %i.i, !dbg !29584 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i.us, !dbg !29585
  %.sroa.0.0.copyload.i27.i.us = load <16 x i8>, ptr %i.u, align 1, !dbg !29588, !noalias !29592 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.us, %i.l, !dbg !29595
  %i.w = bitcast <16 x i1> %i.v to i16, !dbg !29598 ; 2 uses
  %.not.i.not39.i.us = icmp eq i16 %i.w, 0, !dbg !29600
  br i1 %.not.i.not39.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us, !dbg !29603

._crit_edge.i.us:                                 ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.thread.i.us.us, %.split10.us
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.us, splat (i8 -1), !dbg !29604
  %i.y = bitcast <16 x i1> %i.x to i16, !dbg !29608
  %i.z = icmp eq i16 %i.y, 0, !dbg !29610
  br i1 %i.z, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1I_E0EB2F_.exit.thread, !dbg !29610, !prof !261

bb.b:                                             ; preds = %._crit_edge.i.us
  %i.aa = add i64 %.sroa.011.0.i.i.us, 16, !dbg !29612 ; 2 uses
  %i.ab = add i64 %.sroa.01.0.i.i.us, %i.aa, !dbg !29614
  br label %.split10.us, !dbg !29615

.lr.ph.i.us.us:                                   ; preds = %.split10.us, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.thread.i.us.us
  %.sroa.05.0.i40.i.us.us = phi i16 [ %i.ax, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.thread.i.us.us ], [ %i.w, %.split10.us ] ; 3 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i40.i.us.us, i1 true), !dbg !29616
  %i.ad = zext nneg i16 %i.ac to i64, !dbg !29619
  %i.ae = add i64 %.sroa.01.0.i.i.us, %i.ad, !dbg !29620
  %i.af = and i64 %i.ae, %i.i, !dbg !29620
  %i.ag = sub nsw i64 0, %i.af, !dbg !29621
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ag, !dbg !29630
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8, !dbg !29631
  %.val.i.i.us.us = load i64, ptr %i.ai, align 8, !dbg !29637, !noalias !29638, !noundef !13 ; 4 uses
  %i.aj = icmp ult i64 %.val.i.i.us.us, %i.d, !dbg !29641
  br i1 %i.aj, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i.us.us, label %.split.us, !dbg !29641

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i.us.us: ; preds = %.lr.ph.i.us.us
  %i.ak = getelementptr inbounds nuw [464 x i8], ptr %i.b, i64 %.val.i.i.us.us, !dbg !29645 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 432, !dbg !29645 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 455, !dbg !29646
  %i.an = load i8, ptr %i.am, align 1, !dbg !29646, !range !188, !alias.scope !29655, !noalias !29660, !noundef !13 ; 2 uses
  %i.ao = icmp ugt i8 %i.an, -41, !dbg !29664
  br i1 %i.ao, label %bb.d, label %bb.c, !dbg !29664

bb.c:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i.us.us
  %i.ap = add i8 %i.an, 64, !dbg !29665
  %i.aq = tail call i8 @llvm.umin.i8(i8 %i.ap, i8 24), !dbg !29667
  %.sroa.0.0.i.i2.i.i.i.i.us.us = zext nneg i8 %i.aq to i64, !dbg !29667
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i.us.us, !dbg !29670

bb.d:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i.us.us
  %i.ar = load ptr, ptr %i.al, align 8, !dbg !29671, !alias.scope !29655, !noalias !29660, !noundef !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 440, !dbg !29672
  %i.at = load i64, ptr %i.as, align 8, !dbg !29672, !alias.scope !29655, !noalias !29660, !noundef !13
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i.us.us, !dbg !29673

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i.us.us: ; preds = %bb.d, %bb.c
  %.sroa.01.0.i3.i.i.i.i.us.us = phi i64 [ %i.at, %bb.d ], [ %.sroa.0.0.i.i2.i.i.i.i.us.us, %bb.c ], !dbg !29674
  %.sroa.0.0.i4.i.i.i.i.us.us = phi ptr [ %i.ar, %bb.d ], [ %i.al, %bb.c ], !dbg !29675
  %i.au = icmp eq i64 %i.t, %.sroa.01.0.i3.i.i.i.i.us.us, !dbg !29676
  br i1 %i.au, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.i.us.us, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.thread.i.us.us, !dbg !29676, !prof !234

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.i.us.us: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i.us.us
  %bcmp.i.i.i.i.i.us.us = tail call i32 @bcmp(ptr %i.r, ptr %.sroa.0.0.i4.i.i.i.i.us.us, i64 %i.t), !dbg !29681, !noalias !29683
  %i.av = icmp eq i32 %bcmp.i.i.i.i.i.us.us, 0, !dbg !29681
  br i1 %i.av, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1I_E0EB2F_.exit.thread, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.thread.i.us.us, !dbg !29684, !prof !249

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.thread.i.us.us: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.i.us.us, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i.us.us
  %i.aw = add i16 %.sroa.05.0.i40.i.us.us, -1, !dbg !29686
  %i.ax = and i16 %i.aw, %.sroa.05.0.i40.i.us.us, !dbg !29688 ; 2 uses
  %.not.i.not.i.us.us = icmp eq i16 %i.ax, 0, !dbg !29600
  br i1 %.not.i.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us, !dbg !29603

.split10:                                         ; preds = %bb.a, %bb.g
  %.sroa.011.0.i.i = phi i64 [ %i.ca, %bb.g ], [ 0, %bb.a ], !dbg !29584
  %.pn.i.i = phi i64 [ %i.cb, %bb.g ], [ %1, %bb.a ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i, !dbg !29584 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i, !dbg !29585
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.ay, align 1, !dbg !29588, !noalias !29592 ; 2 uses
  %i.az = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.l, !dbg !29595
  %i.ba = bitcast <16 x i1> %i.az to i16, !dbg !29598 ; 2 uses
  %.not.i.not39.i = icmp eq i16 %i.ba, 0, !dbg !29600
  br i1 %.not.i.not39.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !29603

.lr.ph.i:                                         ; preds = %.split10, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.thread.i
  %.sroa.05.0.i40.i = phi i16 [ %i.bz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.thread.i ], [ %i.ba, %.split10 ] ; 3 uses
  %i.bb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i40.i, i1 true), !dbg !29616
  %i.bc = zext nneg i16 %i.bb to i64, !dbg !29619
  %i.bd = add i64 %.sroa.01.0.i.i, %i.bc, !dbg !29620
  %i.be = and i64 %i.bd, %i.i, !dbg !29620
  %i.bf = sub nsw i64 0, %i.be, !dbg !29621
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.bf, !dbg !29630
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -8, !dbg !29631
  %.val.i.i = load i64, ptr %i.bh, align 8, !dbg !29637, !noalias !29638, !noundef !13 ; 4 uses
  %i.bi = icmp ult i64 %.val.i.i, %i.d, !dbg !29641
  br i1 %i.bi, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i, label %.split.us, !dbg !29641

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.bj = getelementptr inbounds nuw [464 x i8], ptr %i.b, i64 %.val.i.i, !dbg !29645 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 432, !dbg !29645 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 455, !dbg !29646
  %i.bm = load i8, ptr %i.bl, align 1, !dbg !29646, !range !188, !alias.scope !29655, !noalias !29660, !noundef !13 ; 2 uses
  %i.bn = icmp ugt i8 %i.bm, -41, !dbg !29664
  br i1 %i.bn, label %bb.f, label %bb.e, !dbg !29664

bb.e:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i
  %i.bo = add i8 %i.bm, 64, !dbg !29665
  %i.bp = tail call i8 @llvm.umin.i8(i8 %i.bo, i8 24), !dbg !29667
  %.sroa.0.0.i.i2.i.i.i.i = zext nneg i8 %i.bp to i64, !dbg !29667
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i, !dbg !29670

bb.f:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i
  %i.bq = load ptr, ptr %i.bk, align 8, !dbg !29671, !alias.scope !29655, !noalias !29660, !noundef !13
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 440, !dbg !29672
  %i.bs = load i64, ptr %i.br, align 8, !dbg !29672, !alias.scope !29655, !noalias !29660, !noundef !13
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i, !dbg !29673

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.01.0.i3.i.i.i.i = phi i64 [ %i.bs, %bb.f ], [ %.sroa.0.0.i.i2.i.i.i.i, %bb.e ], !dbg !29674
  %.sroa.0.0.i4.i.i.i.i = phi ptr [ %i.bq, %bb.f ], [ %i.bk, %bb.e ], !dbg !29675
  %i.bt = icmp eq i64 %.sroa.01.0.i3.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i, !dbg !29676
  br i1 %i.bt, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.thread.i, !dbg !29676, !prof !234

.split.us:                                        ; preds = %.lr.ph.i, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %.val.i.i.us.us, %.lr.ph.i.us.us ], [ %.val.i.i, %.lr.ph.i ], !dbg !29641
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #44, !dbg !29641, !noalias !29683
  unreachable, !dbg !29641

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %2, ptr %.sroa.0.0.i4.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i), !dbg !29681, !noalias !29683
  %i.bu = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !29681
  br i1 %i.bu, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1I_E0EB2F_.exit.thread, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.thread.i, !dbg !29684, !prof !249

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.thread.i, %.split10
  %i.bv = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1), !dbg !29604
  %i.bw = bitcast <16 x i1> %i.bv to i16, !dbg !29608
  %i.bx = icmp eq i16 %i.bw, 0, !dbg !29610
  br i1 %i.bx, label %bb.g, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1I_E0EB2F_.exit.thread, !dbg !29610, !prof !261

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i
  %i.by = add i16 %.sroa.05.0.i40.i, -1, !dbg !29686
  %i.bz = and i16 %i.by, %.sroa.05.0.i40.i, !dbg !29688 ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.bz, 0, !dbg !29600
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !29603

bb.g:                                             ; preds = %._crit_edge.i
  %i.ca = add i64 %.sroa.011.0.i.i, 16, !dbg !29612 ; 2 uses
  %i.cb = add i64 %.sroa.01.0.i.i, %i.ca, !dbg !29614
  br label %.split10, !dbg !29615

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1I_E0EB2F_.exit.thread: ; preds = %._crit_edge.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.i, %._crit_edge.i.us, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.i.us.us
  %.sroa.3.0 = phi i64 [ undef, %._crit_edge.i.us ], [ %.val.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.i ], [ %.val.i.i.us.us, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.i.us.us ], [ undef, %._crit_edge.i ], !dbg !29690
  %.sroa.0.0 = phi i64 [ 0, %._crit_edge.i.us ], [ 1, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.i ], [ 1, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17filter_constraint17ColumnConstraintsB1K_E0E0B2H_.exit.i.us.us ], [ 0, %._crit_edge.i ], !dbg !29690
  %i.cc = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !29693
  %i.cd = insertvalue { i64, i64 } %i.cc, i64 %.sroa.3.0, 1, !dbg !29693
  ret { i64, i64 } %i.cd, !dbg !29693
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRbEE12get_index_ofBL_EB1H_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !29694 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !29695
  %i.b = load ptr, ptr %i.a, align 8, !dbg !29695, !nonnull !13, !noundef !13 ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE15retain_in_orderNCINvMs4_NtB7_3mapINtB22_8IndexMapBL_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6retainNCINvMs4_NtB7_3setINtB3y_8IndexSetBL_B2v_E6retainNCNvMs1_NtNtCsfcROwRM8ZtH_11polars_plan3dsl8selectorNtB4k_16DataTypeSelector12into_columnss1_0E0E0EB4o_:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !30574), !dbg !30577
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !30578 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30581), !dbg !30584
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !30585
  %i.j = load i64, ptr %i.i, align 8, !dbg !30585, !alias.scope !30593, !noundef !13 ; 5 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !30594
  br i1 %i.k, label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE18rebuild_hash_tableCsfcROwRM8ZtH_11polars_plan.exit, label %bb.c, !dbg !30594

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !dbg !30595, !alias.scope !30593, !nonnull !13, !noundef !13
  %i.m = add i64 %i.j, 17, !dbg !30597
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 -1, i64 %i.m, i1 false), !dbg !30599, !noalias !30593
  %i.n = icmp ult i64 %i.j, 8, !dbg !30604
  %i.o = add i64 %i.j, 1, !dbg !30604
  %i.p = lshr i64 %i.o, 3, !dbg !30604
  %i.q = mul nuw i64 %i.p, 7, !dbg !30604
  %spec.select.i.i.i4.i.i = select i1 %i.n, i64 %i.j, i64 %i.q, !dbg !30604
  br label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE18rebuild_hash_tableCsfcROwRM8ZtH_11polars_plan.exit, !dbg !30604

_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE18rebuild_hash_tableCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.b, %bb.c
  %i.r = phi i64 [ %spec.select.i.i.i4.i.i, %bb.c ], [ 0, %bb.b ], !dbg !30604
  store i64 0, ptr %i.e, align 8, !dbg !30606, !alias.scope !30593
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !30607
  store i64 %i.r, ptr %i.s, align 8, !dbg !30607, !alias.scope !30593
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30608
  %i.u = load ptr, ptr %i.t, align 8, !dbg !30608, !alias.scope !30574, !nonnull !13, !noundef !13
  call fastcc void @_RINvNtCse4dvU5uQ85g_8indexmap5inner19insert_bulk_no_growNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.u, i64 noundef %i.c), !dbg !30615
  br label %bb.d, !dbg !30577

bb.d:                                             ; preds = %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE18rebuild_hash_tableCsfcROwRM8ZtH_11polars_plan.exit, %bb.a
  ret void, !dbg !30616
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE15retain_in_orderNCINvMs4_NtB7_3mapINtB22_8IndexMapBL_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6retainNCINvMs4_NtB7_3setINtB3y_8IndexSetBL_B2v_E6retainNCNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdownNtB4j_25ProjectionPushdownVisitor8pushdown0E0E0EB4p_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !30617 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  call void @_RINvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE10retain_mutNCINvMs_NtBI_5innerINtB2o_4CoreB1c_uE15retain_in_orderNCINvMs4_NtBI_3mapINtB3h_8IndexMapB1c_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6retainNCINvMs4_NtBI_3setINtB4O_8IndexSetB1c_B3L_E6retainNCNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdownNtB5A_25ProjectionPushdownVisitor8pushdown0E0E0E0EB5G_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !dbg !30618
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !30619
  %i.c = load i64, ptr %i.b, align 8, !dbg !30619, !noundef !13 ; 3 uses
  %i.d = icmp ult i64 %i.c, 288230376151711744, !dbg !30622
  call void @llvm.assume(i1 %i.d), !dbg !30624
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !30625 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !30625, !noundef !13
  %i.g = icmp ult i64 %i.c, %i.f, !dbg !30630
  br i1 %i.g, label %bb.b, label %bb.d, !dbg !30630

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !30631), !dbg !30634
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !30635 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30638), !dbg !30641
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !30642
  %i.j = load i64, ptr %i.i, align 8, !dbg !30642, !alias.scope !30650, !noundef !13 ; 5 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !30651
  br i1 %i.k, label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE18rebuild_hash_tableCsfcROwRM8ZtH_11polars_plan.exit, label %bb.c, !dbg !30651

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !dbg !30652, !alias.scope !30650, !nonnull !13, !noundef !13
  %i.m = add i64 %i.j, 17, !dbg !30654
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 -1, i64 %i.m, i1 false), !dbg !30656, !noalias !30650
  %i.n = icmp ult i64 %i.j, 8, !dbg !30661
  %i.o = add i64 %i.j, 1, !dbg !30661
  %i.p = lshr i64 %i.o, 3, !dbg !30661
  %i.q = mul nuw i64 %i.p, 7, !dbg !30661
  %spec.select.i.i.i4.i.i = select i1 %i.n, i64 %i.j, i64 %i.q, !dbg !30661
  br label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE18rebuild_hash_tableCsfcROwRM8ZtH_11polars_plan.exit, !dbg !30661

_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE18rebuild_hash_tableCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.b, %bb.c
  %i.r = phi i64 [ %spec.select.i.i.i4.i.i, %bb.c ], [ 0, %bb.b ], !dbg !30661
  store i64 0, ptr %i.e, align 8, !dbg !30663, !alias.scope !30650
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !30664
  store i64 %i.r, ptr %i.s, align 8, !dbg !30664, !alias.scope !30650
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30665
  %i.u = load ptr, ptr %i.t, align 8, !dbg !30665, !alias.scope !30631, !nonnull !13, !noundef !13
  call fastcc void @_RINvNtCse4dvU5uQ85g_8indexmap5inner19insert_bulk_no_growNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.u, i64 noundef %i.c), !dbg !30672
  br label %bb.d, !dbg !30634

bb.d:                                             ; preds = %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE18rebuild_hash_tableCsfcROwRM8ZtH_11polars_plan.exit, %bb.a
  ret void, !dbg !30673
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE15retain_in_orderNCINvMs4_NtB7_3mapINtB22_8IndexMapBL_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6retainNCINvMs4_NtB7_3setINtB3y_8IndexSetBL_B2v_E6retainNCNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdownNtB4j_25ProjectionPushdownVisitor8pushdownsw_0E0E0EB4p_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !30674 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  call void @_RINvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE10retain_mutNCINvMs_NtBI_5innerINtB2o_4CoreB1c_uE15retain_in_orderNCINvMs4_NtBI_3mapINtB3h_8IndexMapB1c_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6retainNCINvMs4_NtBI_3setINtB4O_8IndexSetB1c_B3L_E6retainNCNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdownNtB5A_25ProjectionPushdownVisitor8pushdownsw_0E0E0E0EB5G_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !dbg !30675
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !30676
  %i.c = load i64, ptr %i.b, align 8, !dbg !30676, !noundef !13 ; 3 uses
  %i.d = icmp ult i64 %i.c, 288230376151711744, !dbg !30679
  call void @llvm.assume(i1 %i.d), !dbg !30681
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !30682 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !30682, !noundef !13
  %i.g = icmp ult i64 %i.c, %i.f, !dbg !30687
  br i1 %i.g, label %bb.b, label %bb.d, !dbg !30687

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !30688), !dbg !30691
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !30692 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30695), !dbg !30698
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !30699
  %i.j = load i64, ptr %i.i, align 8, !dbg !30699, !alias.scope !30707, !noundef !13 ; 5 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !30708
  br i1 %i.k, label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE18rebuild_hash_tableCsfcROwRM8ZtH_11polars_plan.exit, label %bb.c, !dbg !30708

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !dbg !30709, !alias.scope !30707, !nonnull !13, !noundef !13
  %i.m = add i64 %i.j, 17, !dbg !30711
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 -1, i64 %i.m, i1 false), !dbg !30713, !noalias !30707
  %i.n = icmp ult i64 %i.j, 8, !dbg !30718
  %i.o = add i64 %i.j, 1, !dbg !30718
  %i.p = lshr i64 %i.o, 3, !dbg !30718
  %i.q = mul nuw i64 %i.p, 7, !dbg !30718
  %spec.select.i.i.i4.i.i = select i1 %i.n, i64 %i.j, i64 %i.q, !dbg !30718
  br label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE18rebuild_hash_tableCsfcROwRM8ZtH_11polars_plan.exit, !dbg !30718

_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE18rebuild_hash_tableCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.b, %bb.c
  %i.r = phi i64 [ %spec.select.i.i.i4.i.i, %bb.c ], [ 0, %bb.b ], !dbg !30718
  store i64 0, ptr %i.e, align 8, !dbg !30720, !alias.scope !30707
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !30721
  store i64 %i.r, ptr %i.s, align 8, !dbg !30721, !alias.scope !30707
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30722
  %i.u = load ptr, ptr %i.t, align 8, !dbg !30722, !alias.scope !30688, !nonnull !13, !noundef !13
  call fastcc void @_RINvNtCse4dvU5uQ85g_8indexmap5inner19insert_bulk_no_growNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.u, i64 noundef %i.c), !dbg !30729
  br label %bb.d, !dbg !30691

bb.d:                                             ; preds = %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE18rebuild_hash_tableCsfcROwRM8ZtH_11polars_plan.exit, %bb.a
  ret void, !dbg !30730
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE15retain_in_orderNCINvMs4_NtB7_3mapINtB22_8IndexMapBL_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6retainNCINvMs4_NtB7_3setINtB3y_8IndexSetBL_B2v_E6retainNCNvNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdownNtB4l_25ProjectionPushdownVisitor8pushdown25pushdown_with_added_names0E0E0EB4r_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !30731 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  call void @_RINvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE10retain_mutNCINvMs_NtBI_5innerINtB2o_4CoreB1c_uE15retain_in_orderNCINvMs4_NtBI_3mapINtB3h_8IndexMapB1c_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6retainNCINvMs4_NtBI_3setINtB4O_8IndexSetB1c_B3L_E6retainNCNvNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdownNtB5C_25ProjectionPushdownVisitor8pushdown25pushdown_with_added_names0E0E0E0EB5I_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !dbg !30732
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !30733
  %i.c = load i64, ptr %i.b, align 8, !dbg !30733, !noundef !13 ; 3 uses
  %i.d = icmp ult i64 %i.c, 288230376151711744, !dbg !30736
  call void @llvm.assume(i1 %i.d), !dbg !30738
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !30739 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !30739, !noundef !13
  %i.g = icmp ult i64 %i.c, %i.f, !dbg !30744
  br i1 %i.g, label %bb.b, label %bb.d, !dbg !30744

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !30745), !dbg !30748
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !30749 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30752), !dbg !30755
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !30756
  %i.j = load i64, ptr %i.i, align 8, !dbg !30756, !alias.scope !30764, !noundef !13 ; 5 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !30765
  br i1 %i.k, label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE18rebuild_hash_tableCsfcROwRM8ZtH_11polars_plan.exit, label %bb.c, !dbg !30765

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !dbg !30766, !alias.scope !30764, !nonnull !13, !noundef !13
  %i.m = add i64 %i.j, 17, !dbg !30768
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 -1, i64 %i.m, i1 false), !dbg !30770, !noalias !30764
  %i.n = icmp ult i64 %i.j, 8, !dbg !30775
  %i.o = add i64 %i.j, 1, !dbg !30775
  %i.p = lshr i64 %i.o, 3, !dbg !30775
  %i.q = mul nuw i64 %i.p, 7, !dbg !30775
  %spec.select.i.i.i4.i.i = select i1 %i.n, i64 %i.j, i64 %i.q, !dbg !30775
  br label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE18rebuild_hash_tableCsfcROwRM8ZtH_11polars_plan.exit, !dbg !30775

_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE18rebuild_hash_tableCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.b, %bb.c
  %i.r = phi i64 [ %spec.select.i.i.i4.i.i, %bb.c ], [ 0, %bb.b ], !dbg !30775
  store i64 0, ptr %i.e, align 8, !dbg !30777, !alias.scope !30764
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !30778
  store i64 %i.r, ptr %i.s, align 8, !dbg !30778, !alias.scope !30764
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30779
  %i.u = load ptr, ptr %i.t, align 8, !dbg !30779, !alias.scope !30745, !nonnull !13, !noundef !13
  call fastcc void @_RINvNtCse4dvU5uQ85g_8indexmap5inner19insert_bulk_no_growNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.u, i64 noundef %i.c), !dbg !30786
  br label %bb.d, !dbg !30748

bb.d:                                             ; preds = %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE18rebuild_hash_tableCsfcROwRM8ZtH_11polars_plan.exit, %bb.a
  ret void, !dbg !30787
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE5drainNtNtNtCscgRAwXFJnXP_4core3ops5range9RangeFullECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !30788 {
_RNvMNtCscgRAwXFJnXP_4core5sliceSINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE8split_atCsfcROwRM8ZtH_11polars_plan.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !30789
  %i.b = load i64, ptr %i.a, align 8, !dbg !30789, !noundef !13 ; 6 uses
  %i.c = icmp ult i64 %i.b, 288230376151711744, !dbg !30792
  tail call void @llvm.assume(i1 %i.c), !dbg !30794
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30795), !dbg !30798
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !30800
  %i.e = load ptr, ptr %i.d, align 8, !dbg !30800, !alias.scope !30795, !nonnull !13, !noundef !13
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.b, !dbg !30815
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !30826 ; 3 uses
  %i.h = icmp eq i64 %i.b, 0, !dbg !30835
  br i1 %i.h, label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE13erase_indicesCsfcROwRM8ZtH_11polars_plan.exit, label %bb.a, !dbg !30835

bb.a:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE8split_atCsfcROwRM8ZtH_11polars_plan.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !30837 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !30837, !alias.scope !30795, !noundef !13 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !30826 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !30826, !alias.scope !30795, !noundef !13 ; 5 uses
  %i.m = add i64 %i.l, %i.j, !dbg !30826
  %.not = icmp ult i64 %i.m, 2, !dbg !30838
  br i1 %.not, label %bb.e, label %bb.b, !dbg !30838

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30839), !dbg !30842
  %i.n = icmp eq i64 %i.l, 0, !dbg !30845
  br i1 %i.n, label %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE5clearCsfcROwRM8ZtH_11polars_plan.exit.i, label %bb.c, !dbg !30845

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !30847
  %i.p = load i64, ptr %i.o, align 8, !dbg !30847, !alias.scope !30854, !noundef !13 ; 5 uses
  %i.q = icmp eq i64 %i.p, 0, !dbg !30855
  br i1 %i.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTablejENCNvMs6_B1B_B1y_5clear0EECsfcROwRM8ZtH_11polars_plan.exit5.i.i, label %bb.d, !dbg !30855

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.g, align 8, !dbg !30856, !alias.scope !30854, !nonnull !13, !noundef !13
  %i.s = add i64 %i.p, 17, !dbg !30858
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 -1, i64 %i.s, i1 false), !dbg !30860, !noalias !30854
  %i.t = icmp ult i64 %i.p, 8, !dbg !30865
  %i.u = add i64 %i.p, 1, !dbg !30865
  %i.v = lshr i64 %i.u, 3, !dbg !30865
  %i.w = mul nuw i64 %i.v, 7, !dbg !30865
  %spec.select.i.i.i4.i.i = select i1 %i.t, i64 %i.p, i64 %i.w, !dbg !30865
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTablejENCNvMs6_B1B_B1y_5clear0EECsfcROwRM8ZtH_11polars_plan.exit5.i.i, !dbg !30865

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTablejENCNvMs6_B1B_B1y_5clear0EECsfcROwRM8ZtH_11polars_plan.exit5.i.i: ; preds = %bb.d, %bb.c
  %i.x = phi i64 [ %spec.select.i.i.i4.i.i, %bb.d ], [ 0, %bb.c ], !dbg !30865
  store i64 0, ptr %i.k, align 8, !dbg !30867, !alias.scope !30854
  store i64 %i.x, ptr %i.i, align 8, !dbg !30868, !alias.scope !30854
  br label %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE5clearCsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !30869

_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE5clearCsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTablejENCNvMs6_B1B_B1y_5clear0EECsfcROwRM8ZtH_11polars_plan.exit5.i.i, %bb.b
  tail call fastcc void @_RINvNtCse4dvU5uQ85g_8indexmap5inner19insert_bulk_no_growNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.f, i64 noundef 0), !dbg !30870
  br label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE13erase_indicesCsfcROwRM8ZtH_11polars_plan.exit, !dbg !30870

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30871), !dbg !30874
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30876), !dbg !30879
  %i.y = icmp eq i64 %i.l, 0, !dbg !30884
  br i1 %i.y, label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE13erase_indicesCsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph.i.i, !dbg !30884

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !30889
  %i.aa = load ptr, ptr %i.g, align 8, !dbg !30892, !alias.scope !30894, !noalias !30895, !nonnull !13, !noundef !13 ; 6 uses
  %.val24.i.i.i = load <16 x i8>, ptr %i.aa, align 16, !dbg !30898, !noalias !30901
  %i.ab = icmp sgt <16 x i8> %.val24.i.i.i, splat (i8 -1), !dbg !30902
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !30906
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !30907
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = load i64, ptr %i.z, align 8, !alias.scope !30795
  br label %bb.f, !dbg !30884

bb.f:                                             ; preds = %bb.h, %.lr.ph.i.i
  %3 = phi i64 [ %i.l, %.lr.ph.i.i ], [ %4, %bb.h ] ; 2 uses
  %i.ag = phi i64 [ %i.j, %.lr.ph.i.i ], [ %i.bo, %bb.h ] ; 3 uses
  %.sroa.14.015.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ %i.as, %bb.h ]
  %.sroa.10.014.i.i = phi i16 [ %i.ac, %.lr.ph.i.i ], [ %i.ap, %bb.h ] ; 2 uses
  %.sroa.6.013.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.h ] ; 2 uses
  %.sroa.07.012.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.sroa.07.1.i.i, %bb.h ] ; 2 uses
  %.not11.i.i.i = icmp eq i16 %.sroa.10.014.i.i, 0, !dbg !30909
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsfcROwRM8ZtH_11polars_plan.exit.i.i, !dbg !30913

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %i.ah = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.sroa.6.013.i.i, %bb.f ], !dbg !30914 ; 2 uses
  %i.ai = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.07.012.i.i, %bb.f ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.ah, align 16, !dbg !30915, !noalias !30917
  %i.aj = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1), !dbg !30920
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -128, !dbg !30924 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16, !dbg !30927 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.aj to i16, !dbg !30929 ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0, !dbg !30909
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsfcROwRM8ZtH_11polars_plan.exit.i.i, !dbg !30913

_RINvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.f
  %.sroa.07.1.i.i = phi ptr [ %.sroa.07.012.i.i, %bb.f ], [ %i.ak, %.lr.ph.i.i.i ], !dbg !30906 ; 3 uses
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.013.i.i, %bb.f ], [ %i.al, %.lr.ph.i.i.i ], !dbg !30906
  %.lcssa.i.i.i = phi i16 [ %.sroa.10.014.i.i, %bb.f ], [ %.cast.i.i.i, %.lr.ph.i.i.i ], !dbg !30929 ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i, -1, !dbg !30930
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true), !dbg !30934
  %i.ao = zext nneg i16 %i.an to i64, !dbg !30935
  %i.ap = and i16 %i.am, %.lcssa.i.i.i, !dbg !30936
  %i.aq = sub nsw i64 0, %i.ao, !dbg !30938
  %i.ar = getelementptr inbounds [8 x i8], ptr %.sroa.07.1.i.i, i64 %i.aq, !dbg !30941 ; 2 uses
  %i.as = add i64 %.sroa.14.015.i.i, -1, !dbg !30942 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -8, !dbg !30944 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !dbg !30952, !alias.scope !30955, !noalias !30958, !noundef !13 ; 2 uses
  %.not.i5.i.i = icmp ult i64 %i.au, %i.b, !dbg !30952
  br i1 %.not.i5.i.i, label %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.i.i, label %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i, !dbg !30952

_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i: ; preds = %_RINvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.av = sub nuw i64 %i.au, %i.b, !dbg !30960
  store i64 %i.av, ptr %i.at, align 8, !dbg !30960, !alias.scope !30955, !noalias !30958
  br label %bb.h, !dbg !30961

_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %_RINvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsfcROwRM8ZtH_11polars_plan.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30962), !dbg !30965
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.1.i.i) ]
  %i.aw = ptrtoint ptr %i.ar to i64, !dbg !30968
  %i.ax = sub i64 %i.ae, %i.aw, !dbg !30968
  %i.ay = ashr exact i64 %i.ax, 3, !dbg !30968    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30974), !dbg !30977
  %i.az = add nsw i64 %i.ay, -16, !dbg !30978
  %i.ba = and i64 %i.az, %i.af, !dbg !30981
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ba, !dbg !30982 ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i.i = load <16 x i8>, ptr %i.bb, align 1, !dbg !30985, !noalias !30989
  %i.bc = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i, splat (i8 -1), !dbg !30992
  %i.bd = bitcast <16 x i1> %i.bc to i16, !dbg !30996
  %i.be = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ay, !dbg !30998 ; 2 uses
  %.sroa.0.0.copyload.i926.i.i.i.i = load <16 x i8>, ptr %i.be, align 1, !dbg !31001, !noalias !31005
  %i.bf = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i.i, splat (i8 -1), !dbg !31008
  %i.bg = bitcast <16 x i1> %i.bf to i16, !dbg !31012
  %i.bh = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.bd, i1 false), !dbg !31014
  %i.bi = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 false), !dbg !31017
  %narrow.i.i.i.i = add nuw nsw i16 %i.bi, %i.bh, !dbg !31020
  %i.bj = icmp samesign ugt i16 %narrow.i.i.i.i, 15, !dbg !31020
  br i1 %i.bj, label %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i, label %bb.g, !dbg !31020

bb.g:                                             ; preds = %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.bk = add i64 %i.ag, 1, !dbg !31021           ; 2 uses
  store i64 %i.bk, ptr %i.i, align 8, !dbg !31021, !alias.scope !31022, !noalias !31023
  br label %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i, !dbg !31024

_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %bb.g, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.bl = phi i64 [ %i.bk, %bb.g ], [ %i.ag, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.i.i ]
  %.sroa.0.0.i.i.i.i = phi i8 [ -1, %bb.g ], [ -128, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.i.i ], !dbg !31025 ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.be, align 1, !dbg !31026, !noalias !31028
  %i.bm = getelementptr i8, ptr %i.bb, i64 16, !dbg !31029
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.bm, align 1, !dbg !31032, !noalias !31028
  %i.bn = add i64 %3, -1, !dbg !31033             ; 2 uses
  store i64 %i.bn, ptr %i.k, align 8, !dbg !31033, !alias.scope !31022, !noalias !31023
  br label %bb.h, !dbg !31034

bb.h:                                             ; preds = %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i
  %4 = phi i64 [ %i.bn, %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i ], [ %3, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i ]
  %i.bo = phi i64 [ %i.bl, %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i ], [ %i.ag, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i ]
  %i.bp = icmp eq i64 %i.as, 0, !dbg !30884
  br i1 %i.bp, label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE13erase_indicesCsfcROwRM8ZtH_11polars_plan.exit, label %bb.f, !dbg !30884

_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE13erase_indicesCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.h, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE8split_atCsfcROwRM8ZtH_11polars_plan.exit.i, %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE5clearCsfcROwRM8ZtH_11polars_plan.exit.i, %bb.e
  tail call void @_RINvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE5drainINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 noundef %i.b), !dbg !31035
  ret void, !dbg !31036
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEE12get_index_ofBL_EB2k_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, ptr noalias noundef readonly captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !31037 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31038
  %i.b = load ptr, ptr %i.a, align 8, !dbg !31038, !nonnull !13, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !31051
  %i.d = load i64, ptr %i.c, align 8, !dbg !31051, !noundef !13 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !31052
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31056), !dbg !31059
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31062), !dbg !31065
  %i.f = lshr i64 %1, 57, !dbg !31068
  %i.g = trunc nuw nsw i64 %i.f to i8, !dbg !31071
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !31072
  %i.i = load i64, ptr %i.h, align 8, !dbg !31072, !alias.scope !31074, !noalias !31075, !noundef !13 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !31074, !noalias !31075, !nonnull !13, !noundef !13 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i = load i128, ptr %2, align 1
  br label %bb.b, !dbg !31078

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.011.0.i.i = phi i64 [ 0, %bb.a ], [ %i.ae, %bb.e ], !dbg !31079
  %.pn.i.i = phi i64 [ %1, %bb.a ], [ %i.af, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i, !dbg !31079 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i, !dbg !31080
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.m, align 1, !dbg !31083, !noalias !31087 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.l, !dbg !31090
  %i.o = bitcast <16 x i1> %i.n to i16, !dbg !31093 ; 2 uses
  %.not.i.not38.i = icmp eq i16 %i.o, 0, !dbg !31095
  br i1 %.not.i.not38.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !31098

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.sroa.05.0.i39.i = phi i16 [ %i.ad, %bb.d ], [ %i.o, %bb.b ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i39.i, i1 true), !dbg !31099
  %i.q = zext nneg i16 %i.p to i64, !dbg !31102
  %i.r = add i64 %.sroa.01.0.i.i, %i.q, !dbg !31103
  %i.s = and i64 %i.r, %i.i, !dbg !31103
  %i.t = sub nsw i64 0, %i.s, !dbg !31104
  %i.u = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.t, !dbg !31113
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8, !dbg !31114
  %.val.i.i = load i64, ptr %i.v, align 8, !dbg !31120, !noalias !31121, !noundef !13 ; 4 uses
  %i.w = icmp ult i64 %.val.i.i, %i.d, !dbg !31124
  br i1 %i.w, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEB1K_E0E0B3j_.exit.i, label %bb.c, !dbg !31124

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #44, !dbg !31124, !noalias !31128
  unreachable, !dbg !31124

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEB1K_E0E0B3j_.exit.i: ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.val.i.i, !dbg !31131
  %.val2.i.i.i = load i128, ptr %i.x, align 1, !dbg !31132, !noalias !31128
  %i.y = icmp eq i128 %.val.i.i.i, %.val2.i.i.i, !dbg !31133
  br i1 %i.y, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEB1I_E0EB3h_.exit.thread, label %bb.d, !dbg !31155, !prof !1152

._crit_edge.i:                                    ; preds = %bb.d, %bb.b
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1), !dbg !31157
  %i.aa = bitcast <16 x i1> %i.z to i16, !dbg !31161
  %i.ab = icmp eq i16 %i.aa, 0, !dbg !31163
  br i1 %i.ab, label %bb.e, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEB1I_E0EB3h_.exit.thread, !dbg !31163, !prof !261

bb.d:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEB1K_E0E0B3j_.exit.i
  %i.ac = add i16 %.sroa.05.0.i39.i, -1, !dbg !31165
  %i.ad = and i16 %i.ac, %.sroa.05.0.i39.i, !dbg !31167 ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ad, 0, !dbg !31095
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !31098

bb.e:                                             ; preds = %._crit_edge.i
  %i.ae = add i64 %.sroa.011.0.i.i, 16, !dbg !31169 ; 2 uses
  %i.af = add i64 %.sroa.01.0.i.i, %i.ae, !dbg !31171
  br label %bb.b, !dbg !31078

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEB1I_E0EB3h_.exit.thread: ; preds = %._crit_edge.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEB1K_E0E0B3j_.exit.i
  %.sroa.3.0 = phi i64 [ %.val.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEB1K_E0E0B3j_.exit.i ], [ undef, %._crit_edge.i ], !dbg !31172
  %.sroa.0.0 = phi i64 [ 1, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEB1K_E0E0B3j_.exit.i ], [ 0, %._crit_edge.i ], !dbg !31172
  %i.ag = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !31175
  %i.ah = insertvalue { i64, i64 } %i.ag, i64 %.sroa.3.0, 1, !dbg !31175
  ret { i64, i64 } %i.ah, !dbg !31175
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdINtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer12ir_traversal16IRCacheNodeVisitjEE12get_index_ofBL_EB1J_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, ptr noalias noundef readonly captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !31176 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31177
  %i.b = load ptr, ptr %i.a, align 8, !dbg !31177, !nonnull !13, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !31190
  %i.d = load i64, ptr %i.c, align 8, !dbg !31190, !noundef !13 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !31191
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31195), !dbg !31198
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31201), !dbg !31204
  %i.f = lshr i64 %1, 57, !dbg !31207
  %i.g = trunc nuw nsw i64 %i.f to i8, !dbg !31210
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !31211
  %i.i = load i64, ptr %i.h, align 8, !dbg !31211, !alias.scope !31213, !noalias !31214, !noundef !13 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !31213, !noalias !31214, !nonnull !13, !noundef !13 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i = load i128, ptr %2, align 1
  br label %bb.b, !dbg !31217

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.011.0.i.i = phi i64 [ 0, %bb.a ], [ %i.ae, %bb.e ], !dbg !31218
  %.pn.i.i = phi i64 [ %1, %bb.a ], [ %i.af, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i, !dbg !31218 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i, !dbg !31219
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.m, align 1, !dbg !31222, !noalias !31226 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.l, !dbg !31229
  %i.o = bitcast <16 x i1> %i.n to i16, !dbg !31232 ; 2 uses
  %.not.i.not38.i = icmp eq i16 %i.o, 0, !dbg !31234
  br i1 %.not.i.not38.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !31237

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.sroa.05.0.i39.i = phi i16 [ %i.ad, %bb.d ], [ %i.o, %bb.b ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i39.i, i1 true), !dbg !31238
  %i.q = zext nneg i16 %i.p to i64, !dbg !31241
  %i.r = add i64 %.sroa.01.0.i.i, %i.q, !dbg !31242
  %i.s = and i64 %i.r, %i.i, !dbg !31242
  %i.t = sub nsw i64 0, %i.s, !dbg !31243
  %i.u = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.t, !dbg !31252
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8, !dbg !31253
  %.val.i.i = load i64, ptr %i.v, align 8, !dbg !31259, !noalias !31260, !noundef !13 ; 4 uses
  %i.w = icmp ult i64 %.val.i.i, %i.d, !dbg !31263
  br i1 %i.w, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdINtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer12ir_traversal16IRCacheNodeVisitjEB1K_E0E0B2I_.exit.i, label %bb.c, !dbg !31263

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #44, !dbg !31263, !noalias !31267
  unreachable, !dbg !31263

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdINtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer12ir_traversal16IRCacheNodeVisitjEB1K_E0E0B2I_.exit.i: ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.val.i.i, !dbg !31270
  %.val2.i.i.i = load i128, ptr %i.x, align 1, !dbg !31271, !noalias !31267
  %i.y = icmp eq i128 %.val.i.i.i, %.val2.i.i.i, !dbg !31272
  br i1 %i.y, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdINtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer12ir_traversal16IRCacheNodeVisitjEB1I_E0EB2G_.exit.thread, label %bb.d, !dbg !31278, !prof !1152

._crit_edge.i:                                    ; preds = %bb.d, %bb.b
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1), !dbg !31280
  %i.aa = bitcast <16 x i1> %i.z to i16, !dbg !31284
  %i.ab = icmp eq i16 %i.aa, 0, !dbg !31286
  br i1 %i.ab, label %bb.e, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdINtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer12ir_traversal16IRCacheNodeVisitjEB1I_E0EB2G_.exit.thread, !dbg !31286, !prof !261

bb.d:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdINtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer12ir_traversal16IRCacheNodeVisitjEB1K_E0E0B2I_.exit.i
  %i.ac = add i16 %.sroa.05.0.i39.i, -1, !dbg !31288
  %i.ad = and i16 %i.ac, %.sroa.05.0.i39.i, !dbg !31290 ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ad, 0, !dbg !31234
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !31237

bb.e:                                             ; preds = %._crit_edge.i
  %i.ae = add i64 %.sroa.011.0.i.i, 16, !dbg !31292 ; 2 uses
  %i.af = add i64 %.sroa.01.0.i.i, %i.ae, !dbg !31294
  br label %bb.b, !dbg !31217

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdINtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer12ir_traversal16IRCacheNodeVisitjEB1I_E0EB2G_.exit.thread: ; preds = %._crit_edge.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdINtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer12ir_traversal16IRCacheNodeVisitjEB1K_E0E0B2I_.exit.i
  %.sroa.3.0 = phi i64 [ %.val.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdINtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer12ir_traversal16IRCacheNodeVisitjEB1K_E0E0B2I_.exit.i ], [ undef, %._crit_edge.i ], !dbg !31295
  %.sroa.0.0 = phi i64 [ 1, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdINtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer12ir_traversal16IRCacheNodeVisitjEB1K_E0E0B2I_.exit.i ], [ 0, %._crit_edge.i ], !dbg !31295
  %i.ag = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !31298
  %i.ah = insertvalue { i64, i64 } %i.ag, i64 %.sroa.3.0, 1, !dbg !31298
  ret { i64, i64 } %i.ah, !dbg !31298
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtBP_5arena4NodeE12get_index_ofBL_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, ptr noalias noundef readonly captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !31299 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31300
  %i.b = load ptr, ptr %i.a, align 8, !dbg !31300, !nonnull !13, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !31313
  %i.d = load i64, ptr %i.c, align 8, !dbg !31313, !noundef !13 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !31314
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31318), !dbg !31321
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31324), !dbg !31327
  %i.f = lshr i64 %1, 57, !dbg !31330
  %i.g = trunc nuw nsw i64 %i.f to i8, !dbg !31333
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !31334
  %i.i = load i64, ptr %i.h, align 8, !dbg !31334, !alias.scope !31336, !noalias !31337, !noundef !13 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !31336, !noalias !31337, !nonnull !13, !noundef !13 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i = load i128, ptr %2, align 1
  br label %bb.b, !dbg !31340

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.011.0.i.i = phi i64 [ 0, %bb.a ], [ %i.ae, %bb.e ], !dbg !31341
  %.pn.i.i = phi i64 [ %1, %bb.a ], [ %i.af, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i, !dbg !31341 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i, !dbg !31342
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.m, align 1, !dbg !31345, !noalias !31349 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.l, !dbg !31352
  %i.o = bitcast <16 x i1> %i.n to i16, !dbg !31355 ; 2 uses
  %.not.i.not38.i = icmp eq i16 %i.o, 0, !dbg !31357
  br i1 %.not.i.not38.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !31360

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.sroa.05.0.i39.i = phi i16 [ %i.ad, %bb.d ], [ %i.o, %bb.b ] ; 3 uses
end_hunk_2
begin_hunk_3_@_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruE12get_index_ofBM_ECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.at = icmp eq i64 %i.t, %.sroa.01.0.i3.i.i.i.i.us.us, !dbg !32823
  br i1 %i.at, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1L_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i.us.us, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1L_E0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.us.us, !dbg !32823, !prof !234

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1L_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i.us.us: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i.us.us
  %bcmp.i.i.i.i.i.us.us = tail call i32 @bcmp(ptr %i.r, ptr %.sroa.0.0.i4.i.i.i.i.us.us, i64 %i.t), !dbg !32828, !noalias !32792
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i.us.us, 0, !dbg !32828
  br i1 %i.au, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1J_E0ECsfcROwRM8ZtH_11polars_plan.exit.thread, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1L_E0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.us.us, !dbg !32830, !prof !249

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1L_E0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.us.us: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1L_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i.us.us, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i.us.us
  %i.av = add i16 %.sroa.05.0.i40.i.us.us, -1, !dbg !32832
  %i.aw = and i16 %i.av, %.sroa.05.0.i40.i.us.us, !dbg !32834 ; 2 uses
  %.not.i.not.i.us.us = icmp eq i16 %i.aw, 0, !dbg !32745
  br i1 %.not.i.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us, !dbg !32748

.split10:                                         ; preds = %bb.a, %bb.g
  %.sroa.011.0.i.i = phi i64 [ %i.by, %bb.g ], [ 0, %bb.a ], !dbg !32729
  %.pn.i.i = phi i64 [ %i.bz, %bb.g ], [ %1, %bb.a ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i, !dbg !32729 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i, !dbg !32730
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.ax, align 1, !dbg !32733, !noalias !32737 ; 2 uses
  %i.ay = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.l, !dbg !32740
  %i.az = bitcast <16 x i1> %i.ay to i16, !dbg !32743 ; 2 uses
  %.not.i.not39.i = icmp eq i16 %i.az, 0, !dbg !32745
  br i1 %.not.i.not39.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !32748

.lr.ph.i:                                         ; preds = %.split10, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1L_E0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i
  %.sroa.05.0.i40.i = phi i16 [ %i.bx, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1L_E0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i ], [ %i.az, %.split10 ] ; 3 uses
  %i.ba = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i40.i, i1 true), !dbg !32761
  %i.bb = zext nneg i16 %i.ba to i64, !dbg !32764
  %i.bc = add i64 %.sroa.01.0.i.i, %i.bb, !dbg !32765
  %i.bd = and i64 %i.bc, %i.i, !dbg !32765
  %i.be = sub nsw i64 0, %i.bd, !dbg !32766
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.be, !dbg !32775
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8, !dbg !32776
  %.val.i.i = load i64, ptr %i.bg, align 8, !dbg !32782, !noalias !32783, !noundef !13 ; 4 uses
  %i.bh = icmp ult i64 %.val.i.i, %i.d, !dbg !32786
  br i1 %i.bh, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i, label %.split.us, !dbg !32786

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.val.i.i, !dbg !32790
  %.val.i.i.i = load ptr, ptr %i.bi, align 8, !dbg !32791, !noalias !32792, !nonnull !13, !align !478, !noundef !13 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 23, !dbg !32795
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !32795, !range !188, !alias.scope !32805, !noalias !32808, !noundef !13 ; 2 uses
  %i.bl = icmp ugt i8 %i.bk, -41, !dbg !32811
  br i1 %i.bl, label %bb.f, label %bb.e, !dbg !32811

bb.e:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i
  %i.bm = add i8 %i.bk, 64, !dbg !32812
  %i.bn = tail call i8 @llvm.umin.i8(i8 %i.bm, i8 24), !dbg !32814
  %.sroa.0.0.i.i2.i.i.i.i = zext nneg i8 %i.bn to i64, !dbg !32814
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i, !dbg !32817

bb.f:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i
  %i.bo = load ptr, ptr %.val.i.i.i, align 8, !dbg !32818, !alias.scope !32805, !noalias !32808, !noundef !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8, !dbg !32819
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !32819, !alias.scope !32805, !noalias !32808, !noundef !13
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i, !dbg !32820

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.01.0.i3.i.i.i.i = phi i64 [ %i.bq, %bb.f ], [ %.sroa.0.0.i.i2.i.i.i.i, %bb.e ], !dbg !32821
  %.sroa.0.0.i4.i.i.i.i = phi ptr [ %i.bo, %bb.f ], [ %.val.i.i.i, %bb.e ], !dbg !32822
  %i.br = icmp eq i64 %.sroa.01.0.i3.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i, !dbg !32823
  br i1 %i.br, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1L_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1L_E0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i, !dbg !32823, !prof !234

.split.us:                                        ; preds = %.lr.ph.i, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %.val.i.i.us.us, %.lr.ph.i.us.us ], [ %.val.i.i, %.lr.ph.i ], !dbg !32786
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #44, !dbg !32786, !noalias !32792
  unreachable, !dbg !32786

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1L_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %2, ptr %.sroa.0.0.i4.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i), !dbg !32828, !noalias !32792
  %i.bs = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !32828
  br i1 %i.bs, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1J_E0ECsfcROwRM8ZtH_11polars_plan.exit.thread, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1L_E0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i, !dbg !32830, !prof !249

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1L_E0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i, %.split10
  %i.bt = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1), !dbg !32749
  %i.bu = bitcast <16 x i1> %i.bt to i16, !dbg !32753
  %i.bv = icmp eq i16 %i.bu, 0, !dbg !32755
  br i1 %i.bv, label %bb.g, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1J_E0ECsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !32755, !prof !261

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1L_E0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1L_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i
  %i.bw = add i16 %.sroa.05.0.i40.i, -1, !dbg !32832
  %i.bx = and i16 %i.bw, %.sroa.05.0.i40.i, !dbg !32834 ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.bx, 0, !dbg !32745
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !32748

bb.g:                                             ; preds = %._crit_edge.i
  %i.by = add i64 %.sroa.011.0.i.i, 16, !dbg !32757 ; 2 uses
  %i.bz = add i64 %.sroa.01.0.i.i, %i.by, !dbg !32759
  br label %.split10, !dbg !32760

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1J_E0ECsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %._crit_edge.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1L_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %._crit_edge.i.us, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1L_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i.us.us
  %.sroa.3.0 = phi i64 [ undef, %._crit_edge.i.us ], [ %.val.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1L_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ], [ %.val.i.i.us.us, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1L_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i.us.us ], [ undef, %._crit_edge.i ], !dbg !32836
  %.sroa.0.0 = phi i64 [ 0, %._crit_edge.i.us ], [ 1, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1L_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ], [ 1, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruB1L_E0E0CsfcROwRM8ZtH_11polars_plan.exit.i.us.us ], [ 0, %._crit_edge.i ], !dbg !32836
  %i.ca = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !32839
  %i.cb = insertvalue { i64, i64 } %i.ca, i64 %.sroa.3.0, 1, !dbg !32839
  ret { i64, i64 } %i.cb, !dbg !32839
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreReINtNtB7_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE12get_index_ofeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !32840 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !32841
  %i.b = load ptr, ptr %i.a, align 8, !dbg !32841, !nonnull !13, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !32854
  %i.d = load i64, ptr %i.c, align 8, !dbg !32854, !noundef !13 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !32855
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32859), !dbg !32862
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32865), !dbg !32868
  %i.f = lshr i64 %1, 57, !dbg !32871
  %i.g = trunc nuw nsw i64 %i.f to i8, !dbg !32874
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !32875
  %i.i = load i64, ptr %i.h, align 8, !dbg !32875, !alias.scope !32877, !noalias !32878, !noundef !13 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !32877, !noalias !32878, !nonnull !13, !noundef !13 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b, !dbg !32881

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.011.0.i.i = phi i64 [ 0, %bb.a ], [ %i.ah, %bb.e ], !dbg !32882
  %.pn.i.i = phi i64 [ %1, %bb.a ], [ %i.ai, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i, !dbg !32882 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i, !dbg !32883
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.m, align 1, !dbg !32886, !noalias !32890 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.l, !dbg !32893
  %i.o = bitcast <16 x i1> %i.n to i16, !dbg !32896 ; 2 uses
  %.not.i.not39.i = icmp eq i16 %i.o, 0, !dbg !32898
  br i1 %.not.i.not39.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !32901

.lr.ph.i:                                         ; preds = %bb.b, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReINtNtB15_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i
  %.sroa.05.0.i40.i = phi i16 [ %i.ag, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReINtNtB15_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i ], [ %i.o, %bb.b ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i40.i, i1 true), !dbg !32902
  %i.q = zext nneg i16 %i.p to i64, !dbg !32905
  %i.r = add i64 %.sroa.01.0.i.i, %i.q, !dbg !32906
  %i.s = and i64 %i.r, %i.i, !dbg !32906
  %i.t = sub nsw i64 0, %i.s, !dbg !32907
  %i.u = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.t, !dbg !32916
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8, !dbg !32917
  %.val.i.i = load i64, ptr %i.v, align 8, !dbg !32923, !noalias !32924, !noundef !13 ; 4 uses
  %i.w = icmp ult i64 %.val.i.i, %i.d, !dbg !32927
  br i1 %i.w, label %bb.c, label %bb.d, !dbg !32927

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw [88 x i8], ptr %i.b, i64 %.val.i.i, !dbg !32931 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 72, !dbg !32932
  %.val2.i.i.i = load i64, ptr %i.y, align 8, !dbg !32932, !noalias !32933, !noundef !13
  %i.z = icmp eq i64 %3, %.val2.i.i.i, !dbg !32936
  br i1 %i.z, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReINtNtB15_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReINtNtB15_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i, !dbg !32936, !prof !234

bb.d:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #44, !dbg !32927, !noalias !32933
  unreachable, !dbg !32927

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReINtNtB15_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 64, !dbg !32931
  %.val.i.i.i = load ptr, ptr %i.aa, align 8, !dbg !32932, !noalias !32933, !nonnull !13, !noundef !13
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %.val.i.i.i, i64 %3), !dbg !32942, !alias.scope !32944, !noalias !32933
  %i.ab = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !32942
  br i1 %i.ab, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReINtNtB13_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEeE0ECsfcROwRM8ZtH_11polars_plan.exit.thread, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReINtNtB15_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i, !dbg !32948, !prof !249

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReINtNtB15_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i, %bb.b
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1), !dbg !32950
  %i.ad = bitcast <16 x i1> %i.ac to i16, !dbg !32954
  %i.ae = icmp eq i16 %i.ad, 0, !dbg !32956
  br i1 %i.ae, label %bb.e, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReINtNtB13_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEeE0ECsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !32956, !prof !261

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReINtNtB15_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReINtNtB15_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.c
  %i.af = add i16 %.sroa.05.0.i40.i, -1, !dbg !32958
  %i.ag = and i16 %i.af, %.sroa.05.0.i40.i, !dbg !32960 ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ag, 0, !dbg !32898
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !32901

bb.e:                                             ; preds = %._crit_edge.i
  %i.ah = add i64 %.sroa.011.0.i.i, 16, !dbg !32962 ; 2 uses
  %i.ai = add i64 %.sroa.01.0.i.i, %i.ah, !dbg !32964
  br label %bb.b, !dbg !32881

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReINtNtB13_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEeE0ECsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %._crit_edge.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReINtNtB15_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.i
  %.sroa.3.0 = phi i64 [ %.val.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReINtNtB15_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.i ], [ undef, %._crit_edge.i ], !dbg !32965
  %.sroa.0.0 = phi i64 [ 1, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReINtNtB15_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.i ], [ 0, %._crit_edge.i ], !dbg !32965
  %i.aj = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !32968
  %i.ak = insertvalue { i64, i64 } %i.aj, i64 %.sroa.3.0, 1, !dbg !32968
  ret { i64, i64 } %i.ak, !dbg !32968
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreReINtNtB7_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE5drainNtNtNtCscgRAwXFJnXP_4core3ops5range9RangeFullECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !32969 {
_RNvMNtCscgRAwXFJnXP_4core5sliceSINtCse4dvU5uQ85g_8indexmap6BucketReINtNtBx_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE8split_atCsfcROwRM8ZtH_11polars_plan.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !32970
  %i.b = load i64, ptr %i.a, align 8, !dbg !32970, !noundef !13 ; 5 uses
  %i.c = icmp ult i64 %i.b, 104811045873349726, !dbg !32973
  tail call void @llvm.assume(i1 %i.c), !dbg !32975
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32976), !dbg !32979
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !32981 ; 2 uses
  %i.e = icmp eq i64 %i.b, 0, !dbg !32992
  br i1 %i.e, label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreReINtNtB6_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE13erase_indicesCsfcROwRM8ZtH_11polars_plan.exit, label %bb.a, !dbg !32992

bb.a:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtCse4dvU5uQ85g_8indexmap6BucketReINtNtBx_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE8split_atCsfcROwRM8ZtH_11polars_plan.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !32994 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !32994, !alias.scope !32976, !noundef !13 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !32981 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !32981, !alias.scope !32976, !noundef !13 ; 5 uses
  %i.j = add i64 %i.i, %i.g, !dbg !32981
  %.not = icmp ult i64 %i.j, 2, !dbg !32995
  br i1 %.not, label %bb.e, label %bb.b, !dbg !32995

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32996), !dbg !32999
  %i.k = icmp eq i64 %i.i, 0, !dbg !33002
  br i1 %i.k, label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreReINtNtB6_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE13erase_indicesCsfcROwRM8ZtH_11polars_plan.exit, label %bb.c, !dbg !33002

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !33004
  %i.m = load i64, ptr %i.l, align 8, !dbg !33004, !alias.scope !33011, !noundef !13 ; 5 uses
  %i.n = icmp eq i64 %i.m, 0, !dbg !33012
  br i1 %i.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTablejENCNvMs6_B1B_B1y_5clear0EECsfcROwRM8ZtH_11polars_plan.exit5.i.i, label %bb.d, !dbg !33012

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.d, align 8, !dbg !33013, !alias.scope !33011, !nonnull !13, !noundef !13
  %i.p = add i64 %i.m, 17, !dbg !33015
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.o, i8 -1, i64 %i.p, i1 false), !dbg !33017, !noalias !33011
  %i.q = icmp ult i64 %i.m, 8, !dbg !33022
  %i.r = add i64 %i.m, 1, !dbg !33022
  %i.s = lshr i64 %i.r, 3, !dbg !33022
  %i.t = mul nuw i64 %i.s, 7, !dbg !33022
  %spec.select.i.i.i4.i.i = select i1 %i.q, i64 %i.m, i64 %i.t, !dbg !33022
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTablejENCNvMs6_B1B_B1y_5clear0EECsfcROwRM8ZtH_11polars_plan.exit5.i.i, !dbg !33022

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTablejENCNvMs6_B1B_B1y_5clear0EECsfcROwRM8ZtH_11polars_plan.exit5.i.i: ; preds = %bb.d, %bb.c
  %i.u = phi i64 [ %spec.select.i.i.i4.i.i, %bb.d ], [ 0, %bb.c ], !dbg !33022
  store i64 0, ptr %i.h, align 8, !dbg !33024, !alias.scope !33011
  store i64 %i.u, ptr %i.f, align 8, !dbg !33025, !alias.scope !33011
  br label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreReINtNtB6_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE13erase_indicesCsfcROwRM8ZtH_11polars_plan.exit, !dbg !33026

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33027), !dbg !33030
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33032), !dbg !33035
  %i.v = icmp eq i64 %i.i, 0, !dbg !33040
  br i1 %i.v, label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreReINtNtB6_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE13erase_indicesCsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph.i11.i, !dbg !33040

.lr.ph.i11.i:                                     ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !33045
  %i.x = load ptr, ptr %i.d, align 8, !dbg !33048, !alias.scope !33050, !noalias !33051, !nonnull !13, !noundef !13 ; 6 uses
  %.val24.i.i.i = load <16 x i8>, ptr %i.x, align 16, !dbg !33054, !noalias !33057
  %i.y = icmp sgt <16 x i8> %.val24.i.i.i, splat (i8 -1), !dbg !33058
  %i.z = bitcast <16 x i1> %i.y to i16, !dbg !33062
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !33063
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = load i64, ptr %i.w, align 8, !alias.scope !32976
  br label %bb.f, !dbg !33040

bb.f:                                             ; preds = %bb.h, %.lr.ph.i11.i
  %3 = phi i64 [ %i.i, %.lr.ph.i11.i ], [ %4, %bb.h ] ; 2 uses
  %i.ad = phi i64 [ %i.g, %.lr.ph.i11.i ], [ %i.bl, %bb.h ] ; 3 uses
  %.sroa.14.015.i.i = phi i64 [ %i.i, %.lr.ph.i11.i ], [ %i.ap, %bb.h ]
  %.sroa.10.014.i.i = phi i16 [ %i.z, %.lr.ph.i11.i ], [ %i.am, %bb.h ] ; 2 uses
  %.sroa.6.013.i.i = phi ptr [ %i.aa, %.lr.ph.i11.i ], [ %.sroa.6.1.i.i, %bb.h ] ; 2 uses
  %.sroa.07.012.i.i = phi ptr [ %i.x, %.lr.ph.i11.i ], [ %.sroa.07.1.i.i, %bb.h ] ; 2 uses
  %.not11.i.i.i = icmp eq i16 %.sroa.10.014.i.i, 0, !dbg !33065
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsfcROwRM8ZtH_11polars_plan.exit.i.i, !dbg !33069

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %i.ae = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.sroa.6.013.i.i, %bb.f ], !dbg !33070 ; 2 uses
  %i.af = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.sroa.07.012.i.i, %bb.f ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.ae, align 16, !dbg !33071, !noalias !33073
  %i.ag = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1), !dbg !33076
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -128, !dbg !33080 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !33083 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ag to i16, !dbg !33085 ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0, !dbg !33065
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsfcROwRM8ZtH_11polars_plan.exit.i.i, !dbg !33069

_RINvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.f
  %.sroa.07.1.i.i = phi ptr [ %.sroa.07.012.i.i, %bb.f ], [ %i.ah, %.lr.ph.i.i.i ], !dbg !33062 ; 3 uses
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.013.i.i, %bb.f ], [ %i.ai, %.lr.ph.i.i.i ], !dbg !33062
  %.lcssa.i.i.i = phi i16 [ %.sroa.10.014.i.i, %bb.f ], [ %.cast.i.i.i, %.lr.ph.i.i.i ], !dbg !33085 ; 3 uses
  %i.aj = add i16 %.lcssa.i.i.i, -1, !dbg !33086
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true), !dbg !33090
  %i.al = zext nneg i16 %i.ak to i64, !dbg !33091
  %i.am = and i16 %i.aj, %.lcssa.i.i.i, !dbg !33092
  %i.an = sub nsw i64 0, %i.al, !dbg !33094
  %i.ao = getelementptr inbounds [8 x i8], ptr %.sroa.07.1.i.i, i64 %i.an, !dbg !33097 ; 2 uses
  %i.ap = add i64 %.sroa.14.015.i.i, -1, !dbg !33098 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -8, !dbg !33100 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !33108, !alias.scope !33111, !noalias !33114, !noundef !13 ; 2 uses
  %.not.i5.i.i = icmp ult i64 %i.ar, %i.b, !dbg !33108
  br i1 %.not.i5.i.i, label %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreReINtNtB8_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.i.i, label %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreReINtNtB8_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i, !dbg !33108

_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreReINtNtB8_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i: ; preds = %_RINvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.as = sub nuw i64 %i.ar, %i.b, !dbg !33116
  store i64 %i.as, ptr %i.aq, align 8, !dbg !33116, !alias.scope !33111, !noalias !33114
  br label %bb.h, !dbg !33117

_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreReINtNtB8_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %_RINvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsfcROwRM8ZtH_11polars_plan.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33118), !dbg !33121
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.1.i.i) ]
  %i.at = ptrtoint ptr %i.ao to i64, !dbg !33124
  %i.au = sub i64 %i.ab, %i.at, !dbg !33124
  %i.av = ashr exact i64 %i.au, 3, !dbg !33124    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33130), !dbg !33133
  %i.aw = add nsw i64 %i.av, -16, !dbg !33134
  %i.ax = and i64 %i.aw, %i.ac, !dbg !33137
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ax, !dbg !33138 ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i.i = load <16 x i8>, ptr %i.ay, align 1, !dbg !33141, !noalias !33145
  %i.az = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i, splat (i8 -1), !dbg !33148
  %i.ba = bitcast <16 x i1> %i.az to i16, !dbg !33152
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.av, !dbg !33154 ; 2 uses
  %.sroa.0.0.copyload.i926.i.i.i.i = load <16 x i8>, ptr %i.bb, align 1, !dbg !33157, !noalias !33161
  %i.bc = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i.i, splat (i8 -1), !dbg !33164
  %i.bd = bitcast <16 x i1> %i.bc to i16, !dbg !33168
  %i.be = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ba, i1 false), !dbg !33170
  %i.bf = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bd, i1 false), !dbg !33173
  %narrow.i.i.i.i = add nuw nsw i16 %i.bf, %i.be, !dbg !33176
  %i.bg = icmp samesign ugt i16 %narrow.i.i.i.i, 15, !dbg !33176
  br i1 %i.bg, label %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i, label %bb.g, !dbg !33176

bb.g:                                             ; preds = %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreReINtNtB8_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.bh = add i64 %i.ad, 1, !dbg !33177           ; 2 uses
  store i64 %i.bh, ptr %i.f, align 8, !dbg !33177, !alias.scope !33178, !noalias !33179
  br label %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i, !dbg !33180

_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %bb.g, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreReINtNtB8_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.bi = phi i64 [ %i.bh, %bb.g ], [ %i.ad, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreReINtNtB8_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.i.i ]
  %.sroa.0.0.i.i.i12.i = phi i8 [ -1, %bb.g ], [ -128, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreReINtNtB8_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.i.i ], !dbg !33181 ; 2 uses
  store i8 %.sroa.0.0.i.i.i12.i, ptr %i.bb, align 1, !dbg !33182, !noalias !33184
  %i.bj = getelementptr i8, ptr %i.ay, i64 16, !dbg !33185
  store i8 %.sroa.0.0.i.i.i12.i, ptr %i.bj, align 1, !dbg !33188, !noalias !33184
  %i.bk = add i64 %3, -1, !dbg !33189             ; 2 uses
  store i64 %i.bk, ptr %i.h, align 8, !dbg !33189, !alias.scope !33178, !noalias !33179
  br label %bb.h, !dbg !33190

bb.h:                                             ; preds = %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreReINtNtB8_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i
  %4 = phi i64 [ %i.bk, %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i ], [ %3, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreReINtNtB8_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i ]
  %i.bl = phi i64 [ %i.bi, %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsfcROwRM8ZtH_11polars_plan.exit.i.i ], [ %i.ad, %_RNCNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB6_4CoreReINtNtB8_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE13erase_indices0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i ]
  %i.bm = icmp eq i64 %i.ap, 0, !dbg !33040
  br i1 %i.bm, label %_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreReINtNtB6_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE13erase_indicesCsfcROwRM8ZtH_11polars_plan.exit, label %bb.f, !dbg !33040

_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreReINtNtB6_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE13erase_indicesCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.h, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTablejENCNvMs6_B1B_B1y_5clear0EECsfcROwRM8ZtH_11polars_plan.exit5.i.i, %bb.b, %_RNvMNtCscgRAwXFJnXP_4core5sliceSINtCse4dvU5uQ85g_8indexmap6BucketReINtNtBx_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE8split_atCsfcROwRM8ZtH_11polars_plan.exit.i, %bb.e
  tail call void @_RINvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketReINtNtBI_3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE5drainINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 noundef %i.b), !dbg !33191
  ret void, !dbg !33192
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreReNtNtCs2mZqlW55729_12polars_utils5arena4NodeE12get_index_ofeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !33193 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33194
  %i.b = load ptr, ptr %i.a, align 8, !dbg !33194, !nonnull !13, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !33207
  %i.d = load i64, ptr %i.c, align 8, !dbg !33207, !noundef !13 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !33208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33212), !dbg !33215
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33218), !dbg !33221
  %i.f = lshr i64 %1, 57, !dbg !33224
  %i.g = trunc nuw nsw i64 %i.f to i8, !dbg !33227
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !33228
  %i.i = load i64, ptr %i.h, align 8, !dbg !33228, !alias.scope !33230, !noalias !33231, !noundef !13 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !33230, !noalias !33231, !nonnull !13, !noundef !13 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b, !dbg !33234

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.011.0.i.i = phi i64 [ 0, %bb.a ], [ %i.ag, %bb.e ], !dbg !33235
  %.pn.i.i = phi i64 [ %1, %bb.a ], [ %i.ah, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i, !dbg !33235 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i, !dbg !33236
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.m, align 1, !dbg !33239, !noalias !33243 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.l, !dbg !33246
  %i.o = bitcast <16 x i1> %i.n to i16, !dbg !33249 ; 2 uses
  %.not.i.not39.i = icmp eq i16 %i.o, 0, !dbg !33251
  br i1 %.not.i.not39.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !33254

.lr.ph.i:                                         ; preds = %bb.b, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReNtNtCs2mZqlW55729_12polars_utils5arena4NodeeE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i
  %.sroa.05.0.i40.i = phi i16 [ %i.af, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReNtNtCs2mZqlW55729_12polars_utils5arena4NodeeE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i ], [ %i.o, %bb.b ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i40.i, i1 true), !dbg !33255
  %i.q = zext nneg i16 %i.p to i64, !dbg !33258
  %i.r = add i64 %.sroa.01.0.i.i, %i.q, !dbg !33259
  %i.s = and i64 %i.r, %i.i, !dbg !33259
  %i.t = sub nsw i64 0, %i.s, !dbg !33260
  %i.u = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.t, !dbg !33269
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8, !dbg !33270
  %.val.i.i = load i64, ptr %i.v, align 8, !dbg !33276, !noalias !33277, !noundef !13 ; 4 uses
  %i.w = icmp ult i64 %.val.i.i, %i.d, !dbg !33280
  br i1 %i.w, label %bb.c, label %bb.d, !dbg !33280

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.val.i.i, !dbg !33284 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8, !dbg !33285
  %.val2.i.i.i = load i64, ptr %i.y, align 8, !dbg !33285, !noalias !33286, !noundef !13
  %i.z = icmp eq i64 %3, %.val2.i.i.i, !dbg !33289
  br i1 %i.z, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReNtNtCs2mZqlW55729_12polars_utils5arena4NodeeE0E0CsfcROwRM8ZtH_11polars_plan.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReNtNtCs2mZqlW55729_12polars_utils5arena4NodeeE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i, !dbg !33289, !prof !234

bb.d:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #44, !dbg !33280, !noalias !33286
  unreachable, !dbg !33280

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReNtNtCs2mZqlW55729_12polars_utils5arena4NodeeE0E0CsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.c
  %.val.i.i.i = load ptr, ptr %i.x, align 8, !dbg !33285, !noalias !33286, !nonnull !13, !noundef !13
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %.val.i.i.i, i64 %3), !dbg !33294, !alias.scope !33296, !noalias !33286
  %i.aa = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !33294
  br i1 %i.aa, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReNtNtCs2mZqlW55729_12polars_utils5arena4NodeeE0ECsfcROwRM8ZtH_11polars_plan.exit.thread, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReNtNtCs2mZqlW55729_12polars_utils5arena4NodeeE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i, !dbg !33300, !prof !249

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReNtNtCs2mZqlW55729_12polars_utils5arena4NodeeE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i, %bb.b
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1), !dbg !33302
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !33306
  %i.ad = icmp eq i16 %i.ac, 0, !dbg !33308
  br i1 %i.ad, label %bb.e, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReNtNtCs2mZqlW55729_12polars_utils5arena4NodeeE0ECsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !33308, !prof !261

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReNtNtCs2mZqlW55729_12polars_utils5arena4NodeeE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReNtNtCs2mZqlW55729_12polars_utils5arena4NodeeE0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.c
  %i.ae = add i16 %.sroa.05.0.i40.i, -1, !dbg !33310
  %i.af = and i16 %i.ae, %.sroa.05.0.i40.i, !dbg !33312 ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.af, 0, !dbg !33251
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !33254

bb.e:                                             ; preds = %._crit_edge.i
  %i.ag = add i64 %.sroa.011.0.i.i, 16, !dbg !33314 ; 2 uses
  %i.ah = add i64 %.sroa.01.0.i.i, %i.ag, !dbg !33316
  br label %bb.b, !dbg !33234

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReNtNtCs2mZqlW55729_12polars_utils5arena4NodeeE0ECsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %._crit_edge.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReNtNtCs2mZqlW55729_12polars_utils5arena4NodeeE0E0CsfcROwRM8ZtH_11polars_plan.exit.i
  %.sroa.3.0 = phi i64 [ %.val.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReNtNtCs2mZqlW55729_12polars_utils5arena4NodeeE0E0CsfcROwRM8ZtH_11polars_plan.exit.i ], [ undef, %._crit_edge.i ], !dbg !33317
  %.sroa.0.0 = phi i64 [ 1, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReNtNtCs2mZqlW55729_12polars_utils5arena4NodeeE0E0CsfcROwRM8ZtH_11polars_plan.exit.i ], [ 0, %._crit_edge.i ], !dbg !33317
  %i.ai = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !33320
  %i.aj = insertvalue { i64, i64 } %i.ai, i64 %.sroa.3.0, 1, !dbg !33320
  ret { i64, i64 } %i.aj, !dbg !33320
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreReTjRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE12get_index_ofeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !33321 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33322
  %i.b = load ptr, ptr %i.a, align 8, !dbg !33322, !nonnull !13, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !33335
  %i.d = load i64, ptr %i.c, align 8, !dbg !33335, !noundef !13 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !33336
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33340), !dbg !33343
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33346), !dbg !33349
  %i.f = lshr i64 %1, 57, !dbg !33352
  %i.g = trunc nuw nsw i64 %i.f to i8, !dbg !33355
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !33356
  %i.i = load i64, ptr %i.h, align 8, !dbg !33356, !alias.scope !33358, !noalias !33359, !noundef !13 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !33358, !noalias !33359, !nonnull !13, !noundef !13 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b, !dbg !33362

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.011.0.i.i = phi i64 [ 0, %bb.a ], [ %i.ag, %bb.e ], !dbg !33363
  %.pn.i.i = phi i64 [ %1, %bb.a ], [ %i.ah, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i, !dbg !33363 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i, !dbg !33364
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.m, align 1, !dbg !33367, !noalias !33371 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.l, !dbg !33374
  %i.o = bitcast <16 x i1> %i.n to i16, !dbg !33377 ; 2 uses
  %.not.i.not39.i = icmp eq i16 %i.o, 0, !dbg !33379
  br i1 %.not.i.not39.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !33382

.lr.ph.i:                                         ; preds = %bb.b, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReTjRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i
  %.sroa.05.0.i40.i = phi i16 [ %i.af, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReTjRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i ], [ %i.o, %bb.b ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i40.i, i1 true), !dbg !33383
  %i.q = zext nneg i16 %i.p to i64, !dbg !33386
  %i.r = add i64 %.sroa.01.0.i.i, %i.q, !dbg !33387
  %i.s = and i64 %i.r, %i.i, !dbg !33387
  %i.t = sub nsw i64 0, %i.s, !dbg !33388
  %i.u = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.t, !dbg !33397
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8, !dbg !33398
  %.val.i.i = load i64, ptr %i.v, align 8, !dbg !33404, !noalias !33405, !noundef !13 ; 4 uses
  %i.w = icmp ult i64 %.val.i.i, %i.d, !dbg !33408
  br i1 %i.w, label %bb.c, label %bb.d, !dbg !33408

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.val.i.i, !dbg !33412 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8, !dbg !33413
  %.val2.i.i.i = load i64, ptr %i.y, align 8, !dbg !33413, !noalias !33414, !noundef !13
  %i.z = icmp eq i64 %3, %.val2.i.i.i, !dbg !33417
  br i1 %i.z, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReTjRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReTjRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i, !dbg !33417, !prof !234

bb.d:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #44, !dbg !33408, !noalias !33414
  unreachable, !dbg !33408

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReTjRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.c
  %.val.i.i.i = load ptr, ptr %i.x, align 8, !dbg !33413, !noalias !33414, !nonnull !13, !noundef !13
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %.val.i.i.i, i64 %3), !dbg !33422, !alias.scope !33424, !noalias !33414
  %i.aa = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !33422
  br i1 %i.aa, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReTjRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEeE0ECsfcROwRM8ZtH_11polars_plan.exit.thread, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReTjRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i, !dbg !33428, !prof !249

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReTjRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i, %bb.b
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1), !dbg !33430
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !33434
  %i.ad = icmp eq i16 %i.ac, 0, !dbg !33436
  br i1 %i.ad, label %bb.e, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReTjRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEeE0ECsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !33436, !prof !261

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReTjRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReTjRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.c
  %i.ae = add i16 %.sroa.05.0.i40.i, -1, !dbg !33438
  %i.af = and i16 %i.ae, %.sroa.05.0.i40.i, !dbg !33440 ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.af, 0, !dbg !33379
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !33382

bb.e:                                             ; preds = %._crit_edge.i
  %i.ag = add i64 %.sroa.011.0.i.i, 16, !dbg !33442 ; 2 uses
  %i.ah = add i64 %.sroa.01.0.i.i, %i.ag, !dbg !33444
  br label %bb.b, !dbg !33362

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReTjRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEeE0ECsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %._crit_edge.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReTjRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.i
  %.sroa.3.0 = phi i64 [ %.val.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReTjRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.i ], [ undef, %._crit_edge.i ], !dbg !33445
  %.sroa.0.0 = phi i64 [ 1, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCse4dvU5uQ85g_8indexmap5inner10equivalentReTjRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEeE0E0CsfcROwRM8ZtH_11polars_plan.exit.i ], [ 0, %._crit_edge.i ], !dbg !33445
  %i.ai = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !33448
  %i.aj = insertvalue { i64, i64 } %i.ai, i64 %.sroa.3.0, 1, !dbg !33448
  ret { i64, i64 } %i.aj, !dbg !33448
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreReuE12get_index_ofeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !33449 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33450
  %i.b = load ptr, ptr %i.a, align 8, !dbg !33450, !nonnull !13, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !33463
  %i.d = load i64, ptr %i.c, align 8, !dbg !33463, !noundef !13 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !33464
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33468), !dbg !33471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33474), !dbg !33477
  %i.f = lshr i64 %1, 57, !dbg !33480
  %i.g = trunc nuw nsw i64 %i.f to i8, !dbg !33483
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !33484
  %i.i = load i64, ptr %i.h, align 8, !dbg !33484, !alias.scope !33486, !noalias !33487, !noundef !13 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !33486, !noalias !33487, !nonnull !13, !noundef !13 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b, !dbg !33490

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.011.0.i.i = phi i64 [ 0, %bb.a ], [ %i.ag, %bb.e ], !dbg !33491
end_hunk_3
