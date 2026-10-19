Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.15?download=true
inline.NumInlined: 257
inline.NumDeleted: 111
begin_hunk_0_@_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBS_5table9PageIndexENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_:bb.a
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.e, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBU_5table9PageIndexEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1A_E0EBU_.exit, !prof !5

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = add i16 %.sroa.06.0.i33.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i33.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.ac = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i, %i.ac
  br label %bb.c

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBU_5table9PageIndexEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1A_E0EBU_.exit: ; preds = %._crit_edge.i, %.lr.ph.i
  %i.ae = phi ptr [ %i.u, %.lr.ph.i ], [ null, %._crit_edge.i ] ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -24
  %.sroa.0.1 = select i1 %.not, ptr null, ptr %i.af
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBU_5table9PageIndexEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1A_E0EBU_.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBU_5table9PageIndexEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1A_E0EBU_.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBS_8database12memory_usage8PageInfoNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE6removeBO_EBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %2), !noalias !100
  call void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBU_8database12memory_usage8PageInfoEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1A_E0EBU_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %2)
  %i.d = load i64, ptr %i.a, align 8, !range !7, !noundef !3
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE6removeBO_EB1z_(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.c = tail call { i64, i8 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1x_E0EB1B_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.d = extractvalue { i64, i8 } %i.c, 1
  ret i8 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE6removeBO_EB1D_(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = tail call noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1), !noalias !103
  call void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1x_E0EB1F_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.d = load i64, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq i64 %i.d, 0                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !align !9
  %.sroa.3.0 = select i1 %.not, ptr undef, ptr %i.h
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE7get_mutBO_EB1D_(ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !115, !noundef !3 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !115, !nonnull !3, !noundef !3 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ]
  %.pn.i.i = phi i64 [ %i.e, %bb.b ], [ %i.ad, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.m, align 1, !noalias !116 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.l
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not32.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not32.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i = phi i16 [ %i.ab, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i, %i.q
  %i.s = and i64 %i.r, %i.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [24 x i8], ptr %i.j, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -24
  %i.w = tail call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdINtB2_10EquivalentBq_E10equivalentCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v), !noalias !117
  br i1 %i.w, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1x_E0EB1F_.exit, label %bb.d, !prof !4

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.e, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1x_E0EB1F_.exit, !prof !5

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = add i16 %.sroa.06.0.i33.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i33.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.ac = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i, %i.ac
  br label %bb.c

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1x_E0EB1F_.exit: ; preds = %._crit_edge.i, %.lr.ph.i
  %i.ae = phi ptr [ %i.u, %.lr.ph.i ], [ null, %._crit_edge.i ] ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -16
  %.sroa.0.1 = select i1 %.not, ptr null, ptr %i.af
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1x_E0EB1F_.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1x_E0EB1F_.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1c_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_7HashMapNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtB19_8database12memory_usage8PageInfoNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorTB15_B1P_EE9from_iterINtNtNtB3k_8adapters10filter_map9FilterMapINtB7_8IntoIterB15_INtNtCscdodAO9FK5_5alloc3vec3VecjEENCNvMs4_NtB19_5tableNtB6e_5Table10page_infos0EEB19_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i.i.i.i.i.i.i = alloca [68 x i8], align 4 ; 4 uses
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %.sroa.4.i.i.i.i.i.i.i = alloca [68 x i8], align 4 ; 3 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  invoke void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBU_8database12memory_usage8PageInfoEE7reserveNCINvNtB8_3map11make_hasherBQ_B1A_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h)
          to label %bb.b unwind label %bb.q, !noalias !157

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !158
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.8..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i.i.i, i64 4 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.4.8..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i.i.i.i.i, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.o, %bb.b
  invoke void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %bb.d unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !163

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.noexc2.i.i.i.i.i, %bb.f, %bb.e, %bb.c
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %.body unwind label %bb.p, !noalias !163

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.i, align 8, !range !164, !noalias !165, !noundef !3
  %.not.i.i.i.i.i = icmp eq i64 %i.m, -1
  br i1 %.not.i.i.i.i.i, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEENCNvMs4_NtB2b_5tableNtB3y_5Table10page_infos0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4a_8for_each4callTB27_NtNtNtB2b_8database12memory_usage8PageInfoENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB69_7HashMapB27_B5i_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEINtNtB4e_7collect6ExtendB5d_E6extendBV_E0E0EB2b_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.06.0.copyload.i.i.i.i.i = load i32, ptr %i.d, align 8, !noalias !165 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !165
  invoke void @_RNvMs0_NtNtCsC8CapfvpQ1_5salsa8database12memory_usageNtB5_8PageInfo15from_page_fills(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, i64 noundef 128, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !163

.noexc.i.i.i.i.i:                                 ; preds = %bb.e
  %i.n = load i64, ptr %i.b, align 8, !range !7, !noalias !167, !noundef !3
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.f, label %_RNCNvMs4_NtCsC8CapfvpQ1_5salsa5tableNtB7_5Table10page_infos0B9_.exit.i.i.i.i.i.i

_RNCNvMs4_NtCsC8CapfvpQ1_5salsa5tableNtB7_5Table10page_infos0B9_.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !166
  br label %bb.o

bb.f:                                             ; preds = %.noexc.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.4.8..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !noalias !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !166
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !169
  store i32 %.sroa.06.0.copyload.i.i.i.i.i, ptr %i.a, align 4, !noalias !170
  %i.p = invoke noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %.noexc2.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !163 ; 2 uses

.noexc2.i.i.i.i.i:                                ; preds = %bb.f
  invoke void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBU_8database12memory_usage8PageInfoEE7reserveNCINvNtB8_3map11make_hasherBQ_B1A_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h)
          to label %.noexc3.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !163

.noexc3.i.i.i.i.i:                                ; preds = %.noexc2.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !171, !noalias !172, !nonnull !3, !noundef !3 ; 3 uses
  %.val7.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !171, !noalias !172, !noundef !3 ; 3 uses
  %i.q = lshr i64 %i.p, 57
  %i.r = trunc nuw nsw i64 %i.q to i8             ; 3 uses
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.noexc3.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.p, %.noexc3.i.i.i.i.i ], [ %i.at, %bb.j ]
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %.noexc3.i.i.i.i.i ], [ %.sroa.4.120.i.i.i.i.i.i.i.i.i.i.i, %bb.j ]
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc3.i.i.i.i.i ], [ %.sroa.04.122.i.i.i.i.i.i.i.i.i.i.i, %bb.j ]
  %i.u = phi i64 [ 0, %.noexc3.i.i.i.i.i ], [ %i.as, %bb.j ]
  %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.v, align 1, !noalias !173 ; 3 uses
  %i.w = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i, %i.t
  %i.x = bitcast <16 x i1> %i.w to i16            ; 2 uses
  %.not28.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.x, 0
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.g, %bb.h
  %.sroa.01.029.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ai, %bb.h ], [ %i.x, %bb.g ] ; 3 uses
  %i.y = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i, %i.z
  %i.ab = and i64 %i.aa, %.val7.i.i.i.i.i.i.i.i.i.i
  %i.ac = load ptr, ptr %i.g, align 8, !alias.scope !171, !noalias !174, !nonnull !3, !noundef !3
  %i.ad = sub nsw i64 0, %i.ab                    ; 2 uses
  %i.ae = getelementptr inbounds [72 x i8], ptr %i.ac, i64 %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -72
  %i.ag = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtB2_10EquivalentBq_E10equivalentBu_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.af)
          to label %.noexc4.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !163

