Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/salsa-182d72fa15673f0e.salsa.2f9093e19db0c7b6-cgu.0?download=true
inline.NumInlined: 4220
inline.NumDeleted: 1923
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RNSNvYNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute23try_complete_cycle_heads_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_once6vtableBc_:bb.a
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs2AWtUsOyxgP_3std6thread6thread5InnerNtNtBL_5alloc6SystemE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !4001
  br label %_RNvYNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute23try_complete_cycle_heads_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_onceBa_.exit

_RNvYNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute23try_complete_cycle_heads_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_onceBa_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken12is_cancelled(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #17 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load atomic i8, ptr %i.b monotonic, align 1
  %i.d = trunc i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken33should_trigger_local_cancellation(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #17 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load atomic i8, ptr %i.b monotonic, align 1
  %i.d = icmp eq i8 %i.c, 1
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #17 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store atomic i8 0, ptr %i.b monotonic, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery14add_changed_at(ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !26, !noundef !23
  %.sroa.0.0.i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %1, i64 range(i64 1, 0) %i.b)
  store i64 %.sroa.0.0.i, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery15add_read_simple(ptr noalias noundef align 8 dereferenceable(152) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, i8 noundef range(i8 0, 4) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 149 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !range !58, !noundef !23
  %.sroa.0.0.i = tail call noundef range(i8 0, 4) i8 @llvm.umin.i8(i8 range(i8 0, 4) %2, i8 range(i8 0, 4) %i.c)
  store i8 %.sroa.0.0.i, ptr %i.b, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !26, !alias.scope !4009, !noundef !23
  %.sroa.0.0.i.i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %3, i64 range(i64 1, 0) %i.e)
  store i64 %.sroa.0.0.i.i, ptr %i.d, align 8, !alias.scope !4009
  %.not = icmp eq i8 %2, 3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 4, !noundef !23
  %i.h = load <2 x i32>, ptr %1, align 4
  %i.i = add <2 x i32> %i.h, <i32 -1, i32 0>
  store <2 x i32> %i.i, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.g, ptr %i.j, align 8
  %i.k = call fastcc { i64, i1 } @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE11insert_fullBR_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 4 captures(address) dereferenceable(12) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs45bxiIjzMqg_5salsa12active_queryNtB2_11ActiveQuery8add_read(ptr noalias noundef align 8 dereferenceable(152) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, i8 noundef range(i8 0, 4) %2, i64 noundef range(i64 1, 0) %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 149 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !range !58, !noundef !23
  %.sroa.0.0.i = tail call noundef range(i8 0, 4) i8 @llvm.umin.i8(i8 range(i8 0, 4) %2, i8 range(i8 0, 4) %i.d)
  store i8 %.sroa.0.0.i, ptr %i.c, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !26, !noundef !23
  %.sroa.0.0.i2 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %3, i64 range(i64 1, 0) %i.f)
  store i64 %.sroa.0.0.i2, ptr %i.e, align 8
  %.not = icmp eq i8 %2, 3
  %.val.pre.pre = load ptr, ptr %4, align 8       ; 4 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %.val.pre.pre, align 8, !noundef !23
  %.not1 = icmp eq i64 %i.g, 0
  br i1 %.not1, label %_RNvMs4_NtCs45bxiIjzMqg_5salsa5cycleNtB5_10CycleHeads6extend.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 4, !noundef !23
  %i.j = load <2 x i32>, ptr %1, align 4
  %i.k = add <2 x i32> %i.j, <i32 -1, i32 0>
  store <2 x i32> %i.k, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.i, ptr %i.l, align 8
  %i.m = call fastcc { i64, i1 } @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE11insert_fullBR_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 4 captures(address) dereferenceable(12) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre = load i64, ptr %.val.pre.pre, align 8, !noalias !4016 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.o = icmp eq i64 %.pre, 0
  br i1 %i.o, label %_RNvMs4_NtCs45bxiIjzMqg_5salsa5cycleNtB5_10CycleHeads6extend.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadE7reserveBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %.pre)
  %i.p = getelementptr inbounds nuw i8, ptr %.val.pre.pre, i64 16 ; 2 uses
  %i.q = load i64, ptr %.val.pre.pre, align 8, !noalias !4017, !noundef !23
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %i.s = phi ptr [ %i.p, %bb.d ], [ %i.u, %.backedge ] ; 5 uses
  %i.t = icmp eq ptr %i.s, %i.r
  br i1 %i.t, label %_RNvMs4_NtCs45bxiIjzMqg_5salsa5cycleNtB5_10CycleHeads6extend.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 14
  %i.w = load atomic i8, ptr %i.v monotonic, align 1, !noalias !4018
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %_RNvXs6_NtCs45bxiIjzMqg_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i, label %.backedge

.backedge:                                        ; preds = %bb.f, %_RNvXs6_NtCs45bxiIjzMqg_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i
  br label %bb.e

_RNvXs6_NtCs45bxiIjzMqg_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.s, i64 12, i1 false), !noalias !4016
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.z = load atomic i16, ptr %i.y monotonic, align 4, !noalias !4016
  call fastcc void @_RNvMs4_NtCs45bxiIjzMqg_5salsa5cycleNtB5_10CycleHeads6insert(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias noundef readonly align 4 captures(address) dereferenceable(12) %i.a, i16 noundef %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4016
  br label %.backedge

_RNvMs4_NtCs45bxiIjzMqg_5salsa5cycleNtB5_10CycleHeads6extend.exit: ; preds = %bb.e, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs45bxiIjzMqg_5salsa5eventNtB2_5Event3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef nonnull ptr @_RNvNtNtCs2AWtUsOyxgP_3std6thread7current7current() ; 3 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !range !26, !noundef !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.d, ptr %i.e, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.f = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !4027
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std6thread6thread6ThreadECs45bxiIjzMqg_5salsa.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs2AWtUsOyxgP_3std6thread6thread5InnerNtNtBL_5alloc6SystemE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std6thread6thread6ThreadECs45bxiIjzMqg_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std6thread6thread6ThreadECs45bxiIjzMqg_5salsa.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @_RNvMNtCs45bxiIjzMqg_5salsa7runtimeNtB2_23BlockOnTransferredOwner5block(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !range !26, !noundef !23 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !26, !noundef !23 ; 3 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !23, !align !40, !noundef !23 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4047)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4048, !noundef !23
  %i.j = icmp eq i64 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !4049 ; 2 uses
  %i.m = load ptr, ptr %i.g, align 8, !alias.scope !4049, !nonnull !23 ; 2 uses
  br i1 %i.j, label %bb.f, label %.split.i.i

.split.i.i:                                       ; preds = %bb.b, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i
  %storemerge.i.i = phi i64 [ %i.am, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i ], [ %i.d, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4050)
  %i.n = mul i64 %storemerge.i.i, -1065810590584100411 ; 2 uses
  %i.o = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 26) ; 2 uses
  %i.p = lshr i64 %i.o, 57
  %i.q = trunc nuw nsw i64 %i.p to i8
  %i.r = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.split.i.i
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %.split.i.i ], [ %i.aj, %bb.e ]
  %.pn.i.i.i.i.i = phi i64 [ %i.o, %.split.i.i ], [ %i.ak, %bb.e ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.l ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i = load <16 x i8>, ptr %i.t, align 1, !noalias !4051 ; 2 uses
  %i.u = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, %i.s
  %i.v = bitcast <16 x i1> %i.u to i16            ; 2 uses
  %.not.i.not32.i.i.i.i = icmp eq i16 %i.v, 0
  br i1 %.not.i.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i.i.i = phi i16 [ %i.ai, %bb.d ], [ %i.v, %bb.c ] ; 3 uses
  %i.w = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i, i1 true)
  %i.x = zext nneg i16 %i.w to i64
  %i.y = add i64 %.sroa.01.0.i.i.i.i.i, %i.x
  %i.z = and i64 %i.y, %i.l
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds [24 x i8], ptr %i.m, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -24
  %.val2.i.i.i.i.i = load i64, ptr %i.ac, align 8, !range !26, !noalias !4052, !noundef !23
  %i.ad = icmp eq i64 %storemerge.i.i, %.val2.i.i.i.i.i
  br i1 %i.ad, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i, label %bb.d, !prof !25

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %i.ae = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = icmp eq i16 %i.af, 0
  br i1 %i.ag, label %bb.e, label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit, !prof !24

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = add i16 %.sroa.06.0.i33.i.i.i.i, -1
  %i.ai = and i16 %i.ah, %.sroa.06.0.i33.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aj = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.ak = add i64 %.sroa.01.0.i.i.i.i.i, %i.aj
  br label %bb.c

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.al = getelementptr inbounds i8, ptr %i.ab, i64 -16
  %i.am = load i64, ptr %i.al, align 8, !range !26, !noalias !4049, !noundef !23 ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.b
  br i1 %i.an, label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread, label %.split.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit: ; preds = %._crit_edge.i.i.i.i
  %i.ao = icmp eq i64 %storemerge.i.i, %i.b
  br i1 %i.ao, label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.b, %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !4053
  %i.ap = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !4053 ; 7 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.g, label %bb.j, !prof !24

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #60
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa7runtime14BlockedOnInnerEBF_(ptr nonnull %i.f, ptr nonnull %1) #63
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #62
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.ap, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.d, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 %i.b, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.at, i64 12, i1 false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa7runtime23BlockOnTransferredOwnerEBF_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa7runtime23BlockOnTransferredOwnerEBF_.exit: ; preds = %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB38_.exit, %bb.j
  %.sroa.0.0 = phi ptr [ %i.ap, %bb.j ], [ null, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB38_.exit ], [ null, %bb.n ]
  ret ptr %.sroa.0.0

_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread: ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i, %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit, %bb.a
  %i.au = cmpxchg ptr %1, i8 1, i8 0 release monotonic, align 1
  %i.av = extractvalue { i8, i1 } %i.au, 1
  br i1 %i.av, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB38_.exit, label %bb.k, !prof !25

bb.k:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread
  invoke void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %1, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB38_.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.o
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #62
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !23, !align !40, !noundef !23 ; 2 uses
  %i.ay = cmpxchg ptr %.val, i8 1, i8 0 release monotonic, align 1
  %i.az = extractvalue { i8, i1 } %i.ay, 1
  br i1 %i.az, label %.body, label %bb.o, !prof !25

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB38_.exit: ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread, %bb.k
  %.val6 = load ptr, ptr %0, align 8, !nonnull !23, !align !40, !noundef !23 ; 2 uses
  %i.ba = cmpxchg ptr %.val6, i8 1, i8 0 release monotonic, align 1
  %i.bb = extractvalue { i8, i1 } %i.ba, 1
  br i1 %i.bb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa7runtime23BlockOnTransferredOwnerEBF_.exit, label %bb.n, !prof !25

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB38_.exit
  tail call void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.val6, i1 noundef zeroext false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa7runtime23BlockOnTransferredOwnerEBF_.exit

.body:                                            ; preds = %bb.m, %bb.o, %bb.h
  %.pn24 = phi { ptr, i32 } [ %i.ar, %bb.h ], [ %i.ax, %bb.o ], [ %i.ax, %bb.m ]
  resume { ptr, i32 } %.pn24

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.val, i1 noundef zeroext false)
          to label %.body unwind label %bb.l
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvMNtCs45bxiIjzMqg_5salsa9cancelledNtB2_9Cancelled5throw(i8 noundef range(i8 0, 3) %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef nonnull ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 1, i64 noundef 1) ; 2 uses
  store i8 %0, ptr %i.a, align 1
  tail call void @_RNvNtCs2AWtUsOyxgP_3std5panic13resume_unwind(ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @111) #60
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMNtNtCs45bxiIjzMqg_5salsa5table4memoNtB2_9MemoTable5reset(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4056)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !4056, !noundef !23 ; 2 uses
  store ptr null, ptr %0, align 8, !alias.scope !4056
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RNvMs_NtNtCs45bxiIjzMqg_5salsa5table4memoNtB4_15LazyMemoEntries5clear.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !4056, !noundef !23 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs_NtNtCs45bxiIjzMqg_5salsa5table4memoNtB4_15LazyMemoEntries5clear.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.b
  %i.f = shl nuw nsw i64 %i.d, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.f, i64 noundef 8) #61, !noalias !4056
  br label %_RNvMs_NtNtCs45bxiIjzMqg_5salsa5table4memoNtB4_15LazyMemoEntries5clear.exit

