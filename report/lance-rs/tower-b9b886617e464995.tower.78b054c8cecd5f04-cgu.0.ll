Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/tower-b9b886617e464995.tower.78b054c8cecd5f04-cgu.0?download=true
inline.NumInlined: 152
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs0_NtNtCsamqgnMfIDNU_5tower9load_shed5layerNtB5_13LoadShedLayerNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt:bb.a
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 13)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB5_9TpsBudgetNtNtCscI6d9CVNmLh_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 !guid !187 {
bb.a:
  tail call void @_RNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2_9TpsBudget3new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, i64 noundef 10, i32 noundef 0, i32 noundef 10, float noundef 2.000000e-01)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB5_9TpsBudgetNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !188 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 6)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 7, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @102)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 8, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @102)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load atomic i64, ptr %i.g seq_cst, align 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !58, !noundef !58 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !58 ; 5 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2_9TpsBudget3sum.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %xtraiter = and i64 %i.l, 1
  %i.n = icmp eq i64 %i.l, 1
  br i1 %i.n, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.l, -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.v, %.preheader.i ] ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.u, %.preheader.i ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.04.0.i.i
  %i.p = load atomic i64, ptr %i.o seq_cst, align 8
  %i.q = call noundef i64 @llvm.sadd.sat.i64(i64 %.sroa.02.0.i.i, i64 %i.p)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.04.0.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load atomic i64, ptr %i.s seq_cst, align 8
  %i.u = call noundef i64 @llvm.sadd.sat.i64(i64 %i.q, i64 %i.t) ; 3 uses
  %i.v = add nuw i64 %.sroa.04.0.i.i, 2           ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_4sync6atomic6AtomiciEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldiNCINvNtNtB1s_8adapters3map8map_foldRBQ_iiNCNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2R_9TpsBudget3sum0NvMs3_NtBb_3numi14saturating_addE0EB2X_.exit.loopexit.i.unr-lcssa, label %.preheader.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_4sync6atomic6AtomiciEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldiNCINvNtNtB1s_8adapters3map8map_foldRBQ_iiNCNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2R_9TpsBudget3sum0NvMs3_NtBb_3numi14saturating_addE0EB2X_.exit.loopexit.i.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_4sync6atomic6AtomiciEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldiNCINvNtNtB1s_8adapters3map8map_foldRBQ_iiNCNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2R_9TpsBudget3sum0NvMs3_NtBb_3numi14saturating_addE0EB2X_.exit.loopexit.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_4sync6atomic6AtomiciEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldiNCINvNtNtB1s_8adapters3map8map_foldRBQ_iiNCNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2R_9TpsBudget3sum0NvMs3_NtBb_3numi14saturating_addE0EB2X_.exit.loopexit.i.unr-lcssa, %.preheader.i.preheader
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.v, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_4sync6atomic6AtomiciEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldiNCINvNtNtB1s_8adapters3map8map_foldRBQ_iiNCNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2R_9TpsBudget3sum0NvMs3_NtBb_3numi14saturating_addE0EB2X_.exit.loopexit.i.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.u, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_4sync6atomic6AtomiciEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldiNCINvNtNtB1s_8adapters3map8map_foldRBQ_iiNCNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2R_9TpsBudget3sum0NvMs3_NtBb_3numi14saturating_addE0EB2X_.exit.loopexit.i.unr-lcssa ]
  %lcmp.mod2 = trunc i64 %i.l to i1
  call void @llvm.assume(i1 %lcmp.mod2)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.04.0.i.i.epil.init
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = call noundef i64 @llvm.sadd.sat.i64(i64 %.sroa.02.0.i.i.epil.init, i64 %i.x)
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_4sync6atomic6AtomiciEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldiNCINvNtNtB1s_8adapters3map8map_foldRBQ_iiNCNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2R_9TpsBudget3sum0NvMs3_NtBb_3numi14saturating_addE0EB2X_.exit.loopexit.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_4sync6atomic6AtomiciEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldiNCINvNtNtB1s_8adapters3map8map_foldRBQ_iiNCNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2R_9TpsBudget3sum0NvMs3_NtBb_3numi14saturating_addE0EB2X_.exit.loopexit.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_4sync6atomic6AtomiciEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldiNCINvNtNtB1s_8adapters3map8map_foldRBQ_iiNCNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2R_9TpsBudget3sum0NvMs3_NtBb_3numi14saturating_addE0EB2X_.exit.loopexit.i.unr-lcssa, %.preheader.i.epil.preheader
  %.lcssa = phi i64 [ %i.u, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_4sync6atomic6AtomiciEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldiNCINvNtNtB1s_8adapters3map8map_foldRBQ_iiNCNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2R_9TpsBudget3sum0NvMs3_NtBb_3numi14saturating_addE0EB2X_.exit.loopexit.i.unr-lcssa ], [ %i.y, %.preheader.i.epil.preheader ]
  %i.z = call i64 @llvm.sadd.sat.i64(i64 %i.h, i64 %.lcssa)
  br label %_RNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2_9TpsBudget3sum.exit

_RNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2_9TpsBudget3sum.exit: ; preds = %bb.a, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_4sync6atomic6AtomiciEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldiNCINvNtNtB1s_8adapters3map8map_foldRBQ_iiNCNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2R_9TpsBudget3sum0NvMs3_NtBb_3numi14saturating_addE0EB2X_.exit.loopexit.i
  %.sroa.0.0.i.i = phi i64 [ %i.h, %bb.a ], [ %i.z, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_4sync6atomic6AtomiciEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldiNCINvNtNtB1s_8adapters3map8map_foldRBQ_iiNCNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2R_9TpsBudget3sum0NvMs3_NtBb_3numi14saturating_addE0EB2X_.exit.loopexit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !58
  %i.ac = call noundef i64 @llvm.sadd.sat.i64(i64 %.sroa.0.0.i.i, i64 %i.ab)
  store i64 %i.ac, ptr %i.a, align 8
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @102)
  %i.ae = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.ae
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtBB_5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SyncNtB1I_4SendEL_EENtB6_5Debug3fmtCsamqgnMfIDNU_5tower(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !194 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !58, !align !61, !noundef !58
  %.val = load ptr, ptr %i.a, align 8, !nonnull !58, !noundef !58 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !195, !nonnull !58, !noundef !58
  %i.c = getelementptr i8, ptr %.val, i64 24
  %.val1.i = load ptr, ptr %i.c, align 8, !noalias !195, !nonnull !58, !align !61, !noundef !58
  %i.d = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !58, !noalias !196, !nonnull !58
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !193
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsamqgnMfIDNU_5tower(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !197 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !58, !noundef !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !58
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCscI6d9CVNmLh_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCsamqgnMfIDNU_5tower5retry7backoffNtB5_23ExponentialBackoffMakerNtNtCscI6d9CVNmLh_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 44), (48, 60)) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !213 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !62, !noalias !214, !noundef !58
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsamqgnMfIDNU_5tower.exit_crit_edge.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsamqgnMfIDNU_5tower.exit.i.i.i, !prof !63

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsamqgnMfIDNU_5tower.exit_crit_edge.i.i.i: ; preds = %bb.a
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !noalias !215
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !215
  br label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultNtNtNtCsamqgnMfIDNU_5tower5retry7backoff23ExponentialBackoffMakerNtBJ_14InvalidBackoffE6expectBN_.exit

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsamqgnMfIDNU_5tower.exit.i.i.i: ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys(), !noalias !216 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8, !noalias !216
  store i8 1, ptr %i.b, align 8, !noalias !216
  br label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultNtNtNtCsamqgnMfIDNU_5tower5retry7backoff23ExponentialBackoffMakerNtBJ_14InvalidBackoffE6expectBN_.exit

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultNtNtNtCsamqgnMfIDNU_5tower5retry7backoff23ExponentialBackoffMakerNtBJ_14InvalidBackoffE6expectBN_.exit: ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsamqgnMfIDNU_5tower.exit.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsamqgnMfIDNU_5tower.exit_crit_edge.i.i.i
  %.pre-phi2.i = phi i64 [ %.pre1.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsamqgnMfIDNU_5tower.exit_crit_edge.i.i.i ], [ %i.g, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsamqgnMfIDNU_5tower.exit.i.i.i ]
  %i.i = phi i64 [ %.pre.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsamqgnMfIDNU_5tower.exit_crit_edge.i.i.i ], [ %i.f, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsamqgnMfIDNU_5tower.exit.i.i.i ] ; 2 uses
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.a, align 8, !noalias !215
  store i64 4607092346807469998, ptr %0, align 8, !alias.scope !217
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !217
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.pre-phi2.i, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !217
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store i32 50000000, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !217
  %.sroa.92.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 18446744073709551, ptr %.sroa.92.0..sroa_idx, align 8, !alias.scope !217
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 615000000, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !217
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtNtCsamqgnMfIDNU_5tower6buffer5errorNtB5_6ClosedNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !218 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 6)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtNtCsamqgnMfIDNU_5tower5retry7backoffNtB5_14InvalidBackoffNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !guid !219 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsamqgnMfIDNU_5tower, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !58, !noundef !58
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !58, !align !61, !noundef !58
  %i.e = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @107, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtNtCsamqgnMfIDNU_5tower6buffer5errorNtB5_6ClosedNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !220 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 35)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCsamqgnMfIDNU_5tower4load9peak_ewmaNtB5_6HandleNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !225 {
bb.a:
  %i.a = tail call { i64, i32 } @_RNvMNtNtCseXbohGRa9jr_5tokio4time7instantNtB2_7Instant3now() ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !58, !noundef !58 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  %i.e = cmpxchg ptr %i.d, i32 0, i32 1 acquire monotonic, align 4, !noalias !226
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.d), !noalias !226
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !226
  %i.h = and i64 %i.g, 9223372036854775807
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCsamqgnMfIDNU_5tower4load9peak_ewma11RttEstimateE4lockB13_.exit, label %bb.d, !prof !63

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !226
  %i.k = xor i1 %i.j, true
  %i.l = zext i1 %i.k to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCsamqgnMfIDNU_5tower4load9peak_ewma11RttEstimateE4lockB13_.exit

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCsamqgnMfIDNU_5tower4load9peak_ewma11RttEstimateE4lockB13_.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.l, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 3 uses
  %i.n = load atomic i8, ptr %i.m monotonic, align 1, !noalias !226
  %.not.a = icmp eq i8 %i.n, 0
  br i1 %.not.a, label %bb.e, label %bb.l

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCsamqgnMfIDNU_5tower4load9peak_ewma11RttEstimateE4lockB13_.exit
  %i.o = extractvalue { i64, i32 } %i.a, 1
  %i.p = extractvalue { i64, i32 } %i.a, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !58
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i32, ptr %i.t, align 8, !range !66, !noundef !58
  %i.v = load double, ptr %0, align 8, !noundef !58
  %i.w = invoke fastcc noundef double @_RNvMs4_NtNtCsamqgnMfIDNU_5tower4load9peak_ewmaNtB5_11RttEstimate6update(ptr noalias noundef align 8 dereferenceable(24) %i.q, i64 noundef %i.s, i32 noundef %i.u, i64 noundef %i.p, i32 noundef %i.o, double noundef %i.v)
          to label %bb.g unwind label %bb.f       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCsamqgnMfIDNU_5tower4load9peak_ewma11RttEstimateEEB1C_(ptr nonnull %i.d, i8 %.sroa.01.0.i.i) #31
          to label %bb.k unwind label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.y = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.y, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.aa = and i64 %i.z, 9223372036854775807
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc, !prof !63