.noexc4.i.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ag, label %bb.n, label %bb.h, !prof !4

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.h, %bb.g
  %.not13.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, !prof !5

bb.h:                                             ; preds = %.noexc4.i.i.i.i.i
  %i.ah = add i16 %.sroa.01.029.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ai = and i16 %i.ah, %.sroa.01.029.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.aj = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %.thread24.i.i.i.i.i.i.i.i.i.i.i, !prof !5

.thread24.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.i
  %i.al = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i, %i.am
  %i.ao = and i64 %i.an, %.val7.i.i.i.i.i.i.i.i.i.i
  br label %.thread.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %.thread24.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ao, %.thread24.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ap = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %i.ar = icmp eq i16 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %bb.k, !prof !5

bb.j:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %.sroa.04.122.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.i ]
  %.sroa.4.120.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.i ]
  %i.as = add i64 %i.u, 16                        ; 2 uses
  %i.at = add i64 %i.as, %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.g

bb.k:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i
  %i.av = load i8, ptr %i.au, align 1, !noalias !175, !noundef !3
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %bb.l, label %bb.m, !prof !5

bb.l:                                             ; preds = %bb.k
  %.val72.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !175
  %i.ax = icmp slt <16 x i8> %.val72.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %.not.i24.i.i.i.i.i.i.i.i.i.i.i = icmp ne i16 %i.ay, 0
  %i.az = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ay, i1 true)
  %i.ba = zext nneg i16 %i.az to i64
  call void @llvm.assume(i1 %.not.i24.i.i.i.i.i.i.i.i.i.i.i)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ba, %bb.l ], [ %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.4.8..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.sroa.4.8..sroa_idx.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !166
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.bb = load ptr, ptr %i.g, align 8, !alias.scope !177, !noalias !172, !nonnull !3, !noundef !3 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !178, !noundef !3
  %i.be = and i8 %i.bd, 1
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i, -16
  %i.bh = load i64, ptr %i.k, align 8, !alias.scope !177, !noalias !172, !noundef !3
  %i.bi = and i64 %i.bh, %i.bg
  store i8 %i.r, ptr %i.bc, align 1, !noalias !178
  %i.bj = getelementptr i8, ptr %i.bb, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  store i8 %i.r, ptr %i.bk, align 1, !noalias !178
  %i.bl = load <2 x i64>, ptr %i.l, align 8, !alias.scope !177, !noalias !172
  %i.bm = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bf, i64 0
  %i.bn = sub <2 x i64> %i.bl, %i.bm
  store <2 x i64> %i.bn, ptr %i.l, align 8, !alias.scope !177, !noalias !172
  %i.bo = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i
  %i.bp = getelementptr inbounds [72 x i8], ptr %i.bb, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -72
  store i32 %.sroa.06.0.copyload.i.i.i.i.i, ptr %i.bq, align 8, !noalias !179
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bp, i64 -68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.4.i.i.i.i.i.i.i.i.i, i64 68, i1 false), !noalias !179
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i)
  br label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtB1k_8database12memory_usage8PageInfoENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB2R_7HashMapB1g_B20_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterB1g_INtNtCscdodAO9FK5_5alloc3vec3VecjEENCNvMs4_NtB1k_5tableNtB7l_5Table10page_infos0EE0E0B1k_.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %.noexc4.i.i.i.i.i
  %i.br = load ptr, ptr %i.g, align 8, !alias.scope !171, !noalias !172, !nonnull !3, !noundef !3
  %i.bs = getelementptr inbounds [72 x i8], ptr %i.br, i64 %i.ad
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bt, ptr noundef nonnull align 4 dereferenceable(64) %.sroa.4.8..sroa_idx.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !180
  br label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtB1k_8database12memory_usage8PageInfoENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB2R_7HashMapB1g_B20_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterB1g_INtNtCscdodAO9FK5_5alloc3vec3VecjEENCNvMs4_NtB1k_5tableNtB7l_5Table10page_infos0EE0E0B1k_.exit.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtB1k_8database12memory_usage8PageInfoENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB2R_7HashMapB1g_B20_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterB1g_INtNtCscdodAO9FK5_5alloc3vec3VecjEENCNvMs4_NtB1k_5tableNtB7l_5Table10page_infos0EE0E0B1k_.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !169
  br label %bb.o

