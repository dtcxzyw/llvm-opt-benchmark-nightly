Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_bundle-0b83f87b31ae34d3.typst_bundle.bf34c93a048d29f7-cgu.0?download=true
inline.NumInlined: 6006
inline.NumDeleted: 2956
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBB_13introspection12introspectorINtB22_19ElementIntrospectorINtNtB5_6option6OptionINtNtNtB5_3num7nonzero7NonZerojEEE13binary_search0ECsgpMJJHpo27b_12typst_bundle:bb.a
  %i.bm = lshr i64 %i.bl, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8
  %i.bo = load i64, ptr %i.c, align 8, !alias.scope !120, !noalias !110, !noundef !19 ; 2 uses
  %i.bp = load ptr, ptr %i.b, align 8, !alias.scope !120, !noalias !110, !nonnull !19, !noundef !19 ; 2 uses
  %i.bq = insertelement <16 x i8> poison, i8 %i.bn, i64 0
  %i.br = shufflevector <16 x i8> %i.bq, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.sroa.9.0.i.i.i.i.i.i18.i = phi i64 [ 0, %bb.j ], [ %i.ci, %bb.m ]
  %.pn.i.i.i.i.i19.i = phi i64 [ %i.bl, %bb.j ], [ %i.cj, %bb.m ]
  %.sroa.01.0.i.i.i.i.i.i20.i = and i64 %.pn.i.i.i.i.i19.i, %i.bo ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.01.0.i.i.i.i.i.i20.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i21.i = load <16 x i8>, ptr %i.bs, align 1, !noalias !121 ; 2 uses
  %i.bt = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i21.i, %i.br
  %i.bu = bitcast <16 x i1> %i.bt to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i22.i = icmp eq i16 %i.bu, 0
  br i1 %.not.i.not30.i.i.i.i.i22.i, label %._crit_edge.i.i.i.i.i27.i, label %.lr.ph.i.i.i.i.i23.i

.lr.ph.i.i.i.i.i23.i:                             ; preds = %bb.k, %bb.l
  %.sroa.06.0.i31.i.i.i.i.i24.i = phi i16 [ %i.ch, %bb.l ], [ %i.bu, %bb.k ] ; 3 uses
  %i.bv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i24.i, i1 true)
  %i.bw = zext nneg i16 %i.bv to i64
  %i.bx = add i64 %.sroa.01.0.i.i.i.i.i.i20.i, %i.bw
  %i.by = and i64 %i.bx, %i.bo
  %i.bz = sub nsw i64 0, %i.by
  %i.ca = getelementptr inbounds [32 x i8], ptr %i.bp, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -32
  %.val2.i.i.i.i.i.i25.i = load i128, ptr %i.cb, align 16, !noalias !122, !noundef !19
  %i.cc = icmp eq i128 %i.bc, %.val2.i.i.i.i.i.i25.i
  br i1 %i.cc, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i30.i, label %bb.l, !prof !21

._crit_edge.i.i.i.i.i27.i:                        ; preds = %bb.l, %bb.k
  %i.cd = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i21.i, splat (i8 -1)
  %i.ce = bitcast <16 x i1> %i.cd to i16
  %i.cf = icmp eq i16 %i.ce, 0
  br i1 %i.cf, label %bb.m, label %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBD_13introspection12introspectorINtB24_19ElementIntrospectorINtNtB7_6option6OptionINtNtNtB7_3num7nonzero7NonZerojEEE13binary_search0E0CsgpMJJHpo27b_12typst_bundle.exit31.i, !prof !22

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i23.i
  %i.cg = add i16 %.sroa.06.0.i31.i.i.i.i.i24.i, -1
  %i.ch = and i16 %i.cg, %.sroa.06.0.i31.i.i.i.i.i24.i ; 2 uses
  %.not.i.not.i.i.i.i.i26.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i.not.i.i.i.i.i26.i, label %._crit_edge.i.i.i.i.i27.i, label %.lr.ph.i.i.i.i.i23.i

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i27.i
  %i.ci = add i64 %.sroa.9.0.i.i.i.i.i.i18.i, 16  ; 2 uses
  %i.cj = add i64 %.sroa.01.0.i.i.i.i.i.i20.i, %i.ci
  br label %bb.k

bb.n:                                             ; preds = %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #45, !noalias !110
  unreachable

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i30.i: ; preds = %.lr.ph.i.i.i.i.i23.i
  %i.ck = getelementptr inbounds i8, ptr %i.ca, i64 -16
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !110, !noundef !19
  br label %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBD_13introspection12introspectorINtB24_19ElementIntrospectorINtNtB7_6option6OptionINtNtNtB7_3num7nonzero7NonZerojEEE13binary_search0E0CsgpMJJHpo27b_12typst_bundle.exit31.i

_RNCINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBD_13introspection12introspectorINtB24_19ElementIntrospectorINtNtB7_6option6OptionINtNtNtB7_3num7nonzero7NonZerojEEE13binary_search0E0CsgpMJJHpo27b_12typst_bundle.exit31.i: ; preds = %._crit_edge.i.i.i.i.i27.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i30.i, %bb.i
  %.sroa.0.0.i.i.i28.i = phi i64 [ %i.cl, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i30.i ], [ -1, %bb.i ], [ -1, %._crit_edge.i.i.i.i.i27.i ]
  %i.cm = icmp ugt i64 %.sroa.0.0.i.i.i28.i, %.0.val
  %i.cn = select i1 %i.cm, i64 %.sroa.05.036.i, i64 %i.aw, !unpredictable !19 ; 2 uses
  %i.co = sub nuw nsw i64 %.sroa.01.037.i, %i.av  ; 2 uses
  %i.cp = icmp ugt i64 %i.co, 1
  br i1 %i.cp, label %bb.h, label %._crit_edge.i

bb.o:                                             ; preds = %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBD_13introspection12introspectorINtB24_19ElementIntrospectorINtNtB7_6option6OptionINtNtNtB7_3num7nonzero7NonZerojEEE13binary_search0E0CsgpMJJHpo27b_12typst_bundle.exit.i
  %i.cq = icmp ult i64 %.sroa.0.0.i.i.i.i, %.0.val
  %i.cr = zext i1 %i.cq to i64
  %i.cs = add nuw nsw i64 %.sroa.05.0.lcssa.i, %i.cr ; 2 uses
  %i.ct = icmp ule i64 %i.cs, %1
  tail call void @llvm.assume(i1 %i.ct)
  br label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content16binary_search_byNCINvB2_20binary_search_by_keyjNCNvMs0_NtNtBB_13introspection12introspectorINtB2s_19ElementIntrospectorINtNtB5_6option6OptionINtNtNtB5_3num7nonzero7NonZerojEEE13binary_search0E0ECsgpMJJHpo27b_12typst_bundle.exit

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content16binary_search_byNCINvB2_20binary_search_by_keyjNCNvMs0_NtNtBB_13introspection12introspectorINtB2s_19ElementIntrospectorINtNtB5_6option6OptionINtNtNtB5_3num7nonzero7NonZerojEEE13binary_search0E0ECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.a, %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBD_13introspection12introspectorINtB24_19ElementIntrospectorINtNtB7_6option6OptionINtNtNtB7_3num7nonzero7NonZerojEEE13binary_search0E0CsgpMJJHpo27b_12typst_bundle.exit.i, %bb.o
  %.sroa.4.0.i = phi i64 [ %1, %bb.a ], [ %i.cs, %bb.o ], [ %.sroa.05.0.lcssa.i, %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBD_13introspection12introspectorINtB24_19ElementIntrospectorINtNtB7_6option6OptionINtNtNtB7_3num7nonzero7NonZerojEEE13binary_search0E0CsgpMJJHpo27b_12typst_bundle.exit.i ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.a ], [ 1, %bb.o ], [ 0, %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBD_13introspection12introspectorINtB24_19ElementIntrospectorINtNtB7_6option6OptionINtNtNtB7_3num7nonzero7NonZerojEEE13binary_search0E0CsgpMJJHpo27b_12typst_bundle.exit.i ]
  %i.cu = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.cv = insertvalue { i64, i64 } %i.cu, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.cv
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCsazW1U07H1KN_15crossbeam_epoch9collector11LocalHandleuE16get_or_init_slowNvNvNtB1i_7default6HANDLE27___rust_std_internal_init_fnECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i8, ptr %i.b, align 8, !range !23, !noundef !19
  switch i8 %i.c, label %default.unreachable8 [
    i8 0, label %bb.b
    i8 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsazW1U07H1KN_15crossbeam_epoch9collector11LocalHandleECsgpMJJHpo27b_12typst_bundle.exit
    i8 2, label %bb.c
  ]

default.unreachable8:                             ; preds = %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsazW1U07H1KN_15crossbeam_epoch9collector11LocalHandleECsgpMJJHpo27b_12typst_bundle.exit

bb.d:                                             ; preds = %bb.b
  %i.d = load i64, ptr %1, align 8, !range !24, !noundef !19
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  store i64 0, ptr %1, align 8
  %i.g = trunc nuw i64 %i.d to i1
  br i1 %i.g, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  store ptr %i.f, ptr %0, align 8
  store i8 1, ptr %i.b, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.h = tail call noundef nonnull align 8 ptr @_RNvNtCsazW1U07H1KN_15crossbeam_epoch7default9collector()
  %i.i = tail call noundef ptr @_RNvMs1_NtCsazW1U07H1KN_15crossbeam_epoch9collectorNtB5_9Collector8register(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
  %.pre = load i8, ptr %i.b, align 8, !range !23
  %i.j = load ptr, ptr %0, align 8                ; 3 uses
  store ptr %i.i, ptr %0, align 8
  store i8 1, ptr %i.b, align 8
  switch i8 %.pre, label %default.unreachable8 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.i
  ], !prof !123

bb.f:                                             ; preds = %.thread, %bb.e
  tail call void @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %0, ptr noundef nonnull @_RINvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazy7destroyNtNtCsazW1U07H1KN_15crossbeam_epoch9collector11LocalHandleECsgpMJJHpo27b_12typst_bundle)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsazW1U07H1KN_15crossbeam_epoch9collector11LocalHandleECsgpMJJHpo27b_12typst_bundle.exit

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2072
  %i.l = load i64, ptr %i.k, align 8, !noundef !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2080 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !19 ; 2 uses
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr %i.m, align 8
  %i.p = icmp eq i64 %i.l, 0
  %i.q = icmp eq i64 %i.n, 1
  %or.cond.i.i.i = and i1 %i.p, %i.q
  br i1 %or.cond.i.i.i, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsazW1U07H1KN_15crossbeam_epoch9collector11LocalHandleECsgpMJJHpo27b_12typst_bundle.exit, !prof !25

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs6_NtCsazW1U07H1KN_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.j)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsazW1U07H1KN_15crossbeam_epoch9collector11LocalHandleECsgpMJJHpo27b_12typst_bundle.exit

bb.i:                                             ; preds = %bb.e
  %i.r = call fastcc noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 87 to ptr))
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgpMJJHpo27b_12typst_bundle(ptr %i.r)
  call void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() #46
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsazW1U07H1KN_15crossbeam_epoch9collector11LocalHandleECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.a, %bb.c
  %.sroa.02.0 = phi ptr [ %0, %bb.a ], [ null, %bb.c ], [ %0, %bb.h ], [ %0, %bb.g ], [ %0, %bb.f ]
  ret ptr %.sroa.02.0
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB1N_3map11MapConsumerINtNtNtB1N_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtB3o_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB6x_6engine4SinkEENCINvMB7r_NtB7r_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB3m_EINtNtB8o_9into_iter8IntoIterB3m_EB3m_B57_NCNCNvB3o_11bundle_impl00E0EE0NCB1G_s_0INtB4q_13CollectResultB56_EBaf_E0TBaf_Baf_EEB3o_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.b = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.c, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false), !noalias !158
  store ptr %i.b, ptr %i.a, align 8, !noalias !157
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 3 uses
  store i64 0, ptr %i.d, align 8, !noalias !157
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB2Z_3map11MapConsumerINtNtNtB2Z_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtB4A_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7J_6engine4SinkEENCINvMB8D_NtB8D_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB4y_EINtNtB9A_9into_iter8IntoIterB4y_EB4y_B6j_NCNCNvB4A_11bundle_impl00E0EE0NCB2S_s_0INtB5C_13CollectResultB6i_EBbr_E0TBbr_Bbr_EE00BbY_ENtB5_3Job7executeB4A_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.d, !noalias !157, !inline_history !133

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !noalias !157, !noundef !19
  invoke void @_RNvMs3_NtCsf1gSX8u3EQ2_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.e)
          to label %bb.c unwind label %bb.d, !noalias !157, !inline_history !133

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !157
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.f = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !157 ; 3 uses
  switch i64 %.sroa.3.0.copyload.i.i.i, label %default.unreachable1.i.i.i.i.i [
    i64 0, label %.noexc.i.i.i.i
    i64 1, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsf1gSX8u3EQ2_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB3e_3map11MapConsumerINtNtNtB3e_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtB4P_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7Y_6engine4SinkEENCINvMB8S_NtB8S_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB4N_EINtNtB9P_9into_iter8IntoIterB4N_EB4N_B6y_NCNCNvB4P_11bundle_impl00E0EE0NCB37_s_0INtB5R_13CollectResultB6x_EBbG_E0TBbG_BbG_EE0Bcd_EB4P_.exit
    i64 2, label %.noexc1.i.i.i.i
  ], !prof !26

default.unreachable1.i.i.i.i.i:                   ; preds = %bb.c
  unreachable

.noexc.i.i.i.i:                                   ; preds = %bb.c
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #45, !noalias !159, !inline_history !133
  unreachable

.noexc1.i.i.i.i:                                  ; preds = %bb.c
  %i.g = extractelement <2 x ptr> %i.f, i64 0     ; 2 uses
  %i.h = extractelement <2 x ptr> %i.f, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g), "nonnull"(ptr %i.h) ]
  call void @_RNvNtCsf1gSX8u3EQ2_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h) #46, !noalias !159, !inline_history !133
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.c, align 8, !alias.scope !160, !noalias !157, !noundef !19
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB3g_3map11MapConsumerINtNtNtB3g_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultNtB4R_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7K_6engine4SinkEENCINvMB8E_NtB8E_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB4P_EINtNtB9B_9into_iter8IntoIterB4P_EB4P_B6A_NCNCNvB4R_11bundle_impl00E0EE0NCB39_s_0INtB5T_13CollectResultB6z_EBbs_E0TBbs_Bbs_EE00EEEB4R_.exit.i6.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 16 to ptr), ptr %i.l, align 8, !alias.scope !161, !noalias !157
  store i64 0, ptr %i.m, align 8, !alias.scope !161, !noalias !157
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr inttoptr (i64 16 to ptr), ptr %i.n, align 8, !alias.scope !162, !noalias !157
  store i64 0, ptr %i.o, align 8, !alias.scope !162, !noalias !157
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB3g_3map11MapConsumerINtNtNtB3g_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultNtB4R_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7K_6engine4SinkEENCINvMB8E_NtB8E_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB4P_EINtNtB9B_9into_iter8IntoIterB4P_EB4P_B6A_NCNCNvB4R_11bundle_impl00E0EE0NCB39_s_0INtB5T_13CollectResultB6z_EBbs_E0TBbs_Bbs_EE00EEEB4R_.exit.i6.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB3g_3map11MapConsumerINtNtNtB3g_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultNtB4R_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7K_6engine4SinkEENCINvMB8E_NtB8E_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB4P_EINtNtB9B_9into_iter8IntoIterB4P_EB4P_B6A_NCNCNvB4R_11bundle_impl00E0EE0NCB39_s_0INtB5T_13CollectResultB6z_EBbs_E0TBbs_Bbs_EE00EEEB4R_.exit.i6.i.i.i: ; preds = %bb.e, %bb.d
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3Y_6engine4SinkEEB1l_EEEB2O_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.d)
          to label %.body.i.i unwind label %bb.f, !noalias !157, !inline_history !133

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB3g_3map11MapConsumerINtNtNtB3g_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultNtB4R_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7K_6engine4SinkEENCINvMB8E_NtB8E_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB4P_EINtNtB9B_9into_iter8IntoIterB4P_EB4P_B6A_NCNCNvB4R_11bundle_impl00E0EE0NCB39_s_0INtB5T_13CollectResultB6z_EBbs_E0TBbs_Bbs_EE00EEEB4R_.exit.i6.i.i.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !157, !inline_history !133
  unreachable

.body.i.i:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB3g_3map11MapConsumerINtNtNtB3g_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultNtB4R_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7K_6engine4SinkEENCINvMB8E_NtB8E_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB4P_EINtNtB9B_9into_iter8IntoIterB4P_EB4P_B6A_NCNCNvB4R_11bundle_impl00E0EE0NCB39_s_0INtB5T_13CollectResultB6z_EBbs_E0TBbs_Bbs_EE00EEEB4R_.exit.i6.i.i.i
  resume { ptr, i32 } %i.i

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsf1gSX8u3EQ2_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB3e_3map11MapConsumerINtNtNtB3e_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtB4P_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7Y_6engine4SinkEENCINvMB8S_NtB8S_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB4N_EINtNtB9P_9into_iter8IntoIterB4N_EB4N_B6y_NCNCNvB4P_11bundle_impl00E0EE0NCB37_s_0INtB5R_13CollectResultB6x_EBbG_E0TBbG_BbG_EE0Bcd_EB4P_.exit: ; preds = %bb.c
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !157
  store <2 x ptr> %i.f, ptr %0, align 8, !alias.scope !156
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB1N_3map11MapConsumerIB5r_INtNtNtB1N_7collect8consumer15CollectConsumerINtNtCs3oUPovFnLWP_4core6result6ResultTB3U_NtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB7r_4diag16SourceDiagnosticEEENCNvNtB4K_7export_6export0ENvMs0_B3q_B3n_4refsEE0NCB1G_s_0INtB5Y_13CollectResultB6E_EBan_E0TBan_Ban_EEB4K_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [200 x i8], align 8               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.b = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !175
  store ptr %i.b, ptr %i.a, align 8, !noalias !175
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(136) %2, i64 136, i1 false), !noalias !176
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 3 uses
  store i64 0, ptr %i.d, align 8, !noalias !175
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB2Z_3map11MapConsumerIB6D_INtNtNtB2Z_7collect8consumer15CollectConsumerINtNtCs3oUPovFnLWP_4core6result6ResultTB56_NtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB8D_4diag16SourceDiagnosticEEENCNvNtB5W_7export_6export0ENvMs0_B4C_B4z_4refsEE0NCB2S_s_0INtB7a_13CollectResultB7Q_EBbz_E0TBbz_Bbz_EE00Bc6_ENtB5_3Job7executeB5W_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.d, !noalias !175, !inline_history !173

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !noalias !175, !noundef !19
  invoke void @_RNvMs3_NtCsf1gSX8u3EQ2_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.e)
          to label %bb.c unwind label %bb.d, !noalias !175, !inline_history !173

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !175
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.f = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !175 ; 3 uses
  switch i64 %.sroa.3.0.copyload.i.i.i, label %default.unreachable1.i.i.i.i.i [
    i64 0, label %.noexc.i.i.i
    i64 1, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsf1gSX8u3EQ2_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB3e_3map11MapConsumerIB6S_INtNtNtB3e_7collect8consumer15CollectConsumerINtNtCs3oUPovFnLWP_4core6result6ResultTB5l_NtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB8S_4diag16SourceDiagnosticEEENCNvNtB6b_7export_6export0ENvMs0_B4R_B4O_4refsEE0NCB37_s_0INtB7p_13CollectResultB85_EBbO_E0TBbO_BbO_EE0Bcl_EB6b_.exit
    i64 2, label %.noexc6.i.i.i
  ], !prof !26

default.unreachable1.i.i.i.i.i:                   ; preds = %bb.c
  unreachable

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #45, !noalias !175, !inline_history !173
  unreachable

.noexc6.i.i.i:                                    ; preds = %bb.c
  %i.g = extractelement <2 x ptr> %i.f, i64 0     ; 2 uses
  %i.h = extractelement <2 x ptr> %i.f, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g), "nonnull"(ptr %i.h) ]
  call void @_RNvNtCsf1gSX8u3EQ2_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h) #46, !noalias !175, !inline_history !173
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB3t_3map11MapConsumerIB77_INtNtNtB3t_7collect8consumer15CollectConsumerINtNtB4_6result6ResultTB5A_NtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB8R_4diag16SourceDiagnosticEEENCNvNtB6q_7export_6export0ENvMs0_B56_B53_4refsEE0NCB3m_s_0INtB7E_13CollectResultB8k_EBbN_E0TBbN_BbN_EE00Bck_EEB6q_.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm.i.i.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3G_4diag16SourceDiagnosticEEEB1l_EEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB3t_3map11MapConsumerIB77_INtNtNtB3t_7collect8consumer15CollectConsumerINtNtB4_6result6ResultTB5A_NtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB8R_4diag16SourceDiagnosticEEENCNvNtB6q_7export_6export0ENvMs0_B56_B53_4refsEE0NCB3m_s_0INtB7E_13CollectResultB8k_EBbN_E0TBbN_BbN_EE00Bck_EEB6q_.exit.i.i.i unwind label %bb.e, !noalias !175, !inline_history !173

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !175, !inline_history !173
  unreachable

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsf1gSX8u3EQ2_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB3e_3map11MapConsumerIB6S_INtNtNtB3e_7collect8consumer15CollectConsumerINtNtCs3oUPovFnLWP_4core6result6ResultTB5l_NtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB8S_4diag16SourceDiagnosticEEENCNvNtB6b_7export_6export0ENvMs0_B4R_B4O_4refsEE0NCB37_s_0INtB7p_13CollectResultB85_EBbO_E0TBbO_BbO_EE0Bcl_EB6b_.exit: ; preds = %bb.c
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !175
  store <2 x ptr> %i.f, ptr %0, align 8, !alias.scope !174
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB1N_13flat_map_iter19FlatMapIterConsumerNtNtB1N_6extend15ListVecConsumerNCNvNtB3s_4link19create_link_anchors0EE0NCB1G_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB69_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEB62_E0TB62_B62_EEB3s_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.b = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !189
  store ptr %i.b, ptr %i.a, align 8, !noalias !189
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false), !noalias !190
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 3 uses
  store i64 0, ptr %i.d, align 8, !noalias !189
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB2Z_13flat_map_iter19FlatMapIterConsumerNtNtB2Z_6extend15ListVecConsumerNCNvNtB4E_4link19create_link_anchors0EE0NCB2S_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB7l_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEB7e_E0TB7e_B7e_EE00Bas_ENtB5_3Job7executeB4E_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.d, !noalias !189, !inline_history !187

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !noalias !189, !noundef !19
  invoke void @_RNvMs3_NtCsf1gSX8u3EQ2_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.e)
          to label %bb.c unwind label %bb.d, !noalias !189, !inline_history !187

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !189
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.f = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !189 ; 3 uses
  switch i64 %.sroa.3.0.copyload.i.i.i, label %default.unreachable1.i.i.i.i.i [
    i64 0, label %.noexc.i.i.i
    i64 1, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsf1gSX8u3EQ2_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB3e_13flat_map_iter19FlatMapIterConsumerNtNtB3e_6extend15ListVecConsumerNCNvNtB4T_4link19create_link_anchors0EE0NCB37_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB7A_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEB7t_E0TB7t_B7t_EE0BaH_EB4T_.exit
    i64 2, label %.noexc6.i.i.i
  ], !prof !26