_RNvMs_NtNtCs45bxiIjzMqg_5salsa5table4memoNtB4_15LazyMemoEntries5clear.exit: ; preds = %bb.a, %bb.b, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph15unblock_runtime(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, i64 noundef range(i64 1, 0) %1, i8 noundef range(i8 0, 3) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4103)
  %i.a = mul i64 %1, -1065810590584100411         ; 2 uses
  %i.b = tail call noundef i64 @llvm.fshl.i64(i64 %i.a, i64 %i.a, i64 26) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4106)
  %i.c = lshr i64 %i.b, 57
  %i.d = trunc nuw nsw i64 %i.c to i8             ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !4107, !noundef !23 ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !alias.scope !4107, !nonnull !23, !noundef !23 ; 4 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.d, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.z, %bb.d ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.b, %bb.a ], [ %i.aa, %bb.d ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.f ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i = load <16 x i8>, ptr %i.j, align 1, !noalias !4108 ; 2 uses
  %i.k = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, %i.i
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not.i.not32.i.i.i.i.i = icmp eq i16 %i.l, 0
  br i1 %.not.i.not32.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.sroa.06.0.i33.i.i.i.i.i = phi i16 [ %i.y, %bb.c ], [ %i.l, %bb.b ] ; 3 uses
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  %i.o = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.n
  %i.p = and i64 %i.o, %i.f                       ; 2 uses
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [24 x i8], ptr %i.g, i64 %i.q ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -24
  %.val2.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !range !26, !noalias !4109, !noundef !23
  %i.t = icmp eq i64 %1, %.val2.i.i.i.i.i.i
  br i1 %i.t, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1x_E0EB1F_.exit.i.i.i.i, label %bb.c, !prof !25

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c, %bb.b
  %i.u = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, splat (i8 -1)
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.d, label %_RNvMs_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_5Edges6remove.exit.thread, !prof !24

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.x = add i16 %.sroa.06.0.i33.i.i.i.i.i, -1
  %i.y = and i16 %i.x, %.sroa.06.0.i33.i.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.z = add i64 %.sroa.9.0.i.i.i.i.i.i, 16       ; 2 uses
  %i.aa = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.z
  br label %bb.b

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1x_E0EB1F_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = getelementptr inbounds i8, ptr %i.r, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4111)
  %.idx.neg.i.i.i.i = mul i64 %i.p, 24
  %i.ac = sdiv exact i64 %.idx.neg.i.i.i.i, 24    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4112)
  %i.ad = add nsw i64 %i.ac, -16
  %i.ae = and i64 %i.ad, %i.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ae ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.af, align 1, !noalias !4113
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ac ; 2 uses
  %.sroa.0.0.copyload.i926.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ai, align 1, !noalias !4114
  %i.aj = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ah, i1 false)
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 false)
  %narrow.i.i.i.i.i.i.i = add nuw nsw i16 %i.am, %i.al
  %i.an = icmp samesign ugt i16 %narrow.i.i.i.i.i.i.i, 15
  br i1 %i.an, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE12remove_entryBO_EB1D_.exit.i.i, label %bb.e

end_hunk_0
begin_hunk_1_@_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadE7reserveBK_:bb.a
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %i.ag = extractvalue { i64, i64 } %i.ae, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef %i.af, i64 noundef %i.ag) #60, !noalias !5496
  unreachable

_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadE10reallocateBK_.exit: ; preds = %_RINvCsaSrGj5dYoxL_8thin_vec20header_with_capacityNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadEBP_.exit.i, %_RINvCsaSrGj5dYoxL_8thin_vec10alloc_sizeNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadEBF_.exit.i
  %.sroa.0.0.i7 = phi i64 [ %.sroa.0.0.i8, %_RINvCsaSrGj5dYoxL_8thin_vec20header_with_capacityNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadEBP_.exit.i ], [ %.sroa.0.0.i61113, %_RINvCsaSrGj5dYoxL_8thin_vec10alloc_sizeNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadEBF_.exit.i ]
  %.sink5.i = phi ptr [ %i.p, %_RINvCsaSrGj5dYoxL_8thin_vec20header_with_capacityNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadEBP_.exit.i ], [ %i.ac, %_RINvCsaSrGj5dYoxL_8thin_vec10alloc_sizeNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadEBF_.exit.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sink5.i, i64 8
  store i64 %.sroa.0.0.i7, ptr %i.ah, align 8, !noalias !5496
  store ptr %.sink5.i, ptr %0, align 8, !alias.scope !5496
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadE10reallocateBK_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE10reallocateBL_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 3 uses
  %.not = icmp eq ptr %i.a, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %1, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs45bxiIjzMqg_5salsa.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #60
  unreachable

_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs45bxiIjzMqg_5salsa.exit.i.i.i: ; preds = %bb.b
  %i.c = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %1, i64 24) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.d, label %bb.e, label %bb.d, !prof !24

bb.d:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs45bxiIjzMqg_5salsa.exit.i.i.i
  %i.e = extractvalue { i64, i1 } %i.c, 0
  %i.f = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.e, i64 16) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.f, label %_RINvCsaSrGj5dYoxL_8thin_vec6layoutTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBB_2id2IdEEBB_.exit.i, !prof !24

bb.e:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs45bxiIjzMqg_5salsa.exit.i.i.i
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #60
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #60
  unreachable

_RINvCsaSrGj5dYoxL_8thin_vec6layoutTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBB_2id2IdEEBB_.exit.i: ; preds = %bb.d
  %i.h = extractvalue { i64, i1 } %i.f, 0         ; 2 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61
  %i.i = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef 8) #61 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %_RINvCsaSrGj5dYoxL_8thin_vec20header_with_capacityTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBQ_2id2IdEEBQ_.exit, !prof !24

bb.g:                                             ; preds = %_RINvCsaSrGj5dYoxL_8thin_vec6layoutTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBB_2id2IdEEBB_.exit.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.h) #60
  unreachable

_RINvCsaSrGj5dYoxL_8thin_vec20header_with_capacityTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBQ_2id2IdEEBQ_.exit: ; preds = %_RINvCsaSrGj5dYoxL_8thin_vec6layoutTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBB_2id2IdEEBB_.exit.i
  store i64 0, ptr %i.i, align 8
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !23 ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.i, label %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs45bxiIjzMqg_5salsa.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #60
  unreachable

_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs45bxiIjzMqg_5salsa.exit.i.i: ; preds = %bb.h
  %i.n = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.l, i64 24) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %bb.k, label %bb.j, !prof !24

bb.j:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs45bxiIjzMqg_5salsa.exit.i.i
  %i.p = extractvalue { i64, i1 } %i.n, 0
  %i.q = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.p, i64 16) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %bb.l, label %_RINvCsaSrGj5dYoxL_8thin_vec6layoutTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBB_2id2IdEEBB_.exit, !prof !24

bb.k:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs45bxiIjzMqg_5salsa.exit.i.i
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #60
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #60
  unreachable

_RINvCsaSrGj5dYoxL_8thin_vec6layoutTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBB_2id2IdEEBB_.exit: ; preds = %bb.j
  %i.s = extractvalue { i64, i1 } %i.q, 0
  %i.t = icmp slt i64 %1, 0
  br i1 %i.t, label %bb.m, label %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs45bxiIjzMqg_5salsa.exit.i

bb.m:                                             ; preds = %_RINvCsaSrGj5dYoxL_8thin_vec6layoutTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBB_2id2IdEEBB_.exit
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #60
  unreachable

_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs45bxiIjzMqg_5salsa.exit.i: ; preds = %_RINvCsaSrGj5dYoxL_8thin_vec6layoutTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBB_2id2IdEEBB_.exit
  %i.u = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %1, i64 24) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %bb.o, label %bb.n, !prof !24

bb.n:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs45bxiIjzMqg_5salsa.exit.i
  %i.w = extractvalue { i64, i1 } %i.u, 0
  %i.x = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.w, i64 16) ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %bb.p, label %_RINvCsaSrGj5dYoxL_8thin_vec10alloc_sizeTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBG_2id2IdEEBG_.exit, !prof !24

bb.o:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs45bxiIjzMqg_5salsa.exit.i
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #60
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #60
  unreachable

_RINvCsaSrGj5dYoxL_8thin_vec10alloc_sizeTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBG_2id2IdEEBG_.exit: ; preds = %bb.n
  %i.z = extractvalue { i64, i1 } %i.x, 0
  %i.aa = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.a, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.z) #61 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.r, label %bb.q, !prof !24

bb.q:                                             ; preds = %_RINvCsaSrGj5dYoxL_8thin_vec10alloc_sizeTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBG_2id2IdEEBG_.exit, %_RINvCsaSrGj5dYoxL_8thin_vec20header_with_capacityTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBQ_2id2IdEEBQ_.exit
  %.sink5 = phi ptr [ %i.i, %_RINvCsaSrGj5dYoxL_8thin_vec20header_with_capacityTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBQ_2id2IdEEBQ_.exit ], [ %i.aa, %_RINvCsaSrGj5dYoxL_8thin_vec10alloc_sizeTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBG_2id2IdEEBG_.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink5, i64 8
  store i64 %1, ptr %i.ac, align 8
  store ptr %.sink5, ptr %0, align 8
  ret void

bb.r:                                             ; preds = %_RINvCsaSrGj5dYoxL_8thin_vec10alloc_sizeTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBG_2id2IdEEBG_.exit
  %i.ad = tail call fastcc { i64, i64 } @_RINvCsaSrGj5dYoxL_8thin_vec6layoutTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBB_2id2IdEEBB_(i64 noundef %1) ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ad, 0
  %i.af = extractvalue { i64, i64 } %i.ad, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef %i.ae, i64 noundef %i.af) #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs3_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !23, !noundef !23
  %i.c = tail call { ptr, i64 } %i.b()
  ret { ptr, i64 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime17block_transferred(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.c = cmpxchg weak ptr %i.b, i8 0, i8 1 acquire monotonic, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.b, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %.sroa.018.0.copyload = load i64, ptr %1, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  %i.g = call fastcc noundef i64 @_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph30thread_id_of_transferred_query(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.f, i64 %.sroa.018.0.copyload, i32 %.sroa.4.0.copyload, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %i.a) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %i.g, %2
  br i1 %i.h, label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.i = cmpxchg ptr %i.b, i8 1, i8 0 release monotonic, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit, label %bb.f, !prof !25

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.b, i1 noundef zeroext false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5517)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !5518, !noundef !23
  %i.m = icmp eq i64 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !5519 ; 2 uses
  %i.p = load ptr, ptr %i.f, align 8, !alias.scope !5519, !nonnull !23 ; 2 uses
  br i1 %i.m, label %bb.l, label %.split.i.i

.split.i.i:                                       ; preds = %bb.g, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i
  %storemerge.i.i = phi i64 [ %i.ap, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i ], [ %i.g, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5520)
  %i.q = mul i64 %storemerge.i.i, -1065810590584100411 ; 2 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 26) ; 2 uses
  %i.s = lshr i64 %i.r, 57
  %i.t = trunc nuw nsw i64 %i.s to i8
  %i.u = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.split.i.i
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %.split.i.i ], [ %i.am, %bb.j ]
  %.pn.i.i.i.i.i = phi i64 [ %i.r, %.split.i.i ], [ %i.an, %bb.j ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.o ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i = load <16 x i8>, ptr %i.w, align 1, !noalias !5521 ; 2 uses
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, %i.v
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %.not.i.not32.i.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %bb.i
  %.sroa.06.0.i33.i.i.i.i = phi i16 [ %i.al, %bb.i ], [ %i.y, %bb.h ] ; 3 uses
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.01.0.i.i.i.i.i, %i.aa
  %i.ac = and i64 %i.ab, %i.o
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [24 x i8], ptr %i.p, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -24
  %.val2.i.i.i.i.i = load i64, ptr %i.af, align 8, !range !26, !noalias !5522, !noundef !23
  %i.ag = icmp eq i64 %storemerge.i.i, %.val2.i.i.i.i.i
  br i1 %i.ag, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i, label %bb.i, !prof !25

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %bb.h
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit, !prof !24

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ak = add i16 %.sroa.06.0.i33.i.i.i.i, -1
  %i.al = and i16 %i.ak, %.sroa.06.0.i33.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.an = add i64 %.sroa.01.0.i.i.i.i.i, %i.am
  br label %bb.h

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ao = getelementptr inbounds i8, ptr %i.ae, i64 -16
  %i.ap = load i64, ptr %i.ao, align 8, !range !26, !noalias !5519, !noundef !23 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, %2
  br i1 %i.aq, label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread, label %.split.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread: ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i, %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit, %bb.d
  %i.ar = cmpxchg ptr %i.b, i8 1, i8 0 release monotonic, align 1
  %i.as = extractvalue { i8, i1 } %i.ar, 1
  br i1 %i.as, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit, label %bb.k, !prof !25

bb.k:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread
  tail call void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.b, i1 noundef zeroext false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit

_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit: ; preds = %._crit_edge.i.i.i.i
  %i.at = icmp eq i64 %storemerge.i.i, %2
  br i1 %i.at, label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.g, %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !5523
  %i.au = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !5523 ; 6 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.m, label %bb.q, !prof !24

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #60
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = cmpxchg ptr %i.b, i8 1, i8 0 release monotonic, align 1
  %i.ay = extractvalue { i8, i1 } %i.ax, 1
  br i1 %i.ay, label %.body, label %bb.o, !prof !25

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.b, i1 noundef zeroext false)
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #62
  unreachable