.noexc:                                           ; preds = %bb.h
  %i.ac = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.ac, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.m monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.i, %.noexc, %bb.h, %bb.g
  %i.ad = atomicrmw xchg ptr %i.d, i32 0 release, align 4
  %i.ae = icmp eq i32 %i.ad, 2
  br i1 %i.ae, label %.noexc5.sink.split, label %.noexc5, !prof !64

bb.j:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.k:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.x

bb.l:                                             ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCsamqgnMfIDNU_5tower4load9peak_ewma11RttEstimateE4lockB13_.exit
  %1 = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %1, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !227
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.n, !prof !63

bb.n:                                             ; preds = %bb.m
  %i.aj = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !227
  br i1 %i.aj, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  store atomic i8 1, ptr %i.m monotonic, align 1, !noalias !227
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.ak = atomicrmw xchg ptr %i.d, i32 0 release, align 4, !noalias !227
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %.noexc5.sink.split, label %.noexc5, !prof !64

.noexc5.sink.split:                               ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.d)
  br label %.noexc5

.noexc5:                                          ; preds = %.noexc5.sink.split, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCsamqgnMfIDNU_5tower6buffer5errorNtB5_12ServiceErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 !guid !228 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 12, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @109)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsT_NtNtCscI6d9CVNmLh_4core3fmt3numiNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 !guid !229 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !58 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs7_NtNtCscI6d9CVNmLh_4core3fmt3numiNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsj_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impiNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs9_NtNtCscI6d9CVNmLh_4core3fmt3numiNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsU_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtB7_5boxed3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB13_6marker4SyncNtB1A_4SendEL_EENtNtB13_3fmt7Display3fmtCsamqgnMfIDNU_5tower(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !233 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !58, !noundef !58 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !234, !nonnull !58, !noundef !58
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !234, !nonnull !58, !align !61, !noundef !58
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !58, !noalias !235, !nonnull !58
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !234, !inline_history !236
  ret i1 %i.h
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCs9ipI1vyGjpZ_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #7 !guid !237 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !58, !align !61, !noundef !58
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCsamqgnMfIDNU_5tower6buffer5errorNtB4_12ServiceErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !guid !238 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsU_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtB7_5boxed3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB13_6marker4SyncNtB1A_4SendEL_EENtNtB13_3fmt7Display3fmtCsamqgnMfIDNU_5tower, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !58, !noundef !58
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !58, !align !61, !noundef !58
  %i.e = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @112, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCsamqgnMfIDNU_5tower7timeout5errorNtB4_7ElapsedNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !239 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter3pad(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 17)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCsamqgnMfIDNU_5tower9load_shed5errorNtB4_10OverloadedNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !240 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 10)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsamqgnMfIDNU_5tower6buffer5error12ServiceErrorEEENtNtB1q_3fmt5Debug3fmtB23_(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !241 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budget10GenerationEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB1t_(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !242 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtNtCsamqgnMfIDNU_5tower4util8optional5errorNtB4_4NoneNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !guid !243 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !58, !noundef !58
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !58, !align !61, !noundef !58
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !58, !nonnull !58
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 4)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB4_9TpsBudgetNtB6_6Budget7deposit(ptr noundef nonnull align 8 %0) unnamed_addr #0 !guid !244 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !noundef !58
  tail call fastcc void @_RNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2_9TpsBudget6expire(ptr noundef nonnull align 8 %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = atomicrmw add ptr %i.c, i64 %i.b seq_cst, align 8 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB4_9TpsBudgetNtB6_6Budget8withdraw(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !245 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !noundef !58 ; 2 uses
  tail call fastcc void @_RNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2_9TpsBudget6expire(ptr noundef nonnull align 8 %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load atomic i64, ptr %i.c seq_cst, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !58, !noundef !58 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !noundef !58 ; 5 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2_9TpsBudget3sum.exit.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.a
  %xtraiter = and i64 %i.h, 1
  %i.j = icmp eq i64 %i.h, 1
  br i1 %i.j, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %i.h, -2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.r, %.preheader.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.q, %.preheader.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.04.0.i.i.i
  %i.l = load atomic i64, ptr %i.k seq_cst, align 8
  %i.m = tail call noundef i64 @llvm.sadd.sat.i64(i64 %.sroa.02.0.i.i.i, i64 %i.l)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.04.0.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load atomic i64, ptr %i.o seq_cst, align 8
  %i.q = tail call noundef i64 @llvm.sadd.sat.i64(i64 %i.m, i64 %i.p) ; 3 uses
  %i.r = add nuw i64 %.sroa.04.0.i.i.i, 2         ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_4sync6atomic6AtomiciEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldiNCINvNtNtB1s_8adapters3map8map_foldRBQ_iiNCNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2R_9TpsBudget3sum0NvMs3_NtBb_3numi14saturating_addE0EB2X_.exit.loopexit.i.i.unr-lcssa, label %.preheader.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_4sync6atomic6AtomiciEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldiNCINvNtNtB1s_8adapters3map8map_foldRBQ_iiNCNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2R_9TpsBudget3sum0NvMs3_NtBb_3numi14saturating_addE0EB2X_.exit.loopexit.i.i.unr-lcssa: ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_4sync6atomic6AtomiciEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldiNCINvNtNtB1s_8adapters3map8map_foldRBQ_iiNCNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2R_9TpsBudget3sum0NvMs3_NtBb_3numi14saturating_addE0EB2X_.exit.loopexit.i.i, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_4sync6atomic6AtomiciEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldiNCINvNtNtB1s_8adapters3map8map_foldRBQ_iiNCNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2R_9TpsBudget3sum0NvMs3_NtBb_3numi14saturating_addE0EB2X_.exit.loopexit.i.i.unr-lcssa, %.preheader.i.i.preheader
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.r, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_4sync6atomic6AtomiciEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldiNCINvNtNtB1s_8adapters3map8map_foldRBQ_iiNCNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2R_9TpsBudget3sum0NvMs3_NtBb_3numi14saturating_addE0EB2X_.exit.loopexit.i.i.unr-lcssa ]
end_hunk_0