default.unreachable1.i.i.i.i.i:                   ; preds = %bb.c
  unreachable

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #45, !noalias !189, !inline_history !187
  unreachable

.noexc6.i.i.i:                                    ; preds = %bb.c
  %i.g = extractelement <2 x ptr> %i.f, i64 0     ; 2 uses
  %i.h = extractelement <2 x ptr> %i.f, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g), "nonnull"(ptr %i.h) ]
  call void @_RNvNtCsf1gSX8u3EQ2_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h) #46, !noalias !189, !inline_history !187
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB3t_13flat_map_iter19FlatMapIterConsumerNtNtB3t_6extend15ListVecConsumerNCNvNtB58_4link19create_link_anchors0EE0NCB3m_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB7P_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEB7I_E0TB7I_B7I_EE00BaW_EEB58_.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm.i.i.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEB1l_EEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB3t_13flat_map_iter19FlatMapIterConsumerNtNtB3t_6extend15ListVecConsumerNCNvNtB58_4link19create_link_anchors0EE0NCB3m_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB7P_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEB7I_E0TB7I_B7I_EE00BaW_EEB58_.exit.i.i.i unwind label %bb.e, !noalias !189, !inline_history !187

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !189, !inline_history !187
  unreachable

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsf1gSX8u3EQ2_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB3e_13flat_map_iter19FlatMapIterConsumerNtNtB3e_6extend15ListVecConsumerNCNvNtB4T_4link19create_link_anchors0EE0NCB37_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB7A_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEB7t_E0TB7t_B7t_EE0BaH_EB4T_.exit: ; preds = %bb.c
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !189
  store <2 x ptr> %i.f, ptr %0, align 8, !alias.scope !188
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB1O_3map11MapConsumerINtNtNtB1O_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtB3p_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB6y_6engine4SinkEENCINvMB7s_NtB7s_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB3n_EINtNtB8p_9into_iter8IntoIterB3n_EB3n_B58_NCNCNvB3p_11bundle_impl00E0EE0NCB1H_s_0INtB4r_13CollectResultB57_EBag_E0TBag_Bag_EEB3p_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.d = load i64, ptr %i.c, align 128, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %3, i64 120, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 3 uses
  store i64 0, ptr %i.f, align 8
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB2I_3map11MapConsumerINtNtNtB2I_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtB4j_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7s_6engine4SinkEENCINvMB8m_NtB8m_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB4h_EINtNtB9j_9into_iter8IntoIterB4h_EB4h_B62_NCNCNvB4j_11bundle_impl00E0EE0NCB2B_s_0INtB5l_13CollectResultB61_EBba_E0TBba_Bba_EE0BbH_ENtB5_3Job7executeB4j_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.i = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx12, align 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  switch i64 %.sroa.3.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %.noexc.i
    i64 1, label %bb.e
    i64 2, label %.noexc1.i
  ], !prof !26

default.unreachable1.i.i:                         ; preds = %bb.d
  unreachable

.noexc.i:                                         ; preds = %bb.d
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #45, !noalias !221
  unreachable

.noexc1.i:                                        ; preds = %bb.d
  %i.j = extractelement <2 x ptr> %i.i, i64 0     ; 2 uses
  %i.k = extractelement <2 x ptr> %i.i, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j), "nonnull"(ptr %i.k) ]
  call void @_RNvNtCsf1gSX8u3EQ2_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k) #46, !noalias !221
  unreachable

bb.e:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <2 x ptr> %i.i, ptr %0, align 8, !alias.scope !222
  %.sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx14, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB3b_3map11MapConsumerINtNtNtB3b_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultNtB4M_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7F_6engine4SinkEENCINvMB8z_NtB8z_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB4K_EINtNtB9w_9into_iter8IntoIterB4K_EB4K_B6v_NCNCNvB4M_11bundle_impl00E0EE0NCB34_s_0INtB5O_13CollectResultB6u_EBbn_E0TBbn_Bbn_EE0BbU_EEB4M_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB3f_3map11MapConsumerINtNtNtB3f_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultNtB4Q_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7J_6engine4SinkEENCINvMB8D_NtB8D_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB4O_EINtNtB9A_9into_iter8IntoIterB4O_EB4O_B6z_NCNCNvB4Q_11bundle_impl00E0EE0NCB38_s_0INtB5S_13CollectResultB6y_EBbr_E0TBbr_Bbr_EE0EEEB4Q_.exit.i11
  resume { ptr, i32 } %i.l

bb.f:                                             ; preds = %bb.a, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %i.a, align 8, !alias.scope !223, !noundef !19
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB3f_3map11MapConsumerINtNtNtB3f_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultNtB4Q_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7J_6engine4SinkEENCINvMB8D_NtB8D_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB4O_EINtNtB9A_9into_iter8IntoIterB4O_EB4O_B6z_NCNCNvB4Q_11bundle_impl00E0EE0NCB38_s_0INtB5S_13CollectResultB6y_EBbr_E0TBbr_Bbr_EE0EEEB4Q_.exit.i11, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %i.o, align 8, !alias.scope !224
  store i64 0, ptr %i.p, align 8, !alias.scope !224
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr inttoptr (i64 16 to ptr), ptr %i.q, align 8, !alias.scope !225
  store i64 0, ptr %i.r, align 8, !alias.scope !225
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB3f_3map11MapConsumerINtNtNtB3f_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultNtB4Q_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7J_6engine4SinkEENCINvMB8D_NtB8D_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB4O_EINtNtB9A_9into_iter8IntoIterB4O_EB4O_B6z_NCNCNvB4Q_11bundle_impl00E0EE0NCB38_s_0INtB5S_13CollectResultB6y_EBbr_E0TBbr_Bbr_EE0EEEB4Q_.exit.i11

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB3f_3map11MapConsumerINtNtNtB3f_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultNtB4Q_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7J_6engine4SinkEENCINvMB8D_NtB8D_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB4O_EINtNtB9A_9into_iter8IntoIterB4O_EB4O_B6z_NCNCNvB4Q_11bundle_impl00E0EE0NCB38_s_0INtB5S_13CollectResultB6y_EBbr_E0TBbr_Bbr_EE0EEEB4Q_.exit.i11: ; preds = %bb.g, %bb.f
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3Y_6engine4SinkEEB1l_EEEB2O_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB3b_3map11MapConsumerINtNtNtB3b_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultNtB4M_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7F_6engine4SinkEENCINvMB8z_NtB8z_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB4K_EINtNtB9w_9into_iter8IntoIterB4K_EB4K_B6v_NCNCNvB4M_11bundle_impl00E0EE0NCB34_s_0INtB5O_13CollectResultB6u_EBbn_E0TBbn_Bbn_EE0BbU_EEB4M_.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB3f_3map11MapConsumerINtNtNtB3f_7collect8consumer15CollectConsumerTINtNtB4_6result6ResultNtB4Q_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7J_6engine4SinkEENCINvMB8D_NtB8D_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB4O_EINtNtB9A_9into_iter8IntoIterB4O_EB4O_B6z_NCNCNvB4Q_11bundle_impl00E0EE0NCB38_s_0INtB5S_13CollectResultB6y_EBbr_E0TBbr_Bbr_EE0EEEB4Q_.exit.i11
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB1O_3map11MapConsumerIB5s_INtNtNtB1O_7collect8consumer15CollectConsumerINtNtCs3oUPovFnLWP_4core6result6ResultTB3V_NtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB7s_4diag16SourceDiagnosticEEENCNvNtB4L_7export_6export0ENvMs0_B3r_B3o_4refsEE0NCB1H_s_0INtB5Z_13CollectResultB6F_EBao_E0TBao_Bao_EEB4L_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [224 x i8], align 8               ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.d = load i64, ptr %i.c, align 128, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 200 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %3, i64 136, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 3 uses
  store i64 0, ptr %i.f, align 8
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB2I_3map11MapConsumerIB6m_INtNtNtB2I_7collect8consumer15CollectConsumerINtNtCs3oUPovFnLWP_4core6result6ResultTB4P_NtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB8m_4diag16SourceDiagnosticEEENCNvNtB5F_7export_6export0ENvMs0_B4l_B4i_4refsEE0NCB2B_s_0INtB6T_13CollectResultB7z_EBbi_E0TBbi_Bbi_EE0BbP_ENtB5_3Job7executeB5F_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.i = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx13, align 8 ; 3 uses
  switch i64 %.sroa.3.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %.noexc
    i64 1, label %bb.e
    i64 2, label %.noexc11
  ], !prof !26

default.unreachable1.i.i:                         ; preds = %bb.d
  unreachable

.noexc:                                           ; preds = %bb.d
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #45
  unreachable

.noexc11:                                         ; preds = %bb.d
  %i.j = extractelement <2 x ptr> %i.i, i64 0     ; 2 uses
  %i.k = extractelement <2 x ptr> %i.i, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j), "nonnull"(ptr %i.k) ]
  call void @_RNvNtCsf1gSX8u3EQ2_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k) #46
  unreachable

bb.e:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store <2 x ptr> %i.i, ptr %0, align 8, !alias.scope !231
  %.sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx15, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB3b_3map11MapConsumerIB6P_INtNtNtB3b_7collect8consumer15CollectConsumerINtNtB4_6result6ResultTB5i_NtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB8z_4diag16SourceDiagnosticEEENCNvNtB68_7export_6export0ENvMs0_B4O_B4L_4refsEE0NCB34_s_0INtB7m_13CollectResultB82_EBbv_E0TBbv_Bbv_EE0Bc2_EEB68_.exit: ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm

bb.f:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3G_4diag16SourceDiagnosticEEEB1l_EEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB3b_3map11MapConsumerIB6P_INtNtNtB3b_7collect8consumer15CollectConsumerINtNtB4_6result6ResultTB5i_NtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB8z_4diag16SourceDiagnosticEEENCNvNtB68_7export_6export0ENvMs0_B4O_B4L_4refsEE0NCB34_s_0INtB7m_13CollectResultB82_EBbv_E0TBbv_Bbv_EE0Bc2_EEB68_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB1O_13flat_map_iter19FlatMapIterConsumerNtNtB1O_6extend15ListVecConsumerNCNvNtB3t_4link19create_link_anchors0EE0NCB1H_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB6a_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEB63_E0TB63_B63_EEB3t_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.d = load i64, ptr %i.c, align 128, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 3 uses
  store i64 0, ptr %i.f, align 8
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB2I_13flat_map_iter19FlatMapIterConsumerNtNtB2I_6extend15ListVecConsumerNCNvNtB4n_4link19create_link_anchors0EE0NCB2B_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB74_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEB6X_E0TB6X_B6X_EE0Bab_ENtB5_3Job7executeB4n_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.i = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx13, align 8 ; 3 uses
  switch i64 %.sroa.3.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %.noexc
    i64 1, label %bb.e
    i64 2, label %.noexc11
  ], !prof !26

default.unreachable1.i.i:                         ; preds = %bb.d
  unreachable

.noexc:                                           ; preds = %bb.d
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #45
  unreachable

.noexc11:                                         ; preds = %bb.d
  %i.j = extractelement <2 x ptr> %i.i, i64 0     ; 2 uses
  %i.k = extractelement <2 x ptr> %i.i, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j), "nonnull"(ptr %i.k) ]
  call void @_RNvNtCsf1gSX8u3EQ2_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k) #46
  unreachable

bb.e:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <2 x ptr> %i.i, ptr %0, align 8, !alias.scope !237
  %.sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx15, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB3b_13flat_map_iter19FlatMapIterConsumerNtNtB3b_6extend15ListVecConsumerNCNvNtB4Q_4link19create_link_anchors0EE0NCB34_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB7x_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEB7q_E0TB7q_B7q_EE0BaE_EEB4Q_.exit: ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm

bb.f:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEB1l_EEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB3b_13flat_map_iter19FlatMapIterConsumerNtNtB3b_6extend15ListVecConsumerNCNvNtB4Q_4link19create_link_anchors0EE0NCB34_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB7x_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEB7q_E0TB7q_B7q_EE0BaE_EEB4Q_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileE0EB2L_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !265, !noundef !19 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !265, !noundef !19 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8
  %i.m = add i64 %i.k, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.p
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCs2qDE43xvXom_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !266 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  br label %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECsgpMJJHpo27b_12typst_bundle.exit

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %i.h) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !268
  %i.u = icmp ult i64 %..i, 15
  br i1 %i.u, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.v, label %bb.j, label %bb.f, !prof !22

.thread.i:                                        ; preds = %bb.d
  %i.w = icmp samesign ult i64 %..i, 4
  %i.x = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.x, 8
  %.sroa.03.0.i.i = select i1 %i.w, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = shl nuw i64 %..i, 3
  %i.z = udiv i64 %i.y, 7
  %i.aa = add nsw i64 %i.z, -1
  %i.ab = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = lshr i64 -1, %i.ab                      ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, 1
  %or.cond8.i.i = icmp samesign ugt i64 %i.ac, 2305843009213693949
  br i1 %or.cond8.i.i, label %bb.h, label %bb.g, !prof !27

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.sroa.4.0.i.ph8.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.ad, %bb.f ] ; 5 uses
  %i.ae = shl nuw i64 %.sroa.4.0.i.ph8.i, 3
  %i.af = add nuw i64 %i.ae, 8
  %i.ag = and i64 %i.af, -16                      ; 3 uses
  %i.ah = add nuw nsw i64 %.sroa.4.0.i.ph8.i, 16  ; 2 uses
  %i.ai = add i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  %i.ak = icmp ugt i64 %i.ai, 9223372036854775792
  %or.cond.i.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i.i, label %bb.h, label %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !28

_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.g
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !269
  %i.al = call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !269 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.i, label %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsgpMJJHpo27b_12typst_bundle.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.an = call { i64, i64 } @_RNvMNtCs2qDE43xvXom_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !269
  br label %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsgpMJJHpo27b_12typst_bundle.exit.thread

bb.i:                                             ; preds = %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ao = call { i64, i64 } @_RNvMNtCs2qDE43xvXom_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %4, i64 noundef 16, i64 noundef %i.ai), !noalias !269
  br label %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsgpMJJHpo27b_12typst_bundle.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.ap = call { i64, i64 } @_RNvMNtCs2qDE43xvXom_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !270
  br label %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsgpMJJHpo27b_12typst_bundle.exit.thread

_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.aq = icmp samesign ult i64 %.sroa.4.0.i.ph8.i, 9
  %i.ar = add nsw i64 %.sroa.4.0.i.ph8.i, -1      ; 7 uses
  %i.as = lshr i64 %.sroa.4.0.i.ph8.i, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.09.0.i.i = select i1 %i.aq, i64 %i.ar, i64 %i.at ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.au, i8 -1, i64 %i.ah, i1 false), !noalias !270
  store ptr %i.e, ptr %i.a, align 8, !noalias !268
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !268
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !268
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.au, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !268
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.ar, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !268
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.09.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !268
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !268
  %i.av = load i64, ptr %i.f, align 8, !alias.scope !271, !noundef !19 ; 3 uses
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = ptrtoint ptr %i.au to i64
  br i1 %i.aw, label %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsgpMJJHpo27b_12typst_bundle.exit.._crit_edge37_crit_edge, label %.preheader.lr.ph

_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsgpMJJHpo27b_12typst_bundle.exit.._crit_edge37_crit_edge: ; preds = %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsgpMJJHpo27b_12typst_bundle.exit
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !272, !noalias !273
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge37

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsgpMJJHpo27b_12typst_bundle.exit
  %i.ay = load ptr, ptr %0, align 8, !alias.scope !271, !nonnull !19, !noundef !19 ; 5 uses
  %.val326 = load <16 x i8>, ptr %i.ay, align 16
  %i.az = icmp sgt <16 x i8> %.val326, splat (i8 -1)
  %i.ba = bitcast <16 x i1> %i.az to i16
  %.val2.i = load i64, ptr %i.d, align 8, !noalias !274, !noundef !19 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !nonnull !19
  br label %.preheader

_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsgpMJJHpo27b_12typst_bundle.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.ap, %bb.j ], [ %i.an, %bb.h ], [ %i.ao, %bb.i ] ; 2 uses
  %.sroa.12.024 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.025 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !268
  br label %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECsgpMJJHpo27b_12typst_bundle.exit