bb.q:                                             ; preds = %bb.l
  store ptr %i.b, ptr %i.au, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit: ; preds = %bb.q, %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread, %bb.k, %bb.f, %bb.e
  %.sroa.4.1 = phi ptr [ undef, %bb.f ], [ undef, %bb.e ], [ %i.au, %bb.q ], [ undef, %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread ], [ undef, %bb.k ]
  %.sroa.0.1 = phi i64 [ 2, %bb.f ], [ 2, %bb.e ], [ 1, %bb.q ], [ 0, %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread ], [ 0, %bb.k ]
  %i.ba = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.bb = insertvalue { i64, ptr } %i.ba, ptr %.sroa.4.1, 1
  ret { i64, ptr } %i.bb

.body:                                            ; preds = %bb.o, %bb.n
  resume { ptr, i32 } %i.aw
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef i8 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime18cancellation_count(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 713
  %i.b = load atomic i8, ptr %i.a acquire, align 1
  ret i8 %i.b
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime18undo_transfer_lock(ptr noundef nonnull align 8 %0, i64 %.0.val, i32 %.8.val) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5563)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5564
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  call fastcc void @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBO_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6removeBO_EBS_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(32) %i.g, i64 %.0.val, i32 %.8.val), !noalias !5565
  %i.h = load i64, ptr %i.b, align 8, !noalias !5564, !noundef !23
  %.not.i = icmp eq i64 %i.h, 0
  %i.i = lshr i64 %.0.val, 32
  %i.j = trunc nuw i64 %i.i to i32
  %i.k = trunc i64 %.0.val to i32
  br i1 %.not.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 8, !noalias !5564 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !5564 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5566)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !5567, !noundef !23
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = mul i64 %.sroa.0.0.copyload.i, -1065810590584100411
  %i.r = zext i32 %.sroa.4.0.copyload.i to i64
  %i.s = add i64 %i.q, %i.r
  %i.t = mul i64 %i.s, -1065810590584100411       ; 2 uses
  %i.u = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5569)
  %i.v = lshr i64 %i.u, 57
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !5570, !noundef !23 ; 2 uses
  %i.z = load ptr, ptr %i.p, align 8, !alias.scope !5570, !nonnull !23, !noundef !23 ; 2 uses
  %i.aa = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ac = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = trunc i64 %.sroa.0.0.copyload.i to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.bc, %bb.h ]
  %.pn.i.i.i.i = phi i64 [ %i.u, %bb.e ], [ %i.bd, %bb.h ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.y ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i = load <16 x i8>, ptr %i.af, align 1, !noalias !5571 ; 2 uses
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, %i.ab
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not.i.not33.i.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i
  %.sroa.06.0.i34.i.i.i = phi i16 [ %i.bb, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i ], [ %i.ah, %bb.f ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.01.0.i.i.i.i, %i.aj
  %i.al = and i64 %i.ak, %i.y
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr inbounds [72 x i8], ptr %i.z, i64 %i.am ; 6 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -68
  %i.ap = load i32, ptr %i.ao, align 4, !alias.scope !5572, !noalias !5573, !noundef !23
  %i.aq = icmp eq i32 %i.ap, %i.ad
  br i1 %i.aq, label %bb.g, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i, !prof !27

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 -72
  %i.as = load i32, ptr %i.ar, align 4, !range !28, !alias.scope !5572, !noalias !5573, !noundef !23
  %i.at = icmp eq i32 %i.as, %i.ae
  br i1 %i.at, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i, !prof !27

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i: ; preds = %bb.g
  %i.au = getelementptr inbounds i8, ptr %i.an, i64 -64
  %i.av = load i32, ptr %i.au, align 4, !alias.scope !5572, !noalias !5573, !noundef !23
  %i.aw = icmp eq i32 %.sroa.4.0.copyload.i, %i.av
  br i1 %i.aw, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i, !prof !29

._crit_edge.i.i.i:                                ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i, %bb.f
  %i.ax = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %i.az = icmp eq i16 %i.ay, 0
  br i1 %i.az, label %bb.h, label %select.unfold.i, !prof !24

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i, %bb.g, %.lr.ph.i.i.i
  %i.ba = add i16 %.sroa.06.0.i34.i.i.i, -1
  %i.bb = and i16 %i.ba, %.sroa.06.0.i34.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.bb, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.bc = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.bd = add i64 %.sroa.01.0.i.i.i.i, %i.bc
  br label %bb.f

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i
  %i.be = getelementptr inbounds i8, ptr %i.an, i64 -56 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !5574, !noalias !5564, !noundef !23 ; 2 uses
  %i.bh = icmp ugt i64 %i.bg, 4                   ; 2 uses
  %i.bi = load ptr, ptr %i.be, align 8, !alias.scope !5574, !noalias !5564, !nonnull !23
  %i.bj = getelementptr inbounds i8, ptr %i.an, i64 -48 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !5574, !noalias !5564
  %.sink10.i.i.i = select i1 %i.bh, ptr %i.bi, ptr %i.be ; 4 uses
  %.sink9.i.i.i = select i1 %i.bh, i64 %i.bk, i64 %i.bg ; 4 uses
  %.idx.i.i = mul nuw nsw i64 %.sink9.i.i.i, 12
  %i.bl = getelementptr inbounds nuw i8, ptr %.sink10.i.i.i, i64 %.idx.i.i
  %i.bm = icmp eq i64 %.sink9.i.i.i, 0
  br i1 %i.bm, label %.loopexit, label %.lr.ph.i.i4.i

.lr.ph.i.i4.i:                                    ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i, %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i
  %.sroa.02.09.i.i.i = phi i64 [ %i.bx, %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i ], [ 0, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i ] ; 3 uses
  %i.bn = phi ptr [ %i.bo, %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i ], [ %.sink10.i.i.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !alias.scope !5575, !noalias !5576, !noundef !23
  %i.br = icmp eq i32 %i.bq, %i.j
  br i1 %i.br, label %bb.i, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i4.i
  %i.bs = load i32, ptr %i.bn, align 4, !range !28, !alias.scope !5575, !noalias !5576, !noundef !23
  %i.bt = icmp eq i32 %i.bs, %i.k
  br i1 %i.bt, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i.i, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i

_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i.i: ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
end_hunk_1
begin_hunk_2_@_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime36unblock_transferred_queries_owned_by:bb.a
  %.sroa.06.0.i34.i.i.i = phi i16 [ %i.bc, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i ], [ %i.ai, %bb.f ] ; 3 uses
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i.i, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = add i64 %.sroa.01.0.i.i.i.i, %i.ak
  %i.am = and i64 %i.al, %i.z
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds [72 x i8], ptr %i.aa, i64 %i.an ; 6 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -68
  %i.aq = load i32, ptr %i.ap, align 4, !alias.scope !5631, !noalias !5632, !noundef !23
  %i.ar = icmp eq i32 %i.aq, %i.ae
  br i1 %i.ar, label %bb.g, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i, !prof !27

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 -72
  %i.at = load i32, ptr %i.as, align 4, !range !28, !alias.scope !5631, !noalias !5632, !noundef !23
  %i.au = icmp eq i32 %i.at, %i.af
  br i1 %i.au, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i, !prof !27

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i: ; preds = %bb.g
  %i.av = getelementptr inbounds i8, ptr %i.ao, i64 -64
  %i.aw = load i32, ptr %i.av, align 4, !alias.scope !5631, !noalias !5632, !noundef !23
  %i.ax = icmp eq i32 %.sroa.4.0.copyload.i, %i.aw
  br i1 %i.ax, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i, !prof !29

._crit_edge.i.i.i:                                ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i, %bb.f
  %i.ay = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = icmp eq i16 %i.az, 0
  br i1 %i.ba, label %bb.h, label %select.unfold.i, !prof !24

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i, %bb.g, %.lr.ph.i.i.i
  %i.bb = add i16 %.sroa.06.0.i34.i.i.i, -1
  %i.bc = and i16 %i.bb, %.sroa.06.0.i34.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.bd = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.be = add i64 %.sroa.01.0.i.i.i.i, %i.bd
  br label %bb.f

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i
  %i.bf = getelementptr inbounds i8, ptr %i.ao, i64 -56 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !5633, !noalias !5623, !noundef !23 ; 2 uses
  %i.bi = icmp ugt i64 %i.bh, 4                   ; 2 uses
  %i.bj = load ptr, ptr %i.bf, align 8, !alias.scope !5633, !noalias !5623, !nonnull !23
  %i.bk = getelementptr inbounds i8, ptr %i.ao, i64 -48 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !5633, !noalias !5623
  %.sink10.i.i.i = select i1 %i.bi, ptr %i.bj, ptr %i.bf ; 4 uses
  %.sink9.i.i.i = select i1 %i.bi, i64 %i.bl, i64 %i.bh ; 4 uses
  %.idx.i.i = mul nuw nsw i64 %.sink9.i.i.i, 12
  %i.bm = getelementptr inbounds nuw i8, ptr %.sink10.i.i.i, i64 %.idx.i.i
  %i.bn = icmp eq i64 %.sink9.i.i.i, 0
  br i1 %i.bn, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit.i, label %.lr.ph.i.i6.i

.lr.ph.i.i6.i:                                    ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i, %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i
  %.sroa.02.09.i.i.i = phi i64 [ %i.by, %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i ], [ 0, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i ] ; 3 uses
  %i.bo = phi ptr [ %i.bp, %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i ], [ %.sink10.i.i.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 12 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !alias.scope !5634, !noalias !5635, !noundef !23
  %i.bs = icmp eq i32 %i.br, %i.k
  br i1 %i.bs, label %bb.i, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i6.i
  %i.bt = load i32, ptr %i.bo, align 4, !range !28, !alias.scope !5634, !noalias !5635, !noundef !23
  %i.bu = icmp eq i32 %i.bt, %i.l
  br i1 %i.bu, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i.i, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i

_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i.i: ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bw = load i32, ptr %i.bv, align 4, !alias.scope !5634, !noalias !5635, !noundef !23
  %i.bx = icmp eq i32 %i.bw, %.8.val
  br i1 %i.bx, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i.i, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i

_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i: ; preds = %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i.i, %bb.i, %.lr.ph.i.i6.i
  %i.by = add nuw nsw i64 %.sroa.02.09.i.i.i, 1
  %i.bz = icmp eq ptr %i.bp, %i.bm
  br i1 %i.bz, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit.i, label %.lr.ph.i.i6.i

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i.i: ; preds = %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i.i
  %i.ca = icmp ult i64 %.sroa.02.09.i.i.i, %.sink9.i.i.i
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr [12 x i8], ptr %.sink10.i.i.i, i64 %.sink9.i.i.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 -12    ; 2 uses
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %.sink10.i.i.i, i64 %.sroa.02.09.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.cc, i64 12, i1 false), !noalias !5636
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cc, ptr noundef nonnull align 4 dereferenceable(12) %i.cd, i64 12, i1 false), !noalias !5636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !noalias !5636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ce = load i64, ptr %i.bg, align 8, !alias.scope !5637, !noalias !5623, !noundef !23
  %i.cf = icmp ugt i64 %i.ce, 4
  %.sink8.i12.i.i.i = select i1 %i.cf, ptr %i.bk, ptr %i.bg ; 2 uses
  %i.cg = load i64, ptr %.sink8.i12.i.i.i, align 8, !alias.scope !5638, !noalias !5623, !noundef !23 ; 2 uses
  %i.ch = icmp ne i64 %i.cg, 0
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = add i64 %i.cg, -1
  store i64 %i.ci, ptr %.sink8.i12.i.i.i, align 8, !alias.scope !5638, !noalias !5623
  br label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit.i

select.unfold.i:                                  ; preds = %._crit_edge.i.i.i, %bb.d
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #60
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %select.unfold.i
  unreachable

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit.i: ; preds = %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5623
  invoke fastcc void @_RNvNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_15DependencyGraph56unblock_runtimes_blocked_on_transferred_queries_owned_by17unblock_recursive(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.g, i64 %.0.val, i32 %.8.val, i8 noundef range(i8 0, 3) %1)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph56unblock_runtimes_blocked_on_transferred_queries_owned_by.exit unwind label %bb.j

bb.j:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit.i, %select.unfold.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.cl = extractvalue { i8, i1 } %i.ck, 1
  br i1 %i.cl, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit, label %bb.k, !prof !25

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit unwind label %bb.m

_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph56unblock_runtimes_blocked_on_transferred_queries_owned_by.exit: ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit.i
  %i.cm = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.cn = extractvalue { i8, i1 } %i.cm, 1
  br i1 %i.cn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit4, label %bb.l, !prof !25

bb.l:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph56unblock_runtimes_blocked_on_transferred_queries_owned_by.exit
  tail call void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit4: ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph56unblock_runtimes_blocked_on_transferred_queries_owned_by.exit, %bb.l
  ret void

bb.m:                                             ; preds = %bb.k
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #62
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.cj
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime5block(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, i64 noundef range(i64 1, 0) %2, ptr noundef nonnull align 8 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = invoke noundef nonnull ptr @_RNvNtNtCs2AWtUsOyxgP_3std6thread7current7current()
          to label %bb.c unwind label %bb.b       ; 3 uses

bb.b:                                             ; preds = %bb.o, %bb.d, %bb.f, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = cmpxchg ptr %3, i8 1, i8 0 release monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %.body, label %bb.s, !prof !25

bb.c:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !26, !noundef !23 ; 4 uses
  %i.h = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !5665
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std6thread6thread6ThreadECs45bxiIjzMqg_5salsa.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs2AWtUsOyxgP_3std6thread6thread5InnerNtNtBL_5alloc6SystemE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std6thread6thread6ThreadECs45bxiIjzMqg_5salsa.exit unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std6thread6thread6ThreadECs45bxiIjzMqg_5salsa.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = icmp eq i64 %i.g, %2
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std6thread6thread6ThreadECs45bxiIjzMqg_5salsa.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.l = cmpxchg weak ptr %i.k, i8 0, i8 1 acquire monotonic, align 1
  %i.m = extractvalue { i8, i1 } %i.l, 1
  br i1 %i.m, label %bb.g, label %bb.f, !prof !25

bb.f:                                             ; preds = %bb.e
  %i.n = invoke noundef zeroext i1 @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.k, i64 undef, i32 noundef -1)
          to label %bb.g unwind label %bb.b       ; 0 uses

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !5666)
  call void @llvm.experimental.noalias.scope.decl(metadata !5667)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !5668, !noundef !23
  %i.r = icmp eq i64 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !5669 ; 2 uses
  %i.u = load ptr, ptr %i.o, align 8, !alias.scope !5669, !nonnull !23 ; 2 uses
  br i1 %i.r, label %bb.k, label %.split.i.i

.split.i.i:                                       ; preds = %bb.g, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i
  %storemerge.i.i = phi i64 [ %i.au, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i ], [ %2, %bb.g ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5670)
  %i.v = mul i64 %storemerge.i.i, -1065810590584100411 ; 2 uses
  %i.w = call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 26) ; 2 uses
  %i.x = lshr i64 %i.w, 57
  %i.y = trunc nuw nsw i64 %i.x to i8
  %i.z = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.split.i.i
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %.split.i.i ], [ %i.ar, %bb.j ]
  %.pn.i.i.i.i.i = phi i64 [ %i.w, %.split.i.i ], [ %i.as, %bb.j ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.t ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i = load <16 x i8>, ptr %i.ab, align 1, !noalias !5671 ; 2 uses
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, %i.aa
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not.i.not32.i.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %bb.i
  %.sroa.06.0.i33.i.i.i.i = phi i16 [ %i.aq, %bb.i ], [ %i.ad, %bb.h ] ; 3 uses
  %i.ae = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.01.0.i.i.i.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.t
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [24 x i8], ptr %i.u, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -24
  %.val2.i.i.i.i.i = load i64, ptr %i.ak, align 8, !range !26, !noalias !5672, !noundef !23
  %i.al = icmp eq i64 %storemerge.i.i, %.val2.i.i.i.i.i
  br i1 %i.al, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i, label %bb.i, !prof !25

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %bb.h
  %i.am = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, splat (i8 -1)
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %bb.j, label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit, !prof !24

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ap = add i16 %.sroa.06.0.i33.i.i.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.06.0.i33.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ar = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.as = add i64 %.sroa.01.0.i.i.i.i.i, %i.ar
  br label %bb.h

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.at = getelementptr inbounds i8, ptr %i.aj, i64 -16
  %i.au = load i64, ptr %i.at, align 8, !range !26, !noalias !5669, !noundef !23 ; 2 uses
  %i.av = icmp eq i64 %i.au, %i.g
  br i1 %i.av, label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread, label %.split.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit: ; preds = %._crit_edge.i.i.i.i
  %i.aw = icmp eq i64 %storemerge.i.i, %i.g
  br i1 %i.aw, label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.g, %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !5673
  %i.ax = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !5673 ; 7 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.l, label %bb.p, !prof !24

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #60
          to label %.noexc11 unwind label %bb.m

.noexc11:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa7runtime14BlockedOnInnerEBF_(ptr nonnull %i.k, ptr nonnull %3) #63
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #62
  unreachable

_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread: ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i, %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit
  %i.bb = cmpxchg ptr %i.k, i8 1, i8 0 release monotonic, align 1
  %i.bc = extractvalue { i8, i1 } %i.bb, 1
  br i1 %i.bc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit, label %bb.o, !prof !25

bb.o:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread
  invoke void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.k, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit unwind label %bb.b

bb.p:                                             ; preds = %bb.k
  store ptr %i.k, ptr %i.ax, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %2, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i64 %i.g, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB38_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB38_.exit: ; preds = %bb.q, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit, %bb.p
  %.sroa.0.0 = phi ptr [ %i.ax, %bb.p ], [ null, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit ], [ null, %bb.q ]
  ret ptr %.sroa.0.0

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit: ; preds = %bb.o, %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std6thread6thread6ThreadECs45bxiIjzMqg_5salsa.exit
  %i.bd = cmpxchg ptr %3, i8 1, i8 0 release monotonic, align 1
  %i.be = extractvalue { i8, i1 } %i.bd, 1
  br i1 %i.be, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB38_.exit, label %bb.q, !prof !25

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit
  call void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %3, i1 noundef zeroext false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB38_.exit

bb.r:                                             ; preds = %bb.s
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #62
  unreachable

.body:                                            ; preds = %bb.b, %bb.s, %bb.m
  %.pn21 = phi { ptr, i32 } [ %i.az, %bb.m ], [ %i.c, %bb.s ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %.pn21

bb.s:                                             ; preds = %bb.b
  invoke void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %.body unwind label %bb.r
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeuEE8grow_oneB1m_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !45, !noundef !23 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5676)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5676
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !5676
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs45bxiIjzMqg_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !noalias !5676
  %i.f = load i64, ptr %i.a, align 8, !range !36, !noalias !5676, !noundef !23
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !47, !noalias !5676, !noundef !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !5676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5676
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #60
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !5676, !nonnull !23, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5676
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !5676
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !5676
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexuEE8grow_oneB1m_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !45, !noundef !23 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5679)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5679
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !5679
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs45bxiIjzMqg_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !noalias !5679
  %i.f = load i64, ptr %i.a, align 8, !range !36, !noalias !5679, !noundef !23
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !47, !noalias !5679, !noundef !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !5679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5679
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #60
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !5679, !nonnull !23, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5679
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !5679
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !5679
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs45bxiIjzMqg_5salsa10ingredient10IngredientEL_EE8grow_oneB18_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !45, !noundef !23 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5682)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5682
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !5682
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs45bxiIjzMqg_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !5682
  %i.f = load i64, ptr %i.a, align 8, !range !36, !noalias !5682, !noundef !23
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !47, !noalias !5682, !noundef !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !5682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5682
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #60
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !5682, !nonnull !23, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5682
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !5682
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !5682
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs45bxiIjzMqg_5salsa12active_query11ActiveQueryE8grow_oneBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !45, !noundef !23 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5685)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5685
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !5685
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs45bxiIjzMqg_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 152), !noalias !5685
  %i.f = load i64, ptr %i.a, align 8, !range !36, !noalias !5685, !noundef !23
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !47, !noalias !5685, !noundef !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !5685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5685
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtCs45bxiIjzMqg_5salsa8function4syncNtB4_10ClaimGuard8transfer:bb.a
  %.sroa.5.0.copyload.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i213.i.i, align 8, !noalias !6684 ; 3 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.vp = load i64, ptr %i.vo, align 8, !noalias !6684, !noundef !23 ; 3 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.j, i64 200 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6685)
  %i.vr = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  %i.vs = load i64, ptr %i.vr, align 8, !alias.scope !6686, !noalias !6611, !noundef !23
  %i.vt = icmp eq i64 %i.vs, 0
  br i1 %i.vt, label %select.unfold.i.invoke.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.vu = mul i64 %.sroa.0.0.copyload.i.i.i, -1065810590584100411
  %i.vv = zext i32 %.sroa.5.0.copyload.i.i.i to i64
  %i.vw = add i64 %i.vu, %i.vv
  %i.vx = mul i64 %i.vw, -1065810590584100411     ; 2 uses
  %i.vy = tail call noundef i64 @llvm.fshl.i64(i64 %i.vx, i64 %i.vx, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6688)
  %i.vz = lshr i64 %i.vy, 57
  %i.wa = trunc nuw nsw i64 %i.vz to i8
  %i.wb = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  %i.wc = load i64, ptr %i.wb, align 8, !alias.scope !6689, !noalias !6611, !noundef !23 ; 2 uses
  %i.wd = load ptr, ptr %i.vq, align 8, !alias.scope !6689, !noalias !6611, !nonnull !23, !noundef !23 ; 2 uses
  %i.we = insertelement <16 x i8> poison, i8 %i.wa, i64 0
  %i.wf = shufflevector <16 x i8> %i.we, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.wg = lshr i64 %.sroa.0.0.copyload.i.i.i, 32
  %i.wh = trunc nuw i64 %i.wg to i32
  %i.wi = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ci, %bb.cf
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.cf ], [ %i.xg, %bb.ci ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.vy, %bb.cf ], [ %i.xh, %bb.ci ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.wc ; 3 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wd, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i = load <16 x i8>, ptr %i.wj, align 1, !noalias !6690 ; 2 uses
  %i.wk = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i, %i.wf
  %i.wl = bitcast <16 x i1> %i.wk to i16          ; 2 uses
  %.not.i.not33.i.i.i.i.i = icmp eq i16 %i.wl, 0
  br i1 %.not.i.not33.i.i.i.i.i, label %._crit_edge.i.i.i215.i.i, label %.lr.ph.i.i.i214.i.i

.lr.ph.i.i.i214.i.i:                              ; preds = %bb.cg, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i.i.i
  %.sroa.06.0.i34.i.i.i.i.i = phi i16 [ %i.xf, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i.i.i ], [ %i.wl, %bb.cg ] ; 3 uses
  %i.wm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i.i.i.i, i1 true)
  %i.wn = zext nneg i16 %i.wm to i64
  %i.wo = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.wn
  %i.wp = and i64 %i.wo, %i.wc
  %i.wq = sub nsw i64 0, %i.wp
  %i.wr = getelementptr inbounds [56 x i8], ptr %i.wd, i64 %i.wq ; 6 uses
  %i.ws = getelementptr inbounds i8, ptr %i.wr, i64 -52
  %i.wt = load i32, ptr %i.ws, align 4, !alias.scope !6691, !noalias !6692, !noundef !23
  %i.wu = icmp eq i32 %i.wt, %i.wh
  br i1 %i.wu, label %bb.ch, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i.i.i, !prof !27