bb.o:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtB1k_8database12memory_usage8PageInfoENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB2R_7HashMapB1g_B20_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterB1g_INtNtCscdodAO9FK5_5alloc3vec3VecjEENCNvMs4_NtB1k_5tableNtB7l_5Table10page_infos0EE0E0B1k_.exit.i.i.i.i.i.i, %_RNCNvMs4_NtCsC8CapfvpQ1_5salsa5tableNtB7_5Table10page_infos0B9_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i)
  br label %bb.c

bb.p:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11, !noalias !163
  unreachable

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEENCNvMs4_NtB2b_5tableNtB3y_5Table10page_infos0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4a_8for_each4callTB27_NtNtNtB2b_8database12memory_usage8PageInfoENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB69_7HashMapB27_B5i_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEINtNtB4e_7collect6ExtendB5d_E6extendBV_E0E0EB2b_.exit.i.i: ; preds = %bb.d
  invoke void @_RNvXsC_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %bb.t unwind label %bb.s

bb.q:                                             ; preds = %bb.a
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %.body unwind label %bb.r, !noalias !157

bb.r:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11, !noalias !157
  unreachable

bb.s:                                             ; preds = %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEENCNvMs4_NtB2b_5tableNtB3y_5Table10page_infos0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4a_8for_each4callTB27_NtNtNtB2b_8database12memory_usage8PageInfoENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB69_7HashMapB27_B5i_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEINtNtB4e_7collect6ExtendB5d_E6extendBV_E0E0EB2b_.exit.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i, %bb.q, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.bx, %bb.s ], [ %i.bv, %bb.q ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBT_8database12memory_usage8PageInfoEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEENCNvMs4_NtB2n_5tableNtB3K_5Table10page_infos0EEB2n_.exit unwind label %bb.u

bb.t:                                             ; preds = %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEENCNvMs4_NtB2b_5tableNtB3y_5Table10page_infos0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4a_8for_each4callTB27_NtNtNtB2b_8database12memory_usage8PageInfoENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB69_7HashMapB27_B5i_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEINtNtB4e_7collect6ExtendB5d_E6extendBV_E0E0EB2b_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.u:                                             ; preds = %.body
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEENCNvMs4_NtB2n_5tableNtB3K_5Table10page_infos0EEB2n_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvNtNtCsC8CapfvpQ1_5salsa8function12diff_outputs19report_stale_output0B7_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !align !10, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !align !10, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false)
  store i8 7, ptr %i.a, align 8
  call void @_RNvMNtCsC8CapfvpQ1_5salsa5eventNtB2_5Event3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNvNtNtCsC8CapfvpQ1_5salsa8function12diff_outputs19report_stale_output0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_once6vtableBc_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !align !10, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !10, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !188
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.b, i64 12, i1 false), !noalias !189
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !190
  store i8 7, ptr %i.a, align 8, !noalias !188
  call void @_RNvMNtCsC8CapfvpQ1_5salsa5eventNtB2_5Event3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a), !noalias !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !188
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtB13_8function4sync9SyncStateNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE11rustc_entryB13_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 3 uses
  store i32 %2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %3, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = call noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa2id2IdEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.e = lshr i64 %i.d, 57
  %i.f = trunc nuw nsw i64 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !204, !noundef !3 ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !alias.scope !204, !nonnull !3, !noundef !3 ; 2 uses
  %i.j = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.k = shufflevector <16 x i8> %i.j, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.ad, %bb.d ]
  %.pn.i.i = phi i64 [ %i.d, %bb.a ], [ %i.ae, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.h        ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.l, align 1, !noalias !205 ; 2 uses
  %i.m = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.k
  %i.n = bitcast <16 x i1> %i.m to i16            ; 2 uses
  %.not.i.not32.i = icmp eq i16 %i.n, 0
  br i1 %.not.i.not32.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i33.i = phi i16 [ %i.ac, %bb.c ], [ %i.n, %bb.b ] ; 3 uses
  %i.o = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = add i64 %.sroa.01.0.i.i, %i.p
  %i.r = and i64 %i.q, %i.h
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [24 x i8], ptr %i.i, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -24
  %.val2.i.i = load i32, ptr %i.u, align 4, !noalias !206
  %i.v = getelementptr i8, ptr %i.t, i64 -20
  %.val3.i.i = load i32, ptr %i.v, align 4, !noalias !206, !noundef !3
  %i.w = icmp eq i32 %.val3.i.i, %3
  %i.x = icmp eq i32 %.val2.i.i, %2
  %.sroa.0.0.i.i.i.i = select i1 %i.w, i1 %i.x, i1 false
  br i1 %.sroa.0.0.i.i.i.i, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBU_8function4sync9SyncStateEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1j_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE11rustc_entry0EBU_.exit, label %bb.c, !prof !4

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.d, label %bb.e, !prof !5

bb.c:                                             ; preds = %.lr.ph.i
  %i.ab = add i16 %.sroa.06.0.i33.i, -1
  %i.ac = and i16 %i.ab, %.sroa.06.0.i33.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.ad = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ae = add i64 %.sroa.01.0.i.i, %i.ad
  br label %bb.b

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBU_8function4sync9SyncStateEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1j_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE11rustc_entry0EBU_.exit: ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.ag, align 8
  store i32 0, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBU_8function4sync9SyncStateEE7reserveNCINvNtB8_3map11make_hasherBQ_B1j_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c)
  store i32 %2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %3, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBU_8function4sync9SyncStateEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1j_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE11rustc_entry0EBU_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE11rustc_entryB13_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = tail call noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %2) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.c = lshr i64 %i.b, 57
  %i.d = trunc nuw nsw i64 %i.c to i8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !224, !noundef !3 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !alias.scope !224, !nonnull !3, !noundef !3 ; 2 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.d, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4, !alias.scope !222
  %i.l = load i32, ptr %2, align 4, !range !11, !alias.scope !222
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !222
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.al, %bb.d ]
  %.pn.i.i = phi i64 [ %i.b, %bb.a ], [ %i.am, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.f        ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.o, align 1, !noalias !225 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.i
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not33.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not33.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i
  %.sroa.06.0.i34.i = phi i16 [ %i.ak, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i ], [ %i.q, %bb.b ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i, %i.s
  %i.u = and i64 %i.t, %i.f
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [64 x i8], ptr %i.g, i64 %i.v ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -60
  %i.y = load i32, ptr %i.x, align 4, !alias.scope !226, !noalias !227, !noundef !3
  %i.z = icmp eq i32 %i.y, %i.k
  br i1 %i.z, label %bb.c, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i, !prof !12

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -64
  %i.ab = load i32, ptr %i.aa, align 4, !range !11, !alias.scope !226, !noalias !227, !noundef !3
  %i.ac = icmp eq i32 %i.ab, %i.l
  br i1 %i.ac, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i, !prof !12

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.i: ; preds = %bb.c
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -56
  %i.ae = load i32, ptr %i.ad, align 4, !alias.scope !226, !noalias !227, !noundef !3
end_hunk_0