bb.k:                                             ; preds = %bb.l
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #49, !noalias !273
  resume { ptr, i32 } %i.bb

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.036 = phi ptr [ %i.ay, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.035 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.034 = phi i64 [ %i.av, %.preheader.lr.ph ], [ %i.bz, %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.033 = phi i16 [ %i.ba, %.preheader.lr.ph ], [ %i.bx, %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i128 = icmp eq i16 %.sroa.13.033, 0
  br i1 %.not.i128, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.130 = phi ptr [ %i.bc, %.noexc2 ], [ %.sroa.0.036, %.preheader ] ; 2 uses
  %.sroa.5.129 = phi i64 [ %i.bf, %.noexc2 ], [ %.sroa.5.035, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.130) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.130, i64 16 ; 3 uses
  %.val27 = load <16 x i8>, ptr %i.bc, align 16
  %i.bd = icmp sgt <16 x i8> %.val27, splat (i8 -1)
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %i.bf = add i64 %.sroa.5.129, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.be, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge37:                                    ; preds = %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsgpMJJHpo27b_12typst_bundle.exit.._crit_edge37_crit_edge
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsgpMJJHpo27b_12typst_bundle.exit.._crit_edge37_crit_edge ], [ %i.ay, %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %i.bg = sub i64 %.sroa.09.0.i.i, %i.av
  store i64 %i.ax, ptr %0, align 8, !alias.scope !272, !noalias !273
end_hunk_0
begin_hunk_1_@_RNCINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesE0E0CsgpMJJHpo27b_12typst_bundle:bb.a
  br i1 %i.g, label %_RNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesE0CsgpMJJHpo27b_12typst_bundle.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.val3, i64 noundef %.val2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #45
  unreachable

_RNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesE0CsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.a
  %.val = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %.val3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !19
  ret i64 %i.j
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_B3I_E0E0CsgpMJJHpo27b_12typst_bundle(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [40 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -40
  %i.e = tail call fastcc noundef i64 @_RINvYNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRRNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
  ret i64 %i.e
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTRNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtBX_4span4SpanEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0E0CsgpMJJHpo27b_12typst_bundle(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.e = tail call fastcc noundef i64 @_RINvYNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRRNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
  ret i64 %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0E0CsgpMJJHpo27b_12typst_bundle(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [48 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -48
  %.val = load i64, ptr %i.d, align 8, !alias.scope !9448, !noalias !9449, !noundef !19
  %i.e = mul i64 %.val, -1065810590584100411      ; 2 uses
  %i.f = tail call noundef i64 @llvm.fshl.i64(i64 %i.e, i64 %i.e, i64 26)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtBY_3map11MapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtB2z_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5G_6engine4SinkEENCINvMB6A_NtB6A_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB2x_EINtNtB7x_9into_iter8IntoIterB2x_EB2x_B4g_NCNCNvB2z_11bundle_impl00E0EE0NCBR_s_0INtB3A_13CollectResultB4f_EB9n_E0B2z_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %1, ptr noundef nonnull align 128 %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [128 x i8], align 8               ; 14 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [128 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.h = load i64, ptr %i.g, align 128, !noundef !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  store ptr %i.f, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.n = load atomic i64, ptr %i.m monotonic, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  %i.p = load atomic i64, ptr %i.o seq_cst, align 8
  %i.q = sub i64 %i.n, %i.p
  %i.r = icmp slt i64 %i.q, 1
  %i.s = load ptr, ptr %i.k, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 264
  %i.u = load atomic i64, ptr %i.t monotonic, align 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  %i.w = load atomic i64, ptr %i.v acquire, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !noundef !19 ; 3 uses
  %i.z = sub i64 %i.u, %i.w
  %.not.i = icmp slt i64 %i.z, %i.y
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !21

.thread:                                          ; preds = %bb.k, %bb.b, %.sink.split.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.b:                                             ; preds = %bb.a
  %i.ab = shl i64 %i.y, 1
  invoke fastcc void @_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE6resizeCsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull align 8 %i.k, i64 noundef %i.ab)
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.b
  %i.ac = load i64, ptr %i.x, align 8, !noundef !19
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.a
  %.sroa.02.0.i = phi i64 [ %i.ac, %.noexc ], [ %i.y, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 288
  %.sroa.01.0.i = load ptr, ptr %i.ad, align 32, !noundef !19
  %i.ae = add i64 %.sroa.02.0.i, -1
  %i.af = and i64 %i.ae, %i.u
  %i.ag = getelementptr inbounds [16 x i8], ptr %.sroa.01.0.i, i64 %i.af ; 2 uses
  store volatile ptr @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4I_6engine4SinkEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerNtB3y_5ChildEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvMB5C_NtB5C_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB7h_EINtNtB90_9into_iter8IntoIterB7h_EB7h_B2U_NCNCNvB3y_11bundle_impl00E0EEs_0E0B1P_ENtB5_3Job7executeB3y_, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store volatile ptr %i.e, ptr %i.ah, align 8
  fence release
  %i.ai = load ptr, ptr %i.k, align 8, !nonnull !19, !noundef !19
  %i.aj = add i64 %i.u, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 264
  store atomic i64 %i.aj, ptr %i.ak release, align 8
  %i.al = load ptr, ptr %i.f, align 16, !nonnull !19, !noundef !19 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 496 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ao = load atomic i64, ptr %i.an seq_cst, align 8 ; 4 uses
  %i.ap = and i64 %i.ao, 4294967296
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.e, label %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsgpMJJHpo27b_12typst_bundle.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ar = or disjoint i64 %i.ao, 4294967296       ; 2 uses
  %i.as = cmpxchg ptr %i.an, i64 %i.ao, i64 %i.ar seq_cst monotonic, align 8
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.as, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsgpMJJHpo27b_12typst_bundle.exit.i, label %bb.d

_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i = phi i64 [ %i.ar, %bb.e ], [ %i.ao, %bb.d ] ; 2 uses
  %i.at = and i64 %.sroa.0.0.i.i, 65535           ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsgpMJJHpo27b_12typst_bundle.exit.i
  br i1 %i.r, label %bb.g, label %.sink.split.i, !prof !21

.sink.split.i:                                    ; preds = %bb.g, %bb.f
  invoke void @_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.am, i32 noundef 1)
          to label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.g:                                             ; preds = %bb.f
  %i.av = lshr i64 %.sroa.0.0.i.i, 16
  %i.aw = and i64 %i.av, 65535
  %i.ax = icmp eq i64 %i.aw, %i.at
  br i1 %i.ax, label %.sink.split.i, label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !22

_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.g, %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsgpMJJHpo27b_12typst_bundle.exit.i, %.sink.split.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.098.0.copyload = load ptr, ptr %i.ay, align 8, !nonnull !19, !noundef !19
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.499.0.copyload = load ptr, ptr %.sroa.499.0..sroa_idx, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.5100.0.copyload = load i64, ptr %.sroa.5100.0..sroa_idx, align 8
  %.sroa.6101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.6101.sroa.0.0.copyload = load i64, ptr %.sroa.6101.0..sroa_idx, align 8
  %.sroa.6101.sroa.4.0..sroa.6101.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.az = load i64, ptr %.sroa.098.0.copyload, align 8, !noalias !9471, !noundef !19
  %i.ba = load i64, ptr %.sroa.499.0.copyload, align 8, !noalias !9471, !noundef !19
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.499.0.copyload, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !9471, !noundef !19
  %i.bd = inttoptr i64 %.sroa.5100.0.copyload to ptr
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtB1G_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4N_6engine4SinkEENCINvMB5H_NtB5H_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB1E_EINtNtB6E_9into_iter8IntoIterB1E_EB1E_B3n_NCNCNvB1G_11bundle_impl00E0EEB1G_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.az, i1 noundef zeroext %3, i64 noundef %i.ba, i64 noundef %i.bc, ptr noalias nofree noundef nonnull align 16 %i.bd, i64 noundef %.sroa.6101.sroa.0.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %.sroa.6101.sroa.4.0..sroa.6101.0..sroa_idx.sroa_idx)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  %i.bg = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bf)
          to label %bb.k unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #47
  unreachable

bb.j:                                             ; preds = %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.0113.0.copyload = load ptr, ptr %i.b, align 8 ; 4 uses
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4114.0.copyload = load ptr, ptr %.sroa.4114.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5115.0.copyload = load i64, ptr %.sroa.5115.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.bi = extractvalue { ptr, ptr } %i.bg, 0      ; 2 uses
  %i.bj = extractvalue { ptr, ptr } %i.bg, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi), "nonnull"(ptr %i.bj) ]
  invoke void @_RNvNtCsf1gSX8u3EQ2_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.i, ptr noundef nonnull %i.bi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj) #46
          to label %bb.aj unwind label %.thread

.loopexit170:                                     ; preds = %bb.m, %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread155

.loopexit.split-lp:                               ; preds = %bb.ah, %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread155

bb.l:                                             ; preds = %bb.j, %bb.r
  %i.bk = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bl = icmp eq i64 %i.bk, 3
  br i1 %i.bl, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = invoke fastcc { ptr, ptr } @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread14take_local_job(ptr noundef nonnull align 128 %2)
          to label %bb.p unwind label %.loopexit170 ; 2 uses

.loopexit:                                        ; preds = %bb.l, %bb.ah, %bb.ag
  %.sroa.3.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.484.0.copyload = load ptr, ptr %.sroa.484.0..sroa_idx, align 8 ; 3 uses
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.585.0.copyload = load ptr, ptr %.sroa.585.0..sroa_idx, align 8 ; 3 uses
  switch i64 %.sroa.3.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %bb.n
    i64 1, label %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4I_6engine4SinkEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerNtB3y_5ChildEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvMB5C_NtB5C_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB7h_EINtNtB90_9into_iter8IntoIterB7h_EB7h_B2U_NCNCNvB3y_11bundle_impl00E0EEs_0E0B1P_E11into_resultB3y_.exit
    i64 2, label %bb.o
  ], !prof !26

default.unreachable1.i.i:                         ; preds = %.loopexit
  unreachable

bb.n:                                             ; preds = %.loopexit
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #45
          to label %.noexc.i unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsf1gSX8u3EQ2_10rayon_core4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4Y_6engine4SinkEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerNtB3O_5ChildEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvMB5S_NtB5S_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB7x_EINtNtB9g_9into_iter8IntoIterB7x_EB7x_B3q_NCNCNvB3O_11bundle_impl00E0EEs_0E0EEEB3O_.exit.i, !noalias !9472

.noexc.i:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %.loopexit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.484.0.copyload), "nonnull"(ptr %.sroa.585.0.copyload) ]
  invoke void @_RNvNtCsf1gSX8u3EQ2_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.484.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.585.0.copyload) #46
          to label %.noexc1.i unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsf1gSX8u3EQ2_10rayon_core4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4Y_6engine4SinkEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerNtB3O_5ChildEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvMB5S_NtB5S_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB7x_EINtNtB9g_9into_iter8IntoIterB7x_EB7x_B3q_NCNCNvB3O_11bundle_impl00E0EEs_0E0EEEB3O_.exit.i, !noalias !9472

.noexc1.i:                                        ; preds = %bb.o
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsf1gSX8u3EQ2_10rayon_core4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4Y_6engine4SinkEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerNtB3O_5ChildEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvMB5S_NtB5S_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB7x_EINtNtB9g_9into_iter8IntoIterB7x_EB7x_B3q_NCNCNvB3O_11bundle_impl00E0EEs_0E0EEEB3O_.exit.i: ; preds = %bb.o, %bb.n
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB2b_6engine4SinkEEB11_(ptr noalias nofree noundef nonnull align 16 %.sroa.0113.0.copyload, i64 noundef %.sroa.5115.0.copyload)
          to label %.thread165 unwind label %bb.ai

bb.p:                                             ; preds = %bb.m
  %i.bo = extractvalue { ptr, ptr } %i.bm, 0      ; 3 uses
  %i.bp = extractvalue { ptr, ptr } %i.bm, 1      ; 2 uses
  %.not = icmp eq ptr %i.bo, null                 ; 2 uses
  br i1 %.not, label %bb.ag, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = icmp eq ptr %i.e, %i.bp
  %i.br = icmp eq ptr %i.bo, @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4I_6engine4SinkEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerNtB3y_5ChildEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvMB5C_NtB5C_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB7h_EINtNtB90_9into_iter8IntoIterB7h_EB7h_B2U_NCNCNvB3y_11bundle_impl00E0EEs_0E0B1P_ENtB5_3Job7executeB3y_
  %or.cond = and i1 %i.bq, %i.br
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void %i.bo(ptr noundef %i.bp)
          to label %bb.l unwind label %.loopexit170

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull align 8 dereferenceable(128) %i.e, i64 128, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !9473)
  %.sroa.0.0.copyload.i52 = load ptr, ptr %i.c, align 8, !alias.scope !9473 ; 2 uses
  %.not.i53 = icmp eq ptr %.sroa.0.0.copyload.i52, null
  br i1 %.not.i53, label %bb.u, label %bb.t, !prof !22

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.3.i.sroa.6.0.copyload = load i64, ptr %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !9474
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.3.i.sroa.5.0.copyload = load ptr, ptr %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !9474, !nonnull !19, !noundef !19
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.i.sroa.4.0.copyload = load ptr, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !9474, !nonnull !19, !noundef !19 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3.i.sroa.0.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !9474, !nonnull !19, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  %i.bt = load i64, ptr %.sroa.0.0.copyload.i52, align 8, !noalias !9475, !noundef !19
  %i.bu = load i64, ptr %.sroa.3.i.sroa.0.0.copyload, align 8, !noalias !9475, !noundef !19
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = load i64, ptr %.sroa.3.i.sroa.4.0.copyload, align 8, !noalias !9475, !noundef !19
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.3.i.sroa.4.0.copyload, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !noalias !9475, !noundef !19
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtB1G_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4N_6engine4SinkEENCINvMB5H_NtB5H_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB1E_EINtNtB6E_9into_iter8IntoIterB1E_EB1E_B3n_NCNCNvB1G_11bundle_impl00E0EEB1G_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.bv, i1 noundef zeroext %3, i64 noundef %i.bw, i64 noundef %i.by, ptr noalias nofree noundef nonnull align 16 %.sroa.3.i.sroa.5.0.copyload, i64 noundef %.sroa.3.i.sroa.6.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.x unwind label %bb.v, !inline_history !9465

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #46
          to label %bb.w unwind label %bb.v, !noalias !9476, !inline_history !9466

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4m_6engine4SinkEEEEEB3c_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ca) #49
          to label %.thread155 unwind label %bb.ad, !noalias !9474, !inline_history !9466

bb.w:                                             ; preds = %bb.u
  unreachable

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9475
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  call void @llvm.experimental.noalias.scope.decl(metadata !9477)
  call void @llvm.experimental.noalias.scope.decl(metadata !9478)
  %i.cc = load i64, ptr %i.cb, align 8, !range !31, !alias.scope !9479, !noundef !19
  switch i64 %i.cc, label %bb.y [
    i64 0, label %bb.ae
    i64 1, label %bb.ac
  ]

bb.y:                                             ; preds = %bb.x
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.val2.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !9479 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.val3.i.i = load ptr, ptr %i.ce, align 8, !alias.scope !9479, !nonnull !19, !align !36, !noundef !19 ; 5 uses
  %i.cf = load ptr, ptr %.val3.i.i, align 8, !invariant.load !19, !noalias !9479 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  invoke void %i.cf(ptr noundef nonnull %.val2.i.i)
          to label %bb.aa unwind label %bb.ab, !noalias !9479

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !range !37, !invariant.load !19, !noalias !9479 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.ae, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.aa
  %i.cj = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !range !38, !invariant.load !19, !noalias !9479
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %i.ch, i64 noundef range(i64 1, -9223372036854775807) %i.ck) #48, !noalias !9479
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !range !37, !invariant.load !19, !noalias !9479 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %.thread155, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.ab
  %i.cp = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !range !38, !invariant.load !19, !noalias !9479
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %i.cn, i64 noundef range(i64 1, -9223372036854775807) %i.cq) #48, !noalias !9479
  br label %.thread155

bb.ac:                                            ; preds = %bb.x
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.val.i.i = load ptr, ptr %i.cr, align 8, !alias.scope !9479, !noundef !19
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.val1.i.i = load i64, ptr %i.cs, align 8, !alias.scope !9479, !noundef !19
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB2b_6engine4SinkEEB11_(ptr noalias nofree noundef nonnull align 16 %.val.i.i, i64 noundef %.val1.i.i)
          to label %bb.ae unwind label %.loopexit.split-lp

bb.ad:                                            ; preds = %bb.v
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !9476, !inline_history !9466
  unreachable

bb.ae:                                            ; preds = %bb.ac, %bb.x, %bb.aa, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %.sroa.0113.0.copyload, ptr %0, align 8
  %.sroa.4.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4114.0.copyload, ptr %.sroa.4.0..sroa_idx75, align 8
  %.sroa.5.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5115.0.copyload, ptr %.sroa.5.0..sroa_idx76, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.af

bb.af:                                            ; preds = %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4I_6engine4SinkEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerNtB3y_5ChildEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvMB5C_NtB5C_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB7h_EINtNtB90_9into_iter8IntoIterB7h_EB7h_B2U_NCNCNvB3y_11bundle_impl00E0EEs_0E0B1P_E11into_resultB3y_.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.ag:                                            ; preds = %bb.p
  %i.cv = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.cw = icmp eq i64 %i.cv, 3
  br i1 %i.cw, label %.loopexit, label %bb.ah, !prof !21

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit unwind label %.loopexit.split-lp

_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4I_6engine4SinkEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerNtB3y_5ChildEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvMB5C_NtB5C_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB7h_EINtNtB90_9into_iter8IntoIterB7h_EB7h_B2U_NCNCNvB3y_11bundle_impl00E0EEs_0E0B1P_E11into_resultB3y_.exit: ; preds = %.loopexit
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.686.0.copyload = load i64, ptr %.sroa.686.0..sroa_idx, align 8
  store ptr %.sroa.0113.0.copyload, ptr %0, align 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4114.0.copyload, ptr %.sroa.578.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5115.0.copyload, ptr %.sroa.6.0..sroa_idx79, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.484.0.copyload, ptr %i.cx, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.585.0.copyload, ptr %.sroa.481.0..sroa_idx, align 8
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.686.0.copyload, ptr %.sroa.582.0..sroa_idx, align 8
  br label %bb.af

bb.ai:                                            ; preds = %.thread155, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsf1gSX8u3EQ2_10rayon_core4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4Y_6engine4SinkEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerNtB3O_5ChildEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvMB5S_NtB5S_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB7x_EINtNtB9g_9into_iter8IntoIterB7x_EB7x_B3q_NCNCNvB3O_11bundle_impl00E0EEs_0E0EEEB3O_.exit.i, %bb.ak
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

.thread155:                                       ; preds = %.loopexit170, %.loopexit.split-lp, %bb.v, %bb.ab, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i
  %.sroa.019.2.lpad-body = phi i1 [ false, %bb.ab ], [ false, %bb.v ], [ false, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ true, %.loopexit170 ], [ %.not, %.loopexit.split-lp ]
  %eh.lpad-body56 = phi { ptr, i32 } [ %i.cl, %bb.ab ], [ %i.bz, %bb.v ], [ %i.cl, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %lpad.loopexit, %.loopexit170 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB2b_6engine4SinkEEB11_(ptr noalias nofree noundef nonnull align 16 %.sroa.0113.0.copyload, i64 noundef %.sroa.5115.0.copyload)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3e_6engine4SinkEEEB24_.exit59 unwind label %bb.ai

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3e_6engine4SinkEEEB24_.exit59: ; preds = %.thread155
  br i1 %.sroa.019.2.lpad-body, label %bb.ak, label %.thread165

bb.aj:                                            ; preds = %bb.k
  unreachable

bb.ak:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3e_6engine4SinkEEEB24_.exit59, %.thread
  %.pn46138 = phi { ptr, i32 } [ %i.aa, %.thread ], [ %eh.lpad-body56, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3e_6engine4SinkEEEB24_.exit59 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4V_6engine4SinkEENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_3vec13DrainProducerNtB3L_5ChildEINtNtB2p_3map11MapConsumerINtB2l_15CollectConsumerB3m_ENCINvMB5P_NtB5P_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB7u_EINtNtB9d_9into_iter8IntoIterB7u_EB7u_B3n_NCNCNvB3L_11bundle_impl00E0EEs_0E0B2i_EEB3L_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.e) #49
          to label %.thread165 unwind label %bb.ai

.thread165:                                       ; preds = %bb.ak, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsf1gSX8u3EQ2_10rayon_core4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4Y_6engine4SinkEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerNtB3O_5ChildEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvMB5S_NtB5S_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB7x_EINtNtB9g_9into_iter8IntoIterB7x_EB7x_B3q_NCNCNvB3O_11bundle_impl00E0EEs_0E0EEEB3O_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3e_6engine4SinkEEEB24_.exit59
  %.pn46137168 = phi { ptr, i32 } [ %eh.lpad-body56, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3e_6engine4SinkEEEB24_.exit59 ], [ %i.bn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCsf1gSX8u3EQ2_10rayon_core4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4Y_6engine4SinkEENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerNtB3O_5ChildEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvMB5S_NtB5S_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB7x_EINtNtB9g_9into_iter8IntoIterB7x_EB7x_B3q_NCNCNvB3O_11bundle_impl00E0EEs_0E0EEEB3O_.exit.i ], [ %.pn46138, %bb.ak ]
  resume { ptr, i32 } %.pn46137168
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtBY_3map11MapConsumerIB4C_INtNtNtBY_7collect8consumer15CollectConsumerINtNtCs3oUPovFnLWP_4core6result6ResultTB35_NtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB6A_4diag16SourceDiagnosticEEENCNvNtB3V_7export_6export0ENvMs0_B2B_B2y_4refsEE0NCBR_s_0INtB58_13CollectResultB5N_EB9v_E0B3V_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %1, ptr noundef nonnull align 128 %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [136 x i8], align 8               ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [136 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.h = load i64, ptr %i.g, align 128, !noundef !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  store ptr %i.f, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  store i64 0, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.n = load atomic i64, ptr %i.m monotonic, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  %i.p = load atomic i64, ptr %i.o seq_cst, align 8
  %i.q = sub i64 %i.n, %i.p
  %i.r = icmp slt i64 %i.q, 1
  %i.s = load ptr, ptr %i.k, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 264
  %i.u = load atomic i64, ptr %i.t monotonic, align 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  %i.w = load atomic i64, ptr %i.v acquire, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !noundef !19 ; 3 uses
  %i.z = sub i64 %i.u, %i.w
  %.not.i = icmp slt i64 %i.z, %i.y
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !21

bb.b:                                             ; preds = %.thread143
  br i1 %.sroa.019.2.lpad-body, label %bb.al, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4D_4diag16SourceDiagnosticEEENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketB3J_NtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB2p_3map11MapConsumerIB9j_INtB2l_15CollectConsumerB3m_ENCNvNtB8C_7export_6export0ENvMs0_B82_B7Z_4refsEEs_0E0B2i_EEB8C_.exit

.thread:                                          ; preds = %bb.l, %bb.c, %.sink.split.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  %i.ab = shl i64 %i.y, 1
  invoke fastcc void @_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE6resizeCsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull align 8 %i.k, i64 noundef %i.ab)
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.c
  %i.ac = load i64, ptr %i.x, align 8, !noundef !19
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.a
  %.sroa.02.0.i = phi i64 [ %i.ac, %.noexc ], [ %i.y, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 288
  %.sroa.01.0.i = load ptr, ptr %i.ad, align 32, !noundef !19
  %i.ae = add i64 %.sroa.02.0.i, -1
  %i.af = and i64 %i.ae, %i.u
  %i.ag = getelementptr inbounds [16 x i8], ptr %.sroa.01.0.i, i64 %i.af ; 2 uses
  store volatile ptr @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultINtNtCs3oUPovFnLWP_4core6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4q_4diag16SourceDiagnosticEEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketB3w_NtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB1W_3map11MapConsumerIB96_INtB1S_15CollectConsumerB2T_ENCNvNtB8p_7export_6export0ENvMs0_B7P_B7M_4refsEEs_0E0B1P_ENtB5_3Job7executeB8p_, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store volatile ptr %i.e, ptr %i.ah, align 8
  fence release
  %i.ai = load ptr, ptr %i.k, align 8, !nonnull !19, !noundef !19
  %i.aj = add i64 %i.u, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 264
  store atomic i64 %i.aj, ptr %i.ak release, align 8
  %i.al = load ptr, ptr %i.f, align 16, !nonnull !19, !noundef !19 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 496 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.ao = load atomic i64, ptr %i.an seq_cst, align 8 ; 4 uses
  %i.ap = and i64 %i.ao, 4294967296
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsgpMJJHpo27b_12typst_bundle.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ar = or disjoint i64 %i.ao, 4294967296       ; 2 uses
  %i.as = cmpxchg ptr %i.an, i64 %i.ao, i64 %i.ar seq_cst monotonic, align 8
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.as, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsgpMJJHpo27b_12typst_bundle.exit.i, label %bb.e

_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ %i.ar, %bb.f ], [ %i.ao, %bb.e ] ; 2 uses
  %i.at = and i64 %.sroa.0.0.i.i, 65535           ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsgpMJJHpo27b_12typst_bundle.exit.i
  br i1 %i.r, label %bb.h, label %.sink.split.i, !prof !21

.sink.split.i:                                    ; preds = %bb.h, %bb.g
  invoke void @_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.am, i32 noundef 1)
          to label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.h:                                             ; preds = %bb.g
  %i.av = lshr i64 %.sroa.0.0.i.i, 16
  %i.aw = and i64 %i.av, 65535
  %i.ax = icmp eq i64 %i.aw, %i.at
  br i1 %i.ax, label %.sink.split.i, label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !22