bb.ch:                                            ; preds = %.lr.ph.i.i.i214.i.i
  %i.wv = getelementptr inbounds i8, ptr %i.wr, i64 -56
  %i.ww = load i32, ptr %i.wv, align 4, !range !28, !alias.scope !6691, !noalias !6692, !noundef !23
  %i.wx = icmp eq i32 %i.ww, %i.wi
  br i1 %i.wx, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i.i.i, !prof !27

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i.i.i: ; preds = %bb.ch
  %i.wy = getelementptr inbounds i8, ptr %i.wr, i64 -48
  %i.wz = load i32, ptr %i.wy, align 4, !alias.scope !6691, !noalias !6692, !noundef !23
  %i.xa = icmp eq i32 %.sroa.5.0.copyload.i.i.i, %i.wz
  br i1 %i.xa, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i.i.i, !prof !29

._crit_edge.i.i.i215.i.i:                         ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i.i.i, %bb.cg
  %i.xb = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i, splat (i8 -1)
  %i.xc = bitcast <16 x i1> %i.xb to i16
  %i.xd = icmp eq i16 %i.xc, 0
  br i1 %i.xd, label %bb.ci, label %select.unfold.i.invoke.i.i, !prof !24

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i.i.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i.i.i, %bb.ch, %.lr.ph.i.i.i214.i.i
  %i.xe = add i16 %.sroa.06.0.i34.i.i.i.i.i, -1
  %i.xf = and i16 %i.xe, %.sroa.06.0.i34.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.xf, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i215.i.i, label %.lr.ph.i.i.i214.i.i

bb.ci:                                            ; preds = %._crit_edge.i.i.i215.i.i
  %i.xg = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.xh = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.xg
  br label %bb.cg

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i.i.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i.i.i
  %i.xi = getelementptr inbounds i8, ptr %i.wr, i64 -40 ; 4 uses
  %i.xj = getelementptr inbounds i8, ptr %i.wr, i64 -8 ; 4 uses
  %i.xk = load i64, ptr %i.xj, align 8, !alias.scope !6693, !noalias !6684, !noundef !23 ; 2 uses
  %i.xl = icmp ugt i64 %i.xk, 4                   ; 2 uses
  %i.xm = load ptr, ptr %i.xi, align 8, !alias.scope !6693, !noalias !6684, !nonnull !23
  %i.xn = getelementptr inbounds i8, ptr %i.wr, i64 -32 ; 3 uses
  %i.xo = load i64, ptr %i.xn, align 8, !alias.scope !6693, !noalias !6684
  %.sink9.i.i.i.i.i = select i1 %i.xl, i64 %i.xo, i64 %i.xk ; 4 uses
  %.sink9.i8.i.i.i.i = select i1 %i.xl, ptr %i.xm, ptr %i.xi ; 2 uses
  %.not.i4.i.i.i = icmp eq i64 %.sink9.i.i.i.i.i, 0
  br i1 %.not.i4.i.i.i, label %.invoke.i.i, label %bb.cj

bb.cj:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i.i.i
  %i.xp = icmp ult i64 %i.vp, %.sink9.i.i.i.i.i
  br i1 %i.xp, label %bb.ck, label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.cj, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i.i.i
  %i.xq = phi i64 [ -1, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i.i.i ], [ %i.vp, %bb.cj ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.xq, i64 noundef %.sink9.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #60
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !6611

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ck:                                            ; preds = %bb.cj
  %i.xr = getelementptr [8 x i8], ptr %.sink9.i8.i.i.i.i, i64 %.sink9.i.i.i.i.i
  %i.xs = getelementptr i8, ptr %i.xr, i64 -8     ; 2 uses
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %.sink9.i8.i.i.i.i, i64 %i.vp ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.xs, align 8, !noalias !6684
  %i.xu = load i64, ptr %i.xt, align 8, !noalias !6684
  store i64 %i.xu, ptr %i.xs, align 8, !noalias !6684
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.xt, align 8, !noalias !6684
  %i.xv = load i64, ptr %i.xj, align 8, !alias.scope !6694, !noalias !6684, !noundef !23 ; 2 uses
  %i.xw = icmp ugt i64 %i.xv, 4                   ; 2 uses
  %.sink8.i11.i.i.i.i = select i1 %i.xw, ptr %i.xn, ptr %i.xj ; 2 uses
  %i.xx = load i64, ptr %.sink8.i11.i.i.i.i, align 8, !alias.scope !6695, !noalias !6684, !noundef !23 ; 2 uses
  %i.xy = icmp eq i64 %i.xx, 0
  br i1 %i.xy, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E11swap_removeCs45bxiIjzMqg_5salsa.exit.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.xz = load ptr, ptr %i.xi, align 8, !alias.scope !6694, !noalias !6684, !nonnull !23
  %.sink9.i10.i.i.i.i = select i1 %i.xw, ptr %i.xz, ptr %i.xi
  %i.ya = add i64 %i.xx, -1                       ; 2 uses
  store i64 %i.ya, ptr %.sink8.i11.i.i.i.i, align 8, !alias.scope !6695, !noalias !6684
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %.sink9.i10.i.i.i.i, i64 %i.ya
  %i.yc = load i64, ptr %i.yb, align 8, !range !26, !noalias !6684, !noundef !23
  %.pre.i216.i.i = load i64, ptr %i.xj, align 8, !alias.scope !6696, !noalias !6684
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E11swap_removeCs45bxiIjzMqg_5salsa.exit.i.i.i

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E11swap_removeCs45bxiIjzMqg_5salsa.exit.i.i.i: ; preds = %bb.cl, %bb.ck
  %i.yd = phi i64 [ %.pre.i216.i.i, %bb.cl ], [ %i.xv, %bb.ck ] ; 2 uses
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.yc, %bb.cl ], [ 0, %bb.ck ] ; 2 uses
  %i.ye = icmp ne i64 %.sroa.0.0.i5.i.i.i, 0
  tail call void @llvm.assume(i1 %i.ye)
  %i.yf = icmp ugt i64 %i.yd, 4
  %i.yg = load i64, ptr %i.xn, align 8, !alias.scope !6696, !noalias !6684
  %.sink9.i.i217.i.i = select i1 %i.yf, i64 %i.yg, i64 %i.yd
  %i.yh = icmp eq i64 %.sink9.i.i217.i.i, 0
  br i1 %i.yh, label %bb.cm, label %bb.co

select.unfold.i.invoke.i.i:                       ; preds = %._crit_edge.i.i103.i.i, %._crit_edge.i.i149.i.i, %._crit_edge.i.i177.i.i, %._crit_edge.i.i.i215.i.i, %bb.ce, %bb.bj, %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_.exit139.i._crit_edge.i, %bb.an
  %i.yi = phi ptr [ @122, %bb.bj ], [ @121, %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_.exit139.i._crit_edge.i ], [ @120, %bb.an ], [ @121, %._crit_edge.i.i149.i.i ], [ @122, %._crit_edge.i.i177.i.i ], [ @126, %._crit_edge.i.i.i215.i.i ], [ @126, %bb.ce ], [ @120, %._crit_edge.i.i103.i.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yi) #60
          to label %select.unfold.i.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !6611

select.unfold.i.cont.i.i:                         ; preds = %select.unfold.i.invoke.i.i
  unreachable

bb.cm:                                            ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E11swap_removeCs45bxiIjzMqg_5salsa.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6684
  call fastcc void @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6removeBO_EBS_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef align 8 dereferenceable(32) %i.vq, i64 %.sroa.0.0.copyload.i.i.i, i32 %.sroa.5.0.copyload.i.i.i), !noalias !6697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6698)
  %i.yj = load i64, ptr %i.a, align 8, !range !36, !alias.scope !6698, !noalias !6684, !noundef !23
  %i.yk = icmp eq i64 %i.yj, 0
  br i1 %i.yk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEECs45bxiIjzMqg_5salsa.exit.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.yl = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.val1.i.i.i.i = load i64, ptr %i.yl, align 8, !alias.scope !6699, !noalias !6684, !noundef !23 ; 2 uses
  %i.ym = icmp ugt i64 %.val1.i.i.i.i, 4
  br i1 %i.ym, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdEECs45bxiIjzMqg_5salsa.exit.i.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEECs45bxiIjzMqg_5salsa.exit.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdEECs45bxiIjzMqg_5salsa.exit.i.i.i.i.i.i: ; preds = %bb.cn
  %i.yn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i.i218.i.i = load ptr, ptr %i.yn, align 8, !alias.scope !6698, !noalias !6684, !nonnull !23, !noundef !23
  %i.yo = shl nuw i64 %.val1.i.i.i.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i218.i.i, i64 noundef %i.yo, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !6700
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEECs45bxiIjzMqg_5salsa.exit.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEECs45bxiIjzMqg_5salsa.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdEECs45bxiIjzMqg_5salsa.exit.i.i.i.i.i.i, %bb.cn, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6684
  br label %bb.co

bb.co:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEECs45bxiIjzMqg_5salsa.exit.i.i.i, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_E11swap_removeCs45bxiIjzMqg_5salsa.exit.i.i.i
  invoke fastcc void @_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph15unblock_runtime(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.eg, i64 noundef %.sroa.0.0.i5.i.i.i, i8 noundef 0)
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !6611

bb.cp:                                            ; preds = %bb.co, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6684
  %i.yp = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  invoke fastcc void @_RNvNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_15DependencyGraph24update_transferred_edges24update_transferred_edges(ptr noalias noundef nonnull readonly align 8 dereferenceable(160) %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.yp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ek, i64 %.sroa.0302.0.copyload.i.i, i32 %i.ci, i64 noundef range(i64 1, 0) %.sroa.05.0.i.i)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph24update_transferred_edges.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !6611