_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.h, %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsgpMJJHpo27b_12typst_bundle.exit.i, %.sink.split.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.095.0.copyload = load ptr, ptr %i.ay, align 8, !nonnull !19, !noundef !19
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.496.0.copyload = load ptr, ptr %.sroa.496.0..sroa_idx, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.597.0.copyload = load i64, ptr %.sroa.597.0..sroa_idx, align 8
  %.sroa.698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.698.sroa.0.0.copyload = load i64, ptr %.sroa.698.0..sroa_idx, align 8
  %.sroa.698.sroa.4.0..sroa.698.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.az = load i64, ptr %.sroa.095.0.copyload, align 8, !noalias !9494, !noundef !19
  %i.ba = load i64, ptr %.sroa.496.0.copyload, align 8, !noalias !9494, !noundef !19
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.496.0.copyload, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !9494, !noundef !19
  %i.bd = inttoptr i64 %.sroa.597.0.copyload to ptr
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB6_3map11MapConsumerIB3J_INtNtNtB6_7collect8consumer15CollectConsumerINtNtCs3oUPovFnLWP_4core6result6ResultTB2c_NtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB5H_4diag16SourceDiagnosticEEENCNvNtB32_7export_6export0ENvMs0_B1I_B1F_4refsEEB32_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.az, i1 noundef zeroext %3, i64 noundef %i.ba, i64 noundef %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bd, i64 noundef %.sroa.698.sroa.0.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(32) %.sroa.698.sroa.4.0..sroa.698.0..sroa_idx.sroa_idx)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  %i.bg = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bf)
          to label %bb.l unwind label %bb.j       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #47
  unreachable

bb.k:                                             ; preds = %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.0110.0.copyload = load ptr, ptr %i.b, align 8 ; 5 uses
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4111.0.copyload = load ptr, ptr %.sroa.4111.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5112.0.copyload = load i64, ptr %.sroa.5112.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.bi = extractvalue { ptr, ptr } %i.bg, 0      ; 2 uses
  %i.bj = extractvalue { ptr, ptr } %i.bg, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi), "nonnull"(ptr %i.bj) ]
  invoke void @_RNvNtCsf1gSX8u3EQ2_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.i, ptr noundef nonnull %i.bi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj) #46
          to label %bb.ak unwind label %.thread

.loopexit157:                                     ; preds = %bb.n, %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread143

.loopexit.split-lp:                               ; preds = %bb.ad, %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread143

bb.m:                                             ; preds = %bb.k, %bb.s
  %i.bk = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bl = icmp eq i64 %i.bk, 3
  br i1 %i.bl, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = invoke fastcc { ptr, ptr } @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread14take_local_job(ptr noundef nonnull align 128 %2)
          to label %bb.q unwind label %.loopexit157 ; 2 uses

.loopexit:                                        ; preds = %bb.m, %bb.ad, %bb.ac
  %.sroa.080.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.481.0.copyload = load ptr, ptr %.sroa.481.0..sroa_idx, align 8 ; 3 uses
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.582.0.copyload = load ptr, ptr %.sroa.582.0..sroa_idx, align 8 ; 3 uses
  switch i64 %.sroa.080.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %bb.o
    i64 1, label %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultINtNtCs3oUPovFnLWP_4core6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4q_4diag16SourceDiagnosticEEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketB3w_NtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB1W_3map11MapConsumerIB96_INtB1S_15CollectConsumerB2T_ENCNvNtB8p_7export_6export0ENvMs0_B7P_B7M_4refsEEs_0E0B1P_E11into_resultB8p_.exit
    i64 2, label %bb.p
  ], !prof !26

default.unreachable1.i.i:                         ; preds = %.loopexit
  unreachable

bb.o:                                             ; preds = %.loopexit
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #45
          to label %.noexc52 unwind label %bb.ae

.noexc52:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %.loopexit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.481.0.copyload), "nonnull"(ptr %.sroa.582.0.copyload) ]
  invoke void @_RNvNtCsf1gSX8u3EQ2_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.481.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.582.0.copyload) #46
          to label %.noexc53 unwind label %bb.ae

.noexc53:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.bn = extractvalue { ptr, ptr } %i.bm, 0      ; 3 uses
  %i.bo = extractvalue { ptr, ptr } %i.bm, 1      ; 2 uses
  %.not = icmp eq ptr %i.bn, null                 ; 2 uses
  br i1 %.not, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = icmp eq ptr %i.e, %i.bo
  %i.bq = icmp eq ptr %i.bn, @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultINtNtCs3oUPovFnLWP_4core6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4q_4diag16SourceDiagnosticEEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketB3w_NtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB1W_3map11MapConsumerIB96_INtB1S_15CollectConsumerB2T_ENCNvNtB8p_7export_6export0ENvMs0_B7P_B7M_4refsEEs_0E0B1P_ENtB5_3Job7executeB8p_
  %or.cond = and i1 %i.bp, %i.bq
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void %i.bn(ptr noundef %i.bo)
          to label %bb.m unwind label %.loopexit157

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(136) %i.e, i64 136, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !9495)
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.0.0.copyload.i54 = load ptr, ptr %i.br, align 8, !alias.scope !9495 ; 2 uses
  %.not.i55 = icmp eq ptr %.sroa.0.0.copyload.i54, null
  br i1 %.not.i55, label %bb.v, label %bb.u, !prof !22

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.3.i.sroa.6.0.copyload = load i64, ptr %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !9496
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.3.i.sroa.5.0.copyload = load ptr, ptr %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !9496, !nonnull !19, !noundef !19
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.3.i.sroa.4.0.copyload = load ptr, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !9496, !nonnull !19, !noundef !19 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.3.i.sroa.0.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !9496, !nonnull !19, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9497
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i64 32, i1 false)
  %i.bt = load i64, ptr %.sroa.0.0.copyload.i54, align 8, !noalias !9497, !noundef !19
  %i.bu = load i64, ptr %.sroa.3.i.sroa.0.0.copyload, align 8, !noalias !9497, !noundef !19
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = load i64, ptr %.sroa.3.i.sroa.4.0.copyload, align 8, !noalias !9497, !noundef !19
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.3.i.sroa.4.0.copyload, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !noalias !9497, !noundef !19
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB6_3map11MapConsumerIB3J_INtNtNtB6_7collect8consumer15CollectConsumerINtNtCs3oUPovFnLWP_4core6result6ResultTB2c_NtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB5H_4diag16SourceDiagnosticEEENCNvNtB32_7export_6export0ENvMs0_B1I_B1F_4refsEEB32_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.bv, i1 noundef zeroext %3, i64 noundef %i.bw, i64 noundef %i.by, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.3.i.sroa.5.0.copyload, i64 noundef %.sroa.3.i.sroa.6.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.y unwind label %bb.w, !inline_history !9492

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #46
          to label %bb.x unwind label %bb.w, !noalias !9498, !inline_history !9493

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3F_4diag16SourceDiagnosticEEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(136) %i.c)
          to label %.thread143 unwind label %bb.z

bb.x:                                             ; preds = %bb.v
  unreachable

bb.y:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9497
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3F_4diag16SourceDiagnosticEEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(136) %i.c)
          to label %bb.aa unwind label %.loopexit.split-lp

bb.z:                                             ; preds = %bb.w
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !9498, !inline_history !9493
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %.sroa.0110.0.copyload, ptr %0, align 8
  %.sroa.4.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4111.0.copyload, ptr %.sroa.4.0..sroa_idx72, align 8
  %.sroa.5.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5112.0.copyload, ptr %.sroa.5.0..sroa_idx73, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultINtNtCs3oUPovFnLWP_4core6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4q_4diag16SourceDiagnosticEEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketB3w_NtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB1W_3map11MapConsumerIB96_INtB1S_15CollectConsumerB2T_ENCNvNtB8p_7export_6export0ENvMs0_B7P_B7M_4refsEEs_0E0B1P_E11into_resultB8p_.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.ac:                                            ; preds = %bb.q
  %i.cc = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.cd = icmp eq i64 %i.cc, 3
  br i1 %i.cd, label %.loopexit, label %bb.ad, !prof !21

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit unwind label %.loopexit.split-lp

bb.ae:                                            ; preds = %bb.p, %bb.o
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = icmp eq i64 %.sroa.5112.0.copyload, 0
  br i1 %i.cf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4D_4diag16SourceDiagnosticEEENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketB3J_NtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB2p_3map11MapConsumerIB9j_INtB2l_15CollectConsumerB3m_ENCNvNtB8C_7export_6export0ENvMs0_B82_B7Z_4refsEEs_0E0B2i_EEB8C_.exit, label %.lr.ph

bb.af:                                            ; preds = %.lr.ph
  %i.cg = icmp eq i64 %i.ci, %.sroa.5112.0.copyload
  br i1 %i.cg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4D_4diag16SourceDiagnosticEEENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketB3J_NtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB2p_3map11MapConsumerIB9j_INtB2l_15CollectConsumerB3m_ENCNvNtB8C_7export_6export0ENvMs0_B82_B7Z_4refsEEs_0E0B2i_EEB8C_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae, %bb.af
  %.sroa.0.0.i.i.i177 = phi i64 [ %i.ci, %bb.af ], [ 0, %bb.ae ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0110.0.copyload, i64 %.sroa.0.0.i.i.i177
  %i.ci = add nuw nsw i64 %.sroa.0.0.i.i.i177, 1  ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1S_4diag16SourceDiagnosticEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ch)
          to label %bb.af unwind label %bb.ah

bb.ag:                                            ; preds = %.lr.ph179
  %i.cj = add i64 %.sroa.0.1.i.i.i178, 1          ; 2 uses
  %i.ck = icmp eq i64 %i.cj, %.sroa.5112.0.copyload
  br i1 %i.ck, label %.body, label %.lr.ph179

bb.ah:                                            ; preds = %.lr.ph
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.cm = icmp eq i64 %i.ci, %.sroa.5112.0.copyload
  br i1 %i.cm, label %.body, label %.lr.ph179

.lr.ph179:                                        ; preds = %bb.ah, %bb.ag
  %.sroa.0.1.i.i.i178 = phi i64 [ %i.cj, %bb.ag ], [ %i.ci, %bb.ah ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0110.0.copyload, i64 %.sroa.0.1.i.i.i178
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1S_4diag16SourceDiagnosticEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cn) #49
          to label %bb.ag unwind label %bb.ai

bb.ai:                                            ; preds = %.lr.ph179
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultINtNtCs3oUPovFnLWP_4core6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4q_4diag16SourceDiagnosticEEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketB3w_NtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB1W_3map11MapConsumerIB96_INtB1S_15CollectConsumerB2T_ENCNvNtB8p_7export_6export0ENvMs0_B7P_B7M_4refsEEs_0E0B1P_E11into_resultB8p_.exit: ; preds = %.loopexit
  %.sroa.683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.683.0.copyload = load i64, ptr %.sroa.683.0..sroa_idx, align 8
  store ptr %.sroa.0110.0.copyload, ptr %0, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4111.0.copyload, ptr %.sroa.575.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5112.0.copyload, ptr %.sroa.6.0..sroa_idx76, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.481.0.copyload, ptr %i.cp, align 8
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.582.0.copyload, ptr %.sroa.478.0..sroa_idx, align 8
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.683.0.copyload, ptr %.sroa.579.0..sroa_idx, align 8
  br label %bb.ab

bb.aj:                                            ; preds = %bb.al, %.thread143
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.ag, %bb.ah, %bb.aj
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

.thread143:                                       ; preds = %.loopexit157, %.loopexit.split-lp, %bb.w
  %.sroa.019.2.lpad-body = phi i1 [ false, %bb.w ], [ true, %.loopexit157 ], [ %.not, %.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.bz, %bb.w ], [ %lpad.loopexit, %.loopexit157 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2W_4diag16SourceDiagnosticEEEECsgpMJJHpo27b_12typst_bundle(ptr %.sroa.0110.0.copyload, i64 %.sroa.5112.0.copyload) #49
          to label %bb.b unwind label %bb.aj

bb.ak:                                            ; preds = %bb.l
  unreachable

bb.al:                                            ; preds = %.thread, %bb.b
  %.pn46132 = phi { ptr, i32 } [ %i.aa, %.thread ], [ %eh.lpad-body, %bb.b ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3F_4diag16SourceDiagnosticEEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(136) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4D_4diag16SourceDiagnosticEEENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketB3J_NtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB2p_3map11MapConsumerIB9j_INtB2l_15CollectConsumerB3m_ENCNvNtB8C_7export_6export0ENvMs0_B82_B7Z_4refsEEs_0E0B2i_EEB8C_.exit unwind label %bb.aj

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4D_4diag16SourceDiagnosticEEENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketB3J_NtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB2p_3map11MapConsumerIB9j_INtB2l_15CollectConsumerB3m_ENCNvNtB8C_7export_6export0ENvMs0_B82_B7Z_4refsEEs_0E0B2i_EEB8C_.exit: ; preds = %bb.af, %bb.ae, %bb.al, %bb.b
  %.pn46131 = phi { ptr, i32 } [ %eh.lpad-body, %bb.b ], [ %.pn46132, %bb.al ], [ %i.ce, %bb.ae ], [ %i.ce, %bb.af ]
  resume { ptr, i32 } %.pn46131
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtBY_13flat_map_iter19FlatMapIterConsumerNtNtBY_6extend15ListVecConsumerNCNvNtB2D_4link19create_link_anchors0EE0NCBR_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB5h_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEB5a_E0B2D_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %1, ptr noundef nonnull align 128 %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [112 x i8], align 8               ; 14 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 16               ; 9 uses
  %i.f = alloca [112 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.i = load i64, ptr %i.h, align 128, !noundef !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  store ptr %i.g, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  store i64 0, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %i.q = load atomic i64, ptr %i.p seq_cst, align 8
  %i.r = sub i64 %i.o, %i.q
  %i.s = icmp slt i64 %i.r, 1
  %i.t = load ptr, ptr %i.l, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  %i.v = load atomic i64, ptr %i.u monotonic, align 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  %i.x = load atomic i64, ptr %i.w acquire, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !19 ; 3 uses
  %i.aa = sub i64 %i.v, %i.x
  %.not.i = icmp slt i64 %i.aa, %i.z
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !21

bb.b:                                             ; preds = %.thread122
  br i1 %.sroa.019.2.lpad-body, label %bb.ak, label %.thread128

.thread:                                          ; preds = %bb.l, %bb.c, %.sink.split.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  %i.ac = shl i64 %i.z, 1
  invoke fastcc void @_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE6resizeCsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull align 8 %i.l, i64 noundef %i.ac)
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.c
  %i.ad = load i64, ptr %i.y, align 8, !noundef !19
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.a
  %.sroa.02.0.i = phi i64 [ %i.ad, %.noexc ], [ %i.z, %bb.a ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 288
  %.sroa.01.0.i = load ptr, ptr %i.ae, align 32, !noundef !19
  %i.af = add i64 %.sroa.02.0.i, -1
  %i.ag = and i64 %i.af, %i.v
  %i.ah = getelementptr inbounds [16 x i8], ptr %.sroa.01.0.i, i64 %i.ag ; 2 uses
  store volatile ptr @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB58_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB56_13flat_map_iter19FlatMapIterConsumerNtNtB56_6extend15ListVecConsumerNCNvNtB6L_4link19create_link_anchors0EEs_0E0B1P_ENtB5_3Job7executeB6L_, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store volatile ptr %i.f, ptr %i.ai, align 8
  fence release
  %i.aj = load ptr, ptr %i.l, align 8, !nonnull !19, !noundef !19
  %i.ak = add i64 %i.v, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 264
  store atomic i64 %i.ak, ptr %i.al release, align 8
  %i.am = load ptr, ptr %i.g, align 16, !nonnull !19, !noundef !19 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 472
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 496 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.ap = load atomic i64, ptr %i.ao seq_cst, align 8 ; 4 uses
  %i.aq = and i64 %i.ap, 4294967296
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsgpMJJHpo27b_12typst_bundle.exit.i

bb.f:                                             ; preds = %bb.e
  %i.as = or disjoint i64 %i.ap, 4294967296       ; 2 uses
  %i.at = cmpxchg ptr %i.ao, i64 %i.ap, i64 %i.as seq_cst monotonic, align 8
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.at, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsgpMJJHpo27b_12typst_bundle.exit.i, label %bb.e

_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ %i.as, %bb.f ], [ %i.ap, %bb.e ] ; 2 uses
  %i.au = and i64 %.sroa.0.0.i.i, 65535           ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsgpMJJHpo27b_12typst_bundle.exit.i
  br i1 %i.s, label %bb.h, label %.sink.split.i, !prof !21

.sink.split.i:                                    ; preds = %bb.h, %bb.g
  invoke void @_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.an, i32 noundef 1)
          to label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.h:                                             ; preds = %bb.g
  %i.aw = lshr i64 %.sroa.0.0.i.i, 16
  %i.ax = and i64 %i.aw, 65535
  %i.ay = icmp eq i64 %i.ax, %i.au
  br i1 %i.ay, label %.sink.split.i, label %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !22

_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.h, %_RINvMs_NtNtCsf1gSX8u3EQ2_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsgpMJJHpo27b_12typst_bundle.exit.i, %.sink.split.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.079.0.copyload = load ptr, ptr %i.az, align 8, !nonnull !19, !noundef !19
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.480.0.copyload = load ptr, ptr %.sroa.480.0..sroa_idx, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.581.0.copyload = load i64, ptr %.sroa.581.0..sroa_idx, align 8
  %.sroa.682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.682.sroa.0.0.copyload = load i64, ptr %.sroa.682.0..sroa_idx, align 8
  %.sroa.682.sroa.4.0..sroa.682.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.682.sroa.4.0.copyload = load ptr, ptr %.sroa.682.sroa.4.0..sroa.682.0..sroa_idx.sroa_idx, align 8, !nonnull !19, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ba = load i64, ptr %.sroa.079.0.copyload, align 8, !noalias !9518, !noundef !19
  %i.bb = load i64, ptr %.sroa.480.0.copyload, align 8, !noalias !9518, !noundef !19
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.480.0.copyload, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !9518, !noundef !19
  %i.be = inttoptr i64 %.sroa.581.0.copyload to ptr
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB6_13flat_map_iter19FlatMapIterConsumerNtNtB6_6extend15ListVecConsumerNCNvNtB1K_4link19create_link_anchors0EEB1K_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.ba, i1 noundef zeroext %3, i64 noundef %i.bb, i64 noundef %i.bd, ptr noalias nofree noundef nonnull align 16 %i.be, i64 noundef %.sroa.682.sroa.0.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.682.sroa.4.0.copyload)
          to label %bb.k unwind label %bb.i, !inline_history !9502

bb.i:                                             ; preds = %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bg)
          to label %bb.l unwind label %bb.j       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #47
  unreachable

bb.k:                                             ; preds = %_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.595.0.copyload = load i64, ptr %.sroa.595.0..sroa_idx, align 16
  %i.bj = load <2 x ptr>, ptr %i.a, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store <2 x ptr> %i.bj, ptr %i.e, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.595.0.copyload, ptr %.sroa.513.0..sroa_idx, align 16
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.bk = extractvalue { ptr, ptr } %i.bh, 0      ; 2 uses
  %i.bl = extractvalue { ptr, ptr } %i.bh, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk), "nonnull"(ptr %i.bl) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvNtCsf1gSX8u3EQ2_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.j, ptr noundef nonnull %i.bk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bl) #46
          to label %bb.aj unwind label %.thread

.loopexit132:                                     ; preds = %bb.n, %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread122

.loopexit.split-lp:                               ; preds = %bb.ag, %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread122

bb.m:                                             ; preds = %bb.k, %bb.s
  %i.bm = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bn = icmp eq i64 %i.bm, 3
  br i1 %i.bn, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = invoke fastcc { ptr, ptr } @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread14take_local_job(ptr noundef nonnull align 128 %2)
          to label %bb.q unwind label %.loopexit132 ; 2 uses

.loopexit:                                        ; preds = %bb.m, %bb.ag, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) %i.e, i64 24, i1 false)
  %.sroa.065.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.466.0.copyload = load ptr, ptr %.sroa.466.0..sroa_idx, align 8 ; 3 uses
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.567.0.copyload = load ptr, ptr %.sroa.567.0..sroa_idx, align 8 ; 3 uses
  switch i64 %.sroa.065.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %bb.o
    i64 1, label %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB58_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB56_13flat_map_iter19FlatMapIterConsumerNtNtB56_6extend15ListVecConsumerNCNvNtB6L_4link19create_link_anchors0EEs_0E0B1P_E11into_resultB6L_.exit
    i64 2, label %bb.p
  ], !prof !26

default.unreachable1.i.i:                         ; preds = %.loopexit
  unreachable

bb.o:                                             ; preds = %.loopexit
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #45
          to label %.noexc49 unwind label %bb.ah

.noexc49:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %.loopexit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.466.0.copyload), "nonnull"(ptr %.sroa.567.0.copyload) ]
  invoke void @_RNvNtCsf1gSX8u3EQ2_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.466.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.567.0.copyload) #46
          to label %.noexc50 unwind label %bb.ah