_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph24update_transferred_edges.exit.i.i: ; preds = %bb.cp
  %.not80.i.i = icmp eq i64 %i.ef, %.sroa.05.0.i.i
  br i1 %.not80.i.i, label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread.i.i, label %bb.cq

bb.cq:                                            ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph24update_transferred_edges.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6702)
  %i.yq = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %i.yr = load i64, ptr %i.yq, align 8, !alias.scope !6703, !noalias !6611, !noundef !23
  %i.ys = icmp eq i64 %i.yr, 0
  %i.yt = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  %i.yu = load i64, ptr %i.yt, align 8, !alias.scope !6704, !noalias !6611 ; 2 uses
  %i.yv = load ptr, ptr %i.eg, align 8, !alias.scope !6704, !noalias !6611, !nonnull !23 ; 2 uses
  br i1 %i.ys, label %bb.cu, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.cq, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i.i.i
  %storemerge.i.i.i.i = phi i64 [ %i.zv, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i.i.i ], [ %.sroa.05.0.i.i, %bb.cq ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6705)
  %i.yw = mul i64 %storemerge.i.i.i.i, -1065810590584100411 ; 2 uses
  %i.yx = tail call noundef i64 @llvm.fshl.i64(i64 %i.yw, i64 %i.yw, i64 26) ; 2 uses
  %i.yy = lshr i64 %i.yx, 57
  %i.yz = trunc nuw nsw i64 %i.yy to i8
  %i.za = insertelement <16 x i8> poison, i8 %i.yz, i64 0
  %i.zb = shufflevector <16 x i8> %i.za, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cr

bb.cr:                                            ; preds = %bb.ct, %.split.i.i.i.i
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %.split.i.i.i.i ], [ %i.zs, %bb.ct ]
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.yx, %.split.i.i.i.i ], [ %i.zt, %bb.ct ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.yu ; 3 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yv, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.zc, align 1, !noalias !6706 ; 2 uses
  %i.zd = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %i.zb
  %i.ze = bitcast <16 x i1> %i.zd to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.ze, 0
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.cr, %bb.cs
  %.sroa.06.0.i33.i.i.i.i.i.i = phi i16 [ %i.zr, %bb.cs ], [ %i.ze, %bb.cr ] ; 3 uses
  %i.zf = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i.i, i1 true)
  %i.zg = zext nneg i16 %i.zf to i64
  %i.zh = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.zg
  %i.zi = and i64 %i.zh, %i.yu
  %i.zj = sub nsw i64 0, %i.zi
  %i.zk = getelementptr inbounds [24 x i8], ptr %i.yv, i64 %i.zj ; 2 uses
  %i.zl = getelementptr inbounds i8, ptr %i.zk, i64 -24
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.zl, align 8, !range !26, !noalias !6707, !noundef !23
  %i.zm = icmp eq i64 %storemerge.i.i.i.i, %.val2.i.i.i.i.i.i.i
  br i1 %i.zm, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i.i.i, label %bb.cs, !prof !25

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.cs, %bb.cr
  %i.zn = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1)
  %i.zo = bitcast <16 x i1> %i.zn to i16
  %i.zp = icmp eq i16 %i.zo, 0
  br i1 %i.zp, label %bb.ct, label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.i.i, !prof !24

bb.cs:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.zq = add i16 %.sroa.06.0.i33.i.i.i.i.i.i, -1
  %i.zr = and i16 %i.zq, %.sroa.06.0.i33.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.zr, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ct:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.zs = add i64 %.sroa.9.0.i.i.i.i.i.i.i, 16    ; 2 uses
  %i.zt = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.zs
  br label %bb.cr

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.zu = getelementptr inbounds i8, ptr %i.zk, i64 -16
  %i.zv = load i64, ptr %i.zu, align 8, !range !26, !noalias !6708, !noundef !23 ; 2 uses
  %i.zw = icmp eq i64 %i.zv, %i.ef
  br i1 %i.zw, label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread.i.i, label %.split.i.i.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  %i.zx = icmp eq i64 %storemerge.i.i.i.i, %i.ef
  br i1 %i.zx, label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread.i.i, label %bb.cu

bb.cu:                                            ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.i.i, %bb.cq
  %i.zy = invoke fastcc noundef i8 @_RINvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB3_15DependencyGraph8block_onINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtB7_2id2IdNtNtNtB7_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB7_(ptr noundef nonnull align 8 %i.dy, i64 noundef range(i64 1, 0) %i.ef, i64 %i.ae, i32 %i.l, i64 noundef %.sroa.05.0.i.i, ptr noundef nonnull align 8 %i.bz)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph13transfer_lock.exit.i unwind label %bb.cz, !noalias !6603 ; 0 uses

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB38_.exit211.i.i: ; preds = %bb.cc, %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread.i.i
  %i.zz = cmpxchg ptr %i.dy, i8 1, i8 0 release monotonic, align 1, !noalias !6611
  %i.aaa = extractvalue { i8, i1 } %i.zz, 1
  br i1 %i.aaa, label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph13transfer_lock.exit.i, label %.invoke.i, !prof !25

.invoke.i:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB38_.exit211.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB38_.exit.i.i
  invoke void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.dy, i1 noundef zeroext false)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph13transfer_lock.exit.i unwind label %bb.cz, !noalias !6603

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %.invoke, %bb.cp, %bb.co, %select.unfold.i.invoke.i.i, %.invoke.i.i, %bb.ca, %bb.bv, %bb.bp, %bb.af, %bb.ae
  %lpad.loopexit.split-lp404.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aab = cmpxchg ptr %i.bz, i8 1, i8 0 release monotonic, align 1, !noalias !6611
  %i.aac = extractvalue { i8, i1 } %i.aab, 1
  br i1 %i.aac, label %bb.cx, label %bb.cv, !prof !25

bb.cv:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i
  invoke void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.bz, i1 noundef zeroext false)
          to label %bb.cx unwind label %bb.cw, !noalias !6611

bb.cw:                                            ; preds = %bb.cy, %bb.cv
  %i.aad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #62, !noalias !6611
  unreachable

bb.cx:                                            ; preds = %bb.cv, %.loopexit.split-lp.loopexit.split-lp.i.i, %bb.bw
  %.pn.ph.i.i = phi { ptr, i32 } [ %i.su, %bb.bw ], [ %lpad.loopexit.split-lp404.i.i, %bb.cv ], [ %lpad.loopexit.split-lp404.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ] ; 2 uses
  %i.aae = cmpxchg ptr %i.dy, i8 1, i8 0 release monotonic, align 1, !noalias !6611
  %i.aaf = extractvalue { i8, i1 } %i.aae, 1
  br i1 %i.aaf, label %.body.i, label %bb.cy, !prof !25

bb.cy:                                            ; preds = %bb.cx
  invoke void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.dy, i1 noundef zeroext false)
          to label %.body.i unwind label %bb.cw, !noalias !6611

bb.cz:                                            ; preds = %.invoke.i, %bb.cu
  %i.aag = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.cz, %bb.cy, %bb.cx
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aag, %bb.cz ], [ %.pn.ph.i.i, %bb.cy ], [ %.pn.ph.i.i, %bb.cx ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6712)
  %i.aah = load ptr, ptr %i.f, align 8, !alias.scope !6713, !noalias !6603, !nonnull !23, !noundef !23
  %i.aai = atomicrmw add ptr %i.aah, i64 -1 release, align 8, !noalias !6714
  %i.aaj = icmp eq i64 %i.aai, 1
  br i1 %i.aaj, label %bb.da, label %.body.thread

bb.da:                                            ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs2AWtUsOyxgP_3std6thread6thread5InnerNtNtBL_5alloc6SystemE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body.thread unwind label %bb.dc, !noalias !6603

_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph13transfer_lock.exit.i: ; preds = %.invoke.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB38_.exit211.i.i, %bb.cu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB38_.exit.i.i
  %.sroa.04.0.i.i = phi i1 [ true, %bb.cu ], [ false, %.invoke.i ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB38_.exit.i.i ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB38_.exit211.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6718)
  %i.aak = load ptr, ptr %i.f, align 8, !alias.scope !6719, !noalias !6603, !nonnull !23, !noundef !23
  %i.aal = atomicrmw add ptr %i.aak, i64 -1 release, align 8, !noalias !6720
  %i.aam = icmp eq i64 %i.aal, 1
  br i1 %i.aam, label %bb.db, label %bb.dh

bb.db:                                            ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph13transfer_lock.exit.i
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs2AWtUsOyxgP_3std6thread6thread5InnerNtNtBL_5alloc6SystemE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %bb.dh

bb.dc:                                            ; preds = %bb.df, %bb.de, %bb.da
  %i.aan = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #62, !noalias !6603
  unreachable

bb.dd:                                            ; preds = %bb.w
  %i.aao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aap = cmpxchg ptr %i.dy, i8 1, i8 0 release monotonic, align 1, !noalias !6603
  %i.aaq = extractvalue { i8, i1 } %i.aap, 1
  br i1 %i.aaq, label %.thread.i, label %bb.de, !prof !25

bb.de:                                            ; preds = %bb.dd
  invoke void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.dy, i1 noundef zeroext false)
          to label %.thread.i unwind label %bb.dc, !noalias !6603

.thread.i:                                        ; preds = %bb.de, %bb.dd, %bb.u
  %.pn.pn17.i = phi { ptr, i32 } [ %i.eb, %bb.u ], [ %i.aao, %bb.de ], [ %i.aao, %bb.dd ] ; 2 uses
  %i.aar = cmpxchg ptr %i.bz, i8 1, i8 0 release monotonic, align 1, !noalias !6603
  %i.aas = extractvalue { i8, i1 } %i.aar, 1
  br i1 %i.aas, label %.body.thread, label %bb.df, !prof !25

bb.df:                                            ; preds = %.thread.i
  invoke void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.bz, i1 noundef zeroext false)
          to label %.body.thread unwind label %bb.dc, !noalias !6603

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.p
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @175, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #60
          to label %bb.dg unwind label %bb.di

bb.dg:                                            ; preds = %bb.dt, %select.unfold
  unreachable

bb.dh:                                            ; preds = %bb.db, %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph13transfer_lock.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i1 %.sroa.04.0.i.i

.body.thread:                                     ; preds = %bb.dn, %bb.do, %bb.di, %bb.dj, %bb.df, %.thread.i, %bb.da, %.body.i
  %.pn = phi { ptr, i32 } [ %.pn.pn17.i, %bb.df ], [ %i.abc, %bb.dn ], [ %i.aat, %bb.di ], [ %eh.lpad-body.i, %bb.da ], [ %.pn.pn17.i, %.thread.i ], [ %eh.lpad-body.i, %.body.i ], [ %i.aat, %bb.dj ], [ %i.abc, %bb.do ]
  resume { ptr, i32 } %.pn

bb.di:                                            ; preds = %select.unfold
  %i.aat = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aau = cmpxchg ptr %i.bz, i8 1, i8 0 release monotonic, align 1
  %i.aav = extractvalue { i8, i1 } %i.aau, 1
  br i1 %i.aav, label %.body.thread, label %bb.dj, !prof !25

bb.dj:                                            ; preds = %bb.di
  invoke void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.bz, i1 noundef zeroext false)
          to label %.body.thread unwind label %bb.dk

bb.dk:                                            ; preds = %bb.do, %bb.dj
  %i.aaw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #62
  unreachable

bb.dl:                                            ; preds = %bb.n
  %i.aax = tail call noundef zeroext i1 @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.cd, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.dm

bb.dm:                                            ; preds = %bb.n, %bb.dl
  %i.aay = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val26 = load i64, ptr %i.aaz, align 8, !alias.scope !64, !noalias !65 ; 4 uses
  call fastcc void @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtBS_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6removeBO_EBS_(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias noundef align 8 dereferenceable(32) %i.aay, i64 %.val26)
  %i.aba = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.abb = load i8, ptr %i.aba, align 2, !range !32, !noundef !23 ; 2 uses
  %.not11 = icmp eq i8 %i.abb, 2
  br i1 %.not11, label %bb.dt, label %bb.dp, !prof !24