.noexc50:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.bp = extractvalue { ptr, ptr } %i.bo, 0      ; 3 uses
  %i.bq = extractvalue { ptr, ptr } %i.bo, 1      ; 2 uses
  %.not = icmp eq ptr %i.bp, null                 ; 2 uses
  br i1 %.not, label %bb.af, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = icmp eq ptr %i.f, %i.bq
  %i.bs = icmp eq ptr %i.bp, @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB58_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB56_13flat_map_iter19FlatMapIterConsumerNtNtB56_6extend15ListVecConsumerNCNvNtB6L_4link19create_link_anchors0EEs_0E0B1P_ENtB5_3Job7executeB6L_
  %or.cond = and i1 %i.br, %i.bs
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void %i.bp(ptr noundef %i.bq)
          to label %bb.m unwind label %.loopexit132

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !9519)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.0.0.copyload.i51 = load ptr, ptr %i.bt, align 8, !alias.scope !9519 ; 2 uses
  %.not.i52 = icmp eq ptr %.sroa.0.0.copyload.i51, null
  br i1 %.not.i52, label %bb.v, label %bb.u, !prof !22

bb.u:                                             ; preds = %bb.t
  %.sroa.3.i.sroa.7.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.3.i.sroa.7.0.copyload = load ptr, ptr %.sroa.3.i.sroa.7.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !9520 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.3.i.sroa.6.0.copyload = load i64, ptr %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !9520
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.3.i.sroa.5.0.copyload = load ptr, ptr %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !9520, !nonnull !19, !noundef !19
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.3.i.sroa.4.0.copyload = load ptr, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !9520, !nonnull !19, !noundef !19 ; 2 uses
  %.sroa.3.i.sroa.0.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !9520, !nonnull !19, !noundef !19
  %i.bu = load i64, ptr %.sroa.0.0.copyload.i51, align 8, !noalias !9521, !noundef !19
  %i.bv = load i64, ptr %.sroa.3.i.sroa.0.0.copyload, align 8, !noalias !9521, !noundef !19
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = load i64, ptr %.sroa.3.i.sroa.4.0.copyload, align 8, !noalias !9521, !noundef !19
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.3.i.sroa.4.0.copyload, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !noalias !9521, !noundef !19
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.i.sroa.7.0.copyload) ]
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB6_13flat_map_iter19FlatMapIterConsumerNtNtB6_6extend15ListVecConsumerNCNvNtB1K_4link19create_link_anchors0EEB1K_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.bw, i1 noundef zeroext %3, i64 noundef %i.bx, i64 noundef %i.bz, ptr noalias nofree noundef nonnull align 16 %.sroa.3.i.sroa.5.0.copyload, i64 noundef %.sroa.3.i.sroa.6.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.3.i.sroa.7.0.copyload)
          to label %_RNCINvNvNtCsf1gSX8u3EQ2_10rayon_core4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4h_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB4f_13flat_map_iter19FlatMapIterConsumerNtNtB4f_6extend15ListVecConsumerNCNvNtB5U_4link19create_link_anchors0EEs_0E0B5U_.exit unwind label %bb.w, !inline_history !9512

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #46
          to label %bb.x unwind label %bb.w, !noalias !9522, !inline_history !9513

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.c) #49
          to label %.thread122 unwind label %bb.ad, !noalias !9520, !inline_history !9513

bb.x:                                             ; preds = %bb.v
  unreachable

_RNCINvNvNtCsf1gSX8u3EQ2_10rayon_core4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4h_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB4f_13flat_map_iter19FlatMapIterConsumerNtNtB4f_6extend15ListVecConsumerNCNvNtB5U_4link19create_link_anchors0EEs_0E0B5U_.exit: ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !9523)
  call void @llvm.experimental.noalias.scope.decl(metadata !9524)
  %i.cb = load i64, ptr %i.c, align 8, !range !31, !alias.scope !9525, !noundef !19
  switch i64 %i.cb, label %bb.y [
    i64 0, label %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB58_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB56_13flat_map_iter19FlatMapIterConsumerNtNtB56_6extend15ListVecConsumerNCNvNtB6L_4link19create_link_anchors0EEs_0E0B1P_E10run_inlineB6L_.exit
    i64 1, label %bb.ac
  ]

bb.y:                                             ; preds = %_RNCINvNvNtCsf1gSX8u3EQ2_10rayon_core4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4h_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB4f_13flat_map_iter19FlatMapIterConsumerNtNtB4f_6extend15ListVecConsumerNCNvNtB5U_4link19create_link_anchors0EEs_0E0B5U_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !9525 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val1.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !9525, !nonnull !19, !align !36, !noundef !19 ; 5 uses
  %i.ce = load ptr, ptr %.val1.i.i, align 8, !invariant.load !19, !noalias !9525 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.ce(ptr noundef nonnull %.val.i.i)
          to label %bb.aa unwind label %bb.ab, !noalias !9525

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !range !37, !invariant.load !19, !noalias !9525 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB58_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB56_13flat_map_iter19FlatMapIterConsumerNtNtB56_6extend15ListVecConsumerNCNvNtB6L_4link19create_link_anchors0EEs_0E0B1P_E10run_inlineB6L_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !range !38, !invariant.load !19, !noalias !9525
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.cg, i64 noundef range(i64 1, -9223372036854775807) %i.cj) #48, !noalias !9525
  br label %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB58_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB56_13flat_map_iter19FlatMapIterConsumerNtNtB56_6extend15ListVecConsumerNCNvNtB6L_4link19create_link_anchors0EEs_0E0B1P_E10run_inlineB6L_.exit

bb.ab:                                            ; preds = %bb.z
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !range !37, !invariant.load !19, !noalias !9525 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %.thread122, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.ab
  %i.co = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !range !38, !invariant.load !19, !noalias !9525
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.cm, i64 noundef range(i64 1, -9223372036854775807) %i.cp) #48, !noalias !9525
  br label %.thread122

bb.ac:                                            ; preds = %_RNCINvNvNtCsf1gSX8u3EQ2_10rayon_core4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4h_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB4f_13flat_map_iter19FlatMapIterConsumerNtNtB4f_6extend15ListVecConsumerNCNvNtB5U_4link19create_link_anchors0EEs_0E0B5U_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cq)
          to label %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB58_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB56_13flat_map_iter19FlatMapIterConsumerNtNtB56_6extend15ListVecConsumerNCNvNtB6L_4link19create_link_anchors0EEs_0E0B1P_E10run_inlineB6L_.exit unwind label %.loopexit.split-lp

bb.ad:                                            ; preds = %bb.w
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !9522, !inline_history !9513
  unreachable

_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB58_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB56_13flat_map_iter19FlatMapIterConsumerNtNtB56_6extend15ListVecConsumerNCNvNtB6L_4link19create_link_anchors0EEs_0E0B1P_E10run_inlineB6L_.exit: ; preds = %bb.ac, %_RNCINvNvNtCsf1gSX8u3EQ2_10rayon_core4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4h_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB4f_13flat_map_iter19FlatMapIterConsumerNtNtB4f_6extend15ListVecConsumerNCNvNtB5U_4link19create_link_anchors0EEs_0E0B5U_.exit, %bb.aa, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ae

bb.ae:                                            ; preds = %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB58_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB56_13flat_map_iter19FlatMapIterConsumerNtNtB56_6extend15ListVecConsumerNCNvNtB6L_4link19create_link_anchors0EEs_0E0B1P_E11into_resultB6L_.exit, %_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB58_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB56_13flat_map_iter19FlatMapIterConsumerNtNtB56_6extend15ListVecConsumerNCNvNtB6L_4link19create_link_anchors0EEs_0E0B1P_E10run_inlineB6L_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.af:                                            ; preds = %bb.q
  %i.ct = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.cu = icmp eq i64 %i.ct, 3
  br i1 %i.cu, label %.loopexit, label %bb.ag, !prof !21

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit unwind label %.loopexit.split-lp

bb.ah:                                            ; preds = %bb.p, %bb.o
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #49
          to label %.thread128 unwind label %bb.ai

_RNvMs1_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB58_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB56_13flat_map_iter19FlatMapIterConsumerNtNtB56_6extend15ListVecConsumerNCNvNtB6L_4link19create_link_anchors0EEs_0E0B1P_E11into_resultB6L_.exit: ; preds = %.loopexit
  %.sroa.6.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx68, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.466.0.copyload, ptr %i.cw, align 8
  %.sroa.4.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.567.0.copyload, ptr %.sroa.4.0..sroa_idx63, align 8
  %.sroa.5.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6.0.copyload, ptr %.sroa.5.0..sroa_idx64, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ai:                                            ; preds = %bb.ak, %.thread122, %bb.ah
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

.thread122:                                       ; preds = %.loopexit132, %.loopexit.split-lp, %bb.w, %bb.ab, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i
  %.sroa.019.2.lpad-body = phi i1 [ false, %bb.ab ], [ false, %bb.w ], [ false, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ true, %.loopexit132 ], [ %.not, %.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.ck, %bb.ab ], [ %i.ca, %bb.w ], [ %i.ck, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %lpad.loopexit, %.loopexit132 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #49
          to label %bb.b unwind label %bb.ai

bb.aj:                                            ; preds = %bb.l
  unreachable

bb.ak:                                            ; preds = %.thread, %bb.b
  %.pn46115 = phi { ptr, i32 } [ %i.ab, %.thread ], [ %eh.lpad-body, %bb.b ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5B_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB5z_13flat_map_iter19FlatMapIterConsumerNtNtB5z_6extend15ListVecConsumerNCNvNtB7e_4link19create_link_anchors0EEs_0E0B2i_EEB7e_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.f) #49
          to label %.thread128 unwind label %bb.ai

.thread128:                                       ; preds = %bb.ah, %bb.b, %bb.ak
  %.pn46114 = phi { ptr, i32 } [ %eh.lpad-body, %bb.b ], [ %.pn46115, %bb.ak ], [ %i.cv, %bb.ah ]
  resume { ptr, i32 } %.pn46114
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvCsgpMJJHpo27b_12typst_bundle11bundle_impl0B3_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(208) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
end_hunk_1
begin_hunk_2_@_RNCNvCsgpMJJHpo27b_12typst_bundle11bundle_impl0B3_:bb.a
  store ptr %i.a, ptr %.sroa.7.i.i.sroa.16.0..sroa.7.0..sroa_idx30.i.i.sroa_idx.i, align 8, !noalias !10231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !10232
  store i64 %.sroa.0208.0.copyload821, ptr %i.am, align 8, !noalias !10231
  %.sroa.6.0..sroa_idx28.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  store ptr %.sroa.6.0.copyload820, ptr %.sroa.6.0..sroa_idx28.i.i.i, align 8, !noalias !10231
  %.sroa.42.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !10232
  %i.sr = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 %.sroa.9.0.copyload819, ptr %i.sr, align 8, !noalias !10232
  store ptr %.sroa.7.i.i.sroa.6.0..sroa.7.0..sroa_idx30.i.i.sroa_idx.i, ptr %i.al, align 8, !noalias !10233
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.sn, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10233
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %.sroa.9.0.copyload819, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10233
  call void @llvm.experimental.noalias.scope.decl(metadata !10234)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !10235
  store ptr %i.am, ptr %i.ak, align 8, !noalias !10235
  %i.ss = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 0, ptr %i.ss, align 8, !noalias !10235
  %i.st = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %.sroa.9.0.copyload819, ptr %i.st, align 8, !noalias !10235
  %i.su = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 %.sroa.9.0.copyload819, ptr %i.su, align 8, !noalias !10235
  store i64 0, ptr %.sroa.42.0..sroa_idx3.i.i.i.i.i, align 8, !alias.scope !10234, !noalias !10236
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %.sroa.0208.0.copyload821, %.sroa.9.0.copyload819
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.cm, label %bb.co, !prof !22

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.cn
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !10234, !noalias !10232 ; 2 uses
  %i.sv = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.sv, label %.body.i86, label %bb.cl

bb.cl:                                            ; preds = %.body.i.i.i.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx28.i.i.i, align 8, !alias.scope !10234, !noalias !10232, !nonnull !19, !noundef !19
  %i.sw = mul nuw i64 %.val.i.i.i.i.i.i.i.i, 80
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i.i.i.i, i64 noundef %i.sw, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !10237
  br label %.body.i86

bb.cm:                                            ; preds = %bb.ck
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #45
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.cn, !noalias !10238

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.cm
  unreachable

bb.cn:                                            ; preds = %.noexc9.i.i.i.i.i.i.i.i.i, %bb.co, %bb.cm
  %i.sx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsa3eaf3mS27M_5rayon3vec5DrainNtCsgpMJJHpo27b_12typst_bundle5ChildEEB1c_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.ak) #49
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.cp, !noalias !10239

bb.co:                                            ; preds = %bb.ck
  %i.sy = invoke noundef i64 @_RNvCsf1gSX8u3EQ2_10rayon_core19current_num_threads()
          to label %.noexc9.i.i.i.i.i.i.i.i.i unwind label %bb.cn, !noalias !10238

.noexc9.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.co
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtB1G_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4N_6engine4SinkEENCINvMB5H_NtB5H_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB1E_EINtNtB6E_9into_iter8IntoIterB1E_EB1E_B3n_NCNCNvB1G_11bundle_impl00E0EEB1G_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aq, i64 noundef %.sroa.9.0.copyload819, i1 noundef zeroext false, i64 noundef %i.sy, i64 noundef 1, ptr noalias nofree noundef nonnull align 16 %.sroa.6.0.copyload820, i64 noundef %.sroa.9.0.copyload819, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.al)
          to label %_RINvXNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing6bridgeINtB3_8CallbackINtNtB7_3map11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3Z_6engine4SinkEENCINvMB4T_NtB4T_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecNtB2P_5ChildEINtNtB5Q_9into_iter8IntoIterB6k_EB6k_B2b_NCNCNvB2P_11bundle_impl00E0EEINtB5_16ProducerCallbackB6k_E8callbackINtNtB9_3vec13DrainProducerB6k_EEB2P_.exit.i.i.i.i.i.i.i.i.i unwind label %bb.cn, !noalias !10240

_RINvXNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing6bridgeINtB3_8CallbackINtNtB7_3map11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3Z_6engine4SinkEENCINvMB4T_NtB4T_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecNtB2P_5ChildEINtNtB5Q_9into_iter8IntoIterB6k_EB6k_B2b_NCNCNvB2P_11bundle_impl00E0EEINtB5_16ProducerCallbackB6k_E8callbackINtNtB9_3vec13DrainProducerB6k_EEB2P_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc9.i.i.i.i.i.i.i.i.i
  %i.sz = load i64, ptr %.sroa.42.0..sroa_idx3.i.i.i.i.i, align 8, !alias.scope !10234, !noalias !10241, !noundef !19 ; 2 uses
  %i.ta = icmp ult i64 %i.sz, 115292150460684698
  call void @llvm.assume(i1 %i.ta)
  %i.tb = icmp eq i64 %i.sz, %.sroa.9.0.copyload819
  %i.tc = icmp eq i64 %.sroa.9.0.copyload819, 0   ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.tc, %i.tb
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_RINvXs6_NtCsa3eaf3mS27M_5rayon3vecINtB6_5DrainNtCsgpMJJHpo27b_12typst_bundle5ChildENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB1l_8plumbing6bridge8CallbackINtNtB1l_3map11MapConsumerINtNtNtB1l_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtBK_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5i_6engine4SinkEENCINvMB6c_NtB6c_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecBI_EINtNtB79_9into_iter8IntoIterBI_EBI_B3T_NCNCNvBK_11bundle_impl00E0EEEBK_.exit.sink.split.i.i.i.i.i.i.i.i, label %_RINvXs6_NtCsa3eaf3mS27M_5rayon3vecINtB6_5DrainNtCsgpMJJHpo27b_12typst_bundle5ChildENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB1l_8plumbing6bridge8CallbackINtNtB1l_3map11MapConsumerINtNtNtB1l_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtBK_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5i_6engine4SinkEENCINvMB6c_NtB6c_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecBI_EINtNtB79_9into_iter8IntoIterBI_EBI_B3T_NCNCNvBK_11bundle_impl00E0EEEBK_.exit.i.i.i.i.i.i.i.i

bb.cp:                                            ; preds = %bb.cn
  %i.td = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !10238
  unreachable

_RINvXs6_NtCsa3eaf3mS27M_5rayon3vecINtB6_5DrainNtCsgpMJJHpo27b_12typst_bundle5ChildENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB1l_8plumbing6bridge8CallbackINtNtB1l_3map11MapConsumerINtNtNtB1l_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtBK_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5i_6engine4SinkEENCINvMB6c_NtB6c_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecBI_EINtNtB79_9into_iter8IntoIterBI_EBI_B3T_NCNCNvBK_11bundle_impl00E0EEEBK_.exit.sink.split.i.i.i.i.i.i.i.i: ; preds = %_RINvXNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing6bridgeINtB3_8CallbackINtNtB7_3map11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3Z_6engine4SinkEENCINvMB4T_NtB4T_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecNtB2P_5ChildEINtNtB5Q_9into_iter8IntoIterB6k_EB6k_B2b_NCNCNvB2P_11bundle_impl00E0EEINtB5_16ProducerCallbackB6k_E8callbackINtNtB9_3vec13DrainProducerB6k_EEB2P_.exit.i.i.i.i.i.i.i.i.i
  store i64 0, ptr %.sroa.42.0..sroa_idx3.i.i.i.i.i, align 8, !alias.scope !10234, !noalias !10241
  br label %_RINvXs6_NtCsa3eaf3mS27M_5rayon3vecINtB6_5DrainNtCsgpMJJHpo27b_12typst_bundle5ChildENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB1l_8plumbing6bridge8CallbackINtNtB1l_3map11MapConsumerINtNtNtB1l_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtBK_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5i_6engine4SinkEENCINvMB6c_NtB6c_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecBI_EINtNtB79_9into_iter8IntoIterBI_EBI_B3T_NCNCNvBK_11bundle_impl00E0EEEBK_.exit.i.i.i.i.i.i.i.i

_RINvXs6_NtCsa3eaf3mS27M_5rayon3vecINtB6_5DrainNtCsgpMJJHpo27b_12typst_bundle5ChildENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB1l_8plumbing6bridge8CallbackINtNtB1l_3map11MapConsumerINtNtNtB1l_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtBK_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5i_6engine4SinkEENCINvMB6c_NtB6c_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecBI_EINtNtB79_9into_iter8IntoIterBI_EBI_B3T_NCNCNvBK_11bundle_impl00E0EEEBK_.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvXs6_NtCsa3eaf3mS27M_5rayon3vecINtB6_5DrainNtCsgpMJJHpo27b_12typst_bundle5ChildENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB1l_8plumbing6bridge8CallbackINtNtB1l_3map11MapConsumerINtNtNtB1l_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtBK_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5i_6engine4SinkEENCINvMB6c_NtB6c_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecBI_EINtNtB79_9into_iter8IntoIterBI_EBI_B3T_NCNCNvBK_11bundle_impl00E0EEEBK_.exit.sink.split.i.i.i.i.i.i.i.i, %_RINvXNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing6bridgeINtB3_8CallbackINtNtB7_3map11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3Z_6engine4SinkEENCINvMB4T_NtB4T_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecNtB2P_5ChildEINtNtB5Q_9into_iter8IntoIterB6k_EB6k_B2b_NCNCNvB2P_11bundle_impl00E0EEINtB5_16ProducerCallbackB6k_E8callbackINtNtB9_3vec13DrainProducerB6k_EEB2P_.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !10235
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !10234, !noalias !10232 ; 2 uses
  %i.te = icmp eq i64 %.val3.i.i.i.i.i.i.i.i, 0
  br i1 %i.te, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %_RINvXs6_NtCsa3eaf3mS27M_5rayon3vecINtB6_5DrainNtCsgpMJJHpo27b_12typst_bundle5ChildENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB1l_8plumbing6bridge8CallbackINtNtB1l_3map11MapConsumerINtNtNtB1l_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtBK_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5i_6engine4SinkEENCINvMB6c_NtB6c_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecBI_EINtNtB79_9into_iter8IntoIterBI_EBI_B3T_NCNCNvBK_11bundle_impl00E0EEEBK_.exit.i.i.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx28.i.i.i, align 8, !alias.scope !10234, !noalias !10232, !nonnull !19, !noundef !19
  %i.tf = mul nuw i64 %.val3.i.i.i.i.i.i.i.i, 80
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i, i64 noundef %i.tf, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !10237
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %_RINvXs6_NtCsa3eaf3mS27M_5rayon3vecINtB6_5DrainNtCsgpMJJHpo27b_12typst_bundle5ChildENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB1l_8plumbing6bridge8CallbackINtNtB1l_3map11MapConsumerINtNtNtB1l_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtBK_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5i_6engine4SinkEENCINvMB6c_NtB6c_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecBI_EINtNtB79_9into_iter8IntoIterBI_EBI_B3T_NCNCNvBK_11bundle_impl00E0EEEBK_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !10232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !10232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !10230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !10229
  %i.tg = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.th = load i64, ptr %i.tg, align 8, !noalias !10229, !noundef !19 ; 3 uses
  store i64 %i.th, ptr %i.ap, align 8, !noalias !10229
  %.not.i.i.i = icmp eq i64 %i.th, %.sroa.9.0.copyload819
  br i1 %.not.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3e_6engine4SinkEEEB24_.exit.i.i.i, label %bb.cs, !prof !21

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !10229
  store ptr %i.ar, ptr %i.ao, align 8, !noalias !10229
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !noalias !10229
  %i.ti = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.ap, ptr %i.ti, align 8, !noalias !10229
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !noalias !10229
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #46
          to label %bb.ct unwind label %bb.cu, !noalias !10242

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3e_6engine4SinkEEEB24_.exit.i.i.i: ; preds = %bb.cr
  %.sroa.031.0.copyload.i.i.i = load ptr, ptr %i.aq, align 8, !noalias !10229
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB2b_6engine4SinkEEB11_(ptr noalias nofree noundef nonnull align 16 %.sroa.031.0.copyload.i.i.i, i64 noundef 0)
          to label %bb.cz unwind label %bb.cy, !noalias !10222