bb.dn:                                            ; preds = %bb.ds, %bb.dr, %.noexc14, %bb.dt
  %i.abc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abd = cmpxchg ptr %i.cd, i8 1, i8 0 release monotonic, align 1
  %i.abe = extractvalue { i8, i1 } %i.abd, 1
  br i1 %i.abe, label %.body.thread, label %bb.do, !prof !25

bb.do:                                            ; preds = %bb.dn
  invoke void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.cd, i1 noundef zeroext false)
          to label %.body.thread unwind label %bb.dk

bb.dp:                                            ; preds = %bb.dm
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.abf = trunc nuw i8 %.sroa.3.0.copyload to i1
  %i.abg = trunc nuw i8 %.sroa.4.0.copyload to i1
  br i1 %i.abf, label %bb.dq, label %_RNvMs_NtNtCs45bxiIjzMqg_5salsa8function4syncNtB4_10ClaimGuard7release.exit

bb.dq:                                            ; preds = %bb.dp
  %i.abh = trunc nuw i8 %i.abb to i1
  %i.abi = getelementptr inbounds nuw i8, ptr %i.j, i64 136 ; 3 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.abk = load i32, ptr %i.abj, align 8, !noalias !6721, !noundef !23 ; 3 uses
  br i1 %i.abh, label %bb.dr, label %.noexc14, !prof !24

.noexc14:                                         ; preds = %bb.dr, %bb.dq
  invoke fastcc void @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime26unblock_queries_blocked_on(ptr noundef nonnull align 8 %i.abi, i64 %.val26, i32 %i.abk, i8 noundef 1)
          to label %.noexc unwind label %bb.dn

.noexc:                                           ; preds = %.noexc14
  br i1 %i.abg, label %bb.ds, label %_RNvMs_NtNtCs45bxiIjzMqg_5salsa8function4syncNtB4_10ClaimGuard7release.exit, !prof !24

bb.dr:                                            ; preds = %bb.dq
  invoke fastcc void @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime18undo_transfer_lock(ptr noundef nonnull align 8 %i.abi, i64 %.val26, i32 %i.abk)
          to label %.noexc14 unwind label %bb.dn

bb.ds:                                            ; preds = %.noexc
  invoke fastcc void @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime36unblock_transferred_queries_owned_by(ptr noundef nonnull align 8 %i.abi, i64 %.val26, i32 %i.abk, i8 noundef 1)
          to label %_RNvMs_NtNtCs45bxiIjzMqg_5salsa8function4syncNtB4_10ClaimGuard7release.exit unwind label %bb.dn

bb.dt:                                            ; preds = %bb.dm
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @175, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #60
          to label %bb.dg unwind label %bb.dn

_RNvMs_NtNtCs45bxiIjzMqg_5salsa8function4syncNtB4_10ClaimGuard7release.exit: ; preds = %bb.dp, %.noexc, %bb.ds
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB38_(ptr nonnull %i.cd)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @184, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #60
end_hunk_3
begin_hunk_4_@_RNvNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_15DependencyGraph23unblock_transfer_target19find_blocked_thread:bb.a
  call fastcc void @_RNvNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_15DependencyGraph23unblock_transfer_target19find_blocked_thread(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, ptr noalias noundef readonly align 4 captures(address) dereferenceable(12) %i.a, i64 noundef %3), !noalias !7852, !inline_history !7810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7850
  %i.ea = load i32, ptr %i.b, align 8, !noalias !7849, !noundef !23 ; 2 uses
  %.not.i5.i.us = icmp eq i32 %i.ea, 0
  br i1 %.not.i5.i.us, label %bb.j, label %.split.us

bb.j:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.i.us
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.7144.2214.us, i64 12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7849
  %i.ec = icmp eq ptr %i.eb, %i.dy
  br i1 %i.ec, label %.preheader.thread, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.i.us

.split.i:                                         ; preds = %.lr.ph, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i
  %storemerge.i = phi i64 [ %i.fc, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i ], [ %3, %.lr.ph ] ; 3 uses
  %i.ed = mul i64 %storemerge.i, -1065810590584100411 ; 2 uses
  %i.ee = tail call noundef i64 @llvm.fshl.i64(i64 %i.ed, i64 %i.ed, i64 26) ; 2 uses
  %i.ef = lshr i64 %i.ee, 57
  %i.eg = trunc nuw nsw i64 %i.ef to i8
  %i.eh = insertelement <16 x i8> poison, i8 %i.eg, i64 0
  %i.ei = shufflevector <16 x i8> %i.eh, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.split.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.split.i ], [ %i.ez, %bb.m ]
  %.pn.i.i.i.i = phi i64 [ %i.ee, %.split.i ], [ %i.fa, %bb.m ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.bj ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.ej, align 1, !noalias !7853 ; 2 uses
  %i.ek = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.ei
  %i.el = bitcast <16 x i1> %i.ek to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.el, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %bb.l
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.ey, %bb.l ], [ %i.el, %bb.k ] ; 3 uses
  %i.em = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.en = zext nneg i16 %i.em to i64
  %i.eo = add i64 %.sroa.01.0.i.i.i.i, %i.en
  %i.ep = and i64 %i.eo, %i.bj
  %i.eq = sub nsw i64 0, %i.ep
  %i.er = getelementptr inbounds [24 x i8], ptr %i.bk, i64 %i.eq ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -24
  %.val2.i.i.i.i = load i64, ptr %i.es, align 8, !range !26, !noalias !7854, !noundef !23
  %i.et = icmp eq i64 %storemerge.i, %.val2.i.i.i.i
  br i1 %i.et, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i, label %bb.l, !prof !25

._crit_edge.i.i.i:                                ; preds = %bb.l, %bb.k
  %i.eu = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.ev = bitcast <16 x i1> %i.eu to i16
  %i.ew = icmp eq i16 %i.ev, 0
  br i1 %i.ew, label %bb.m, label %_RNvMs_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_5Edges10depends_on.exit.loopexit, !prof !24

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.ex = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.ey = and i16 %i.ex, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ey, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.ez = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.fa = add i64 %.sroa.01.0.i.i.i.i, %i.ez
  br label %bb.k

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i: ; preds = %.lr.ph.i.i.i
  %i.fb = getelementptr inbounds i8, ptr %i.er, i64 -16
  %i.fc = load i64, ptr %i.fb, align 8, !range !26, !noalias !7855, !noundef !23 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, %i.bt
  br i1 %i.fd, label %_RNvMs_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_5Edges10depends_on.exit.thread, label %.split.i

_RNvMs_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_5Edges10depends_on.exit.loopexit: ; preds = %._crit_edge.i.i.i
  %i.fe = icmp eq i64 %storemerge.i, %i.bt
  br i1 %i.fe, label %_RNvMs_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_5Edges10depends_on.exit.thread, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.split

_RNvMs_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_5Edges10depends_on.exit.thread: ; preds = %.lr.ph, %_RNvMs_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_5Edges10depends_on.exit.loopexit, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i, %.lr.ph281
  %.sroa.8.0211 = phi i64 [ %.sroa.8.0277, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i ], [ %.sroa.8.0.us279, %.lr.ph281 ], [ %.sroa.8.0277, %_RNvMs_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_5Edges10depends_on.exit.loopexit ], [ %.sroa.8.0277, %.lr.ph ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0211, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.n

bb.n:                                             ; preds = %.preheader.thread, %_RNvMs_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_5Edges10depends_on.exit.thread
  ret void

.split.us:                                        ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.i.us
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.469.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4143.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7849
  br label %.preheader.thread

.preheader.thread:                                ; preds = %._crit_edge.i.i24, %bb.j, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread, %.lr.ph.split.us, %.split.us
  %storemerge = phi i32 [ %i.ea, %.split.us ], [ 0, %.lr.ph.split.us ], [ 0, %bb.j ], [ 0, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread ], [ 0, %._crit_edge.i.i24 ]
  store i32 %storemerge, ptr %0, align 8
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_15DependencyGraph24update_transferred_edges24update_transferred_edges(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i64 %.0.val, i32 %.8.val, i64 noundef range(i64 1, 0) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7914)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7914, !noundef !23
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = mul i64 %.0.val, -1065810590584100411
  %i.e = zext i32 %.8.val to i64
  %i.f = add i64 %i.d, %i.e
  %i.g = mul i64 %i.f, -1065810590584100411       ; 2 uses
  %i.h = tail call noundef i64 @llvm.fshl.i64(i64 %i.g, i64 %i.g, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7916)
  %i.i = lshr i64 %i.h, 57
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !7917, !noundef !23 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !alias.scope !7917, !nonnull !23, !noundef !23 ; 2 uses
  %i.n = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.p = lshr i64 %.0.val, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = trunc i64 %.0.val to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ap, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.h, %bb.b ], [ %i.aq, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.l    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.s, align 1, !noalias !7918 ; 2 uses
  %i.t = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.o
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.not33.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i
  %.sroa.06.0.i34.i.i = phi i16 [ %i.ao, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i ], [ %i.u, %bb.c ] ; 3 uses
  %i.v = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = add i64 %.sroa.01.0.i.i.i, %i.w
  %i.y = and i64 %i.x, %i.l
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [56 x i8], ptr %i.m, i64 %i.z ; 6 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -52
  %i.ac = load i32, ptr %i.ab, align 4, !alias.scope !7919, !noalias !7920, !noundef !23
  %i.ad = icmp eq i32 %i.ac, %i.q
  br i1 %i.ad, label %bb.d, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i, !prof !27

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -56
  %i.af = load i32, ptr %i.ae, align 4, !range !28, !alias.scope !7919, !noalias !7920, !noundef !23
  %i.ag = icmp eq i32 %i.af, %i.r
  br i1 %i.ag, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i, !prof !27

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i: ; preds = %bb.d
  %i.ah = getelementptr inbounds i8, ptr %i.aa, i64 -48
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !7919, !noalias !7920, !noundef !23
  %i.aj = icmp eq i32 %.8.val, %i.ai
  br i1 %i.aj, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i, !prof !29

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i, %bb.c
  %i.ak = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %bb.e, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread, !prof !24

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i, %bb.d, %.lr.ph.i.i
  %i.an = add i16 %.sroa.06.0.i34.i.i, -1
  %i.ao = and i16 %i.an, %.sroa.06.0.i34.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ap = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.aq = add i64 %.sroa.01.0.i.i.i, %i.ap
  br label %bb.c

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.aa, i64 -40 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !7921, !noundef !23 ; 2 uses
  %i.au = icmp ugt i64 %i.at, 4                   ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !alias.scope !7921, !nonnull !23
  %i.aw = getelementptr inbounds i8, ptr %i.aa, i64 -32
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !7921
  %.sink10.i = select i1 %i.au, ptr %i.av, ptr %i.ar ; 2 uses
  %.sink9.i = select i1 %i.au, i64 %i.ax, i64 %i.at ; 2 uses
  %.idx = shl nuw nsw i64 %.sink9.i, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink10.i, i64 %.idx
  %i.az = icmp eq i64 %.sink9.i, 0
  br i1 %i.az, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !7922, !noundef !23
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = load ptr, ptr %0, align 8, !nonnull !23 ; 2 uses
  br i1 %i.bc, label %select.unfold5, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %_RNvMs_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_5Edges7get_mut.exit
  %.sroa.02.022 = phi ptr [ %i.cf, %_RNvMs_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_5Edges7get_mut.exit ], [ %.sink10.i, %.lr.ph ] ; 2 uses
  %.sroa.02.0.val = load i64, ptr %.sroa.02.022, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7924)
  %i.bg = mul i64 %.sroa.02.0.val, -1065810590584100411 ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 26) ; 2 uses
  %i.bi = lshr i64 %i.bh, 57
  %i.bj = trunc nuw nsw i64 %i.bi to i8
  %i.bk = insertelement <16 x i8> poison, i8 %i.bj, i64 0
  %i.bl = shufflevector <16 x i8> %i.bk, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.split
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.lr.ph.split ], [ %i.cc, %bb.h ]
  %.pn.i.i.i.i = phi i64 [ %i.bh, %.lr.ph.split ], [ %i.cd, %bb.h ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.be ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.bm, align 1, !noalias !7925 ; 2 uses
  %i.bn = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.bl
  %i.bo = bitcast <16 x i1> %i.bn to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.bo, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.g
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.cb, %bb.g ], [ %i.bo, %bb.f ] ; 3 uses
  %i.bp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = add i64 %.sroa.01.0.i.i.i.i, %i.bq
  %i.bs = and i64 %i.br, %i.be
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = getelementptr inbounds [24 x i8], ptr %i.bf, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -24
  %.val2.i.i.i.i = load i64, ptr %i.bv, align 8, !range !26, !noalias !7926, !noundef !23
  %i.bw = icmp eq i64 %.sroa.02.0.val, %.val2.i.i.i.i
  br i1 %i.bw, label %_RNvMs_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_5Edges7get_mut.exit, label %bb.g, !prof !25

._crit_edge.i.i.i:                                ; preds = %bb.g, %bb.f
  %i.bx = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.by = bitcast <16 x i1> %i.bx to i16
  %i.bz = icmp eq i16 %i.by, 0
  br i1 %i.bz, label %bb.h, label %select.unfold5, !prof !24

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ca = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.cb = and i16 %i.ca, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.cb, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.cc = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.cd = add i64 %.sroa.01.0.i.i.i.i, %i.cc
  br label %bb.f

_RNvMs_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_5Edges7get_mut.exit: ; preds = %.lr.ph.i.i.i
  %i.ce = getelementptr inbounds i8, ptr %i.bu, i64 -16
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.02.022, i64 8 ; 2 uses
  store i64 %3, ptr %i.ce, align 8
  %i.cg = icmp eq ptr %i.cf, %i.ay
  br i1 %i.cg, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread, label %.lr.ph.split

select.unfold5:                                   ; preds = %._crit_edge.i.i.i, %.lr.ph
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @233) #60
  unreachable

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread: ; preds = %._crit_edge.i.i, %_RNvMs_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_5Edges7get_mut.exit, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7927)
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !7927, !noundef !23
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread
  %i.ck = mul i64 %.0.val, -1065810590584100411
  %i.cl = zext i32 %.8.val to i64
  %i.cm = add i64 %i.ck, %i.cl
  %i.cn = mul i64 %i.cm, -1065810590584100411     ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7929)
  %i.cp = lshr i64 %i.co, 57
  %i.cq = trunc nuw nsw i64 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !7930, !noundef !23 ; 2 uses
  %i.ct = load ptr, ptr %2, align 8, !alias.scope !7930, !nonnull !23, !noundef !23 ; 2 uses
  %i.cu = insertelement <16 x i8> poison, i8 %i.cq, i64 0
  %i.cv = shufflevector <16 x i8> %i.cu, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.cw = lshr i64 %.0.val, 32
  %i.cx = trunc nuw i64 %i.cw to i32
  %i.cy = trunc i64 %.0.val to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.sroa.9.0.i.i.i13 = phi i64 [ 0, %bb.i ], [ %i.dw, %bb.l ]
  %.pn.i.i.i14 = phi i64 [ %i.co, %bb.i ], [ %i.dx, %bb.l ]
  %.sroa.01.0.i.i.i15 = and i64 %.pn.i.i.i14, %i.cs ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.01.0.i.i.i15
  %.sroa.0.0.copyload.i27.i.i16 = load <16 x i8>, ptr %i.cz, align 1, !noalias !7931 ; 2 uses
  %i.da = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i16, %i.cv
  %i.db = bitcast <16 x i1> %i.da to i16          ; 2 uses
  %.not.i.not33.i.i17 = icmp eq i16 %i.db, 0
  br i1 %.not.i.not33.i.i17, label %._crit_edge.i.i21, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %bb.j, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i
  %.sroa.06.0.i34.i.i19 = phi i16 [ %i.dv, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i ], [ %i.db, %bb.j ] ; 3 uses
  %i.dc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i19, i1 true)
  %i.dd = zext nneg i16 %i.dc to i64
  %i.de = add i64 %.sroa.01.0.i.i.i15, %i.dd
  %i.df = and i64 %i.de, %i.cs
  %i.dg = sub nsw i64 0, %i.df
  %i.dh = getelementptr inbounds [72 x i8], ptr %i.ct, i64 %i.dg ; 6 uses
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -68
  %i.dj = load i32, ptr %i.di, align 4, !alias.scope !7932, !noalias !7933, !noundef !23
  %i.dk = icmp eq i32 %i.dj, %i.cx
  br i1 %i.dk, label %bb.k, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i, !prof !27

bb.k:                                             ; preds = %.lr.ph.i.i18
  %i.dl = getelementptr inbounds i8, ptr %i.dh, i64 -72
  %i.dm = load i32, ptr %i.dl, align 4, !range !28, !alias.scope !7932, !noalias !7933, !noundef !23
  %i.dn = icmp eq i32 %i.dm, %i.cy
  br i1 %i.dn, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i, !prof !27

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i: ; preds = %bb.k
  %i.do = getelementptr inbounds i8, ptr %i.dh, i64 -64
  %i.dp = load i32, ptr %i.do, align 4, !alias.scope !7932, !noalias !7933, !noundef !23
  %i.dq = icmp eq i32 %.8.val, %i.dp
  br i1 %i.dq, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i, !prof !29

._crit_edge.i.i21:                                ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i, %bb.j
  %i.dr = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i16, splat (i8 -1)
  %i.ds = bitcast <16 x i1> %i.dr to i16
  %i.dt = icmp eq i16 %i.ds, 0
  br i1 %i.dt, label %bb.l, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread, !prof !24

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i, %bb.k, %.lr.ph.i.i18
  %i.du = add i16 %.sroa.06.0.i34.i.i19, -1
  %i.dv = and i16 %i.du, %.sroa.06.0.i34.i.i19    ; 2 uses
  %.not.i.not.i.i20 = icmp eq i16 %i.dv, 0
  br i1 %.not.i.not.i.i20, label %._crit_edge.i.i21, label %.lr.ph.i.i18

bb.l:                                             ; preds = %._crit_edge.i.i21
  %i.dw = add i64 %.sroa.9.0.i.i.i13, 16          ; 2 uses
  %i.dx = add i64 %.sroa.01.0.i.i.i15, %i.dw
  br label %bb.j

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i
  %i.dy = getelementptr inbounds i8, ptr %i.dh, i64 -56 ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dh, i64 -8
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !7934, !noundef !23 ; 2 uses
  %i.eb = icmp ugt i64 %i.ea, 4                   ; 2 uses
  %i.ec = load ptr, ptr %i.dy, align 8, !alias.scope !7934, !nonnull !23
  %i.ed = getelementptr inbounds i8, ptr %i.dh, i64 -48
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !7934
  %.sink10.i.i = select i1 %i.eb, ptr %i.ec, ptr %i.dy ; 2 uses
  %.sink9.i.i = select i1 %i.eb, i64 %i.ee, i64 %i.ea ; 2 uses
  %.idx25 = mul nuw nsw i64 %.sink9.i.i, 12
  %i.ef = getelementptr inbounds nuw i8, ptr %.sink10.i.i, i64 %.idx25
  %i.eg = icmp eq i64 %.sink9.i.i, 0
  br i1 %i.eg, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread, label %.lr.ph24

.lr.ph24:                                         ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit, %.lr.ph24
  %.sroa.08.023 = phi ptr [ %i.eh, %.lr.ph24 ], [ %.sink10.i.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.08.023, i64 12 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.08.023, align 4
  %.sroa.4.0..sroa.08.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.08.023, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa.08.0.sroa_idx, align 4
  tail call fastcc void @_RNvNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_15DependencyGraph24update_transferred_edges24update_transferred_edges(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i64 %.sroa.0.0.copyload, i32 %.sroa.4.0.copyload, i64 noundef %3)
  %i.ei = icmp eq ptr %i.eh, %i.ef
  br i1 %i.ei, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread, label %.lr.ph24

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread: ; preds = %._crit_edge.i.i21, %.lr.ph24, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_15DependencyGraph56unblock_runtimes_blocked_on_transferred_queries_owned_by17unblock_recursive(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, i64 %.0.val, i32 %.8.val, i8 noundef range(i8 0, 3) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.515 = alloca [32 x i8], align 8          ; 2 uses
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  call fastcc void @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBO_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6removeBO_EBS_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(32) %i.c, i64 %.0.val, i32 %.8.val)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7978)
  %i.e = mul i64 %.0.val, -1065810590584100411
  %i.f = zext i32 %.8.val to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = mul i64 %i.g, -1065810590584100411       ; 2 uses
  %i.i = tail call noundef i64 @llvm.fshl.i64(i64 %i.h, i64 %i.h, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7981)
  %i.j = lshr i64 %i.i, 57
  %i.k = trunc nuw nsw i64 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !7982, !noundef !23 ; 3 uses
  %i.n = load ptr, ptr %i.d, align 8, !alias.scope !7982, !nonnull !23, !noundef !23 ; 4 uses
  %i.o = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.q = lshr i64 %.0.val, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = trunc i64 %.0.val to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.d ]
  %.pn.i.i.i.i.i = phi i64 [ %i.i, %bb.a ], [ %i.ar, %bb.d ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.m ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i = load <16 x i8>, ptr %i.t, align 1, !noalias !7983 ; 2 uses
  %i.u = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i, %i.p
  %i.v = bitcast <16 x i1> %i.u to i16            ; 2 uses
  %.not.i.not33.i.i.i.i = icmp eq i16 %i.v, 0
  br i1 %.not.i.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i.i
  %.sroa.06.0.i34.i.i.i.i = phi i16 [ %i.ap, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i.i ], [ %i.v, %bb.b ] ; 3 uses
  %i.w = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i.i.i, i1 true)
  %i.x = zext nneg i16 %i.w to i64
  %i.y = add i64 %.sroa.01.0.i.i.i.i.i, %i.x
  %i.z = and i64 %i.y, %i.m                       ; 2 uses
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds [72 x i8], ptr %i.n, i64 %i.aa ; 8 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -68
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !7984, !noalias !7985, !noundef !23
  %i.ae = icmp eq i32 %i.ad, %i.r
  br i1 %i.ae, label %bb.c, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i.i, !prof !27

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 -72
  %i.ag = load i32, ptr %i.af, align 4, !range !28, !alias.scope !7984, !noalias !7985, !noundef !23
  %i.ah = icmp eq i32 %i.ag, %i.s
  br i1 %i.ah, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i.i, !prof !27

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i.i: ; preds = %bb.c
  %i.ai = getelementptr inbounds i8, ptr %i.ab, i64 -64
  %i.aj = load i32, ptr %i.ai, align 4, !alias.scope !7984, !noalias !7985, !noundef !23
  %i.ak = icmp eq i32 %.8.val, %i.aj
  br i1 %i.ak, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBU_7runtime16dependency_graph8SmallSetBQ_Kj4_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1A_E0EBU_.exit.i.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i.i, !prof !29

._crit_edge.i.i.i.i:                              ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i.i, %bb.b
  %i.al = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i, splat (i8 -1)
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = icmp eq i16 %i.am, 0
  br i1 %i.an, label %bb.d, label %.cont, !prof !24

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  %i.ao = add i16 %.sroa.06.0.i34.i.i.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.06.0.i34.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aq = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.ar = add i64 %.sroa.01.0.i.i.i.i.i, %i.aq
  br label %bb.b

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBU_7runtime16dependency_graph8SmallSetBQ_Kj4_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1A_E0EBU_.exit.i.i.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i.i
  %i.as = getelementptr inbounds i8, ptr %i.ab, i64 -72
end_hunk_4