bb.ct:                                            ; preds = %bb.cs
  unreachable

bb.cu:                                            ; preds = %bb.cs
  %i.tj = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i = load ptr, ptr %i.aq, align 8, !noalias !10229, !noundef !19
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB2b_6engine4SinkEEB11_(ptr noalias nofree noundef nonnull align 16 %.val.i.i.i, i64 noundef %i.th)
          to label %.body.i86 unwind label %bb.cv, !noalias !10242

bb.cv:                                            ; preds = %bb.cu
  %i.tk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !10242
  unreachable

bb.cw:                                            ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgpMJJHpo27b_12typst_bundle.exit.i
  %i.tl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tm = icmp eq i64 %.sroa.0208.0.copyload821, 0
  br i1 %i.tm, label %.body.i86, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.tn = mul nuw i64 %.sroa.0208.0.copyload821, 80
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload820, i64 noundef %i.tn, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !10226
  br label %.body.i86

.body.i86:                                        ; preds = %.body27.i, %bb.cy, %bb.cx, %bb.cw, %bb.cu, %bb.cl, %.body.i.i.i.i.i.i.i.i
  %.pn.i87 = phi { ptr, i32 } [ %eh.lpad-body28.i, %.body27.i ], [ %i.to, %bb.cy ], [ %i.tl, %bb.cx ], [ %i.tl, %bb.cw ], [ %i.tj, %bb.cu ], [ %i.sx, %.body.i.i.i.i.i.i.i.i ], [ %i.sx, %bb.cl ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB2H_6engine4SinkEEEB1x_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.as) #49
          to label %.body84 unwind label %bb.ea, !noalias !10222

bb.cy:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3e_6engine4SinkEEEB24_.exit.i.i.i
  %i.to = landingpad { ptr, i32 }
          cleanup
  br label %.body.i86

bb.cz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3e_6engine4SinkEEEB24_.exit.i.i.i
  store i64 %.sroa.9.0.copyload819, ptr %i.sq, align 8, !alias.scope !10243, !noalias !10221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !10229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !10229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !10228
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sn, i64 %i.si ; 5 uses
  br i1 %i.tc, label %.loopexit, label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %bb.cz
  %i.tq = getelementptr inbounds nuw i8, ptr %i.co, i64 128
  %i.tr = getelementptr inbounds nuw i8, ptr %i.co, i64 136
  %i.ts = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.tt = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.tu = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.tv = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.tw = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.tx = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.ty = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.tz = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.4.0..sroa_idx.i.i24.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.5.0..sroa_idx.i.i25.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  br label %bb.da

bb.da:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i, %.lr.ph.i88
  %.sroa.09.0175.i = phi ptr [ %i.sn, %.lr.ph.i88 ], [ %i.ua, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i ] ; 11 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.sroa.09.0175.i, i64 176 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.sroa.09.0175.i, i64 80 ; 2 uses
  %.sroa.061.0.copyload.i = load ptr, ptr %i.ub, align 16, !noalias !10222 ; 9 uses
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0175.i, i64 88 ; 2 uses
  %.sroa.462.0.copyload.i = load i64, ptr %.sroa.462.0..sroa_idx.i, align 8, !noalias !10222 ; 6 uses
  %.sroa.563.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0175.i, i64 96 ; 2 uses
  %.sroa.563.0.copyload.i = load ptr, ptr %.sroa.563.0..sroa_idx.i, align 16, !noalias !10222 ; 9 uses
  %.sroa.664.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0175.i, i64 104 ; 2 uses
  %.sroa.664.0.copyload.i = load i64, ptr %.sroa.664.0..sroa_idx.i, align 8, !noalias !10222 ; 6 uses
  %.sroa.765.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0175.i, i64 112 ; 2 uses
  %.sroa.765.0.copyload.i = load ptr, ptr %.sroa.765.0..sroa_idx.i, align 16, !noalias !10222 ; 9 uses
  %.sroa.866.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0175.i, i64 120 ; 2 uses
  %.sroa.866.0.copyload.i = load i64, ptr %.sroa.866.0..sroa_idx.i, align 8, !noalias !10222 ; 6 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0175.i, i64 128 ; 2 uses
  %.sroa.9.0.copyload.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 16, !noalias !10222 ; 3 uses
  %.sroa.1167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0175.i, i64 136
  %.sroa.1167.0.copyload.i = load i64, ptr %.sroa.1167.0..sroa_idx.i, align 8, !noalias !10222 ; 4 uses
  %.sroa.1369.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0175.i, i64 160 ; 2 uses
  %.sroa.1369.0.copyload.i = load ptr, ptr %.sroa.1369.0..sroa_idx.i, align 16, !noalias !10222, !nonnull !19, !noundef !19 ; 7 uses
  %.sroa.1470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0175.i, i64 168 ; 2 uses
  %.sroa.1470.0.copyload.i = load i64, ptr %.sroa.1470.0..sroa_idx.i, align 8, !noalias !10222 ; 5 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.ub, align 16, !noalias !10222
  store i64 0, ptr %.sroa.462.0..sroa_idx.i, align 8, !noalias !10222
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.563.0..sroa_idx.i, align 16, !noalias !10222
  store i64 0, ptr %.sroa.664.0..sroa_idx.i, align 8, !noalias !10222
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.765.0..sroa_idx.i, align 16, !noalias !10222
  store i64 0, ptr %.sroa.866.0..sroa_idx.i, align 8, !noalias !10222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @15, i64 32, i1 false), !noalias !10222
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.1369.0..sroa_idx.i, align 16, !noalias !10222
  store i64 0, ptr %.sroa.1470.0..sroa_idx.i, align 8, !noalias !10222
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.061.0.copyload.i), "nonnull"(ptr %.sroa.563.0.copyload.i), "nonnull"(ptr %.sroa.765.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10244)
  %i.uc = load ptr, ptr %i.cx, align 8, !alias.scope !10245, !nonnull !19, !align !36, !noundef !19 ; 2 uses
  %i.ud = load ptr, ptr %i.tq, align 8, !alias.scope !10245, !noundef !19 ; 2 uses
  %i.ue = load ptr, ptr %i.tr, align 8, !alias.scope !10245 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ud, null
  br i1 %.not.not.i.i, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ue) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !10246
  %.not.i.i.i23.i = icmp eq ptr %.sroa.061.0.copyload.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i23.i, label %bb.df, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.uf = getelementptr inbounds i8, ptr %.sroa.061.0.copyload.i, i64 -16
  %i.ug = atomicrmw add ptr %i.uf, i64 1 monotonic, align 8, !noalias !10247
  %i.uh = icmp slt i64 %i.ug, 0
  br i1 %i.uh, label %bb.dd, label %bb.df, !prof !22

bb.dd:                                            ; preds = %bb.dc
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.sroa.061.0.copyload.i, i64 noundef %.sroa.462.0.copyload.i) #46
          to label %.noexc.i.i unwind label %.thread39.i.i, !noalias !10247

.thread39.i.i:                                    ; preds = %bb.dd
  %i.ui = landingpad { ptr, i32 }
          cleanup
  br label %.thread34.i.i

.noexc.i.i:                                       ; preds = %bb.dd
  unreachable

bb.de:                                            ; preds = %bb.da
  invoke void @_RNvMs9_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink6extend(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.uc, ptr noundef nonnull %.sroa.061.0.copyload.i, i64 noundef %.sroa.462.0.copyload.i, ptr noundef nonnull %.sroa.563.0.copyload.i, i64 noundef %.sroa.664.0.copyload.i, ptr noundef nonnull %.sroa.765.0.copyload.i, i64 noundef %.sroa.866.0.copyload.i, ptr noundef nonnull %.sroa.1369.0.copyload.i, i64 noundef %.sroa.1470.0.copyload.i)
          to label %_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut6extend.exit.i unwind label %bb.dy, !noalias !10222

bb.df:                                            ; preds = %bb.dc, %bb.db
  %.not.i.i38.i.i = icmp eq ptr %.sroa.563.0.copyload.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i38.i.i, label %bb.dk, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.uj = getelementptr inbounds i8, ptr %.sroa.563.0.copyload.i, i64 -16
  %i.uk = atomicrmw add ptr %i.uj, i64 1 monotonic, align 8, !noalias !10247
  %i.ul = icmp slt i64 %i.uk, 0
  br i1 %i.ul, label %bb.dh, label %bb.dk, !prof !22

bb.dh:                                            ; preds = %bb.dg
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.sroa.563.0.copyload.i, i64 noundef %.sroa.664.0.copyload.i) #46
          to label %.noexc39.i.i unwind label %bb.dj, !noalias !10247

.noexc39.i.i:                                     ; preds = %bb.dh
  unreachable

bb.di:                                            ; preds = %bb.dn, %bb.dj
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.dn ], [ %i.um, %bb.dj ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionEECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.sroa.061.0.copyload.i, i64 %.sroa.462.0.copyload.i) #49
          to label %.thread34.i.i unwind label %bb.dv, !noalias !10247

bb.dj:                                            ; preds = %bb.dh
  %i.um = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dk:                                            ; preds = %bb.dg, %bb.df
  %.not.i.i40.i.i = icmp eq ptr %.sroa.765.0.copyload.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i40.i.i, label %bb.dp, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.un = getelementptr inbounds i8, ptr %.sroa.765.0.copyload.i, i64 -16
  %i.uo = atomicrmw add ptr %i.un, i64 1 monotonic, align 8, !noalias !10247
  %i.up = icmp slt i64 %i.uo, 0
  br i1 %i.up, label %bb.dm, label %bb.dp, !prof !22

bb.dm:                                            ; preds = %bb.dl
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.sroa.765.0.copyload.i, i64 noundef %.sroa.866.0.copyload.i) #46
          to label %.noexc41.i.i unwind label %bb.do, !noalias !10247

.noexc41.i.i:                                     ; preds = %bb.dm
  unreachable

bb.dn:                                            ; preds = %bb.ds, %bb.do
  %.pn.i.i = phi { ptr, i32 } [ %i.uu, %bb.ds ], [ %i.uq, %bb.do ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.sroa.563.0.copyload.i, i64 %.sroa.664.0.copyload.i) #49
          to label %bb.di unwind label %bb.dv, !noalias !10247

bb.do:                                            ; preds = %bb.dm
  %i.uq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.dp:                                            ; preds = %bb.dl, %bb.dk
  %.not.i.i43.i.i = icmp eq ptr %.sroa.1369.0.copyload.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i43.i.i, label %bb.dt, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ur = getelementptr inbounds i8, ptr %.sroa.1369.0.copyload.i, i64 -16
  %i.us = atomicrmw add ptr %i.ur, i64 1 monotonic, align 8, !noalias !10247
  %i.ut = icmp slt i64 %i.us, 0
  br i1 %i.ut, label %bb.dr, label %bb.dt, !prof !22

bb.dr:                                            ; preds = %bb.dq
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBQ_6styles6StylesEEECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.sroa.1369.0.copyload.i, i64 noundef %.sroa.1470.0.copyload.i) #46
          to label %.noexc44.i.i unwind label %bb.ds, !noalias !10247

.noexc44.i.i:                                     ; preds = %bb.dr
  unreachable

bb.ds:                                            ; preds = %bb.dr
  %i.uu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.sroa.765.0.copyload.i, i64 %.sroa.866.0.copyload.i) #49
          to label %bb.dn unwind label %bb.dv, !noalias !10247

bb.dt:                                            ; preds = %bb.dq, %bb.dp
  store ptr %.sroa.061.0.copyload.i, ptr %i.ts, align 8, !noalias !10246
  store i64 %.sroa.462.0.copyload.i, ptr %i.tt, align 8, !noalias !10246
  store ptr %.sroa.563.0.copyload.i, ptr %i.tu, align 8, !noalias !10246
  store i64 %.sroa.664.0.copyload.i, ptr %i.tv, align 8, !noalias !10246
  store ptr %.sroa.765.0.copyload.i, ptr %i.tw, align 8, !noalias !10246
  store i64 %.sroa.866.0.copyload.i, ptr %i.tx, align 8, !noalias !10246
  store ptr %.sroa.1369.0.copyload.i, ptr %i.ty, align 8, !noalias !10246
  store i64 %.sroa.1470.0.copyload.i, ptr %i.tz, align 8, !noalias !10246
  store i64 5, ptr %i.aj, align 8, !noalias !10246
  invoke void @_RNvMs9_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink6extend(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.uc, ptr noundef nonnull %.sroa.061.0.copyload.i, i64 noundef %.sroa.462.0.copyload.i, ptr noundef nonnull %.sroa.563.0.copyload.i, i64 noundef %.sroa.664.0.copyload.i, ptr noundef nonnull %.sroa.765.0.copyload.i, i64 noundef %.sroa.866.0.copyload.i, ptr noundef nonnull %.sroa.1369.0.copyload.i, i64 noundef %.sroa.1470.0.copyload.i)
          to label %bb.du unwind label %bb.dw, !noalias !10247

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !10246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(80) %i.aj, i64 80, i1 false), !noalias !10246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !10246
  store i64 8317987319222330741, ptr %i.ah, align 8, !noalias !10246
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !10246
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i.i24.i, align 8, !noalias !10246
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i.i25.i, align 8, !noalias !10246
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i.i, i8 0, i64 40, i1 false), !noalias !10246
  %i.uv = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128CsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ah) #50, !noalias !10246 ; 2 uses
  %i.uw = extractvalue { i64, i64 } %i.uv, 0
  %i.ux = extractvalue { i64, i64 } %i.uv, 1
  %i.uy = zext i64 %i.uw to i128
  %i.uz = zext i64 %i.ux to i128
  %i.va = shl nuw i128 %i.uz, 64
  %i.vb = or disjoint i128 %i.va, %i.uy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !10246
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ue, i64 24
  %i.vd = load ptr, ptr %i.vc, align 8, !invariant.load !19, !noalias !10247, !nonnull !19
  %i.ve = invoke noundef zeroext i1 %i.vd(ptr noundef nonnull %i.ud, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.ai, i128 noundef %i.vb)
          to label %.noexc26.i unwind label %bb.dy, !noalias !10222, !inline_history !9665 ; 0 uses

.noexc26.i:                                       ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !10246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !10246
  br label %_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut6extend.exit.i

bb.dv:                                            ; preds = %.critedge15.i.i, %.critedge.i.i, %bb.dx, %.thread34.i.i, %bb.dw, %bb.ds, %bb.dn, %bb.di
  %i.vf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !10247
  unreachable

bb.dw:                                            ; preds = %bb.dt
  %i.vg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtCsdaEETE4DqmE_13typst_library6engines_1__15___ComemoVariantECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(80) %i.aj) #49
          to label %.body27.i unwind label %bb.dv, !noalias !10247

.thread34.i.i:                                    ; preds = %bb.di, %.thread39.i.i
  %.pn12.pn37.i.i = phi { ptr, i32 } [ %i.ui, %.thread39.i.i ], [ %.pn.pn.i.i, %bb.di ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtB1f_6styles6StylesEEEECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.sroa.1369.0.copyload.i, i64 %.sroa.1470.0.copyload.i) #49
          to label %bb.dx unwind label %bb.dv, !noalias !10247

bb.dx:                                            ; preds = %.thread34.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.sroa.765.0.copyload.i, i64 %.sroa.866.0.copyload.i) #49
          to label %.critedge.i.i unwind label %bb.dv, !noalias !10247

.critedge.i.i:                                    ; preds = %bb.dx
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.sroa.563.0.copyload.i, i64 %.sroa.664.0.copyload.i) #49
          to label %.critedge15.i.i unwind label %bb.dv, !noalias !10247

.critedge15.i.i:                                  ; preds = %.critedge.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionEECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.sroa.061.0.copyload.i, i64 %.sroa.462.0.copyload.i) #49
          to label %.body27.i unwind label %bb.dv, !noalias !10247

bb.dy:                                            ; preds = %bb.du, %bb.de
  %i.vh = landingpad { ptr, i32 }
          cleanup
  br label %.body27.i

.body27.i:                                        ; preds = %bb.dy, %.critedge15.i.i, %bb.dw
  %eh.lpad-body28.i = phi { ptr, i32 } [ %i.vh, %bb.dy ], [ %i.vg, %bb.dw ], [ %.pn12.pn37.i.i, %.critedge15.i.i ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle(ptr %.sroa.9.0.copyload.i, i64 %.sroa.1167.0.copyload.i) #49, !noalias !10222
  br label %.body.i86

_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut6extend.exit.i: ; preds = %.noexc26.i, %bb.de
  %i.vi = icmp eq i64 %.sroa.1167.0.copyload.i, 0
  br i1 %i.vi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut6extend.exit.i
  %i.vj = shl i64 %.sroa.1167.0.copyload.i, 4     ; 2 uses
  %i.vk = add i64 %i.vj, 16                       ; 2 uses
  %i.vl = add i64 %.sroa.1167.0.copyload.i, 17
  %i.vm = add i64 %i.vl, %i.vk                    ; 4 uses
end_hunk_2
begin_hunk_3_@_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter7IterMutNtCsgpMJJHpo27b_12typst_bundle4ItemEINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtB7_6cloned6ClonedINtB17_4IterTB3y_B4E_EEEERNCNvNtB1z_4link19create_link_anchors0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_:bb.a
  %.sroa.11.0.ph.i = phi ptr [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %i.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ undef, %bb.c ] ; 2 uses
  %.sroa.10.0.ph.i = phi ptr [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %.sroa.040.0.copyload.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ undef, %bb.c ] ; 2 uses
  %.sroa.9.0.ph.i = phi ptr [ %i.ou, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %.sroa.511.0.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ inttoptr (i64 16 to ptr), %bb.c ] ; 2 uses
  %.sroa.8.0.ph.i = phi i64 [ %i.ov, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %.sroa.410.0.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ 16, %bb.c ] ; 2 uses
  %.sroa.0.0.ph.i = phi i64 [ -1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %.sink.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ -1, %bb.c ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtNtNtB4_4iter8adapters6cloned6ClonedINtNtNtB4_5slice4iter4IterTB2o_B3u_EEEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1)
          to label %bb.bi unwind label %bb.bh, !noalias !15336

_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtCsgpMJJHpo27b_12typst_bundle4ItemERNCNvNtB1J_4link19create_link_anchors0EEINtB5_8FuseImplBY_E4nextB1J_.exit.i: ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit.i
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 64
  call fastcc void @_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IterTB2x_B3D_EEEEB54_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %i.pv) #50
  br label %_RNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtCsgpMJJHpo27b_12typst_bundle4ItemERNCNvNtB1W_4link19create_link_anchors0EINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtB7_6cloned6ClonedINtB1u_4IterTB4y_B5E_EEEEENtNtNtB9_6traits8iterator8Iterator4nextB1W_.exit

bb.bh:                                            ; preds = %bb.bg
  %i.pw = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.ph.i, ptr %1, align 8, !alias.scope !15334
  store i64 %.sroa.8.0.ph.i, ptr %.sroa.519.0..sroa_idx20.i, align 8, !alias.scope !15334
  store ptr %.sroa.9.0.ph.i, ptr %.sroa.622.0..sroa_idx23.i, align 8, !alias.scope !15334
  store ptr %.sroa.10.0.ph.i, ptr %.sroa.725.0..sroa_idx26.i, align 8, !alias.scope !15334
  store ptr %.sroa.11.0.ph.i, ptr %.sroa.828.0..sroa_idx29.i, align 8, !alias.scope !15334
  store ptr %.sroa.12.0.ph.i, ptr %.sroa.931.0..sroa_idx32.i, align 8, !alias.scope !15334
  store <16 x i1> %.sroa.13.0.ph.i, ptr %.sroa.1034.0..sroa_idx35.i, align 8, !alias.scope !15334
  store i64 %.sroa.142.0.ph.i, ptr %.sroa.1239.0..sroa_idx40.i, align 8, !alias.scope !15334
  br label %common.resume.i

bb.bi:                                            ; preds = %bb.bg
  store i64 %.sroa.0.0.ph.i, ptr %1, align 8, !alias.scope !15334
  store i64 %.sroa.8.0.ph.i, ptr %.sroa.519.0..sroa_idx20.i, align 8, !alias.scope !15334
  store ptr %.sroa.9.0.ph.i, ptr %.sroa.622.0..sroa_idx23.i, align 8, !alias.scope !15334
  store ptr %.sroa.10.0.ph.i, ptr %.sroa.725.0..sroa_idx26.i, align 8, !alias.scope !15334
  store ptr %.sroa.11.0.ph.i, ptr %.sroa.828.0..sroa_idx29.i, align 8, !alias.scope !15334
  store ptr %.sroa.12.0.ph.i, ptr %.sroa.931.0..sroa_idx32.i, align 8, !alias.scope !15334
  store <16 x i1> %.sroa.13.0.ph.i, ptr %.sroa.1034.0..sroa_idx35.i, align 8, !alias.scope !15334
  store i64 %.sroa.142.0.ph.i, ptr %.sroa.1239.0..sroa_idx40.i, align 8, !alias.scope !15334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !15335
  call fastcc void @_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IterTB2x_B3D_EEEEB54_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1) #50, !noalias !15336
  %i.px = load i128, ptr %i.k, align 16, !range !20, !noalias !15335, !noundef !19
  %i.py = trunc nuw i128 %i.px to i1
  br i1 %i.py, label %._crit_edge.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit.i

_RNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtCsgpMJJHpo27b_12typst_bundle4ItemERNCNvNtB1W_4link19create_link_anchors0EINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtB7_6cloned6ClonedINtB1u_4IterTB4y_B5E_EEEEENtNtNtB9_6traits8iterator8Iterator4nextB1W_.exit: ; preds = %._crit_edge.i, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtCsgpMJJHpo27b_12typst_bundle4ItemERNCNvNtB1J_4link19create_link_anchors0EEINtB5_8FuseImplBY_E4nextB1J_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3mem9alignment9AlignmentNtB6_5Debug3fmtCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !36, !noundef !19
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3mem9alignmentNtB4_9AlignmentNtNtB8_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_5alloc6layout6LayoutNtB6_5Debug3fmtCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !19, !align !36, !noundef !19 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15421
  store ptr %i.b, ptr %i.a, align 8, !noalias !15421
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 4, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @168, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @169)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15421
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !19
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !15424, !noundef !19 ; 2 uses
  %.not.i = icmp sgt i8 %i.b, -1                  ; 2 uses
  %i.c = and i8 %i.b, 127
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !alias.scope !15424, !nonnull !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !15424
  %.sroa.3.0.i = select i1 %.not.i, i64 %i.g, i64 %i.d
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.e, ptr %0
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB2Z_3map11MapConsumerINtNtNtB2Z_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtB4A_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7J_6engine4SinkEENCINvMB8D_NtB8D_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB4y_EINtNtB9A_9into_iter8IntoIterB4y_EB4y_B6j_NCNCNvB4A_11bundle_impl00E0EE0NCB2S_s_0INtB5C_13CollectResultB6i_EBbr_E0TBbr_Bbr_EE00BbY_ENtB5_3Job7executeB4A_(ptr nofree noundef captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [120 x i8], align 16              ; 11 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.4.sroa.0.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.sroa.4.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load <2 x i64>, ptr %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.5.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.5.sroa.5.sroa.5.0.copyload = load i64, ptr %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.sroa.6.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsf1gSX8u3EQ2_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.g, align 8, !noalias !15429, !noundef !19 ; 2 uses
  %i.h = icmp eq ptr %.val.i.i, null
  br i1 %i.h, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #46
          to label %bb.e unwind label %.body, !noalias !15429, !inline_history !15428

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15429
  store <2 x ptr> %i.e, ptr %i.b, align 16, !noalias !15430
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.5.sroa.4.sroa.0.0.copyload, ptr %.sroa.564.0..sroa_idx, align 16, !noalias !15430
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.5.sroa.4.sroa.4.0.copyload, ptr %.sroa.665.0..sroa_idx, align 8, !noalias !15430
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <2 x i64> %i.f, ptr %.sroa.7.0..sroa_idx, align 16, !noalias !15430
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx66.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.967.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %.sroa.5.sroa.5.sroa.4.0.copyload, ptr %.sroa.967.0..sroa_idx, align 16, !noalias !15430
  %.sroa.1068.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 %.sroa.5.sroa.5.sroa.5.0.copyload, ptr %.sroa.1068.0..sroa_idx, align 8, !noalias !15430
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.5.sroa.6.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, i64 24, i1 false)
  invoke fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtBY_3map11MapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtB2z_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5G_6engine4SinkEENCINvMB6A_NtB6A_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB2x_EINtNtB7x_9into_iter8IntoIterB2x_EB2x_B4g_NCNCNvB2z_11bundle_impl00E0EE0NCBR_s_0INtB3A_13CollectResultB4f_EB9n_E0B2z_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true)
          to label %bb.k unwind label %.body, !noalias !15431, !inline_history !15428

bb.e:                                             ; preds = %bb.c
  unreachable

.body:                                            ; preds = %bb.d, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.l unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #47
  unreachable

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #46
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.s, %bb.n ]
  invoke void @_RNvXNtCsf1gSX8u3EQ2_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECsgpMJJHpo27b_12typst_bundle.exit unwind label %bb.q

bb.i:                                             ; preds = %bb.o, %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15429
  %.sroa.055.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.456.0.copyload = load ptr, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.557.sroa.0.0.copyload = load i64, ptr %.sroa.557.0..sroa_idx, align 8
  %.sroa.557.sroa.4.0..sroa.557.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.557.sroa.4.0.copyload = load ptr, ptr %.sroa.557.sroa.4.0..sroa.557.0..sroa_idx.sroa_idx, align 8
  %.sroa.557.sroa.5.0..sroa.557.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.n = load <2 x i64>, ptr %.sroa.557.sroa.5.0..sroa.557.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.l:                                             ; preds = %.body
  %i.o = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o), "nonnull"(ptr %i.p) ]
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.094 = phi ptr [ %i.o, %bb.l ], [ %.sroa.055.0.copyload, %bb.k ] ; 2 uses
  %.sroa.945.092 = phi ptr [ %i.p, %bb.l ], [ %.sroa.456.0.copyload, %bb.k ] ; 2 uses
  %.sroa.9.sroa.0.0 = phi i64 [ undef, %bb.l ], [ %.sroa.557.sroa.0.0.copyload, %bb.k ] ; 2 uses
  %.sroa.9.sroa.5.0 = phi ptr [ undef, %bb.l ], [ %.sroa.557.sroa.4.0.copyload, %bb.k ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.l ], [ 1, %bb.k ] ; 2 uses
  %i.q = phi <2 x i64> [ undef, %bb.l ], [ %i.n, %bb.k ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3Y_6engine4SinkEEB1l_EEEB2O_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.r)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.r, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.0.094, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.945.092, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.sroa.9.sroa.0.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sroa.9.sroa.5.0, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = extractelement <2 x i64> %i.q, i64 0
  store i64 %i.t, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = extractelement <2 x i64> %i.q, i64 1
  store i64 %i.u, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.o:                                             ; preds = %bb.m
  store i64 %.sroa.04.0, ptr %i.r, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.0.094, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.945.092, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.sroa.9.sroa.0.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sroa.9.sroa.5.0, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx10.sroa_idx, align 8
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store <2 x i64> %i.q, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx10.sroa_idx, align 8
  %.val = load ptr, ptr %0, align 8, !noundef !19
  invoke fastcc void @_RNvXsd_NtCsf1gSX8u3EQ2_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCsgpMJJHpo27b_12typst_bundle(ptr %.val)
          to label %bb.p unwind label %bb.i

bb.p:                                             ; preds = %bb.o
  ret void

bb.q:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB2Z_3map11MapConsumerIB6D_INtNtNtB2Z_7collect8consumer15CollectConsumerINtNtCs3oUPovFnLWP_4core6result6ResultTB56_NtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB8D_4diag16SourceDiagnosticEEENCNvNtB5W_7export_6export0ENvMs0_B4C_B4z_4refsEE0NCB2S_s_0INtB7a_13CollectResultB7Q_EBbz_E0TBbz_Bbz_EE00Bc6_ENtB5_3Job7executeB5W_(ptr nofree noundef captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [136 x i8], align 16              ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.13 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsf1gSX8u3EQ2_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !15436, !noundef !19 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i, null
  br i1 %i.g, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #45
          to label %.noexc unwind label %bb.e, !inline_history !15435

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15436
  store <2 x ptr> %i.e, ptr %i.b, align 16, !noalias !15437
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.565.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %.sroa.666.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 88, i1 false)
  invoke fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtBY_3map11MapConsumerIB4C_INtNtNtBY_7collect8consumer15CollectConsumerINtNtCs3oUPovFnLWP_4core6result6ResultTB35_NtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB6A_4diag16SourceDiagnosticEEENCNvNtB3V_7export_6export0ENvMs0_B2B_B2y_4refsEE0NCBR_s_0INtB58_13CollectResultB5N_EB9v_E0B3V_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(136) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true) #50
          to label %bb.k unwind label %bb.e, !inline_history !15435

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.l unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #47
  unreachable

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #46
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.p, %bb.n ]
  invoke void @_RNvXNtCsf1gSX8u3EQ2_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECsgpMJJHpo27b_12typst_bundle.exit unwind label %bb.q

bb.i:                                             ; preds = %bb.o, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15436
  %.sroa.056.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.457.0.copyload = load ptr, ptr %.sroa.457.0..sroa_idx, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.558.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, i64 32, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m), "nonnull"(ptr %i.n) ]
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.073 = phi ptr [ %i.m, %bb.l ], [ %.sroa.056.0.copyload, %bb.k ] ; 2 uses
  %.sroa.946.071 = phi ptr [ %i.n, %bb.l ], [ %.sroa.457.0.copyload, %bb.k ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.l ], [ 1, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3G_4diag16SourceDiagnosticEEEB1l_EEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.0.073, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sroa.946.071, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %bb.h

bb.o:                                             ; preds = %bb.m
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.0.073, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sroa.946.071, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %.val = load ptr, ptr %0, align 8, !noundef !19
  invoke fastcc void @_RNvXsd_NtCsf1gSX8u3EQ2_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCsgpMJJHpo27b_12typst_bundle(ptr %.val)
          to label %bb.p unwind label %bb.i

bb.p:                                             ; preds = %bb.o
  ret void

bb.q:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB2Z_13flat_map_iter19FlatMapIterConsumerNtNtB2Z_6extend15ListVecConsumerNCNvNtB4E_4link19create_link_anchors0EE0NCB2S_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB7l_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEB7e_E0TB7e_B7e_EE00Bas_ENtB5_3Job7executeB4E_(ptr nofree noundef captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [88 x i8], align 16               ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.13 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsf1gSX8u3EQ2_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !15442, !noundef !19 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i, null
  br i1 %i.g, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #45
          to label %.noexc unwind label %bb.e, !inline_history !15441

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15442
  store <2 x ptr> %i.e, ptr %i.b, align 16, !noalias !15443
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.565.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.666.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  invoke fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtBY_13flat_map_iter19FlatMapIterConsumerNtNtBY_6extend15ListVecConsumerNCNvNtB2D_4link19create_link_anchors0EE0NCBR_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB5h_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEB5a_E0B2D_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true) #50
          to label %bb.k unwind label %bb.e, !inline_history !15441

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.l unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #47
  unreachable

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #46
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.p, %bb.n ]
  invoke void @_RNvXNtCsf1gSX8u3EQ2_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECsgpMJJHpo27b_12typst_bundle.exit unwind label %bb.q

bb.i:                                             ; preds = %bb.o, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15442
  %.sroa.056.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.457.0.copyload = load ptr, ptr %.sroa.457.0..sroa_idx, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.558.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, i64 32, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m), "nonnull"(ptr %i.n) ]
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.073 = phi ptr [ %i.m, %bb.l ], [ %.sroa.056.0.copyload, %bb.k ] ; 2 uses
  %.sroa.946.071 = phi ptr [ %i.n, %bb.l ], [ %.sroa.457.0.copyload, %bb.k ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.l ], [ 1, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEB1l_EEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.0.073, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.946.071, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %bb.h

bb.o:                                             ; preds = %bb.m
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.0.073, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.946.071, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %.val = load ptr, ptr %0, align 8, !noundef !19
  invoke fastcc void @_RNvXsd_NtCsf1gSX8u3EQ2_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCsgpMJJHpo27b_12typst_bundle(ptr %.val)
          to label %bb.p unwind label %bb.i

bb.p:                                             ; preds = %bb.o
  ret void

bb.q:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB2I_3map11MapConsumerINtNtNtB2I_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtB4j_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7s_6engine4SinkEENCINvMB8m_NtB8m_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB4h_EINtNtB9j_9into_iter8IntoIterB4h_EB4h_B62_NCNCNvB4j_11bundle_impl00E0EE0NCB2B_s_0INtB5l_13CollectResultB61_EBba_E0TBba_Bba_EE0BbH_ENtB5_3Job7executeB4j_(ptr nofree noundef captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [120 x i8], align 16              ; 11 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = load <2 x ptr>, ptr %0, align 8
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.sroa.0.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.4.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load <2 x i64>, ptr %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.5.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.5.sroa.5.sroa.5.0.copyload = load i64, ptr %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.sroa.6.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsf1gSX8u3EQ2_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.g, align 8, !noalias !15456, !noundef !19 ; 2 uses
  %i.h = icmp eq ptr %.val.i.i, null
  br i1 %i.h, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #46
          to label %bb.e unwind label %.body47, !noalias !15456, !inline_history !15447

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15456
  store <2 x ptr> %i.e, ptr %i.b, align 16, !noalias !15457
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.5.sroa.4.sroa.0.0.copyload, ptr %.sroa.570.0..sroa_idx, align 16, !noalias !15457
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.5.sroa.4.sroa.4.0.copyload, ptr %.sroa.671.0..sroa_idx, align 8, !noalias !15457
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <2 x i64> %i.f, ptr %.sroa.7.0..sroa_idx, align 16, !noalias !15457
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx72.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx72.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.973.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %.sroa.5.sroa.5.sroa.4.0.copyload, ptr %.sroa.973.0..sroa_idx, align 16, !noalias !15457
  %.sroa.1074.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 %.sroa.5.sroa.5.sroa.5.0.copyload, ptr %.sroa.1074.0..sroa_idx, align 8, !noalias !15457
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.5.sroa.6.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, i64 24, i1 false)
  invoke fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtBY_3map11MapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtB2z_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5G_6engine4SinkEENCINvMB6A_NtB6A_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB2x_EINtNtB7x_9into_iter8IntoIterB2x_EB2x_B4g_NCNCNvB2z_11bundle_impl00E0EE0NCBR_s_0INtB3A_13CollectResultB4f_EB9n_E0B2z_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true)
          to label %bb.j unwind label %.body47, !noalias !15458, !inline_history !15447

bb.e:                                             ; preds = %bb.c
  unreachable

.body47:                                          ; preds = %bb.d, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.k unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %.body47
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #47
  unreachable

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #46
          to label %bb.i unwind label %bb.h

.body:                                            ; preds = %bb.v, %bb.y, %bb.z, %bb.h, %bb.m
  %.pn = phi { ptr, i32 } [ %i.s, %bb.m ], [ %i.m, %bb.h ], [ %i.al, %bb.z ], [ %i.al, %bb.y ], [ %i.al, %bb.v ]
  invoke void @_RNvXNtCsf1gSX8u3EQ2_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECsgpMJJHpo27b_12typst_bundle.exit unwind label %bb.ac

bb.h:                                             ; preds = %bb.x, %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15456
  %.sroa.061.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.462.0.copyload = load ptr, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.563.sroa.0.0.copyload = load i64, ptr %.sroa.563.0..sroa_idx, align 8
  %.sroa.563.sroa.4.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.563.sroa.4.0.copyload = load ptr, ptr %.sroa.563.sroa.4.0..sroa.563.0..sroa_idx.sroa_idx, align 8
  %.sroa.563.sroa.5.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.n = load <2 x i64>, ptr %.sroa.563.sroa.5.0..sroa.563.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.k:                                             ; preds = %.body47
  %i.o = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o), "nonnull"(ptr %i.p) ]
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.0100 = phi ptr [ %i.o, %bb.k ], [ %.sroa.061.0.copyload, %bb.j ] ; 2 uses
  %.sroa.951.098 = phi ptr [ %i.p, %bb.k ], [ %.sroa.462.0.copyload, %bb.j ] ; 2 uses
  %.sroa.9.sroa.0.0 = phi i64 [ undef, %bb.k ], [ %.sroa.563.sroa.0.0.copyload, %bb.j ] ; 2 uses
  %.sroa.9.sroa.5.0 = phi ptr [ undef, %bb.k ], [ %.sroa.563.sroa.4.0.copyload, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.k ], [ 1, %bb.j ] ; 2 uses
  %i.q = phi <2 x i64> [ undef, %bb.k ], [ %i.n, %bb.j ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3Y_6engine4SinkEEB1l_EEEB2O_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.r)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.r, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.0.0100, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.951.098, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.sroa.9.sroa.0.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.9.sroa.5.0, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = extractelement <2 x i64> %i.q, i64 0
  store i64 %i.t, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.u = extractelement <2 x i64> %i.q, i64 1
  store i64 %i.u, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  br label %.body

bb.n:                                             ; preds = %bb.l
  store i64 %.sroa.04.0, ptr %i.r, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.0.0100, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.951.098, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.sroa.9.sroa.0.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.9.sroa.5.0, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx10.sroa_idx, align 8
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <2 x i64> %i.q, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx10.sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.x = load i8, ptr %i.w, align 8, !range !49, !noundef !19
  %i.y = trunc nuw i8 %i.x to i1                  ; 3 uses
  br i1 %i.y, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = load ptr, ptr %i.v, align 8, !nonnull !19, !align !36, !noundef !19
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !19, !noundef !19
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ab = load ptr, ptr %i.v, align 8, !nonnull !19, !align !36, !noundef !19 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !19, !noundef !19
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.r, %bb.o
  %.pn.i = phi ptr [ %i.ak, %bb.r ], [ %i.aa, %bb.o ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ag = load i64, ptr %i.af, align 8, !noundef !19
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ai = atomicrmw xchg ptr %i.ah, i64 3 acq_rel, align 8
  %i.aj = icmp eq i64 %i.ai, 2
  br i1 %i.aj, label %bb.u, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.ak = load ptr, ptr %i.ab, align 8, !nonnull !19, !noundef !19 ; 2 uses
  store ptr %i.ak, ptr %i.d, align 8
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.q
  br i1 %i.y, label %bb.w, label %bb.ab

bb.u:                                             ; preds = %bb.q
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ag)
          to label %bb.t unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.y, label %bb.y, label %.body

bb.w:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15460)
  %i.am = load ptr, ptr %i.d, align 8, !alias.scope !15461, !nonnull !19, !noundef !19
  %i.an = atomicrmw add ptr %i.am, i64 -1 release, align 8, !noalias !15461
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #51
          to label %bb.ab unwind label %bb.h

bb.y:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15463)
  %i.ap = load ptr, ptr %i.d, align 8, !alias.scope !15464, !nonnull !19, !noundef !19
  %i.aq = atomicrmw add ptr %i.ap, i64 -1 release, align 8, !noalias !15464
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.z, label %.body

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #51
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.ab:                                            ; preds = %bb.w, %bb.t, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ac:                                            ; preds = %.body
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB2I_3map11MapConsumerIB6m_INtNtNtB2I_7collect8consumer15CollectConsumerINtNtCs3oUPovFnLWP_4core6result6ResultTB4P_NtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB8m_4diag16SourceDiagnosticEEENCNvNtB5F_7export_6export0ENvMs0_B4l_B4i_4refsEE0NCB2B_s_0INtB6T_13CollectResultB7z_EBbi_E0TBbi_Bbi_EE0BbP_ENtB5_3Job7executeB5F_(ptr nofree noundef captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [136 x i8], align 16              ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.13 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.e = load <2 x ptr>, ptr %0, align 8
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsf1gSX8u3EQ2_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !15477, !noundef !19 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i, null
  br i1 %i.g, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #45
          to label %.noexc46 unwind label %bb.e, !inline_history !15468

.noexc46:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15477
  store <2 x ptr> %i.e, ptr %i.b, align 16, !noalias !15478
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.569.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %.sroa.670.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 88, i1 false)
  invoke fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtBY_3map11MapConsumerIB4C_INtNtNtBY_7collect8consumer15CollectConsumerINtNtCs3oUPovFnLWP_4core6result6ResultTB35_NtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB6A_4diag16SourceDiagnosticEEENCNvNtB3V_7export_6export0ENvMs0_B2B_B2y_4refsEE0NCBR_s_0INtB58_13CollectResultB5N_EB9v_E0B3V_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(136) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true) #50
          to label %bb.j unwind label %bb.e, !inline_history !15468

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.k unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #47
  unreachable

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #46
          to label %bb.i unwind label %bb.h

.body:                                            ; preds = %bb.v, %bb.y, %bb.z, %bb.h, %bb.m
  %.pn = phi { ptr, i32 } [ %i.p, %bb.m ], [ %i.l, %bb.h ], [ %i.ag, %bb.z ], [ %i.ag, %bb.y ], [ %i.ag, %bb.v ]
  invoke void @_RNvXNtCsf1gSX8u3EQ2_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECsgpMJJHpo27b_12typst_bundle.exit unwind label %bb.ac

bb.h:                                             ; preds = %bb.x, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15477
  %.sroa.060.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.461.0.copyload = load ptr, ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.562.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, i64 32, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m), "nonnull"(ptr %i.n) ]
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.077 = phi ptr [ %i.m, %bb.k ], [ %.sroa.060.0.copyload, %bb.j ] ; 2 uses
  %.sroa.950.075 = phi ptr [ %i.n, %bb.k ], [ %.sroa.461.0.copyload, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.k ], [ 1, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3G_4diag16SourceDiagnosticEEEB1l_EEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.0.077, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.950.075, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %.body

bb.n:                                             ; preds = %bb.l
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.0.077, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.950.075, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.s = load i8, ptr %i.r, align 8, !range !49, !noundef !19
  %i.t = trunc nuw i8 %i.s to i1                  ; 3 uses
  br i1 %i.t, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = load ptr, ptr %i.q, align 8, !nonnull !19, !align !36, !noundef !19
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !19, !noundef !19
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.w = load ptr, ptr %i.q, align 8, !nonnull !19, !align !36, !noundef !19 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !19, !noundef !19
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.r, %bb.o
  %.pn.i = phi ptr [ %i.af, %bb.r ], [ %i.v, %bb.o ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !19
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ad = atomicrmw xchg ptr %i.ac, i64 3 acq_rel, align 8
  %i.ae = icmp eq i64 %i.ad, 2
  br i1 %i.ae, label %bb.u, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.w, align 8, !nonnull !19, !noundef !19 ; 2 uses
  store ptr %i.af, ptr %i.d, align 8
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.q
  br i1 %i.t, label %bb.w, label %bb.ab

bb.u:                                             ; preds = %bb.q
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ab)
          to label %bb.t unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.t, label %bb.y, label %.body

bb.w:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15480)
  %i.ah = load ptr, ptr %i.d, align 8, !alias.scope !15481, !nonnull !19, !noundef !19
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !15481
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #51
          to label %bb.ab unwind label %bb.h

bb.y:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15483)
  %i.ak = load ptr, ptr %i.d, align 8, !alias.scope !15484, !nonnull !19, !noundef !19
  %i.al = atomicrmw add ptr %i.ak, i64 -1 release, align 8, !noalias !15484
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.z, label %.body

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #51
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.ab:                                            ; preds = %bb.w, %bb.t, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ac:                                            ; preds = %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB2I_13flat_map_iter19FlatMapIterConsumerNtNtB2I_6extend15ListVecConsumerNCNvNtB4n_4link19create_link_anchors0EE0NCB2B_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB74_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEB6X_E0TB6X_B6X_EE0Bab_ENtB5_3Job7executeB4n_(ptr nofree noundef captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [88 x i8], align 16               ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.13 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.e = load <2 x ptr>, ptr %0, align 8
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsf1gSX8u3EQ2_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !15497, !noundef !19 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i, null
  br i1 %i.g, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #45
          to label %.noexc46 unwind label %bb.e, !inline_history !15488

.noexc46:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15497
  store <2 x ptr> %i.e, ptr %i.b, align 16, !noalias !15498
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.569.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.670.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  invoke fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtBY_13flat_map_iter19FlatMapIterConsumerNtNtBY_6extend15ListVecConsumerNCNvNtB2D_4link19create_link_anchors0EE0NCBR_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB5h_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEB5a_E0B2D_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true) #50
          to label %bb.j unwind label %bb.e, !inline_history !15488

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.k unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #47
  unreachable

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #46
          to label %bb.i unwind label %bb.h

.body:                                            ; preds = %bb.v, %bb.y, %bb.z, %bb.h, %bb.m
  %.pn = phi { ptr, i32 } [ %i.p, %bb.m ], [ %i.l, %bb.h ], [ %i.ag, %bb.z ], [ %i.ag, %bb.y ], [ %i.ag, %bb.v ]
  invoke void @_RNvXNtCsf1gSX8u3EQ2_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECsgpMJJHpo27b_12typst_bundle.exit unwind label %bb.ac

bb.h:                                             ; preds = %bb.x, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15497
  %.sroa.060.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.461.0.copyload = load ptr, ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.562.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, i64 32, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m), "nonnull"(ptr %i.n) ]
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.077 = phi ptr [ %i.m, %bb.k ], [ %.sroa.060.0.copyload, %bb.j ] ; 2 uses
  %.sroa.950.075 = phi ptr [ %i.n, %bb.k ], [ %.sroa.461.0.copyload, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.k ], [ 1, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultTINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEB1l_EEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.0.077, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.950.075, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %.body

bb.n:                                             ; preds = %bb.l
  store i64 %.sroa.04.0, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.0.077, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.950.075, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = load i8, ptr %i.r, align 8, !range !49, !noundef !19
  %i.t = trunc nuw i8 %i.s to i1                  ; 3 uses
  br i1 %i.t, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = load ptr, ptr %i.q, align 8, !nonnull !19, !align !36, !noundef !19
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !19, !noundef !19
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.w = load ptr, ptr %i.q, align 8, !nonnull !19, !align !36, !noundef !19 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !19, !noundef !19
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.r, %bb.o
  %.pn.i = phi ptr [ %i.af, %bb.r ], [ %i.v, %bb.o ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !19
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ad = atomicrmw xchg ptr %i.ac, i64 3 acq_rel, align 8
  %i.ae = icmp eq i64 %i.ad, 2
  br i1 %i.ae, label %bb.u, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.w, align 8, !nonnull !19, !noundef !19 ; 2 uses
  store ptr %i.af, ptr %i.d, align 8
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.q
  br i1 %i.t, label %bb.w, label %bb.ab

bb.u:                                             ; preds = %bb.q
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ab)
          to label %bb.t unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.t, label %bb.y, label %.body

bb.w:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15500)
  %i.ah = load ptr, ptr %i.d, align 8, !alias.scope !15501, !nonnull !19, !noundef !19
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !15501
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #51
          to label %bb.ab unwind label %bb.h

bb.y:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15503)
  %i.ak = load ptr, ptr %i.d, align 8, !alias.scope !15504, !nonnull !19, !noundef !19
  %i.al = atomicrmw add ptr %i.ak, i64 -1 release, align 8, !noalias !15504
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.z, label %.body

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #51
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.ab:                                            ; preds = %bb.w, %bb.t, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ac:                                            ; preds = %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEENCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB58_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB56_13flat_map_iter19FlatMapIterConsumerNtNtB56_6extend15ListVecConsumerNCNvNtB6L_4link19create_link_anchors0EEs_0E0B1P_ENtB5_3Job7executeB6L_(ptr nofree noundef captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.5.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.5.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.e = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.sroa.0.0.copyload), "nonnull"(ptr %.sroa.5.sroa.5.sroa.5.0.copyload) ]
  %i.f = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !15522, !noundef !19
  %i.g = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !15522, !noundef !19
  %i.h = sub i64 %i.f, %i.g
  %i.i = load i64, ptr %i.e, align 8, !noalias !15522, !noundef !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !15522, !noundef !19
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice15IterMutProducerNtCsgpMJJHpo27b_12typst_bundle4ItemEINtNtB6_13flat_map_iter19FlatMapIterConsumerNtNtB6_6extend15ListVecConsumerNCNvNtB1K_4link19create_link_anchors0EEB1K_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef nonnull align 16 %.sroa.5.sroa.5.sroa.0.0.copyload, i64 noundef %.sroa.5.sroa.5.sroa.4.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.5.sroa.5.sroa.5.0.copyload)
          to label %bb.h unwind label %bb.c, !inline_history !15511

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.m)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #47
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #46
          to label %bb.g unwind label %bb.f

.body46:                                          ; preds = %bb.x, %bb.aa, %bb.ab, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.p, %bb.f ], [ %i.az, %bb.ab ], [ %i.az, %bb.aa ], [ %i.az, %bb.x ]
  invoke void @_RNvXNtCsf1gSX8u3EQ2_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECsgpMJJHpo27b_12typst_bundle.exit unwind label %bb.ae

bb.f:                                             ; preds = %bb.z, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body46

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  %.sroa.065.0.copyload = load ptr, ptr %i.b, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.466.0.copyload = load ptr, ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.567.0.copyload = load i64, ptr %.sroa.567.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q), "nonnull"(ptr %i.r) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.084 = phi ptr [ %i.q, %bb.i ], [ %.sroa.065.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.07581 = phi ptr [ %i.r, %bb.i ], [ %.sroa.466.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.0 = phi i64 [ undef, %bb.i ], [ %.sroa.567.0.copyload, %bb.h ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.i ], [ 1, %bb.h ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15523)
  %i.s = load i64, ptr %0, align 8, !range !31, !alias.scope !15523, !noundef !19
  switch i64 %i.s, label %bb.k [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEEECsgpMJJHpo27b_12typst_bundle.exit
    i64 1, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !15523 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.u, align 8, !alias.scope !15523, !nonnull !19, !align !36, !noundef !19 ; 5 uses
  %i.v = load ptr, ptr %.val1.i, align 8, !invariant.load !19, !noalias !15523 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.v(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.n, !noalias !15523

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !37, !invariant.load !19, !noalias !15523 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEEECsgpMJJHpo27b_12typst_bundle.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !38, !invariant.load !19, !noalias !15523
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) %i.aa) #48, !noalias !15523
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEEECsgpMJJHpo27b_12typst_bundle.exit

bb.n:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !37, !invariant.load !19, !noalias !15523 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.body, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !38, !invariant.load !19, !noalias !15523
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.ag) #48, !noalias !15523
  br label %.body

bb.o:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEEECsgpMJJHpo27b_12typst_bundle.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.ab, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.ab, %bb.n ]
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.084, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.07581, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.body46

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEEECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.m, %bb.j, %bb.o
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.084, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.07581, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = load i8, ptr %i.ak, align 8, !range !49, !noundef !19
  %i.am = trunc nuw i8 %i.al to i1                ; 3 uses
  br i1 %i.am, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEEECsgpMJJHpo27b_12typst_bundle.exit
  %i.an = load ptr, ptr %i.aj, align 8, !nonnull !19, !align !36, !noundef !19
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !19, !noundef !19
  br label %bb.s

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEEECsgpMJJHpo27b_12typst_bundle.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ap = load ptr, ptr %i.aj, align 8, !nonnull !19, !align !36, !noundef !19 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !19, !noundef !19
  %i.ar = atomicrmw add ptr %i.aq, i64 1 monotonic, align 8
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.q
  %.pn.i = phi ptr [ %i.ay, %bb.t ], [ %i.ao, %bb.q ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load i64, ptr %i.at, align 8, !noundef !19
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = atomicrmw xchg ptr %i.av, i64 3 acq_rel, align 8
  %i.ax = icmp eq i64 %i.aw, 2
  br i1 %i.ax, label %bb.w, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ay = load ptr, ptr %i.ap, align 8, !nonnull !19, !noundef !19 ; 2 uses
  store ptr %i.ay, ptr %i.c, align 8
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  tail call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.w, %bb.s
  br i1 %i.am, label %bb.y, label %bb.ad

bb.w:                                             ; preds = %bb.s
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.au)
          to label %bb.v unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.am, label %bb.aa, label %.body46

bb.y:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15525)
  %i.ba = load ptr, ptr %i.c, align 8, !alias.scope !15526, !nonnull !19, !noundef !19
  %i.bb = atomicrmw add ptr %i.ba, i64 -1 release, align 8, !noalias !15526
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #51
          to label %bb.ad unwind label %bb.f

bb.aa:                                            ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15528)
  %i.bd = load ptr, ptr %i.c, align 8, !alias.scope !15529, !nonnull !19, !noundef !19
  %i.be = atomicrmw add ptr %i.bd, i64 -1 release, align 8, !noalias !15529
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.ab, label %.body46

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #51
          to label %.body46 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.ad:                                            ; preds = %bb.y, %bb.v, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ae:                                            ; preds = %.body46
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %.body46
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultINtNtCs3oUPovFnLWP_4core6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4q_4diag16SourceDiagnosticEEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketB3w_NtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB1W_3map11MapConsumerIB96_INtB1S_15CollectConsumerB2T_ENCNvNtB8p_7export_6export0ENvMs0_B7P_B7M_4refsEEs_0E0B1P_ENtB5_3Job7executeB8p_(ptr nofree noundef captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.668.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8, !noalias !15549
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.466.0..sroa_idx, align 8, !noalias !15549
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.5.sroa.4.0.copyload, ptr %.sroa.567.0..sroa_idx, align 8, !noalias !15549
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15550)
  %.sroa.5.0.copyload.i.cast = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.668.0..sroa_idx, align 8, !alias.scope !15550, !nonnull !19, !noundef !19
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !15550
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !15551, !noundef !19
  %i.g = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !15551, !noundef !19
  %i.h = sub i64 %i.f, %i.g
  %i.i = load i64, ptr %.sroa.5.0.copyload.i.cast, align 8, !noalias !15551, !noundef !19
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.cast, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !15551, !noundef !19
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileEEINtNtB6_3map11MapConsumerIB3J_INtNtNtB6_7collect8consumer15CollectConsumerINtNtCs3oUPovFnLWP_4core6result6ResultTB2c_NtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB5H_4diag16SourceDiagnosticEEENCNvNtB32_7export_6export0ENvMs0_B1I_B1F_4refsEEB32_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.6.0.copyload.i, i64 noundef %.sroa.7.0.copyload.i, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(32) %.sroa.8.0..sroa_idx.i)
          to label %bb.h unwind label %bb.c, !inline_history !15539

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.m)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #47
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #46
          to label %bb.g unwind label %bb.f

.body:                                            ; preds = %bb.t, %bb.w, %bb.x, %bb.f, %bb.k
  %.pn = phi { ptr, i32 } [ %i.s, %bb.k ], [ %i.p, %bb.f ], [ %i.aj, %bb.x ], [ %i.aj, %bb.w ], [ %i.aj, %bb.t ]
  invoke void @_RNvXNtCsf1gSX8u3EQ2_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECsgpMJJHpo27b_12typst_bundle.exit unwind label %bb.aa

bb.f:                                             ; preds = %bb.v, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15548
  %.sroa.062.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.463.0.copyload = load ptr, ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.564.0.copyload = load i64, ptr %.sroa.564.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q), "nonnull"(ptr %i.r) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.077 = phi ptr [ %i.q, %bb.i ], [ %.sroa.062.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.06975 = phi ptr [ %i.r, %bb.i ], [ %.sroa.463.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.0 = phi i64 [ undef, %bb.i ], [ %.sroa.564.0.copyload, %bb.h ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.i ], [ 1, %bb.h ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3F_4diag16SourceDiagnosticEEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.077, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.06975, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.body

bb.l:                                             ; preds = %bb.j
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.077, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.06975, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load i8, ptr %i.u, align 8, !range !49, !noundef !19
  %i.w = trunc nuw i8 %i.v to i1                  ; 3 uses
  br i1 %i.w, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = load ptr, ptr %i.t, align 8, !nonnull !19, !align !36, !noundef !19
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !19, !noundef !19
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.z = load ptr, ptr %i.t, align 8, !nonnull !19, !align !36, !noundef !19 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !19, !noundef !19
  %i.ab = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.m
  %.pn.i = phi ptr [ %i.ai, %bb.p ], [ %i.y, %bb.m ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !19
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = atomicrmw xchg ptr %i.af, i64 3 acq_rel, align 8
  %i.ah = icmp eq i64 %i.ag, 2
  br i1 %i.ah, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.z, align 8, !nonnull !19, !noundef !19 ; 2 uses
  store ptr %i.ai, ptr %i.d, align 8
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  tail call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.s, %bb.o
  br i1 %i.w, label %bb.u, label %bb.z

bb.s:                                             ; preds = %bb.o
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ae)
          to label %bb.r unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.w, label %bb.w, label %.body

bb.u:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15553)
  %i.ak = load ptr, ptr %i.d, align 8, !alias.scope !15554, !nonnull !19, !noundef !19
  %i.al = atomicrmw add ptr %i.ak, i64 -1 release, align 8, !noalias !15554
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #51
          to label %bb.z unwind label %bb.f

bb.w:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15556)
  %i.an = load ptr, ptr %i.d, align 8, !alias.scope !15557, !nonnull !19, !noundef !19
  %i.ao = atomicrmw add ptr %i.an, i64 -1 release, align 8, !noalias !15557
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.x, label %.body

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #51
          to label %.body unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.z:                                             ; preds = %bb.u, %bb.r, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.aa:                                            ; preds = %.body
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtCs3oUPovFnLWP_4core6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4I_6engine4SinkEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerNtB3y_5ChildEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvMB5C_NtB5C_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB7h_EINtNtB90_9into_iter8IntoIterB7h_EB7h_B2U_NCNCNvB3y_11bundle_impl00E0EEs_0E0B1P_ENtB5_3Job7executeB3y_(ptr nofree noundef captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.671.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8, !noalias !15579
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.469.0..sroa_idx, align 8, !noalias !15579
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.5.sroa.4.0.copyload, ptr %.sroa.570.0..sroa_idx, align 8, !noalias !15579
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15580)
  %.sroa.5.0.copyload.i.cast = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.671.0..sroa_idx, align 8, !alias.scope !15580, !nonnull !19, !noundef !19
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !15580
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !15581, !noundef !19
  %i.f = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !15581, !noundef !19
  %i.g = sub i64 %i.e, %i.f
  %i.h = load i64, ptr %.sroa.5.0.copyload.i.cast, align 8, !noalias !15581, !noundef !19
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.cast, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !15581, !noundef !19
  invoke fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtB1G_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4N_6engine4SinkEENCINvMB5H_NtB5H_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB1E_EINtNtB6E_9into_iter8IntoIterB1E_EB1E_B3n_NCNCNvB1G_11bundle_impl00E0EEB1G_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.g, i1 noundef zeroext true, i64 noundef %i.h, i64 noundef %i.j, ptr noalias nofree noundef nonnull align 16 %.sroa.6.0.copyload.i, i64 noundef %.sroa.7.0.copyload.i, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %.sroa.8.0..sroa_idx.i)
          to label %bb.h unwind label %bb.c, !inline_history !15567

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.l)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #47
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #46
          to label %bb.g unwind label %bb.f

.body46:                                          ; preds = %bb.x, %bb.aa, %bb.ab, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.o, %bb.f ], [ %i.ba, %bb.ab ], [ %i.ba, %bb.aa ], [ %i.ba, %bb.x ]
  invoke void @_RNvXNtCsf1gSX8u3EQ2_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECsgpMJJHpo27b_12typst_bundle.exit unwind label %bb.ae

bb.f:                                             ; preds = %bb.z, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body46

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15578
  %.sroa.065.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.466.0.copyload = load ptr, ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.567.0.copyload = load i64, ptr %.sroa.567.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.p = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p), "nonnull"(ptr %i.q) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.081 = phi ptr [ %i.p, %bb.i ], [ %.sroa.065.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.07278 = phi ptr [ %i.q, %bb.i ], [ %.sroa.466.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.0 = phi i64 [ undef, %bb.i ], [ %.sroa.567.0.copyload, %bb.h ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15582)
  %i.s = load i64, ptr %i.r, align 8, !range !31, !alias.scope !15582, !noundef !19
  switch i64 %i.s, label %bb.k [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3X_6engine4SinkEEEEB2N_.exit
    i64 1, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val2.i = load ptr, ptr %i.t, align 8, !alias.scope !15582 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val3.i = load ptr, ptr %i.u, align 8, !alias.scope !15582, !nonnull !19, !align !36, !noundef !19 ; 5 uses
  %i.v = load ptr, ptr %.val3.i, align 8, !invariant.load !19, !noalias !15582 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  invoke void %i.v(ptr noundef nonnull %.val2.i)
          to label %bb.m unwind label %bb.n, !noalias !15582

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !37, !invariant.load !19, !noalias !15582 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3X_6engine4SinkEEEEB2N_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !38, !invariant.load !19, !noalias !15582
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) %i.aa) #48, !noalias !15582
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3X_6engine4SinkEEEEB2N_.exit

bb.n:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !37, !invariant.load !19, !noalias !15582 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.body, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !38, !invariant.load !19, !noalias !15582
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.ag) #48, !noalias !15582
  br label %.body

bb.o:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !15582, !noundef !19
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i = load i64, ptr %i.ai, align 8, !alias.scope !15582, !noundef !19
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB2b_6engine4SinkEEB11_(ptr noalias nofree noundef nonnull align 16 %.val.i, i64 noundef %.val1.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3X_6engine4SinkEEEEB2N_.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.p ], [ %i.ab, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.ab, %bb.n ]
  store i64 %.sroa.04.0, ptr %i.r, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.0.081, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.9.07278, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.body46

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3X_6engine4SinkEEEEB2N_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.m, %bb.j, %bb.o
  store i64 %.sroa.04.0, ptr %i.r, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.0.081, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.9.07278, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load i8, ptr %i.al, align 8, !range !49, !noundef !19
  %i.an = trunc nuw i8 %i.am to i1                ; 3 uses
  br i1 %i.an, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3X_6engine4SinkEEEEB2N_.exit
  %i.ao = load ptr, ptr %i.ak, align 8, !nonnull !19, !align !36, !noundef !19
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !19, !noundef !19
  br label %bb.s

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsf1gSX8u3EQ2_10rayon_core3job9JobResultINtNtNtNtCsa3eaf3mS27M_5rayon4iter7collect8consumer13CollectResultTINtNtB4_6result6ResultNtCsgpMJJHpo27b_12typst_bundle4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB3X_6engine4SinkEEEEB2N_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aq = load ptr, ptr %i.ak, align 8, !nonnull !19, !align !36, !noundef !19 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !19, !noundef !19
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.q
  %.pn.i = phi ptr [ %i.az, %bb.t ], [ %i.ap, %bb.q ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.av = load i64, ptr %i.au, align 8, !noundef !19
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ax = atomicrmw xchg ptr %i.aw, i64 3 acq_rel, align 8
  %i.ay = icmp eq i64 %i.ax, 2
  br i1 %i.ay, label %bb.w, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.az = load ptr, ptr %i.aq, align 8, !nonnull !19, !noundef !19 ; 2 uses
  store ptr %i.az, ptr %i.d, align 8
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  tail call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.w, %bb.s
  br i1 %i.an, label %bb.y, label %bb.ad

bb.w:                                             ; preds = %bb.s
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.av)
          to label %bb.v unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.an, label %bb.aa, label %.body46

bb.y:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15584)
  %i.bb = load ptr, ptr %i.d, align 8, !alias.scope !15585, !nonnull !19, !noundef !19
  %i.bc = atomicrmw add ptr %i.bb, i64 -1 release, align 8, !noalias !15585
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #51
          to label %bb.ad unwind label %bb.f

bb.aa:                                            ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15587)
  %i.be = load ptr, ptr %i.d, align 8, !alias.scope !15588, !nonnull !19, !noundef !19
  %i.bf = atomicrmw add ptr %i.be, i64 -1 release, align 8, !noalias !15588
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.ab, label %.body46

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #51
          to label %.body46 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.ad:                                            ; preds = %bb.y, %bb.v, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ae:                                            ; preds = %.body46
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core6unwind12AbortIfPanicECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %.body46
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs3_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_12___ComemoCallNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15593)
  %i.c = load i64, ptr %1, align 8, !range !46, !alias.scope !15593, !noundef !19
  switch i64 %i.c, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 5, label %bb.i
end_hunk_3
