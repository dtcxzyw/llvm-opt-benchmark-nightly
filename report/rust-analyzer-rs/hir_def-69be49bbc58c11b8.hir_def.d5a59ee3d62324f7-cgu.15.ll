Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.15?download=true
inline.NumInlined: 3071
inline.NumDeleted: 1597
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector7collects1_0Bb_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fr, ptr noundef nonnull align 4 dereferenceable(12) %i.gc, i64 12, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fu, i64 32 ; 35 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !1365, !nonnull !5, !align !13, !noundef !5 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !noalias !1367
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fu, i64 64 ; 33 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ef, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.gf, i64 12, i1 false), !noalias !1368
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 %2, ptr %i.gg, align 4, !noalias !1367
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 672
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !1369, !noalias !1367, !noundef !5
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtNtBT_5attrs6AttrIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECsileJQcQObtj_7hir_def.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 648
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 680
  %i.gm = call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1E_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gl, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ef), !noalias !1367 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  %i.gn = lshr i64 %i.gm, 57
  %i.go = trunc nuw nsw i64 %i.gn to i8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ge, i64 656
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !1372, !noalias !1367, !noundef !5 ; 2 uses
  %i.gr = load ptr, ptr %i.gk, align 8, !alias.scope !1372, !noalias !1367, !nonnull !5, !noundef !5 ; 2 uses
  %i.gs = insertelement <16 x i8> poison, i8 %i.go, i64 0
  %i.gt = shufflevector <16 x i8> %i.gs, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.hk, %bb.g ]
  %.pn.i.i.i = phi i64 [ %i.gm, %bb.d ], [ %i.hl, %bb.g ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.gq ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.gu, align 1, !noalias !1373 ; 2 uses
  %i.gv = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.gt
  %i.gw = bitcast <16 x i1> %i.gv to i16          ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.gw, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.hj, %bb.f ], [ %i.gw, %bb.e ] ; 3 uses
  %i.gx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.gy = zext nneg i16 %i.gx to i64
  %i.gz = add i64 %.sroa.01.0.i.i.i.i, %i.gy
  %i.ha = and i64 %i.gz, %i.gq
  %i.hb = sub nsw i64 0, %i.ha
  %i.hc = getelementptr inbounds [20 x i8], ptr %i.gr, i64 %i.hb ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -20
  %i.he = call noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBv_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEEINtB2_10EquivalentBq_E10equivalentCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ef, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.hd), !noalias !1374
  br i1 %i.he, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtNtBT_5attrs6AttrIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECsileJQcQObtj_7hir_def.exit.i, label %bb.f, !prof !12

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.hf = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.hg = bitcast <16 x i1> %i.hf to i16
  %i.hh = icmp eq i16 %i.hg, 0
  br i1 %i.hh, label %bb.g, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtNtBT_5attrs6AttrIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECsileJQcQObtj_7hir_def.exit.thread.i, !prof !6

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.hi = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.hj = and i16 %i.hi, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.hj, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.hk = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.hl = add i64 %.sroa.01.0.i.i.i.i, %i.hk
  br label %bb.e

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtNtBT_5attrs6AttrIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECsileJQcQObtj_7hir_def.exit.i: ; preds = %.lr.ph.i.i.i
  %i.hm = getelementptr inbounds i8, ptr %i.hc, i64 -4
  %i.hn = load i32, ptr %i.hm, align 4, !noalias !1367, !noundef !5
  %i.ho = add i32 %i.hn, 1
  br label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtNtBT_5attrs6AttrIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECsileJQcQObtj_7hir_def.exit.thread.i

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtNtBT_5attrs6AttrIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECsileJQcQObtj_7hir_def.exit.thread.i: ; preds = %._crit_edge.i.i.i, %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtNtBT_5attrs6AttrIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECsileJQcQObtj_7hir_def.exit.i, %bb.c
  %.sroa.01.0.i = phi i32 [ %i.ho, %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtNtBT_5attrs6AttrIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECsileJQcQObtj_7hir_def.exit.i ], [ 0, %bb.c ], [ 0, %._crit_edge.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !1367
  %i.hp = zext i32 %.sroa.01.0.i to i64           ; 4 uses
  %i.hq = icmp ult i64 %.val130.sink, %i.hp
  br i1 %i.hq, label %bb.h, label %_RNvMs3_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB5_5Attrs10iter_after.exit.i, !prof !6

bb.h:                                             ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtNtBT_5attrs6AttrIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECsileJQcQObtj_7hir_def.exit.thread.i
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.hp, i64 noundef %.val130.sink, i64 noundef %.val130.sink, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #39, !noalias !1375
  unreachable

_RNvMs3_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB5_5Attrs10iter_after.exit.i: ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtNtBT_5attrs6AttrIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECsileJQcQObtj_7hir_def.exit.thread.i
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %.sink, i64 %.val130.sink ; 2 uses
  %.not.not.i.not575 = icmp samesign eq i64 %.val130.sink, %i.hp
  br i1 %.not.not.i.not575, label %._crit_edge, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i.lr.ph

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i.lr.ph: ; preds = %_RNvMs3_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB5_5Attrs10iter_after.exit.i
  %i.hs = getelementptr inbounds nuw [24 x i8], ptr %.sink, i64 %i.hp
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i

bb.i:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.045.0.i577, i64 24 ; 2 uses
  %i.hu = add i32 %.sroa.846.0.i576, 1
  %.not.not.i.not = icmp eq ptr %i.ht, %i.hr
  br i1 %.not.not.i.not, label %._crit_edge, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i.lr.ph, %bb.i
  %.sroa.045.0.i577 = phi ptr [ %i.hs, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i.lr.ph ], [ %i.ht, %bb.i ] ; 4 uses
  %.sroa.846.0.i576 = phi i32 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i.lr.ph ], [ %i.hu, %bb.i ] ; 2 uses
  %i.hv = load ptr, ptr %.sroa.045.0.i577, align 8, !alias.scope !1366, !nonnull !5, !noundef !5 ; 6 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.hx = call noundef zeroext i1 @_RNvMNtNtCsileJQcQObtj_7hir_def7nameres15attr_resolutionNtB4_6DefMap29is_builtin_or_registered_attr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.ge, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hw), !noalias !1367
  br i1 %i.hx, label %bb.i, label %bb.j

bb.j:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i
  %i.hy = add i32 %.sroa.846.0.i576, %.sroa.01.0.i
  %i.hz = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !1367
  %i.ia = icmp ult i64 %i.hz, 2
  br i1 %i.ia, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ib = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector18resolve_attributes10___CALLSITE, i64 16) monotonic, align 8, !noalias !1367 ; 3 uses
  switch i8 %i.ib, label %bb.l [
    i8 0, label %bb.n
    i8 1, label %bb.m
    i8 2, label %bb.m
  ], !prof !26

bb.l:                                             ; preds = %bb.k
  %i.ic = call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector18resolve_attributes10___CALLSITE) #44, !noalias !1367 ; 2 uses
  %i.id = icmp eq i8 %i.ic, 0
  br i1 %i.id, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.k
  %.sroa.012.0.i = phi i8 [ %i.ic, %bb.l ], [ %i.ib, %bb.k ], [ %i.ib, %bb.k ]
  %i.ie = load ptr, ptr @_RNvNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector18resolve_attributes10___CALLSITE, align 8, !noalias !1367, !nonnull !5, !align !13, !noundef !5
  %i.if = call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ie, i8 noundef %.sroa.012.0.i), !noalias !1367
  br i1 %i.if, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m, %bb.l, %bb.k, %bb.j
  %i.ig = atomicrmw add ptr %i.hv, i64 1 monotonic, align 8, !noalias !1367
  %i.ih = icmp slt i64 %i.ig, 0
  br i1 %i.ih, label %bb.ah, label %bb.p, !prof !6

bb.o:                                             ; preds = %bb.m
  %i.ii = load ptr, ptr @_RNvNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector18resolve_attributes10___CALLSITE, align 8, !noalias !1367, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !1367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !1367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !1367
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ge, i64 416
  %i.il = load <2 x ptr>, ptr %i.ik, align 8, !noalias !1367
  store <2 x ptr> %i.il, ptr %i.ec, align 16, !noalias !1367
  %i.im = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr %i.hw, ptr %i.im, align 16, !noalias !1367
  %i.in = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store i8 3, ptr %i.in, align 8, !noalias !1367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !noalias !1367
  store ptr %i.ec, ptr %i.eb, align 8, !noalias !1367
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr @_RNvXs1_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !1367
  store ptr @183, ptr %i.ed, align 8, !noalias !1367
  %i.io = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.eb, ptr %i.io, align 8, !noalias !1367
  store ptr %i.ed, ptr %i.ee, align 8, !noalias !1367
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr @98, ptr %i.ip, align 8, !noalias !1367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !1367
  store i64 1, ptr %i.dy, align 8, !noalias !1367
  %.sroa.014.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.ee, ptr %.sroa.014.sroa.4.0..sroa_idx.i, align 8, !noalias !1367
  %.sroa.014.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store i64 1, ptr %.sroa.014.sroa.5.0..sroa_idx.i, align 8, !noalias !1367
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  store ptr %i.ij, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1367
  call void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ii, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dy), !noalias !1367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !1367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !1367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !1367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !1367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !1367
  br label %bb.n

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !1367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dz, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.gf, i64 12, i1 false), !noalias !1368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !noalias !1367
  %i.iq = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %i.ir = load <2 x i32>, ptr %i.iq, align 8, !alias.scope !1365
  %i.is = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  %i.it = load i64, ptr %i.is, align 8, !alias.scope !1365, !noundef !5
  %.sroa.015.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store i32 %2, ptr %.sroa.015.sroa.4.0..sroa_idx.i, align 4, !noalias !1367
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store ptr %i.hv, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !1367
  call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !1377
  %i.iu = atomicrmw add ptr %i.hv, i64 1 monotonic, align 8, !noalias !1377
  %i.iv = icmp slt i64 %i.iu, 0
  br i1 %i.iv, label %bb.r, label %bb.q, !prof !6

bb.q:                                             ; preds = %bb.p
  store ptr %i.hv, ptr %i.dx, align 8, !noalias !1377
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.045.0.i577, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !alias.scope !1378, !align !13, !noundef !5 ; 12 uses
  %.not.i41.i = icmp eq ptr %i.ix, null
  br i1 %.not.i41.i, label %bb.aj, label %bb.s

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #43
          to label %.noexc.i unwind label %bb.ai, !noalias !1367

.noexc.i:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !1377
  %i.iy = call noalias noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 8, 585) 40, i64 noundef range(i64 4, 129) 8) #45, !noalias !1377 ; 8 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %bb.t, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtCs33K2ylI4knu_10hir_expand5attrs9AttrInputE13new_uninit_inCsileJQcQObtj_7hir_def.exit.i.i.i, !prof !6

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #43
          to label %.noexc.i.i unwind label %bb.af, !noalias !1377

.noexc.i.i:                                       ; preds = %bb.t
  unreachable

_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtCs33K2ylI4knu_10hir_expand5attrs9AttrInputE13new_uninit_inCsileJQcQObtj_7hir_def.exit.i.i.i: ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %i.ja = load i64, ptr %i.ix, align 8, !range !15, !alias.scope !1382, !noalias !1377, !noundef !5 ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ja, -1
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtCs33K2ylI4knu_10hir_expand5attrs9AttrInputE13new_uninit_inCsileJQcQObtj_7hir_def.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !noalias !1384
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 3 uses
  switch i64 %i.ja, label %default.unreachable [
    i64 0, label %bb.v
    i64 1, label %bb.w
    i64 2, label %bb.x
  ]

default.unreachable:                              ; preds = %._crit_edge, %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.jc = invoke { ptr, i64 } @_RNvXse_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBL_13SpanStorage32EENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.jb)
          to label %_RNvXsN_NtCs4dcH4YgJDq_2tt7storageNtB5_14TopSubtreeReprNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i.i.i unwind label %bb.ad, !noalias !1377

bb.w:                                             ; preds = %bb.u
  %i.jd = invoke { ptr, i64 } @_RNvXse_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBL_13SpanStorage64EENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.jb)
          to label %_RNvXsN_NtCs4dcH4YgJDq_2tt7storageNtB5_14TopSubtreeReprNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i.i.i unwind label %bb.ad, !noalias !1377

bb.x:                                             ; preds = %bb.u
  %i.je = invoke { ptr, i64 } @_RNvXse_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBL_13SpanStorage96EENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.jb)
          to label %_RNvXsN_NtCs4dcH4YgJDq_2tt7storageNtB5_14TopSubtreeReprNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i.i.i unwind label %bb.ad, !noalias !1377

_RNvXsN_NtCs4dcH4YgJDq_2tt7storageNtB5_14TopSubtreeReprNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i.i.i: ; preds = %bb.x, %bb.w, %bb.v
  %.sink5.i.i.i.i.i.i.i = phi { ptr, i64 } [ %i.jd, %bb.w ], [ %i.jc, %bb.v ], [ %i.je, %bb.x ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.jg = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.jh = extractvalue { ptr, i64 } %.sink5.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.ji = extractvalue { ptr, i64 } %.sink5.i.i.i.i.i.i.i, 1 ; 2 uses
  store ptr %i.jh, ptr %i.jg, align 8, !alias.scope !1385, !noalias !1384
  store i64 %i.ji, ptr %i.jf, align 8, !alias.scope !1385, !noalias !1384
  store i64 %i.ja, ptr %i.dw, align 8, !alias.scope !1385, !noalias !1384
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv), !noalias !1387
  %i.jk = load ptr, ptr %i.jj, align 8, !alias.scope !1388, !noalias !1377, !nonnull !5, !noundef !5
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.jm = load i64, ptr %i.jl, align 8, !alias.scope !1388, !noalias !1377, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du), !noalias !1390
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.du, i64 noundef range(i64 0, 768614336404564651) %i.jm, i1 noundef zeroext false, i64 noundef 4, i64 noundef 12)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.aa, !noalias !1384

.noexc.i.i.i.i.i.i:                               ; preds = %_RNvXsN_NtCs4dcH4YgJDq_2tt7storageNtB5_14TopSubtreeReprNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i.i.i
  %i.jn = load i64, ptr %i.du, align 8, !range !19, !noalias !1390, !noundef !5
  %i.jo = trunc nuw i64 %i.jn to i1
  %i.jp = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.jq = load i64, ptr %i.jp, align 8, !range !20, !noalias !1390, !noundef !5 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  br i1 %i.jo, label %bb.y, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i.i.i, !prof !6

bb.y:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.js = load i64, ptr %i.jr, align 8, !noalias !1390
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.jq, i64 %i.js) #43
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.aa, !noalias !1384

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.y
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i
  %i.jt = load ptr, ptr %i.jr, align 8, !noalias !1390, !nonnull !5, !noundef !5 ; 2 uses
  %i.ju = icmp ule i64 %i.jm, %i.jq
  call void @llvm.assume(i1 %i.ju)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !1390
  store i64 %i.jq, ptr %i.dv, align 8, !alias.scope !1389, !noalias !1387
  %i.jv = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %i.jt, ptr %i.jv, align 8, !alias.scope !1389, !noalias !1387
  %i.jw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  store i64 0, ptr %i.jw, align 8, !alias.scope !1389, !noalias !1387
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.jm, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvXs_NvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i.i.i
  %i.jx = mul nuw nsw i64 %i.jm, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.jt, ptr nonnull readonly align 4 %i.jk, i64 %i.jx, i1 false), !noalias !1391
  store i64 %i.jm, ptr %i.jw, align 8, !alias.scope !1389, !noalias !1387
  br label %_RINvXs_NvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i.i

_RINvXs_NvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i.i: ; preds = %bb.z, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i.i.i
  %i.jy = invoke { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartE16into_boxed_sliceCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.dv)
          to label %_RNvXsS_NtCs4dcH4YgJDq_2tt7storageNtB5_10TopSubtreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i.i unwind label %bb.aa, !noalias !1384 ; 2 uses

bb.aa:                                            ; preds = %_RINvXs_NvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i.i, %bb.y, %_RNvXsN_NtCs4dcH4YgJDq_2tt7storageNtB5_14TopSubtreeReprNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i.i.i
  %i.jz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt7storage14TopSubtreeReprECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dw) #41
          to label %bb.ae unwind label %bb.ab, !noalias !1384

bb.ab:                                            ; preds = %bb.aa
  %i.ka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !1384
  unreachable

_RNvXsS_NtCs4dcH4YgJDq_2tt7storageNtB5_10TopSubtreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %_RINvXs_NvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !1387
  %i.kb = extractvalue { ptr, i64 } %i.jy, 0
  %i.kc = extractvalue { ptr, i64 } %i.jy, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !1384
  br label %_RNvXsd_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtCs33K2ylI4knu_10hir_expand5attrs9AttrInputENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i.i

bb.ac:                                            ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtCs33K2ylI4knu_10hir_expand5attrs9AttrInputE13new_uninit_inCsileJQcQObtj_7hir_def.exit.i.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.ke = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.kd)
          to label %.noexc3.i.i.i unwind label %bb.ad, !noalias !1377

.noexc3.i.i.i:                                    ; preds = %bb.ac
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %.sroa.6.16.copyload.i.i.i.i = load i64, ptr %i.kf, align 8, !alias.scope !1392, !noalias !1377
  %.sroa.7.16..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %.sroa.7.16.copyload.i.i.i.i = load ptr, ptr %.sroa.7.16..sroa_idx.i.i.i.i, align 8, !alias.scope !1392, !noalias !1377
  %.sroa.8.16..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %.sroa.8.16.copyload.i.i.i.i = load i32, ptr %.sroa.8.16..sroa_idx.i.i.i.i, align 8, !alias.scope !1392, !noalias !1377
  %.sroa.8.16.insert.ext.i.i.i.i = zext i32 %.sroa.8.16.copyload.i.i.i.i to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ix, i64 37
  %3 = load i8, ptr %i.kg, align 1, !range !38, !alias.scope !1382, !noalias !1377, !noundef !5
  %4 = getelementptr inbounds nuw i8, ptr %i.ix, i64 38
  %5 = load i8, ptr %4, align 2, !alias.scope !1382, !noalias !1377
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ix, i64 36
  %i.ki = load i8, ptr %i.kh, align 4, !alias.scope !1382, !noalias !1377, !noundef !5
  %.sroa.8.36.insert.ext.i.i.i.i = zext i8 %i.ki to i64
  %.sroa.8.36.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.8.36.insert.ext.i.i.i.i, 32
  %.sroa.8.37.insert.ext.i.i.i.i = zext nneg i8 %3 to i64
  %.sroa.8.37.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.8.37.insert.ext.i.i.i.i, 40
  %.sroa.8.38.insert.ext.i.i.i.i = zext i8 %5 to i64
  %.sroa.8.38.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.8.38.insert.ext.i.i.i.i, 48
  %.sroa.8.36.insert.insert.i.i.i.i = or disjoint i64 %.sroa.8.37.insert.shift.i.i.i.i, %.sroa.8.16.insert.ext.i.i.i.i
  %.sroa.8.37.insert.insert.i.i.i.i = or disjoint i64 %.sroa.8.36.insert.insert.i.i.i.i, %.sroa.8.38.insert.shift.i.i.i.i
  %.sroa.8.38.insert.insert.i.i.i.i = or disjoint i64 %.sroa.8.37.insert.insert.i.i.i.i, %.sroa.8.36.insert.shift.i.i.i.i
  br label %_RNvXsd_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtCs33K2ylI4knu_10hir_expand5attrs9AttrInputENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i.i

bb.ad:                                            ; preds = %bb.ac, %bb.x, %bb.w, %bb.v
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.kj, %bb.ad ], [ %i.jz, %bb.aa ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iy, i64 noundef 40, i64 noundef 8) #45, !noalias !1377
  br label %.body.i.i

_RNvXsd_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtCs33K2ylI4knu_10hir_expand5attrs9AttrInputENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %.noexc3.i.i.i, %_RNvXsS_NtCs4dcH4YgJDq_2tt7storageNtB5_10TopSubtreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i.i
  %.sroa.8.0.i.i.i.i = phi i64 [ %.sroa.8.38.insert.insert.i.i.i.i, %.noexc3.i.i.i ], [ %i.kc, %_RNvXsS_NtCs4dcH4YgJDq_2tt7storageNtB5_10TopSubtreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i.i ]
  %.sroa.7.0.i.i.i.i = phi ptr [ %.sroa.7.16.copyload.i.i.i.i, %.noexc3.i.i.i ], [ %i.kb, %_RNvXsS_NtCs4dcH4YgJDq_2tt7storageNtB5_10TopSubtreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i.i ]
  %.sroa.6.0.i.i.i.i = phi i64 [ %.sroa.6.16.copyload.i.i.i.i, %.noexc3.i.i.i ], [ %i.ji, %_RNvXsS_NtCs4dcH4YgJDq_2tt7storageNtB5_10TopSubtreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i.i ]
  %.sroa.5.0.i.i.i.i = phi ptr [ %i.ke, %.noexc3.i.i.i ], [ %i.jh, %_RNvXsS_NtCs4dcH4YgJDq_2tt7storageNtB5_10TopSubtreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i.i ]
  store i64 %i.ja, ptr %i.iy, align 8, !noalias !1393
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store ptr %.sroa.5.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1393
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store i64 %.sroa.6.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !1393
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  store ptr %.sroa.7.0.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !1393
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  store i64 %.sroa.8.0.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !1393
  br label %bb.aj

bb.af:                                            ; preds = %bb.t
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.af, %bb.ae
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.kk, %bb.af ], [ %eh.lpad-body.i.i.i, %bb.ae ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs39E2wp1vf7X_6intern6intern8InternedNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dx) #41
          to label %.body.i unwind label %bb.ag, !noalias !1377

bb.ag:                                            ; preds = %.body.i.i
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !1377
  unreachable

bb.ah:                                            ; preds = %bb.n
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #43, !noalias !1367
  unreachable

bb.ai:                                            ; preds = %bb.r
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ai, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.km, %bb.ai ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsileJQcQObtj_7hir_def13AstIdWithPathNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEEBE_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dz) #41
          to label %common.resume492 unwind label %bb.an, !noalias !1367

bb.aj:                                            ; preds = %_RNvXsd_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtCs33K2ylI4knu_10hir_expand5attrs9AttrInputENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i.i, %bb.q
  %.sroa.0.0.i42.i = phi ptr [ null, %bb.q ], [ %i.iy, %_RNvXsd_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtCs33K2ylI4knu_10hir_expand5attrs9AttrInputENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i.i ]
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.045.0.i577, i64 16
  %i.ko = load i32, ptr %i.kn, align 8, !alias.scope !1378, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !1377
  %i.kp = add i64 %i.it, 1
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ge, i64 392 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.gf, i64 20, i1 false), !noalias !1368
  %i.kr = load ptr, ptr %i.fv, align 8, !alias.scope !1365, !nonnull !5, !align !13, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 24, i1 false), !noalias !1367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !1367
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  store <2 x i32> %i.ir, ptr %i.ks, align 8, !noalias !1367
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ea, i64 96
  store i64 %i.kp, ptr %i.kt, align 8, !noalias !1367
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store i32 %1, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !1367
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  store i32 %2, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !1367
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  store ptr %i.hv, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !1367
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  store ptr %.sroa.0.0.i42.i, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i, align 8, !noalias !1367
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  store i32 %i.ko, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i, align 8, !noalias !1367
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  store ptr %i.kr, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1367
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 84
  store i32 %i.hy, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !1367
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ea, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ku, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.fr, i64 12, i1 false), !noalias !1394
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ge, i64 408 ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !alias.scope !1395, !noalias !1367, !noundef !5 ; 3 uses
  %i.kx = load i64, ptr %i.kq, align 8, !range !17, !alias.scope !1395, !noalias !1367, !noundef !5
  %i.ky = icmp eq i64 %i.kw, %i.kx
  br i1 %i.ky, label %bb.ak, label %_RNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12ModCollector18resolve_attributes.exit.thread

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsileJQcQObtj_7hir_def7nameres9collector14MacroDirectiveE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kq)
          to label %_RNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12ModCollector18resolve_attributes.exit.thread unwind label %bb.al, !noalias !1396

bb.al:                                            ; preds = %bb.ak
  %i.kz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def7nameres9collector14MacroDirectiveEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.ea) #41
          to label %common.resume492 unwind label %bb.am, !noalias !1367

bb.am:                                            ; preds = %bb.al
  %i.la = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !1367
  unreachable

common.resume492:                                 ; preds = %.body.i486, %bb.al, %.body.i, %bb.dt, %bb.dr, %bb.cq, %.body.i148, %.body, %.thread374, %bb.ez, %bb.hv, %bb.he, %bb.gx, %bb.gu, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gj, %.thread.i.i, %bb.gf, %.loopexit.split-lp153.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread391, %bb.lg
  %common.resume492.op = phi { ptr, i32 } [ %i.ahz, %bb.he ], [ %.pn21.pn.i, %.thread391 ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.split-lp149.i, %bb.dr ], [ %i.akh, %.body.i486 ], [ %i.aib, %bb.gx ], [ %i.kz, %bb.al ], [ %.pn63.i, %.body.i148 ], [ %.pn63.i, %bb.dt ], [ %i.vo, %bb.cq ], [ %.pn18.i378, %.thread374 ], [ %lpad.phi359, %bb.ez ], [ %i.aau, %.body ], [ %i.agk, %bb.gf ], [ %i.bak, %bb.lg ], [ %.pn33.i.i, %.thread.i.i ], [ %.pn34.i, %bb.hv ], [ %.pn34.i, %bb.gj ], [ %lpad.loopexit.split-lp588, %.loopexit.split-lp153.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp585, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ahz, %bb.gu ]
  resume { ptr, i32 } %common.resume492.op

_RNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12ModCollector18resolve_attributes.exit.thread: ; preds = %bb.aj, %bb.ak
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ge, i64 400
  %i.lc = load ptr, ptr %i.lb, align 8, !alias.scope !1395, !noalias !1367, !nonnull !5, !noundef !5
  %i.ld = getelementptr inbounds nuw [120 x i8], ptr %i.lc, i64 %i.kw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ld, ptr noundef nonnull align 8 dereferenceable(120) %i.ea, i64 120, i1 false), !noalias !1367
  %i.le = add i64 %i.kw, 1
  store i64 %i.le, ptr %i.kv, align 8, !alias.scope !1395, !noalias !1367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !1367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr)
  br label %_RNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12ModCollector14collect_module.exit

bb.an:                                            ; preds = %.body.i
  %i.lf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !1367
  unreachable

bb.ao:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs)
  %i.lg = getelementptr inbounds nuw i8, ptr %i.fu, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fs, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.lg, i64 12, i1 false)
  %i.lh = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  store i32 %2, ptr %i.lh, align 4
  %i.li = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.lj = load ptr, ptr %i.li, align 8, !nonnull !5, !noundef !5
  call fastcc void @_RNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12ModCollector28emit_unconfigured_diagnostic(ptr noalias nofree noundef align 8 dereferenceable(88) %i.fu, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %i.fs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs)
  br label %_RNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12ModCollector14collect_module.exit

bb.ap:                                            ; preds = %bb.b
  %i.lk = getelementptr i8, ptr %i.fx, i64 8
  %.val130 = load i64, ptr %i.lk, align 8, !noundef !5
  br label %bb.c

._crit_edge:                                      ; preds = %bb.i, %_RNvMs3_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB5_5Attrs10iter_after.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr)
  %i.ll = load ptr, ptr %i.gd, align 8, !nonnull !5, !align !13, !noundef !5 ; 55 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 744 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !align !13, !noundef !5 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 232 ; 2 uses
  %.not108 = icmp eq ptr %i.ln, null
  %spec.select = select i1 %.not108, ptr %i.lo, ptr %i.ln ; 9 uses
  switch i32 %1, label %default.unreachable [
    i32 0, label %bb.aq
    i32 1, label %bb.ar
    i32 2, label %bb.at
    i32 3, label %bb.au
    i32 4, label %bb.av
    i32 5, label %bb.ax
    i32 6, label %bb.ay
    i32 7, label %bb.du
    i32 8, label %bb.fb
    i32 9, label %bb.hw
    i32 10, label %bb.jy
    i32 11, label %bb.ka
    i32 12, label %bb.kc
    i32 13, label %bb.ke
    i32 14, label %bb.kg
    i32 15, label %bb.ki
  ]

bb.aq:                                            ; preds = %._crit_edge
  %i.lp = load ptr, ptr %i.fv, align 8, !nonnull !5, !align !13, !noundef !5
  %i.lq = call noundef nonnull align 8 ptr @_RNvXs13_NtCsileJQcQObtj_7hir_def9item_treeNtB6_8ItemTreeINtNtNtCshzWfHUSfYae_4core3ops5index5IndexINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ConstEE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.lp, i32 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep)
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.lr, ptr noundef nonnull align 4 dereferenceable(12) %i.gc, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ep, ptr noundef nonnull align 8 dereferenceable(12) %i.gf, i64 12, i1 false)
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store i32 %2, ptr %.sroa.486.0..sroa_idx, align 4
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lt = load ptr, ptr %i.ls, align 8, !nonnull !5, !noundef !5
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.lv = load ptr, ptr %i.lu, align 8, !nonnull !5, !align !13, !noundef !5
  %i.lw = call { i32, i32 } @_RNvXs28_CsileJQcQObtj_7hir_defINtB6_12AssocItemLocNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ConstENtCs33K2ylI4knu_10hir_expand6Intern6intern(ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(28) %i.ep, ptr noundef nonnull %i.lt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.lv) ; 2 uses
  %i.lx = extractvalue { i32, i32 } %i.lw, 0      ; 2 uses
  %i.ly = extractvalue { i32, i32 } %i.lw, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep)
  %i.lz = load ptr, ptr %i.lq, align 8, !noundef !5
  %.not120 = icmp eq ptr %i.lz, null
  br i1 %.not120, label %bb.kk, label %bb.kj

bb.ar:                                            ; preds = %._crit_edge
  %i.ma = load ptr, ptr %i.fv, align 8, !nonnull !5, !align !13, !noundef !5
end_hunk_0
begin_hunk_1_@_RNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector7collects1_0Bb_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0345, ptr noundef nonnull align 4 dereferenceable(16) %i.eg, i64 16, i1 false)
  %.sroa.5.sroa.0.36..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.sroa.0.36..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.0345, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0345)
  store ptr %storemerge, ptr %i.fk, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i32 -1, ptr %.sroa.458.0..sroa_idx, align 8
  %.sroa.458.sroa.5.0..sroa.458.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 52
  store i32 -1, ptr %.sroa.458.sroa.5.0..sroa.458.0..sroa_idx.sroa_idx, align 4
  %.sroa.458.sroa.6.0..sroa.458.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.458.sroa.6.0..sroa.458.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.sroa.0, i64 64, i1 false)
  %.sroa.458.sroa.6.sroa.4.0..sroa.458.sroa.6.0..sroa.458.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 120
  store i8 0, ptr %.sroa.458.sroa.6.sroa.4.0..sroa.458.sroa.6.0..sroa.458.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.458.sroa.6.sroa.6.0..sroa.458.sroa.6.0..sroa.458.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 124
  store i32 %.sroa.039.0, ptr %.sroa.458.sroa.6.sroa.6.0..sroa.458.sroa.6.0..sroa.458.0..sroa_idx.sroa_idx.sroa_idx, align 4
  %.sroa.458.sroa.6.sroa.7.0..sroa.458.sroa.6.0..sroa.458.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 128
  store i32 %.sroa.6.0, ptr %.sroa.458.sroa.6.sroa.7.0..sroa.458.sroa.6.0..sroa.458.0..sroa_idx.sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector16update_recursive(ptr noalias nofree noundef nonnull align 8 dereferenceable(760) %i.azo, i32 noundef range(i32 1, 0) %i.azp, i32 noundef %i.azq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fk, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.fn, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.eg, i64 noundef 0)
          to label %_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector6update.exit unwind label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.bak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueATINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEj1_EB1I_(ptr %storemerge) #41
          to label %common.resume492 unwind label %bb.ld

_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector6update.exit: ; preds = %bb.lf
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueATINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEj1_EB1I_(ptr %storemerge) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn)
  br label %_RNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12ModCollector14collect_module.exit

.sink.split:                                      ; preds = %bb.lk, %bb.ll
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  br label %bb.lh

bb.lh:                                            ; preds = %.sink.split, %bb.lj, %bb.li, %_RNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector7collects0_0Bb_.exit146
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5245)
  br label %_RNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12ModCollector14collect_module.exit

bb.li:                                            ; preds = %_RNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector7collects0_0Bb_.exit146
  %i.bal = getelementptr inbounds nuw i8, ptr %i.qt, i64 752
  %i.bam = load i8, ptr %i.bal, align 8, !range !8, !noundef !5
  %i.ban = trunc nuw i8 %i.bam to i1
  br i1 %i.ban, label %bb.lj, label %bb.lh

bb.lj:                                            ; preds = %bb.li
  %i.bao = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %i.bap = getelementptr inbounds nuw i8, ptr %i.qt, i64 88
  %i.baq = load <2 x i32>, ptr %i.bao, align 8
  %i.bar = load <2 x i32>, ptr %i.bap, align 8
  %i.bas = icmp eq <2 x i32> %i.baq, %i.bar       ; 2 uses
  %i.bat = extractelement <2 x i1> %i.bas, i64 0
  %i.bau = extractelement <2 x i1> %i.bas, i64 1
  %.sroa.0.0.i216 = select i1 %i.bau, i1 %i.bat, i1 false
  br i1 %.sroa.0.0.i216, label %bb.lk, label %bb.lh

bb.lk:                                            ; preds = %bb.lj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc)
  call void @_RNvMs_NtNtCsileJQcQObtj_7hir_def7nameres10proc_macroNtNtNtB8_9item_tree5attrs5Attrs21parse_proc_macro_decl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.fc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ft, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.po)
  %i.bav = load i64, ptr %i.fc, align 8, !range !15, !noundef !5
  %.not110 = icmp eq i64 %i.bav, -1
  br i1 %.not110, label %.sink.split, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %i.fc, i64 32, i1 false)
  %i.baw = load ptr, ptr %i.gd, align 8, !nonnull !5, !align !13, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fa, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.gf, i64 12, i1 false)
  %i.bax = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  store i32 %2, ptr %i.bax, align 4
  call fastcc void @_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector17export_proc_macro(ptr noalias nofree noundef align 8 dereferenceable(760) %i.baw, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.fb, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %i.fa, i32 noundef %i.pv, i32 noundef %i.pw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  %i.bay = load ptr, ptr %i.gd, align 8, !nonnull !5, !align !13, !noundef !5
  %i.baz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bba = load ptr, ptr %i.baz, align 8, !nonnull !5, !align !34, !noundef !5 ; 2 uses
  %i.bbb = load i32, ptr %i.bba, align 4, !range !11, !noundef !5
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bba, i64 4
  %i.bbd = load i32, ptr %i.bbc, align 4, !noundef !5
  %i.bbe = call noundef nonnull align 8 ptr @_RNvXs2_NtCsileJQcQObtj_7hir_def7nameresNtB5_6DefMapINtNtNtCshzWfHUSfYae_4core3ops5index8IndexMutNtB7_10ModuleIdLtE9index_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.bay, i32 noundef %i.bbb, i32 noundef %i.bbd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83)
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bbe, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez)
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  store i32 %i.pv, ptr %i.bbg, align 4, !alias.scope !1528
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i32 %i.pw, ptr %i.bbh, align 4, !alias.scope !1528
  store i8 1, ptr %i.ez, align 4, !alias.scope !1528
  call fastcc void @_RNvMs2_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope20remove_from_value_ns(ptr noalias nofree noundef align 8 dereferenceable(488) %i.bbf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.po, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.ez)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez)
  br label %.sink.split

_RNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12ModCollector14collect_module.exit: ; preds = %_RNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector7collects0_0Bb_.exit, %bb.at, %bb.ax, %_RNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12ModCollector17collect_macro_def.exit, %_RNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12ModCollector18collect_macro_call.exit, %_RNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12ModCollector19collect_macro_rules.exit, %_RNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector7collects0_0Bb_.exit201, %_RNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector7collects0_0Bb_.exit203, %_RNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector7collects0_0Bb_.exit207, %_RNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector7collects0_0Bb_.exit209, %_RNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector7collects0_0Bb_.exit211, %bb.ki, %bb.lh, %bb.kk, %bb.kj, %_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector6update.exit, %bb.ku, %bb.il, %bb.iq, %bb.ao, %_RNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12ModCollector18resolve_attributes.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector7collects_0Bb_(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(760) %0, ptr noalias nofree noundef nonnull align 4 captures(address) dead_on_return dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dead_on_return dereferenceable(12) %3, i1 noundef zeroext %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [16 x i8], align 4                ; 3 uses
  %i.f = alloca [128 x i8], align 4               ; 4 uses
  %i.g = alloca [136 x i8], align 8               ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.h = load i32, ptr %.0.val, align 4, !range !11, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !noundef !5
  %i.k = tail call noundef nonnull align 8 ptr @_RNvXsd_NtCsileJQcQObtj_7hir_def7nameresNtB5_10ModulesMapINtNtNtCshzWfHUSfYae_4core3ops5index8IndexMutNtB7_10ModuleIdLtE9index_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %i.h, i32 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  tail call void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdE4pushBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1)
  %i.m = load i32, ptr %.0.val, align 4, !range !11, !noundef !5
  %i.n = load i32, ptr %i.i, align 4, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.o = tail call noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 -1, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false)
  invoke void @_RNvMs4_NtCsileJQcQObtj_7hir_def10item_scopeNtNtB7_6per_ns5PerNs8from_def(ptr noalias nofree noundef nonnull sret([128 x i8]) align 4 captures(address) dereferenceable(128) %i.f, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.d, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.c)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEECsileJQcQObtj_7hir_def(ptr nonnull %i.o) #41
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(128) %i.f, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %i.o, ptr %i.g, align 8
  invoke fastcc void @_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector16update_recursive(ptr noalias nofree noundef nonnull align 8 dereferenceable(760) %0, i32 noundef range(i32 1, 0) %i.m, i32 noundef %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.g, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.e, i64 noundef 0)
          to label %_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector6update.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueATINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEj1_EB1I_(ptr nonnull %i.o) #41
          to label %bb.g unwind label %bb.f

_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector6update.exit: ; preds = %bb.c
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = and i64 %i.r, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueATINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEj1_EB1I_.exit, label %.split.i.i

.split.i.i:                                       ; preds = %_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector6update.exit
  %i.t = getelementptr i8, ptr %i.o, i64 -1       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.t)
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.w, ptr %i.b, align 8
  %i.x = load atomic i64, ptr %i.w acquire, align 8
  %i.y = icmp eq i64 %i.x, 2
  br i1 %i.y, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEEB1H_.exit.i.i, !prof !6

bb.e:                                             ; preds = %.split.i.i
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEEB1H_.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEEB1H_.exit.i.i: ; preds = %bb.e, %.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.w, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueATINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEj1_EB1I_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueATINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEj1_EB1I_.exit: ; preds = %_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector6update.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEEB1H_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.p, %bb.b ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtE13delete_entity0B17_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !align !39, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !34, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.f = load i32, ptr %i.e, align 8, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load <2 x i32>, ptr %i.d, align 4
  store <2 x i32> %i.h, ptr %i.g, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.f, ptr %.sroa.5.0..sroa_idx, align 4
  store i8 8, ptr %i.a, align 8
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa5eventNtB2_5Event3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtE6update0B17_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [12 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.g = icmp ult i64 %i.f, 3
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE6update010___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.h, label %bb.c [
    i8 0, label %bb.e
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !26

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE6update010___CALLSITE) #44 ; 2 uses
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.06.0 = phi i8 [ %i.i, %bb.c ], [ %i.h, %bb.b ], [ %i.h, %bb.b ]
  %i.k = load ptr, ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE6update010___CALLSITE, align 8, !nonnull !5, !align !13, !noundef !5
  %i.l = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.k, i8 noundef %.sroa.06.0)
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.f, %bb.d
  ret void

bb.f:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE6update010___CALLSITE, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = load ptr, ptr %0, align 8, !nonnull !5, !align !39, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !align !34, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %i.s = load i32, ptr %i.r, align 8, !noundef !5
  %i.t = load <2 x i32>, ptr %i.q, align 4
  store <2 x i32> %i.t, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.s, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  store ptr @97, ptr %i.d, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.b, ptr %i.v, align 8
  store ptr %i.d, ptr %i.e, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @98, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtE8allocates_0B17_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [12 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.g = icmp ult i64 %i.f, 3
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE8allocates_010___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.h, label %bb.c [
    i8 0, label %bb.e
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !26

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE8allocates_010___CALLSITE) #44 ; 2 uses
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.06.0 = phi i8 [ %i.i, %bb.c ], [ %i.h, %bb.b ], [ %i.h, %bb.b ]
  %i.k = load ptr, ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE8allocates_010___CALLSITE, align 8, !nonnull !5, !align !13, !noundef !5
  %i.l = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.k, i8 noundef %.sroa.06.0)
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.f, %bb.d
  ret void

bb.f:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE8allocates_010___CALLSITE, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = load ptr, ptr %0, align 8, !nonnull !5, !align !39, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !align !34, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %i.s = load i32, ptr %i.r, align 8, !noundef !5
  %i.t = load <2 x i32>, ptr %i.q, align 4
  store <2 x i32> %i.t, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.s, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  store ptr @97, ptr %i.d, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.b, ptr %i.v, align 8
  store ptr %i.d, ptr %i.e, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @98, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE13delete_entity0B17_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !align !39, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !34, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.f = load i32, ptr %i.e, align 8, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load <2 x i32>, ptr %i.d, align 4
  store <2 x i32> %i.h, ptr %i.g, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.f, ptr %.sroa.5.0..sroa_idx, align 4
  store i8 8, ptr %i.a, align 8
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa5eventNtB2_5Event3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE6update0B17_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [12 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.g = icmp ult i64 %i.f, 3
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE6update010___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.h, label %bb.c [
    i8 0, label %bb.e
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !26

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE6update010___CALLSITE) #44 ; 2 uses
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.06.0 = phi i8 [ %i.i, %bb.c ], [ %i.h, %bb.b ], [ %i.h, %bb.b ]
  %i.k = load ptr, ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE6update010___CALLSITE, align 8, !nonnull !5, !align !13, !noundef !5
  %i.l = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.k, i8 noundef %.sroa.06.0)
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.f, %bb.d
  ret void

bb.f:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE6update010___CALLSITE, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = load ptr, ptr %0, align 8, !nonnull !5, !align !39, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !align !34, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %i.s = load i32, ptr %i.r, align 8, !noundef !5
  %i.t = load <2 x i32>, ptr %i.q, align 4
  store <2 x i32> %i.t, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.s, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  store ptr @97, ptr %i.d, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.b, ptr %i.v, align 8
  store ptr %i.d, ptr %i.e, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @98, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE8allocates_0B17_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [12 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.g = icmp ult i64 %i.f, 3
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE8allocates_010___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.h, label %bb.c [
    i8 0, label %bb.e
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !26

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE8allocates_010___CALLSITE) #44 ; 2 uses
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.06.0 = phi i8 [ %i.i, %bb.c ], [ %i.h, %bb.b ], [ %i.h, %bb.b ]
  %i.k = load ptr, ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE8allocates_010___CALLSITE, align 8, !nonnull !5, !align !13, !noundef !5
  %i.l = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.k, i8 noundef %.sroa.06.0)
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.f, %bb.d
  ret void

bb.f:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE8allocates_010___CALLSITE, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = load ptr, ptr %0, align 8, !nonnull !5, !align !39, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !align !34, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %i.s = load i32, ptr %i.r, align 8, !noundef !5
  %i.t = load <2 x i32>, ptr %i.q, align 4
  store <2 x i32> %i.t, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.s, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  store ptr @97, ptr %i.d, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.b, ptr %i.v, align 8
  store ptr %i.d, ptr %i.e, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @98, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairE13delete_entity0B19_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !align !39, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !34, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.f = load i32, ptr %i.e, align 8, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load <2 x i32>, ptr %i.d, align 4
  store <2 x i32> %i.h, ptr %i.g, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.f, ptr %.sroa.5.0..sroa_idx, align 4
  store i8 8, ptr %i.a, align 8
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa5eventNtB2_5Event3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairE6update0B19_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [12 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.g = icmp ult i64 %i.f, 3
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE6update010___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.h, label %bb.c [
    i8 0, label %bb.e
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !26

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE6update010___CALLSITE) #44 ; 2 uses
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.06.0 = phi i8 [ %i.i, %bb.c ], [ %i.h, %bb.b ], [ %i.h, %bb.b ]
  %i.k = load ptr, ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE6update010___CALLSITE, align 8, !nonnull !5, !align !13, !noundef !5
  %i.l = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.k, i8 noundef %.sroa.06.0)
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.f, %bb.d
  ret void

bb.f:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE6update010___CALLSITE, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = load ptr, ptr %0, align 8, !nonnull !5, !align !39, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !align !34, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %i.s = load i32, ptr %i.r, align 8, !noundef !5
  %i.t = load <2 x i32>, ptr %i.q, align 4
  store <2 x i32> %i.t, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.s, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  store ptr @97, ptr %i.d, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.b, ptr %i.v, align 8
  store ptr %i.d, ptr %i.e, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @98, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairE8allocates_0B19_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [12 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.g = icmp ult i64 %i.f, 3
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE8allocates_010___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.h, label %bb.c [
    i8 0, label %bb.e
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !26

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE8allocates_010___CALLSITE) #44 ; 2 uses
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.06.0 = phi i8 [ %i.i, %bb.c ], [ %i.h, %bb.b ], [ %i.h, %bb.b ]
  %i.k = load ptr, ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE8allocates_010___CALLSITE, align 8, !nonnull !5, !align !13, !noundef !5
  %i.l = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.k, i8 noundef %.sroa.06.0)
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.f, %bb.d
  ret void

bb.f:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE8allocates_010___CALLSITE, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = load ptr, ptr %0, align 8, !nonnull !5, !align !39, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !align !34, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %i.s = load i32, ptr %i.r, align 8, !noundef !5
  %i.t = load <2 x i32>, ptr %i.q, align 4
  store <2 x i32> %i.t, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.s, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  store ptr @97, ptr %i.d, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.b, ptr %i.v, align 8
  store ptr %i.d, ptr %i.e, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @98, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCNvMs_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtB6_18AssocItemCollector11record_item0Ba_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !13, !noundef !5
  call void @_RNvMs_NtCs33K2ylI4knu_10hir_expand8span_mapNtB4_7SpanMap14span_for_range(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i32 noundef %1, i32 noundef %2)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i32, ptr %i.c, align 4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvMs_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtB6_18AssocItemCollector11record_items0_0Ba_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(28) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 4                ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !13, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMs6_NtCs33K2ylI4knu_10hir_expand5filesINtB6_13InFileWrapperNtB8_9HirFileIdTINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB1k_3ast9generated5nodes9MacroCallEINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdB1Q_EEE3mapNCNCNvMs_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtB3w_18AssocItemCollector11record_items0_00IB2y_NtB1S_4ItemEEB3A_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %2, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %3, ptr %i.d, align 4
  call void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBM_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBM_11MacroCallIdEE4pushCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNCNvMs_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtB6_18AssocItemCollector12collect_item0Ba_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !13, !noundef !5
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNSNvYNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtBc_12DefCollector6finishs_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2d_9HirFileIdTINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB3k_3ast9generated5nodes9MacroCallEINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdB3Q_EEENtB2d_11MacroCallIdEE9call_once6vtableBg_(ptr nofree readnone captures(none) %0, ptr noalias nofree readonly align 4 captures(none) dead_on_return %1, i32 range(i32 1, 0) %2, i32 %3) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtBc_12ModCollector18collect_macro_calls_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2q_9HirFileIdTINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB3x_3ast9generated5nodes9MacroCallEINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdB43_EEENtB2q_11MacroCallIdEE9call_once6vtableBg_(ptr nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(28) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !13, !noundef !5 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1538, !noalias !1539, !noundef !5 ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !range !17, !alias.scope !1538, !noalias !1539, !noundef !5
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_RNvYNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtBa_12ModCollector18collect_macro_calls_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2o_9HirFileIdTINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB3v_3ast9generated5nodes9MacroCallEINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdB41_EEENtB2o_11MacroCallIdEE9call_onceBe_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBS_9HirFileIdTINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB1Y_3ast9generated5nodes9MacroCallEINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdB2u_EEENtBS_11MacroCallIdEE8grow_oneCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #44, !noalias !1540
  br label %_RNvYNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtBa_12ModCollector18collect_macro_calls_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2o_9HirFileIdTINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB3v_3ast9generated5nodes9MacroCallEINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdB41_EEENtB2o_11MacroCallIdEE9call_onceBe_.exit

_RNvYNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtBa_12ModCollector18collect_macro_calls_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2o_9HirFileIdTINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB3v_3ast9generated5nodes9MacroCallEINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdB41_EEENtB2o_11MacroCallIdEE9call_onceBe_.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1538, !noalias !1539, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw [36 x i8], ptr %i.g, i64 %i.c ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.h, ptr noundef nonnull align 4 dereferenceable(28) %1, i64 28, i1 false), !noalias !1541
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 %2, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !1542
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 %3, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !1542
  %i.i = add i64 %i.c, 1
  store i64 %i.i, ptr %i.b, align 8, !alias.scope !1538, !noalias !1539
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtBc_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtE13delete_entity0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_once6vtableB1c_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !align !39, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !34, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1549)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1550
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.f = load i32, ptr %i.e, align 8, !noalias !1550, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load <2 x i32>, ptr %i.d, align 4, !alias.scope !1549, !noalias !1551
  store <2 x i32> %i.h, ptr %i.g, align 4, !noalias !1550
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.f, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !1550
  store i8 8, ptr %i.a, align 8, !noalias !1550
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa5eventNtB2_5Event3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a), !noalias !1552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1550
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtBc_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE13delete_entity0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_once6vtableB1c_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !align !39, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !34, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1560
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.f = load i32, ptr %i.e, align 8, !noalias !1560, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load <2 x i32>, ptr %i.d, align 4, !alias.scope !1559, !noalias !1561
  store <2 x i32> %i.h, ptr %i.g, align 4, !noalias !1560
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.f, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !1560
  store i8 8, ptr %i.a, align 8, !noalias !1560
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa5eventNtB2_5Event3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a), !noalias !1562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1560
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtBc_14IngredientImplNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairE13delete_entity0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_once6vtableB1e_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !align !39, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !34, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1569)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1570
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.f = load i32, ptr %i.e, align 8, !noalias !1570, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load <2 x i32>, ptr %i.d, align 4, !alias.scope !1569, !noalias !1571
  store <2 x i32> %i.h, ptr %i.g, align 4, !noalias !1570
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.f, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !1570
  store i8 8, ptr %i.a, align 8, !noalias !1570
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa5eventNtB2_5Event3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a), !noalias !1572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1570
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCNvMs_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtBb_18AssocItemCollector11record_item0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTNtNtCsuAhG64lL82_9text_size5range9TextRangeEE9call_once6vtableBf_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !13, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1577
  call void @_RNvMs_NtCs33K2ylI4knu_10hir_expand8span_mapNtB4_7SpanMap14span_for_range(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i32 noundef %1, i32 noundef %2), !noalias !1578
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i32, ptr %i.c, align 4, !noalias !1577, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1577
  ret i32 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNvMs_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtBb_18AssocItemCollector11record_items0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2l_9HirFileIdTINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB3s_3ast9generated5nodes9MacroCallEINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdB3Y_EEENtB2l_11MacroCallIdEE9call_once6vtableBf_(ptr nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(28) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 4                ; 6 uses
  %i.b = alloca [36 x i8], align 4                ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !13, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.b, ptr noundef nonnull align 4 dereferenceable(28) %1, i64 28, i1 false), !noalias !1585
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %2, ptr %i.d, align 4, !noalias !1586
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %3, ptr %i.e, align 4, !noalias !1586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1587
  call void @_RINvMs6_NtCs33K2ylI4knu_10hir_expand5filesINtB6_13InFileWrapperNtB8_9HirFileIdTINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB1k_3ast9generated5nodes9MacroCallEINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdB1Q_EEE3mapNCNCNvMs_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtB3w_18AssocItemCollector11record_items0_00IB2y_NtB1S_4ItemEEB3A_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %i.b), !noalias !1588
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %2, ptr %i.f, align 4, !noalias !1587
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %3, ptr %i.g, align 4, !noalias !1587
  call void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBM_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBM_11MacroCallIdEE4pushCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.a), !noalias !1589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNSNvYNCNvMs_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtBb_18AssocItemCollector12collect_item0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_once6vtableBf_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !13, !noundef !5
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsb_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB7_7ModPathNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE, i64 24) acquire, align 8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4g_13InternStorageB20_E3get0E0zECsileJQcQObtj_7hir_def.exit, label %bb.c, !prof !12

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock16RwLockWriteGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtB1w_4util11SharedValueuEEEEECsileJQcQObtj_7hir_def.exit: ; preds = %.body, %bb.q, %bb.b
  %.pn = phi { ptr, i32 } [ %i.e, %bb.b ], [ %eh.lpad-body, %bb.q ], [ %eh.lpad-body, %.body ]
  %.sroa.03.0 = phi i8 [ %.sroa.03.1, %bb.b ], [ %.sroa.03.2.lpad-body, %bb.q ], [ %.sroa.03.2.lpad-body, %.body ]
  %i.d = trunc nuw i8 %.sroa.03.0 to i1
  br i1 %i.d, label %bb.af, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsileJQcQObtj_7hir_def.exit

bb.b:                                             ; preds = %bb.z, %bb.f, %bb.e, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4g_13InternStorageB20_E3get0E0zECsileJQcQObtj_7hir_def.exit, %bb.c
  %.sroa.03.1 = phi i8 [ %.sroa.03.3, %bb.z ], [ 1, %bb.f ], [ 1, %bb.c ], [ 1, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4g_13InternStorageB20_E3get0E0zECsileJQcQObtj_7hir_def.exit ], [ 1, %bb.e ]
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock16RwLockWriteGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtB1w_4util11SharedValueuEEEEECsileJQcQObtj_7hir_def.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE10initializeNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4b_13InternStorageB20_E3get0E0zECsileJQcQObtj_7hir_def(ptr noundef nonnull align 8 @_RNvNvXsb_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB7_7ModPathNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE)
          to label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4g_13InternStorageB20_E3get0E0zECsileJQcQObtj_7hir_def.exit unwind label %bb.b

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4g_13InternStorageB20_E3get0E0zECsileJQcQObtj_7hir_def.exit: ; preds = %bb.a, %bb.c
  %i.f = invoke noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) getelementptr inbounds nuw (i8, ptr @_RNvNvXsb_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB7_7ModPathNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE, i64 24), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0)
          to label %.noexc9 unwind label %bb.b    ; 3 uses

.noexc9:                                          ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4g_13InternStorageB20_E3get0E0zECsileJQcQObtj_7hir_def.exit
  %i.g = shl i64 %i.f, 7
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsb_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB7_7ModPathNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE, i64 16), align 8, !noalias !1609, !noundef !5
  %i.i = and i64 %i.h, 63
  %i.j = lshr i64 %i.g, %i.i                      ; 3 uses
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsb_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB7_7ModPathNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE, i64 8), align 8, !noalias !1609, !noundef !5 ; 2 uses
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc9
  %i.m = load ptr, ptr @_RNvNvXsb_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB7_7ModPathNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE, align 8, !noalias !1609, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %i.j ; 9 uses
  %i.o = cmpxchg weak ptr %i.n, i64 0, i64 -4 acquire monotonic, align 8
  %i.p = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.p, label %bb.g, label %bb.f, !prof !12

bb.e:                                             ; preds = %.noexc9
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #39
          to label %.noexc10 unwind label %bb.b

.noexc10:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.n)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1612, !noundef !5
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.h, label %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern6internINtB3k_8InternedB1y_E3news_0ECsileJQcQObtj_7hir_def.exit.i, !prof !6

bb.h:                                             ; preds = %bb.g
  %i.u = invoke { i64, i64 } @_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE14reserve_rehashNCNvMNtCs39E2wp1vf7X_6intern6internINtB3s_8InternedB1y_E3news_0ECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNvXsb_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB7_7ModPathNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE, i1 noundef zeroext true) #44
          to label %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern6internINtB3k_8InternedB1y_E3news_0ECsileJQcQObtj_7hir_def.exit.i unwind label %.loopexit.split-lp ; 0 uses

_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern6internINtB3k_8InternedB1y_E3news_0ECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.h, %bb.g
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !1610, !nonnull !5, !noundef !5 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.val5.i = load i64, ptr %i.v, align 8, !alias.scope !1610, !noundef !5 ; 3 uses
  %i.w = lshr i64 %i.f, 57
  %i.x = trunc nuw nsw i64 %i.w to i8             ; 3 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i8, ptr %i.aa, align 8, !range !25, !alias.scope !1611 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !1611
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !range !11, !alias.scope !1611
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !1611
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern6internINtB3k_8InternedB1y_E3news_0ECsileJQcQObtj_7hir_def.exit.i
  %.pn.i.i = phi i64 [ %i.f, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern6internINtB3k_8InternedB1y_E3news_0ECsileJQcQObtj_7hir_def.exit.i ], [ %i.cb, %bb.n ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern6internINtB3k_8InternedB1y_E3news_0ECsileJQcQObtj_7hir_def.exit.i ], [ %.sroa.4.1.i.i, %bb.n ]
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern6internINtB3k_8InternedB1y_E3news_0ECsileJQcQObtj_7hir_def.exit.i ], [ %.sroa.01.1.i.i, %bb.n ]
  %i.ai = phi i64 [ 0, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern6internINtB3k_8InternedB1y_E3news_0ECsileJQcQObtj_7hir_def.exit.i ], [ %i.ca, %bb.n ]
  %.sroa.0.021.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.021.i.i
  %.sroa.0.0.copyload.i22.i.i = load <16 x i8>, ptr %i.aj, align 1, !noalias !1613 ; 3 uses
  %i.ak = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i.i, %i.z
  %i.al = bitcast <16 x i1> %i.ak to i16          ; 2 uses
  %.not23.i.i = icmp eq i16 %i.al, 0
  br i1 %.not23.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.backedge.i.i
  %.sroa.05.024.i.i = phi i16 [ %i.ap, %.backedge.i.i ], [ %i.al, %bb.i ] ; 3 uses
  %i.am = add i16 %.sroa.05.024.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.024.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.sroa.05.024.i.i        ; 2 uses
  %i.aq = add i64 %.sroa.0.021.i.i, %i.ao
  %i.ar = and i64 %i.aq, %.val5.i
  %i.as = load ptr, ptr %i.q, align 8, !alias.scope !1610, !noalias !1614, !nonnull !5, !noundef !5
  %i.at = sub nsw i64 0, %i.ar                    ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -8
  %.val2.i.i.i = load ptr, ptr %i.av, align 8, !noalias !1614, !nonnull !5, !noundef !5 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 32
  %i.ay = load i8, ptr %i.ax, align 4, !range !25, !alias.scope !1615, !noalias !1614, !noundef !5
  %i.az = icmp eq i8 %i.ay, %i.ab
  br i1 %i.az, label %bb.j, label %.backedge.i.i

bb.j:                                             ; preds = %.lr.ph.i.i
  switch i8 %i.ab, label %_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread2.i.i.i.i.i [
    i8 1, label %_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i
    i8 4, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 40
  %i.bb = load i32, ptr %i.ba, align 4, !alias.scope !1615, !noalias !1614, !noundef !5
  %i.bc = icmp eq i32 %i.bb, %i.ad
  br i1 %i.bc, label %.split.i.i.i.i.i, label %.backedge.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 36
  %i.be = load i32, ptr %i.bd, align 4, !range !11, !alias.scope !1615, !noalias !1614, !noundef !5
  %i.bf = icmp eq i32 %i.be, %i.af
  br i1 %i.bf, label %_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread2.i.i.i.i.i, label %.backedge.i.i

_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i: ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 33
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !1615, !noalias !1614, !noundef !5
end_hunk_1
begin_hunk_2_@_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector22record_resolved_import:bb.a

bb.ca:                                            ; preds = %bb.bz
  %i.ho = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEENtNtNtBS_3ops4drop4Drop4dropB28_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body unwind label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEENtNtNtBS_3ops4drop4Drop4dropB28_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEEEB2e_.exit244 unwind label %bb.l

bb.cc:                                            ; preds = %bb.ca
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEEEB2e_.exit244: ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.cr

bb.cd:                                            ; preds = %bb.ag, %_RNvMNtCsileJQcQObtj_7hir_def6per_nsNtB2_5PerNs10take_types.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 %.sroa.4273.0.copyload, ptr %i.l, align 4
  %.sroa.6260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6260.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx, i64 3, i1 false)
  %.sroa.6262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %.sroa.6274.0.copyload, ptr %.sroa.6262.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %.sroa.7.0.copyload, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 %.sroa.8276.0.copyload, ptr %.sroa.10.0..sroa_idx, align 4
  %i.hq = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.hr = icmp ult i64 %i.hq, 2
  br i1 %i.hr, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %bb.cd
  %i.hs = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_imports1_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.hs, label %bb.cf [
    i8 0, label %bb.cj
    i8 1, label %bb.cg
    i8 2, label %bb.cg
  ], !prof !26

bb.cf:                                            ; preds = %bb.ce
  %i.ht = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_imports1_10___CALLSITE)
          to label %bb.ch unwind label %bb.l      ; 2 uses

bb.cg:                                            ; preds = %bb.ce, %bb.ce, %bb.ch
  %.sroa.0108.0 = phi i8 [ %i.ht, %bb.ch ], [ %i.hs, %bb.ce ], [ %i.hs, %bb.ce ]
  %i.hu = load ptr, ptr @_RNvNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_imports1_10___CALLSITE, align 8, !nonnull !5, !align !13, !noundef !5
  %i.hv = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hu, i8 noundef %.sroa.0108.0)
          to label %bb.ci unwind label %bb.l

bb.ch:                                            ; preds = %bb.cf
  %i.hw = icmp eq i8 %i.ht, 0
  br i1 %i.hw, label %bb.cj, label %bb.cg

bb.ci:                                            ; preds = %bb.cg
  br i1 %i.hv, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %bb.ce, %bb.cd, %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_imports8_0Bb_.exit, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.cr

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.hx = load ptr, ptr @_RNvNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_imports1_10___CALLSITE, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.at, ptr %i.h, align 8
  %.sroa.4156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtCsileJQcQObtj_7hir_def7nameres9collector6ImportNtB6_5Debug3fmtBC_, ptr %.sroa.4156.0..sroa_idx, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.l, ptr %i.hz, align 8
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs7K_CsileJQcQObtj_7hir_defNtB6_11ModuleDefIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.4160.0..sroa_idx, align 8
  store ptr @139, ptr %i.i, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %i.ia, align 8
  store ptr %i.i, ptr %i.j, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @98, ptr %i.ib, align 8
  store i64 1, ptr %i.k, align 8
  %.sroa.0110.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %.sroa.0110.sroa.4.0..sroa_idx, align 8
  %.sroa.0110.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 1, ptr %.sroa.0110.sroa.5.0..sroa_idx, align 8
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.hy, ptr %.sroa.4111.0..sroa_idx, align 8
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
          to label %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_imports8_0Bb_.exit unwind label %bb.l

_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_imports8_0Bb_.exit: ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.cj

bb.cl:                                            ; preds = %bb.q
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !noundef !5
  %.not188 = icmp eq ptr %i.id, null
  %. = select i1 %.not188, ptr null, ptr %i.ic
  br label %bb.cs

bb.cm:                                            ; preds = %bb.q
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.if = invoke { ptr, i64 } @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath8segments(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ie)
          to label %bb.cn unwind label %bb.l      ; 2 uses

bb.cn:                                            ; preds = %bb.cm
  %i.ig = extractvalue { ptr, i64 } %i.if, 1      ; 2 uses
  %.not187 = icmp eq i64 %i.ig, 0
  br i1 %.not187, label %.noexc, label %bb.cq

.noexc:                                           ; preds = %bb.cn
  %i.ih = load atomic i64, ptr @_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt5LEVEL monotonic, align 8 ; 2 uses
  %.not.i193 = icmp eq i64 %i.ih, 0
  br i1 %.not.i193, label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit, label %bb.co, !prof !12

bb.co:                                            ; preds = %.noexc
  %i.ii = icmp slt i64 %i.ih, 0
  br i1 %i.ii, label %bb.cp, label %.noexc195

.noexc195:                                        ; preds = %bb.cp, %bb.co
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit8hit_cold(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @140, i64 noundef 11)
          to label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit unwind label %bb.l

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit13add_to_survey(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @140, i64 noundef 11)
          to label %.noexc195 unwind label %bb.l

bb.cq:                                            ; preds = %bb.cn
  %i.ij = extractvalue { ptr, i64 } %i.if, 0
  %i.ik = getelementptr [8 x i8], ptr %i.ij, i64 %i.ig
  %i.il = getelementptr i8, ptr %i.ik, i64 -8     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.il) ]
  br label %bb.cs

_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit:     ; preds = %.noexc, %.noexc195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.cr

bb.cr:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEEEB2e_.exit239, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEEEB2e_.exit244, %bb.cj, %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_imports9_0Bb_.exit, %bb.ad, %bb.bi, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEEEB2e_.exit, %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit210, %_RNvMNtCsileJQcQObtj_7hir_def6per_nsNtB2_5PerNs10take_types.exit.thread, %bb.z, %bb.ac, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueATINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEj1_EB1I_.exit, %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span11EnteredSpanECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  ret void

bb.cs:                                            ; preds = %bb.cl, %bb.cq
  %.sink = phi ptr [ %i.il, %bb.cq ], [ %., %bb.cl ]
  store ptr %.sink, ptr %i.ap, align 8
  %i.im = icmp eq i8 %i.cf, 2
  br i1 %i.im, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i32 -1, ptr %i.as, align 4
  %i.in = getelementptr inbounds nuw i8, ptr %i.as, i64 44
  store i32 -1, ptr %i.in, align 4
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.io = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ip = icmp ult i64 %i.io, 2
  br i1 %i.ip, label %bb.cv, label %bb.da

bb.cv:                                            ; preds = %bb.cu
  %i.iq = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_imports_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.iq, label %bb.cw [
    i8 0, label %bb.da
    i8 1, label %bb.cx
    i8 2, label %bb.cx
  ], !prof !26

bb.cw:                                            ; preds = %bb.cv
  %i.ir = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_imports_10___CALLSITE)
          to label %bb.cy unwind label %bb.l      ; 2 uses

bb.cx:                                            ; preds = %bb.cv, %bb.cv, %bb.cy
  %.sroa.026.0 = phi i8 [ %i.ir, %bb.cy ], [ %i.iq, %bb.cv ], [ %i.iq, %bb.cv ]
  %i.is = load ptr, ptr @_RNvNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_imports_10___CALLSITE, align 8, !nonnull !5, !align !13, !noundef !5
  %i.it = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.is, i8 noundef %.sroa.026.0)
          to label %bb.cz unwind label %bb.l

bb.cy:                                            ; preds = %bb.cw
  %i.iu = icmp eq i8 %i.ir, 0
  br i1 %i.iu, label %bb.da, label %bb.cx

bb.cz:                                            ; preds = %bb.cx
  br i1 %i.it, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cv, %bb.cu, %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_imports6_0Bb_.exit, %bb.cz
  %i.iv = getelementptr inbounds nuw i8, ptr %i.as, i64 84
  %i.iw = load i32, ptr %i.iv, align 4, !range !40, !noundef !5 ; 2 uses
  %.not189 = icmp eq i32 %i.iw, -2
  br i1 %.not189, label %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_import0Bb_.exit.thread, label %bb.dc

bb.db:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.ix = load ptr, ptr @_RNvNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_imports_10___CALLSITE, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %i.ap, ptr %i.al, align 8
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionRNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtB7_3fmt5Debug3fmtCsileJQcQObtj_7hir_def, ptr %.sroa.4132.0..sroa_idx, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.at, ptr %i.iz, align 8
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtCsileJQcQObtj_7hir_def7nameres9collector6ImportNtB6_5Debug3fmtBC_, ptr %.sroa.4136.0..sroa_idx, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %i.as, ptr %i.ja, align 8
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr @_RNvXsl_NtCsileJQcQObtj_7hir_def6per_nsNtB5_5PerNsNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.4140.0..sroa_idx, align 8
  store ptr @141, ptr %i.am, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.al, ptr %i.jb, align 8
  store ptr %i.am, ptr %i.an, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @98, ptr %i.jc, align 8
  store i64 1, ptr %i.ao, align 8
  %.sroa.028.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.an, ptr %.sroa.028.sroa.4.0..sroa_idx, align 8
  %.sroa.028.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 1, ptr %.sroa.028.sroa.5.0..sroa_idx, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.iy, ptr %.sroa.429.0..sroa_idx, align 8
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ix, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao)
          to label %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_imports6_0Bb_.exit unwind label %bb.l

_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_imports6_0Bb_.exit: ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.da

bb.dc:                                            ; preds = %bb.da
  %i.jd = load ptr, ptr %i.at, align 8, !nonnull !5, !align !13, !noundef !5 ; 3 uses
  %cond.i = icmp eq i32 %i.iw, 2
  br i1 %cond.i, label %bb.dd, label %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_import0Bb_.exit.thread

bb.dd:                                            ; preds = %bb.dc
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 72
  %i.jf = load i8, ptr %i.je, align 8, !range !25, !noalias !1738, !noundef !5
  switch i8 %i.jf, label %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_import0Bb_.exit.thread [
    i8 0, label %bb.df
    i8 1, label %bb.de
  ]

bb.de:                                            ; preds = %bb.dd
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 73
  %i.jh = load i8, ptr %i.jg, align 1, !noalias !1738, !noundef !5
  %i.ji = icmp eq i8 %i.jh, 0
  br i1 %i.ji, label %bb.df, label %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_import0Bb_.exit.thread

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 48
  %i.jk = invoke { ptr, i64 } @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath8segments(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.jj)
          to label %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_import0Bb_.exit unwind label %bb.l

_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_import0Bb_.exit.thread: ; preds = %bb.dc, %bb.dd, %bb.de, %bb.dg, %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_import0Bb_.exit, %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.jl = load ptr, ptr %i.ap, align 8, !align !13, !noundef !5 ; 2 uses
  %.not190 = icmp eq ptr %i.jl, null
  br i1 %.not190, label %bb.di, label %bb.dh

_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_import0Bb_.exit: ; preds = %bb.df
  %i.jm = extractvalue { ptr, i64 } %i.jk, 1
  %i.jn = icmp ult i64 %i.jm, 2
  br i1 %i.jn, label %bb.dg, label %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_import0Bb_.exit.thread

bb.dg:                                            ; preds = %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_import0Bb_.exit
  %i.jo = getelementptr inbounds nuw i8, ptr %i.as, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jo, ptr noundef nonnull align 4 dereferenceable(12) %i.ar, i64 12, i1 false)
  br label %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_import0Bb_.exit.thread

bb.dh:                                            ; preds = %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_import0Bb_.exit.thread
  %i.jp = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jl)
          to label %bb.di unwind label %bb.l

bb.di:                                            ; preds = %bb.dh, %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_import0Bb_.exit.thread
  %.sroa.033.0 = phi ptr [ null, %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_import0Bb_.exit.thread ], [ %i.jp, %bb.dh ] ; 4 uses
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.432.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(128) %i.as, i64 128, i1 false)
  store ptr %.sroa.033.0, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aj, ptr noundef nonnull align 4 dereferenceable(12) %i.ar, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i32 1, ptr %i.ai, align 4
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.ch, ptr %.sroa.417.0..sroa_idx, align 4
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 %i.cj, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 4
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 %i.cl, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 4
  invoke fastcc void @_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector16update_recursive(ptr noalias nofree noundef nonnull align 8 dereferenceable(760) %0, i32 noundef range(i32 1, 0) %i.bm, i32 noundef %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ak, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.aj, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.ai, i64 noundef 0)
          to label %_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector6update.exit252 unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.jq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueATINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEj1_EB1I_(ptr %.sroa.033.0) #41
          to label %.body unwind label %bb.bj

_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector6update.exit252: ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.jr = ptrtoint ptr %.sroa.033.0 to i64
  %i.js = and i64 %i.jr, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.js, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueATINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEj1_EB1I_.exit, label %.split.i.i

.split.i.i:                                       ; preds = %_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector6update.exit252
  %i.jt = getelementptr i8, ptr %.sroa.033.0, i64 -1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jt) ]
  %i.ju = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.jt)
          to label %.noexc253 unwind label %bb.l

.noexc253:                                        ; preds = %.split.i.i
  %i.jv = sub nsw i64 0, %i.ju
  %i.jw = getelementptr inbounds i8, ptr %i.jt, i64 %i.jv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.jw, ptr %i.b, align 8
  %i.jx = load atomic i64, ptr %i.jw acquire, align 8
  %i.jy = icmp eq i64 %i.jx, 2
  br i1 %i.jy, label %bb.dk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEEB1H_.exit.i.i, !prof !6

bb.dk:                                            ; preds = %.noexc253
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEEB1H_.exit.i.i unwind label %bb.l

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEEB1H_.exit.i.i: ; preds = %bb.dk, %.noexc253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.jw, ptr %i.a, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc255 unwind label %bb.l

.noexc255:                                        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEEB1H_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueATINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEj1_EB1I_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueATINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEj1_EB1I_.exit: ; preds = %.noexc255, %_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector6update.exit252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.cr
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector23collect_macro_expansion(ptr noalias nofree noundef nonnull align 8 dereferenceable(760) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, i64 noundef %5, ptr noalias nofree noundef nonnull align 4 captures(address) dead_on_return dereferenceable(12) %6, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = alloca [12 x i8], align 4                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [88 x i8], align 8                ; 17 uses
  %i.f = alloca [16 x i8], align 4                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 4                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 4                 ; 4 uses
  store i32 %1, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %2, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.p = load i32, ptr %i.o, align 8, !range !28, !noundef !5
  %i.q = trunc nuw i32 %i.p to i1
  br i1 %i.q, label %bb.b, label %_RNvMs5_NtCsileJQcQObtj_7hir_def7nameresNtB5_6DefMap15recursion_limit.exit

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 36
  %i.s = load i32, ptr %i.r, align 4
  %i.t = zext i32 %i.s to i64
  br label %_RNvMs5_NtCsileJQcQObtj_7hir_def7nameresNtB5_6DefMap15recursion_limit.exit

_RNvMs5_NtCsileJQcQObtj_7hir_def7nameresNtB5_6DefMap15recursion_limit.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.t, %bb.b ], [ 128, %bb.a ]
  %i.u = icmp ugt i64 %5, %.sroa.0.0.i
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsileJQcQObtj_7hir_def7nameresNtB5_6DefMap15recursion_limit.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !align !13, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load i32, ptr %i.z, align 8, !range !11, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 84
end_hunk_2
begin_hunk_3_@_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector23collect_macro_expansion:bb.a
  %.not.i.not.i.i43 = icmp eq i16 %i.dp, 0
  br i1 %.not.i.not.i.i43, label %._crit_edge.i.i44, label %.lr.ph.i.i41

bb.ab:                                            ; preds = %._crit_edge.i.i44
  %i.dq = add i64 %.sroa.9.0.i.i.i36, 16          ; 2 uses
  %i.dr = add i64 %.sroa.01.0.i.i.i38, %i.dq
  br label %bb.z

bb.ac:                                            ; preds = %bb.m
  call void @_RNvMNtNtCsileJQcQObtj_7hir_def7nameres14mod_resolutionNtB2_6ModDir4root(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d)
  br label %bb.ae

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtNtBQ_7nameres14mod_resolution6ModDirNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBQ_.exit: ; preds = %.lr.ph.i.i41
  %i.ds = getelementptr inbounds i8, ptr %i.di, i64 -32
  call void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ds)
  %i.dt = getelementptr inbounds i8, ptr %i.di, i64 -4
  %i.du = load i8, ptr %i.dt, align 4, !range !8, !alias.scope !1781, !noundef !5
  %i.dv = getelementptr inbounds i8, ptr %i.di, i64 -8
  %i.dw = load i32, ptr %i.dv, align 8, !alias.scope !1781, !noundef !5
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i8 %i.du, ptr %i.dx, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.dw, ptr %i.dy, align 8
  br label %bb.ae

select.unfold90:                                  ; preds = %._crit_edge.i.i44, %bb.x
  call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #39
  unreachable

bb.ad:                                            ; preds = %bb.ae
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def7nameres9collector12ModCollectorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.e) #41
          to label %common.resume unwind label %bb.w

bb.ae:                                            ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtNtBQ_7nameres14mod_resolution6ModDirNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBQ_.exit, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %0, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %5, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i32 %1, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  store i32 %2, ptr %i.ed, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i32 1, ptr %i.ee, align 8
  %.sroa.4.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  store i32 %3, ptr %.sroa.4.0..sroa_idx68, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i32 %4, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i32 0, ptr %.sroa.669.0..sroa_idx, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.ad, ptr %i.ef, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %.val26 = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5
  %i.eg = getelementptr i8, ptr %i.ad, i64 8
  %.val27 = load i64, ptr %i.eg, align 8, !noundef !5
  invoke void @_RNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12ModCollector7collect(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val26, i64 noundef %.val27, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %6)
          to label %bb.af unwind label %bb.ad

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def7nameres14mod_resolution6ModDirEBH_.exit.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.e)
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def7nameres14mod_resolution6ModDirEBH_.exit.i: ; preds = %bb.af
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %bb.aj, %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit, %bb.al, %bb.am, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def7nameres14mod_resolution6ModDirEBH_.exit.i
  ret void

bb.aj:                                            ; preds = %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit
  %i.ej = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector23collect_macro_expansion10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ej, label %bb.ak [
    i8 0, label %bb.ai
    i8 1, label %bb.al
    i8 2, label %bb.al
  ], !prof !26

bb.ak:                                            ; preds = %bb.aj
  %i.ek = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector23collect_macro_expansion10___CALLSITE) #44 ; 2 uses
  %i.el = icmp eq i8 %i.ek, 0
  br i1 %i.el, label %bb.ai, label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.aj, %bb.ak
  %.sroa.06.0 = phi i8 [ %i.ek, %bb.ak ], [ %i.ej, %bb.aj ], [ %i.ej, %bb.aj ]
  %i.em = load ptr, ptr @_RNvNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector23collect_macro_expansion10___CALLSITE, align 8, !nonnull !5, !align !13, !noundef !5
  %i.en = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.em, i8 noundef %.sroa.06.0)
  br i1 %i.en, label %bb.am, label %bb.ai

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.eo = load ptr, ptr @_RNvNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector23collect_macro_expansion10___CALLSITE, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @145, ptr %i.i, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 55 to ptr), ptr %i.eq, align 8
  store ptr %i.i, ptr %i.j, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @98, ptr %i.er, align 8
  store i64 1, ptr %i.k, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.ep, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.eo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ai
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector28push_res_and_update_glob_vis(ptr noalias nofree noundef nonnull align 8 dereferenceable(760) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias nofree noundef nonnull align 4 captures(none) dead_on_return dereferenceable(128) %4, ptr noalias nofree noundef nonnull align 4 captures(none) dead_on_return dereferenceable(12) %5, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [16 x i8], align 4                ; 10 uses
  %i.p = alloca [16 x i8], align 4                ; 3 uses
  %i.q = alloca [16 x i8], align 4                ; 4 uses
  %i.r = alloca [40 x i8], align 4                ; 9 uses
  %i.s = alloca [16 x i8], align 4                ; 10 uses
  %i.t = alloca [16 x i8], align 4                ; 3 uses
  %i.u = alloca [16 x i8], align 4                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 9 uses
  %i.x = alloca [16 x i8], align 4                ; 6 uses
  %i.y = alloca [16 x i8], align 4                ; 3 uses
  %i.z = alloca [16 x i8], align 4                ; 5 uses
  %.sroa.9.i = alloca [12 x i8], align 4          ; 5 uses
  %i.aa = alloca [16 x i8], align 4               ; 6 uses
  %i.ab = alloca [16 x i8], align 4               ; 3 uses
  %i.ac = alloca [16 x i8], align 4               ; 5 uses
  %.sroa.10.i = alloca [12 x i8], align 4         ; 8 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 9 uses
  %i.af = alloca [44 x i8], align 4               ; 11 uses
  %i.ag = alloca [16 x i8], align 4               ; 7 uses
  %i.ah = alloca [16 x i8], align 4               ; 3 uses
  %i.ai = alloca [16 x i8], align 4               ; 4 uses
  %i.aj = alloca [16 x i8], align 4               ; 7 uses
  %i.ak = alloca [16 x i8], align 4               ; 3 uses
  %i.al = alloca [16 x i8], align 4               ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [32 x i8], align 8               ; 7 uses
  %i.ao = alloca [44 x i8], align 4               ; 12 uses
  %i.ap = alloca [12 x i8], align 4               ; 7 uses
  %i.aq = alloca [12 x i8], align 4               ; 4 uses
  %i.ar = alloca [12 x i8], align 4               ; 4 uses
  %i.as = alloca [12 x i8], align 4               ; 4 uses
  %.sroa.5168 = alloca [12 x i8], align 4         ; 6 uses
  %.sroa.7170 = alloca [28 x i8], align 4         ; 6 uses
  %.sroa.18182 = alloca [12 x i8], align 4        ; 5 uses
  %i.at = alloca [16 x i8], align 8               ; 12 uses
  %i.au = alloca [12 x i8], align 4               ; 8 uses
  %i.av = alloca [12 x i8], align 4               ; 10 uses
  %i.aw = alloca [128 x i8], align 4              ; 15 uses
  %i.ax = alloca [12 x i8], align 4               ; 10 uses
  %i.ay = alloca [44 x i8], align 4               ; 13 uses
  %i.az = alloca [44 x i8], align 4               ; 10 uses
  %i.ba = alloca [12 x i8], align 4               ; 10 uses
  %i.bb = alloca [44 x i8], align 4               ; 14 uses
  %i.bc = alloca [44 x i8], align 4               ; 11 uses
  %i.bd = alloca [12 x i8], align 4               ; 5 uses
  %i.be = alloca [12 x i8], align 4               ; 5 uses
  %i.bf = alloca [12 x i8], align 4               ; 4 uses
  %i.bg = alloca [12 x i8], align 4               ; 5 uses
  %i.bh = alloca [12 x i8], align 4               ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 84 ; 5 uses
  %i.bj = load i32, ptr %i.bi, align 4, !range !40, !noundef !5 ; 2 uses
  %.not = icmp eq i32 %i.bj, -2                   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 100 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !5, !noundef !5
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !5, !align !13, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.as, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  call void @_RNvMNtCsileJQcQObtj_7hir_def10visibilityNtB2_10Visibility3min(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.bg, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.bk, ptr noundef nonnull %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.bo, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(12) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.bp = load i8, ptr %i.bg, align 4, !range !37, !noundef !5
  %.not24 = icmp eq i8 %i.bp, -1
  %. = select i1 %.not24, ptr %5, ptr %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bh, ptr noundef nonnull align 4 dereferenceable(12) %., i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bk, ptr noundef nonnull align 4 dereferenceable(12) %i.bh, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.bq = load i32, ptr %4, align 4, !range !10, !noundef !5 ; 4 uses
  %.not25 = icmp eq i32 %i.bq, -1
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !5, !noundef !5
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !5, !align !13, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ar, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  call void @_RNvMNtCsileJQcQObtj_7hir_def10visibilityNtB2_10Visibility3min(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.be, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.br, ptr noundef nonnull %i.bt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.bv, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(12) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.bw = load i8, ptr %i.be, align 4, !range !37, !noundef !5
  %.not26 = icmp eq i8 %i.bw, -1
  %.326 = select i1 %.not26, ptr %5, ptr %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bf, ptr noundef nonnull align 4 dereferenceable(12) %.326, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.br, ptr noundef nonnull align 4 dereferenceable(12) %i.bf, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 5 uses
  %i.by = load i32, ptr %i.bx, align 4, !range !10, !noundef !5 ; 2 uses
  %.not27 = icmp eq i32 %i.by, -1
  br i1 %.not27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !5, !noundef !5
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !5, !align !13, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aq, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  call void @_RNvMNtCsileJQcQObtj_7hir_def10visibilityNtB2_10Visibility3min(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.bd, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.bz, ptr noundef nonnull %i.cb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.cd, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(12) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.ce = load i8, ptr %i.bd, align 4, !range !37, !noundef !5
  %.not28 = icmp eq i8 %i.ce, -1
  br i1 %.not28, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.i
  %i.cf = load i32, ptr %6, align 4, !range !10, !noundef !5 ; 14 uses
  %i.cg = icmp eq i32 %i.cf, 0                    ; 6 uses
  br i1 %i.cg, label %bb.dp, label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.bd, i64 12, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bz, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  br label %bb.g

bb.j:                                             ; preds = %.critedge45, %bb.g
  %.sroa.20.0.copyload = phi i32 [ %.sroa.20.0.copyload.pre, %.critedge45 ], [ %i.bj, %bb.g ] ; 6 uses
  %.sroa.9.0.copyload = phi i32 [ %.sroa.9.0.copyload.pre, %.critedge45 ], [ %i.by, %bb.g ] ; 5 uses
  %.sroa.0166.0.copyload = phi i32 [ %.sroa.0166.0.copyload.pre, %.critedge45 ], [ %i.bq, %bb.g ] ; 6 uses
  %.sroa.0.0 = phi i1 [ %.sroa.0.7, %.critedge45 ], [ false, %bb.g ]
  %i.ch = call noundef nonnull align 8 ptr @_RNvXsd_NtCsileJQcQObtj_7hir_def7nameresNtB5_10ModulesMapINtNtNtCshzWfHUSfYae_4core3ops5index8IndexMutNtB7_10ModuleIdLtE9index_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) ; 13 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.ck = call noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) ; 5 uses
  store i32 %1, ptr %i.at, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 %2, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 7 uses
  store ptr %i.ck, ptr %i.cm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5168)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7170)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18182)
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5168, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5168.0..sroa_idx, i64 12, i1 false)
  %.sroa.7170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7170, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7170.0..sroa_idx, i64 28, i1 false)
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 4 ; 4 uses
  %.sroa.14180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.14180.0.copyload = load i32, ptr %.sroa.14180.0..sroa_idx, align 4 ; 4 uses
  %.sroa.15181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 60
  %.sroa.15181.0.copyload = load i32, ptr %.sroa.15181.0..sroa_idx, align 4 ; 2 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 4 ; 2 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 68
  %.sroa.17.0.copyload = load i32, ptr %.sroa.17.0..sroa_idx, align 4 ; 2 uses
  %.sroa.18182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.18182, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.18182.0..sroa_idx, i64 12, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1932)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %.not76.i = icmp ne i32 %.sroa.20.0.copyload, -2 ; 2 uses
  br i1 %.not76.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i32 %.sroa.20.0.copyload, ptr %i.ao, align 4, !noalias !1933
  %.sroa.22.84..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.22.84..sroa_idx, ptr noundef nonnull align 4 dereferenceable(40) %.sroa.22.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1934
  %i.cn = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cm)
          to label %bb.m unwind label %bb.cy, !noalias !1935 ; 3 uses

bb.l:                                             ; preds = %bb.ae, %bb.j
  %.sroa.0.0.i = phi i1 [ %.sroa.0.2.i, %bb.ae ], [ false, %bb.j ] ; 3 uses
  %.not72.i = icmp ne i32 %.sroa.0166.0.copyload, -1 ; 2 uses
  br i1 %.not72.i, label %bb.as, label %bb.at

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1934
  store ptr %i.cn, ptr %i.n, align 8, !noalias !1936
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 112
  %i.cp = invoke noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
          to label %bb.n unwind label %bb.o, !noalias !1937

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMNtNtCs3gqD4ldeioo_8indexmap5inner5entryINtNtNtB6_3map5entry5EntryNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1O_11ModuleDefIdNtNtB1O_10item_scope19ImportOrExternCrateEE3newB1O_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.an, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %i.ci, i64 noundef %i.cp, ptr noundef nonnull %i.cn)
          to label %bb.q unwind label %bb.cy, !noalias !1935

bb.o:                                             ; preds = %bb.m
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr nonnull %i.cn) #41
          to label %.thread277.i unwind label %bb.p, !noalias !1937

bb.p:                                             ; preds = %bb.o
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !1937
  unreachable

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1934
  %i.cs = load i64, ptr %i.an, align 8, !range !19, !noalias !1934, !noundef !5
  %i.ct = trunc nuw i64 %i.cs to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.cu, align 8, !noalias !1934 ; 5 uses
  %.sroa.4173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  br i1 %i.ct, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.4173.0.copyload.i = load ptr, ptr %.sroa.4173.0..sroa_idx.i, align 8, !noalias !1934 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1934
  %.not68.i = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %bb.ag, label %bb.af

bb.s:                                             ; preds = %bb.q
  %.sroa.4185.0.copyload.i = load i64, ptr %.sroa.4173.0..sroa_idx.i, align 8, !noalias !1934 ; 3 uses
  %.not.i = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %bb.ae, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = invoke noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapTNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtCs33K2ylI4knu_10hir_expand4name4NameEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6removeBO_EBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.cj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.at)
          to label %bb.u unwind label %bb.cy, !noalias !1935

bb.u:                                             ; preds = %bb.t
  br i1 %i.cv, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %bb.u
  %i.cw = load <2 x i32>, ptr %.sroa.22.84..sroa_idx, align 4, !noalias !1934
  %.sroa.6190.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %.sroa.6190.0.copyload.i = load i32, ptr %.sroa.6190.0..sroa_idx.i, align 4, !noalias !1934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ao, ptr noundef nonnull readonly align 4 dereferenceable(16) %6, i64 16, i1 false), !noalias !1938
  br i1 %.not.i, label %.noexc85.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ai, ptr noundef nonnull readonly align 4 dereferenceable(16) %6, i64 16, i1 false), !noalias !1938
end_hunk_3
begin_hunk_4_@_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector28push_res_and_update_glob_vis:bb.a
  br label %bb.cl

bb.cw:                                            ; preds = %bb.ci
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.gi = invoke noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapTNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtCs33K2ylI4knu_10hir_expand4name4NameEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6removeBO_EBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.at)
          to label %bb.df unwind label %bb.dn, !noalias !1935 ; 0 uses

bb.cx:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1934
  store i32 %1, ptr %i.v, align 8, !alias.scope !1967, !noalias !1934
  %i.gj = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 %2, ptr %i.gj, align 4, !alias.scope !1967, !noalias !1934
  %i.gk = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cm)
          to label %bb.cz unwind label %bb.dn, !noalias !1935

bb.cy:                                            ; preds = %bb.dg, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateE11map_or_elseNtBK_11ImportOrDefNCNvMs2_BK_NtBK_9ItemScope20push_res_with_imports_0NvYBI_INtNtB5_7convert4IntoB1T_E4intoEBM_.exit.i, %bb.co, %.noexc78.i, %bb.ck, %bb.ce, %bb.cb, %bb.bw, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCsileJQcQObtj_7hir_def10item_scope12ImportOrGlobE6map_orNtBK_11ImportOrDefNvYBI_INtNtB5_7convert4IntoB1G_E4intoEBM_.exit.i, %bb.bf, %.noexc82.i, %bb.bb, %bb.av, %bb.as, %bb.ao, %.invoke.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateE6map_orNtBK_11ImportOrDefNvYBI_INtNtB5_7convert4IntoB1N_E4intoEBM_.exit.i, %bb.ab, %.noexc87.i, %bb.t, %bb.n, %bb.k
  %lpad.thr_comm.split-lp311.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread277.i

bb.cz:                                            ; preds = %bb.cx
  %i.gl = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.gk, ptr %i.gl, align 8, !alias.scope !1967, !noalias !1934
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.gn = invoke noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapTNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtCs33K2ylI4knu_10hir_expand4name4NameEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gm, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.v)
          to label %bb.da unwind label %bb.dn, !noalias !1935 ; 0 uses

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1934
  %.sroa.13.12..sroa_idx234.i = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.go = load <2 x i32>, ptr %.sroa.13.12..sroa_idx234.i, align 4, !alias.scope !1932
  %.sroa.17.12..sroa_idx254.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.17.12.copyload255.i = load i32, ptr %.sroa.17.12..sroa_idx254.i, align 4, !alias.scope !1932
  br label %bb.db

bb.db:                                            ; preds = %bb.df, %bb.da
  %.sroa.17.0.i = phi i32 [ %.sroa.17.12.copyload255.i, %bb.da ], [ %.sroa.17.12.copyload257.i, %bb.df ]
  %i.gp = phi <2 x i32> [ %i.go, %bb.da ], [ %i.gr, %bb.df ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, ptr noundef nonnull readonly align 4 dereferenceable(16) %6, i64 16, i1 false), !noalias !1938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1934
  %.not.i157.i = icmp eq i32 %.sroa.14180.0.copyload, -1
  br i1 %.not.i157.i, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  call void @llvm.experimental.noalias.scope.decl(metadata !1969)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %.sroa.15181.0.copyload, ptr %i.gq, align 4, !alias.scope !1970, !noalias !1934
  %.sroa.5.4..sroa_idx2.i.i164.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %.sroa.16.0.copyload, ptr %.sroa.5.4..sroa_idx2.i.i164.i, align 4, !alias.scope !1970, !noalias !1934
  switch i32 %.sroa.14180.0.copyload, label %default.unreachable.i170.i [
    i32 0, label %_RNvXs1_NtCshzWfHUSfYae_4core7convertNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateINtB5_4IntoNtBA_11ImportOrDefE4intoBC_.exit.sink.split.i.i167.i
    i32 1, label %bb.dd
    i32 2, label %_RNvYNvYNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateINtNtCshzWfHUSfYae_4core7convert4IntoNtB7_11ImportOrDefE4intoINtNtNtB17_3ops8function6FnOnceTB5_EE9call_onceB9_.exit.i165.i
  ]

default.unreachable.i170.i:                       ; preds = %bb.dc
  unreachable

bb.dd:                                            ; preds = %bb.dc
  br label %_RNvXs1_NtCshzWfHUSfYae_4core7convertNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateINtB5_4IntoNtBA_11ImportOrDefE4intoBC_.exit.sink.split.i.i167.i

_RNvXs1_NtCshzWfHUSfYae_4core7convertNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateINtB5_4IntoNtBA_11ImportOrDefE4intoBC_.exit.sink.split.i.i167.i: ; preds = %bb.dd, %bb.dc
  %.sink.i.ph.i.i168.i = phi i8 [ 10, %bb.dd ], [ 11, %bb.dc ]
  %.sroa.6.4..sroa_idx4.i.i169.i = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %.sroa.17.0.copyload, ptr %.sroa.6.4..sroa_idx4.i.i169.i, align 4, !alias.scope !1970, !noalias !1934
  br label %_RNvYNvYNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateINtNtCshzWfHUSfYae_4core7convert4IntoNtB7_11ImportOrDefE4intoINtNtNtB17_3ops8function6FnOnceTB5_EE9call_onceB9_.exit.i165.i

_RNvYNvYNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateINtNtCshzWfHUSfYae_4core7convert4IntoNtB7_11ImportOrDefE4intoINtNtNtB17_3ops8function6FnOnceTB5_EE9call_onceB9_.exit.i165.i: ; preds = %_RNvXs1_NtCshzWfHUSfYae_4core7convertNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateINtB5_4IntoNtBA_11ImportOrDefE4intoBC_.exit.sink.split.i.i167.i, %bb.dc
  %.sink.i.i.i166.i = phi i8 [ 12, %bb.dc ], [ %.sink.i.ph.i.i168.i, %_RNvXs1_NtCshzWfHUSfYae_4core7convertNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateINtB5_4IntoNtBA_11ImportOrDefE4intoBC_.exit.sink.split.i.i167.i ]
  store i8 %.sink.i.i.i166.i, ptr %i.s, align 4, !alias.scope !1971, !noalias !1934
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateE11map_or_elseNtBK_11ImportOrDefNCNvMs2_BK_NtBK_9ItemScope20push_res_with_import0NvYBI_INtNtB5_7convert4IntoB1T_E4intoEBM_.exit.i

bb.de:                                            ; preds = %bb.db
  store i8 9, ptr %i.s, align 4, !alias.scope !1972, !noalias !1934
  %.sroa.4.i.i156.i.sroa.3.0..sroa.4.0..sroa_idx.i.i172.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %.sroa.9.0.copyload, ptr %.sroa.4.i.i156.i.sroa.3.0..sroa.4.0..sroa_idx.i.i172.i.sroa_idx, align 4, !noalias !1973
  %.sroa.4.i.i156.i.sroa.4.0..sroa.4.0..sroa_idx.i.i172.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sroa.14.0.copyload, ptr %.sroa.4.i.i156.i.sroa.4.0..sroa.4.0..sroa_idx.i.i172.i.sroa_idx, align 4, !noalias !1973
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateE11map_or_elseNtBK_11ImportOrDefNCNvMs2_BK_NtBK_9ItemScope20push_res_with_import0NvYBI_INtNtB5_7convert4IntoB1T_E4intoEBM_.exit.i

bb.df:                                            ; preds = %bb.cw
  %.sroa.13.12..sroa_idx236.i = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.gr = load <2 x i32>, ptr %.sroa.13.12..sroa_idx236.i, align 4, !alias.scope !1932 ; 2 uses
  %.sroa.17.12..sroa_idx256.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.17.12.copyload257.i = load i32, ptr %.sroa.17.12..sroa_idx256.i, align 4, !alias.scope !1932 ; 2 uses
  br i1 %.not74.i, label %bb.dg, label %bb.db

bb.dg:                                            ; preds = %bb.dh, %bb.df
  %.sroa.17.1.i = phi i32 [ %.sroa.17.0.i, %bb.dh ], [ %.sroa.17.12.copyload257.i, %bb.df ]
  %i.gs = phi <2 x i32> [ %i.gp, %bb.dh ], [ %i.gr, %bb.df ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0205.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4206.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1934
  store i32 %.sroa.9.0.copyload, ptr %i.r, align 4, !noalias !1933
  %.sroa.14.44..sroa_idx177 = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i64 %.sroa.14.0.copyload, ptr %.sroa.14.44..sroa_idx177, align 4, !noalias !1933
  %.sroa.7220.0..sroa_idx223.i = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 %i.cf, ptr %.sroa.7220.0..sroa_idx223.i, align 4, !noalias !1934
  %.sroa.13.0..sroa_idx230.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x i32> %i.gs, ptr %.sroa.13.0..sroa_idx230.i, align 4, !noalias !1934
  %.sroa.17.0..sroa_idx250.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i32 %.sroa.17.1.i, ptr %.sroa.17.0..sroa_idx250.i, align 4, !noalias !1934
  %.sroa.19.0..sroa_idx259.i = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx259.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.18182, i64 12, i1 false), !noalias !1933
  %i.gt = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1t_7MacroIdNtNtB1t_10item_scope19ImportOrExternCrateEE13insert_uniqueB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.sroa.0205.0.copyload.i, i64 noundef %.sroa.6207.0.copyload.i, ptr noundef nonnull %.sroa.4206.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(40) %i.r)
          to label %bb.di unwind label %bb.cy, !noalias !1935 ; 0 uses

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateE11map_or_elseNtBK_11ImportOrDefNCNvMs2_BK_NtBK_9ItemScope20push_res_with_import0NvYBI_INtNtB5_7convert4IntoB1T_E4intoEBM_.exit.i: ; preds = %bb.de, %_RNvYNvYNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateINtNtCshzWfHUSfYae_4core7convert4IntoNtB7_11ImportOrDefE4intoINtNtNtB17_3ops8function6FnOnceTB5_EE9call_onceB9_.exit.i165.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ch, i64 368
  invoke void @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBP_11ImportOrDefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertBR_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gu, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.s)
          to label %bb.dh unwind label %bb.dn, !noalias !1935

bb.dh:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateE11map_or_elseNtBK_11ImportOrDefNCNvMs2_BK_NtBK_9ItemScope20push_res_with_import0NvYBI_INtNtB5_7convert4IntoB1T_E4intoEBM_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1934
  br label %bb.dg

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1934
  br label %bb.cl

bb.dj:                                            ; preds = %bb.cl, %bb.cc
  %.sroa.0.6.i = phi i1 [ %.sroa.0.3.i, %bb.cc ], [ %.sroa.0.5.i, %bb.cl ] ; 2 uses
  %i.gv = ptrtoint ptr %i.ck to i64
  %i.gw = and i64 %i.gv, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.gw, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMs2_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope20push_res_with_import.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.gx = getelementptr i8, ptr %i.ck, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gx) ]
  %i.gy = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.gx), !noalias !1935
  %i.gz = sub nsw i64 0, %i.gy
  %i.ha = getelementptr inbounds i8, ptr %i.gx, i64 %i.gz ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1934
  store ptr %i.ha, ptr %i.k, align 8, !noalias !1934
  %i.hb = load atomic i64, ptr %i.ha acquire, align 8, !noalias !1935
  %i.hc = icmp eq i64 %i.hb, 2
  br i1 %i.hc, label %bb.dl, label %bb.dm, !prof !6

bb.dl:                                            ; preds = %bb.dk
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k), !noalias !1935
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1934
  store ptr %i.ha, ptr %i.j, align 8, !noalias !1934
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j), !noalias !1935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1934
  br label %_RNvMs2_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope20push_res_with_import.exit

bb.dn:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateE11map_or_elseNtBK_11ImportOrDefNCNvMs2_BK_NtBK_9ItemScope20push_res_with_import0NvYBI_INtNtB5_7convert4IntoB1T_E4intoEBM_.exit.i, %bb.cz, %bb.cx, %bb.cw
  %lpad.thr_comm310.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4206.0.copyload.i) ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs3gqD4ldeioo_8indexmap5inner5entry11VacantEntryNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB2d_7MacroIdNtNtB2d_10item_scope19ImportOrExternCrateEEEB2d_(ptr nonnull %.sroa.4206.0.copyload.i) #41
          to label %.thread277.i unwind label %bb.ar, !noalias !1935

bb.do:                                            ; preds = %bb.cc
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ch, i64 224
  %i.he = call noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCs33K2ylI4knu_10hir_expand4name4NameuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.hd, ptr noundef nonnull %i.ck), !noalias !1935
  %not..i = xor i1 %i.he, true
  %spec.select.i = or i1 %.sroa.0.3.i, %not..i
  br label %_RNvMs2_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope20push_res_with_import.exit

common.resume:                                    ; preds = %bb.fv, %bb.eu, %bb.dv, %.thread277.i
  %common.resume.op = phi { ptr, i32 } [ %i.mc, %bb.eu ], [ %.pn276.i, %.thread277.i ], [ %i.ht, %bb.dv ], [ %i.qf, %bb.fv ]
  resume { ptr, i32 } %common.resume.op

.thread277.i:                                     ; preds = %bb.dn, %bb.cy, %bb.cf, %bb.ca, %bb.aw, %bb.aq, %bb.o
  %.pn276.i = phi { ptr, i32 } [ %i.fo, %bb.cf ], [ %lpad.thr_comm310.i, %bb.dn ], [ %i.ec, %bb.aw ], [ %i.cq, %bb.o ], [ %lpad.thr_comm.split-lp311.i, %bb.cy ], [ %lpad.thr_comm292.i, %bb.aq ], [ %lpad.thr_comm300.i, %bb.ca ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr nonnull %i.ck) #41
          to label %common.resume unwind label %bb.ar, !noalias !1935

_RNvMs2_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope20push_res_with_import.exit: ; preds = %bb.dj, %bb.dm, %bb.do
  %.sroa.0.7.i = phi i1 [ %spec.select.i, %bb.do ], [ %.sroa.0.6.i, %bb.dj ], [ %.sroa.0.6.i, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5168)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7170)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18182)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.hf = or i1 %.sroa.0.0, %.sroa.0.7.i
  ret i1 %i.hf

bb.dp:                                            ; preds = %bb.g
  %i.hg = tail call noundef nonnull align 8 ptr @_RNvXs1_NtCsileJQcQObtj_7hir_def7nameresNtB5_6DefMapINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB7_10ModuleIdLtE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 56
  call void @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope3get(ptr noalias nofree noundef nonnull sret([128 x i8]) align 4 captures(none) dereferenceable(128) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.hh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3)
  br i1 %.not, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.bc, ptr noundef nonnull align 4 dereferenceable(44) %i.bi, i64 44, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.aw, i64 84 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !range !40, !noundef !5
  %.not30 = icmp eq i32 %i.hj, -2
  br i1 %.not30, label %bb.dt, label %bb.ds

bb.dr:                                            ; preds = %.critedge, %bb.dt, %bb.dp
  %i.hk = phi i32 [ %.pre, %.critedge ], [ %i.bq, %bb.dt ], [ %i.bq, %bb.dp ]
  %.sroa.0.1 = phi i1 [ %.sroa.0.3, %.critedge ], [ false, %bb.dt ], [ false, %bb.dp ] ; 5 uses
  %.not33 = icmp eq i32 %i.hk, -1
  br i1 %.not33, label %bb.er, label %bb.eq

bb.ds:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.bb, ptr noundef nonnull align 4 dereferenceable(44) %i.hi, i64 44, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bc, i64 28 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bb, i64 28 ; 2 uses
  %i.hn = call fastcc noundef zeroext i1 @_RNvXs7P_CsileJQcQObtj_7hir_defNtB6_11ModuleDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.hl, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.hm) #40
  br i1 %i.hn, label %bb.du, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread197

bb.dt:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.dr

bb.du:                                            ; preds = %bb.ds
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.hp = tail call noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1974
  store i32 %1, ptr %i.i, align 8, !noalias !1974
  %i.hq = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %2, ptr %i.hq, align 4, !noalias !1974
  %i.hr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.hp, ptr %i.hr, align 8, !noalias !1974
  %i.hs = invoke noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapTNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtCs33K2ylI4knu_10hir_expand4name4NameEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyBO_EBR_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ho, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %bb.dw unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtCs33K2ylI4knu_10hir_expand4name4NameEEBE_(ptr nonnull %i.hp) #41
          to label %common.resume unwind label %bb.ea

bb.dw:                                            ; preds = %bb.du
  %i.hu = ptrtoint ptr %i.hp to i64
  %i.hv = and i64 %i.hu, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvMs0_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_16PerNsGlobImports13contains_type.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.hw = getelementptr i8, ptr %i.hp, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hw) ]
  %i.hx = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.hw)
  %i.hy = sub nsw i64 0, %i.hx
  %i.hz = getelementptr inbounds i8, ptr %i.hw, i64 %i.hy ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1974
  store ptr %i.hz, ptr %i.h, align 8, !noalias !1974
  %i.ia = load atomic i64, ptr %i.hz acquire, align 8, !noalias !1974
  %i.ib = icmp eq i64 %i.ia, 2
  br i1 %i.ib, label %bb.dy, label %bb.dz, !prof !6

bb.dy:                                            ; preds = %bb.dx
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1974
  store ptr %i.hz, ptr %i.g, align 8, !noalias !1974
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1974
  br label %_RNvMs0_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_16PerNsGlobImports13contains_type.exit

bb.ea:                                            ; preds = %bb.dv
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

_RNvMs0_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_16PerNsGlobImports13contains_type.exit: ; preds = %bb.dw, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1974
  br i1 %i.hs, label %bb.eb, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread197

_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread197: ; preds = %bb.ec, %.split, %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, %_RNvMs0_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_16PerNsGlobImports13contains_type.exit, %bb.ds, %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit48.thread
  %i.id = call fastcc noundef zeroext i1 @_RNvXs7P_CsileJQcQObtj_7hir_defNtB6_11ModuleDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.hl, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.hm) #40
  %i.ie = load i32, ptr %i.bb, align 4, !range !10 ; 2 uses
  %.not32 = icmp eq i32 %i.ie, -1
  %or.cond = select i1 %i.id, i1 true, i1 %.not32
  br i1 %or.cond, label %.critedge, label %bb.ej

bb.eb:                                            ; preds = %_RNvMs0_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_16PerNsGlobImports13contains_type.exit
  %i.if = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !1975)
  call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  %i.ih = load i8, ptr %i.if, align 4, !range !23, !alias.scope !1975, !noundef !5 ; 2 uses
  %i.ii = load i8, ptr %i.ig, align 4, !range !23, !alias.scope !1976, !noundef !5
  %i.ij = icmp eq i8 %i.ih, %i.ii
  br i1 %i.ij, label %bb.ec, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.ec:                                            ; preds = %bb.eb
  switch i8 %i.ih, label %default.unreachable [
    i8 0, label %bb.ed
    i8 1, label %bb.ef
    i8 2, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread197
  ]

bb.ed:                                            ; preds = %bb.ec
  %i.ik = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.il = load i32, ptr %i.ik, align 4, !alias.scope !1975, !noundef !5
  %i.im = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.in = load i32, ptr %i.im, align 4, !alias.scope !1976, !noundef !5
  %i.io = icmp eq i32 %i.il, %i.in
  br i1 %i.io, label %bb.ee, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.ee:                                            ; preds = %bb.ed
  %i.ip = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.iq = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.ir = load i32, ptr %i.iq, align 4, !range !11, !alias.scope !1975, !noundef !5
  %i.is = load i32, ptr %i.ip, align 4, !range !11, !alias.scope !1976, !noundef !5
  %i.it = icmp eq i32 %i.ir, %i.is
  br i1 %i.it, label %.split, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.ee
  %i.iu = getelementptr inbounds nuw i8, ptr %i.bc, i64 17
  %i.iv = load i8, ptr %i.iu, align 1, !range !8, !alias.scope !1975, !noundef !5
  %i.iw = getelementptr inbounds nuw i8, ptr %i.bb, i64 17
  %i.ix = load i8, ptr %i.iw, align 1, !range !8, !alias.scope !1976, !noundef !5
  %i.iy = icmp eq i8 %i.iv, %i.ix
  br i1 %i.iy, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread197, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.ef:                                            ; preds = %bb.ec
  %i.iz = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.ja = load i32, ptr %i.iz, align 4, !alias.scope !1975, !noundef !5
  %i.jb = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.jc = load i32, ptr %i.jb, align 4, !alias.scope !1976, !noundef !5
  %i.jd = icmp eq i32 %i.ja, %i.jc
  br i1 %i.jd, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.ef
  %i.je = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.jf = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.jg = load i32, ptr %i.jf, align 4, !range !11, !alias.scope !1975, !noundef !5
  %i.jh = load i32, ptr %i.je, align 4, !range !11, !alias.scope !1976, !noundef !5
  %i.ji = icmp eq i32 %i.jg, %i.jh
  br i1 %i.ji, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread197, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.ed, %bb.ef, %bb.ee, %bb.eb, %.split, %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %i.jj = getelementptr inbounds nuw i8, ptr %4, i64 100 ; 3 uses
  %.sroa.0.0.copyload327 = load i8, ptr %i.jj, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 101
  %.sroa.2.0.copyload = load i8, ptr %.sroa.2.0..sroa_idx, align 1
  %.sroa.3328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 104
  %.sroa.3328.0.copyload = load i32, ptr %.sroa.3328.0..sroa_idx, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx329 = getelementptr inbounds nuw i8, ptr %4, i64 108
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx329, align 4 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.jl = load ptr, ptr %i.jk, align 8, !nonnull !5, !noundef !5
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.jn = load ptr, ptr %i.jm, align 8, !nonnull !5, !align !13, !noundef !5
  %i.jo = getelementptr inbounds nuw i8, ptr %i.aw, i64 100
  call void @_RNvMNtCsileJQcQObtj_7hir_def10visibilityNtB2_10Visibility3max(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ba, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.jj, ptr noundef nonnull %i.jl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.jn, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.jo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %0)
  %i.jp = load i8, ptr %i.ba, align 4, !range !37, !noundef !5 ; 3 uses
  %.not31 = icmp ne i8 %i.jp, -1
  %i.jq = icmp eq i8 %i.jp, %.sroa.0.0.copyload327
  %or.cond293 = select i1 %.not31, i1 %i.jq, i1 false
  br i1 %or.cond293, label %bb.eg, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit48.thread

bb.eg:                                            ; preds = %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread
  switch i8 %i.jp, label %default.unreachable [
    i8 0, label %bb.eh
    i8 1, label %bb.ei
    i8 2, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit48.thread200
  ]

bb.eh:                                            ; preds = %bb.eg
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.js = load i32, ptr %i.jr, align 4, !alias.scope !1977, !noundef !5
  %i.jt = icmp eq i32 %i.js, %.sroa.4.0.copyload
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.jv = load i32, ptr %i.ju, align 4, !range !11
  %i.jw = icmp eq i32 %i.jv, %.sroa.3328.0.copyload
  %or.cond241 = select i1 %i.jt, i1 %i.jw, i1 false
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.jy = load i8, ptr %i.jx, align 1, !range !8
  %i.jz = icmp eq i8 %i.jy, %.sroa.2.0.copyload
  %or.cond244 = select i1 %or.cond241, i1 %i.jz, i1 false
  br i1 %or.cond244, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit48.thread200, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit48.thread

bb.ei:                                            ; preds = %bb.eg
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.kb = load i32, ptr %i.ka, align 4, !alias.scope !1977, !noundef !5
  %i.kc = icmp eq i32 %i.kb, %.sroa.4.0.copyload
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.ke = load i32, ptr %i.kd, align 4, !range !11
  %i.kf = icmp eq i32 %i.ke, %.sroa.3328.0.copyload
  %or.cond247 = select i1 %i.kc, i1 %i.kf, i1 false
  br i1 %or.cond247, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit48.thread200, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit48.thread

_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit48.thread: ; preds = %bb.eh, %bb.ei, %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread197

end_hunk_4
begin_hunk_5_@_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector28push_res_and_update_glob_vis:bb.a
_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit72.thread: ; preds = %bb.fp
  %.not41.old.old.old = icmp eq i32 %.sroa.13140.0.copyload, -1
  br i1 %.not41.old.old.old, label %.critedge45, label %bb.gi

.thread:                                          ; preds = %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit78.thread, %_RNvMs0_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_16PerNsGlobImports14contains_macro.exit, %bb.gc, %bb.gd, %bb.ge
  switch i32 %i.lt, label %default.unreachable [
    i32 0, label %.thread.thread
    i32 1, label %.thread.thread323
    i32 2, label %.thread.thread324
  ]

.thread.thread:                                   ; preds = %bb.fr, %.thread
  %i.qp = icmp eq i32 %.sroa.7106.0.copyload, %.sroa.5132.0.copyload
  %or.cond266 = select i1 %i.py, i1 %i.qp, i1 false
  %.not41.old.old = icmp eq i32 %.sroa.13140.0.copyload, -1
  %or.cond283 = select i1 %or.cond266, i1 true, i1 %.not41.old.old
  br i1 %or.cond283, label %.critedge45, label %bb.gi

.thread.thread323:                                ; preds = %bb.fs, %.thread
  %i.qq = icmp eq i32 %.sroa.7106.0.copyload, %.sroa.5132.0.copyload
  %or.cond267 = select i1 %i.py, i1 %i.qq, i1 false
  %.not41.old = icmp eq i32 %.sroa.13140.0.copyload, -1
  %or.cond282 = select i1 %or.cond267, i1 true, i1 %.not41.old
  br i1 %or.cond282, label %.critedge45, label %bb.gi

.thread.thread324:                                ; preds = %bb.ft, %.thread
  %i.qr = icmp eq i32 %.sroa.7106.0.copyload, %.sroa.5132.0.copyload
  %or.cond268 = select i1 %i.py, i1 %i.qr, i1 false
  %.not41 = icmp eq i32 %.sroa.13140.0.copyload, -1
  %or.cond281 = select i1 %or.cond268, i1 true, i1 %.not41
  br i1 %or.cond281, label %.critedge45, label %bb.gi

bb.gb:                                            ; preds = %_RNvMs0_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_16PerNsGlobImports14contains_macro.exit
  %i.qs = icmp eq i8 %.sroa.15117.0.copyload, %.sroa.21148.0.copyload
  br i1 %i.qs, label %bb.gc, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit75.thread

bb.gc:                                            ; preds = %bb.gb
  switch i8 %.sroa.15117.0.copyload, label %default.unreachable2.i74 [
    i8 0, label %bb.gd
    i8 1, label %bb.ge
    i8 2, label %.thread
  ]

default.unreachable2.i74:                         ; preds = %bb.gc
  unreachable

bb.gd:                                            ; preds = %bb.gc
  %i.qt = icmp eq i32 %.sroa.21.0.copyload, %.sroa.26.0.copyload
  %i.qu = icmp eq i32 %.sroa.19123.0.copyload, %.sroa.24149.0.copyload
  %or.cond269 = select i1 %i.qt, i1 %i.qu, i1 false
  %i.qv = icmp eq i8 %.sroa.18.0.copyload, %.sroa.23.0.copyload
  %or.cond270 = select i1 %or.cond269, i1 %i.qv, i1 false
  br i1 %or.cond270, label %.thread, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit75.thread

bb.ge:                                            ; preds = %bb.gc
  %i.qw = icmp eq i32 %.sroa.21.0.copyload, %.sroa.26.0.copyload
  %i.qx = icmp eq i32 %.sroa.19123.0.copyload, %.sroa.24149.0.copyload
  %or.cond271 = select i1 %i.qw, i1 %i.qx, i1 false
  br i1 %or.cond271, label %.thread, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit75.thread

_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit75.thread: ; preds = %bb.gd, %bb.ge, %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i8 %.sroa.15117.0.copyload, ptr %i.ap, align 4
  %.sroa.18.28..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store i8 %.sroa.18.0.copyload, ptr %.sroa.18.28..sroa_idx, align 1
  %.sroa.19.28..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store i16 %.sroa.19.0.copyload, ptr %.sroa.19.28..sroa_idx, align 2
  %.sroa.19123.28..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 %.sroa.19123.0.copyload, ptr %.sroa.19123.28..sroa_idx, align 4
  %.sroa.21.28..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 %.sroa.21.0.copyload, ptr %.sroa.21.28..sroa_idx, align 4
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.qz = load ptr, ptr %i.qy, align 8, !nonnull !5, !noundef !5
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.rb = load ptr, ptr %i.ra, align 8, !nonnull !5, !align !13, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i8 %.sroa.21148.0.copyload, ptr %i.au, align 4
  %.sroa.23.28..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 %.sroa.23.0.copyload, ptr %.sroa.23.28..sroa_idx, align 1
  %.sroa.24.28..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store i16 %.sroa.24.0.copyload, ptr %.sroa.24.28..sroa_idx, align 2
  %.sroa.24149.28..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %.sroa.24149.0.copyload, ptr %.sroa.24149.28..sroa_idx, align 4
  %.sroa.26.28..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %.sroa.26.0.copyload, ptr %.sroa.26.28..sroa_idx, align 4
  call void @_RNvMNtCsileJQcQObtj_7hir_def10visibilityNtB2_10Visibility3max(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.av, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.ap, ptr noundef nonnull %i.qz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.rb, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.rc = load i8, ptr %i.av, align 4, !range !37, !noundef !5 ; 2 uses
  %.not40 = icmp ne i8 %i.rc, -1
  %i.rd = icmp eq i8 %i.rc, %.sroa.15117.0.copyload
  %or.cond295 = select i1 %.not40, i1 %i.rd, i1 false
  br i1 %or.cond295, label %bb.gf, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit78.thread

bb.gf:                                            ; preds = %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit75.thread
  switch i8 %.sroa.15117.0.copyload, label %default.unreachable2.i77 [
    i8 0, label %bb.gg
    i8 1, label %bb.gh
    i8 2, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit78.thread235
  ]

default.unreachable2.i77:                         ; preds = %bb.gf
  unreachable

bb.gg:                                            ; preds = %bb.gf
  %i.re = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.rf = load i32, ptr %i.re, align 4, !alias.scope !2007, !noundef !5
  %i.rg = icmp eq i32 %i.rf, %.sroa.21.0.copyload
  %i.rh = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ri = load i32, ptr %i.rh, align 4, !range !11
  %i.rj = icmp eq i32 %i.ri, %.sroa.19123.0.copyload
  %or.cond274 = select i1 %i.rg, i1 %i.rj, i1 false
  %i.rk = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.rl = load i8, ptr %i.rk, align 1, !range !8
  %i.rm = icmp eq i8 %i.rl, %.sroa.18.0.copyload
  %or.cond277 = select i1 %or.cond274, i1 %i.rm, i1 false
  br i1 %or.cond277, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit78.thread235, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit78.thread

bb.gh:                                            ; preds = %bb.gf
  %i.rn = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ro = load i32, ptr %i.rn, align 4, !alias.scope !2007, !noundef !5
  %i.rp = icmp eq i32 %i.ro, %.sroa.21.0.copyload
  %i.rq = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.rr = load i32, ptr %i.rq, align 4, !range !11
  %i.rs = icmp eq i32 %i.rr, %.sroa.19123.0.copyload
  %or.cond280 = select i1 %i.rp, i1 %i.rs, i1 false
  br i1 %or.cond280, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit78.thread235, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit78.thread

_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit78.thread: ; preds = %bb.gg, %bb.gh, %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit75.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %.thread

_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit78.thread235: ; preds = %bb.gh, %bb.gg, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  store i32 -1, ptr %i.bx, align 4
  %i.rt = call noundef nonnull align 8 ptr @_RNvXsd_NtCsileJQcQObtj_7hir_def7nameresNtB5_10ModulesMapINtNtNtCshzWfHUSfYae_4core3ops5index8IndexMutNtB7_10ModuleIdLtE9index_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152)
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 56
  call fastcc void @_RNvMs3_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope24update_visibility_macros(ptr noalias nofree noundef align 8 dereferenceable(488) %i.ru, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.ap)
  br label %.critedge45

bb.gi:                                            ; preds = %.thread.thread, %.thread.thread323, %.thread.thread324, %_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit72.thread
  %i.rv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.rw = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.rx = load i32, ptr %i.rw, align 4, !range !11
  %i.ry = load <2 x i32>, ptr %i.rv, align 4
  %i.rz = insertelement <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, i32 %i.rx, i64 1
  %i.sa = shufflevector <2 x i32> %i.ry, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.sb = shufflevector <4 x i32> %i.rz, <4 x i32> %i.sa, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.sc = icmp eq <4 x i32> %i.pw, %i.sb
  %i.sd = freeze <4 x i1> %i.sc
  %i.se = bitcast <4 x i1> %i.sd to i4
  %i.sf = icmp eq i4 %i.se, -1
  br i1 %i.sf, label %bb.gj, label %.critedge45

bb.gj:                                            ; preds = %bb.gi
  store i32 -1, ptr %i.bx, align 4
  %i.sg = call noundef nonnull align 8 ptr @_RNvXsd_NtCsileJQcQObtj_7hir_def7nameresNtB5_10ModulesMapINtNtNtCshzWfHUSfYae_4core3ops5index8IndexMutNtB7_10ModuleIdLtE9index_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  call void @llvm.experimental.noalias.scope.decl(metadata !2009)
  call void @llvm.experimental.noalias.scope.decl(metadata !2010)
  call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  call void @llvm.experimental.noalias.scope.decl(metadata !2012)
  call void @llvm.experimental.noalias.scope.decl(metadata !2013)
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 184
  %i.si = load i64, ptr %i.sh, align 8, !alias.scope !2014, !noundef !5 ; 3 uses
  switch i64 %i.si, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i.i [
    i64 0, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit.thread.i
    i64 1, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i
  ]

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i.i: ; preds = %bb.gj
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sg, i64 168
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sg, i64 224
  %i.sl = call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.sk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3), !noalias !2015
  %i.sm = call { i64, i64 } @_RINvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB5_4CoreNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1u_7MacroIdNtNtB1u_10item_scope19ImportOrExternCrateEE12get_index_ofBL_EB1u_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.sj, i64 noundef %i.sl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3), !noalias !2015 ; 2 uses
  %i.sn = extractvalue { i64, i64 } %i.sm, 0
  %i.so = extractvalue { i64, i64 } %i.sm, 1      ; 3 uses
  %i.sp = trunc nuw i64 %i.sn to i1
  br i1 %i.sp, label %bb.gk, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit.thread.i

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i: ; preds = %bb.gj
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sg, i64 176
  %i.sr = load ptr, ptr %i.sq, align 8, !alias.scope !2014, !nonnull !5, !noundef !5 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 40
  %.val.i.i.i82 = load ptr, ptr %3, align 8, !alias.scope !2016, !nonnull !5, !noundef !5
  %.val2.i.i.i83 = load ptr, ptr %i.ss, align 8, !noalias !2017, !nonnull !5, !noundef !5
  %i.st = icmp eq ptr %.val.i.i.i82, %.val2.i.i.i83
  br i1 %i.st, label %_RNvMs3_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope17update_def_macros.exit, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit.thread.i

bb.gk:                                            ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i.i
  %i.su = icmp ult i64 %i.so, %i.si
  br i1 %i.su, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.so, i64 noundef %i.si, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #39, !noalias !2015
  unreachable

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit.i: ; preds = %bb.gk
  %.phi.trans.insert.i.i84 = getelementptr inbounds nuw i8, ptr %i.sg, i64 176
  %.pre.i.i85 = load ptr, ptr %.phi.trans.insert.i.i84, align 8, !alias.scope !2018 ; 2 uses
  %.not.i86 = icmp eq ptr %.pre.i.i85, null
  br i1 %.not.i86, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit.thread.i, label %_RNvMs3_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope17update_def_macros.exit, !prof !41

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit.thread.i: ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i.i, %bb.gj
  call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @228, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #39, !noalias !2015
  unreachable

_RNvMs3_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope17update_def_macros.exit: ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit.i
  %.sroa.5.0.i911.i9.i = phi i64 [ %i.so, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit.i ], [ 0, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i ]
  %i.sv = phi ptr [ %.pre.i.i85, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit.i ], [ %i.sr, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i ]
  %i.sw = getelementptr inbounds nuw [56 x i8], ptr %i.sv, i64 %.sroa.5.0.i911.i9.i ; 8 uses
  store i32 %i.lt, ptr %i.sw, align 4, !noalias !2019
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sw, i64 4
  store i32 %.sroa.7106.0.copyload, ptr %.sroa.4.0..sroa_idx, align 4, !noalias !2019
  %.sroa.5160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  store i32 %.sroa.13.0.copyload, ptr %.sroa.5160.0..sroa_idx, align 4, !noalias !2019
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 28
  store i8 %.sroa.15117.0.copyload, ptr %i.sx, align 4, !noalias !2020
  %.sroa.4162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sw, i64 29
  store i8 %.sroa.18.0.copyload, ptr %.sroa.4162.0..sroa_idx, align 1, !noalias !2020
  %.sroa.5163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sw, i64 30
  store i16 %.sroa.19.0.copyload, ptr %.sroa.5163.0..sroa_idx, align 2, !noalias !2020
  %.sroa.6164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sw, i64 32
  store i32 %.sroa.19123.0.copyload, ptr %.sroa.6164.0..sroa_idx, align 4, !noalias !2020
  %.sroa.7165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sw, i64 36
  store i32 %.sroa.21.0.copyload, ptr %.sroa.7165.0..sroa_idx, align 4, !noalias !2020
  br label %.critedge45
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12DefCollector31import_macros_from_extern_crate(ptr noalias nofree noundef nonnull align 8 dereferenceable(760) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %3, i32 noundef range(i32 1, 0) %4, i32 %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 8                ; 4 uses
  %i.d = alloca [20 x i8], align 4                ; 6 uses
  %i.e = alloca [20 x i8], align 4                ; 3 uses
  %i.f = alloca [20 x i8], align 4                ; 7 uses
  %i.g = alloca [20 x i8], align 4                ; 3 uses
  %i.h = alloca [128 x i8], align 4               ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.o = invoke noundef nonnull align 4 ptr @_RNvNtCsileJQcQObtj_7hir_def7nameres19crate_local_def_map(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.n, i32 noundef range(i32 1, 0) %1, i32 noundef %2)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.p = load i32, ptr %i.o, align 4, !range !11, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !noundef !5
  %i.s = invoke noundef nonnull align 8 ptr @_RINvMs8_NvNtCsileJQcQObtj_7hir_def7nameres1__NtB8_10DefMapPair7def_mapDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EBa_(i32 noundef %i.p, i32 noundef %i.r, ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.n)
          to label %_RNvNtCsileJQcQObtj_7hir_def7nameres13crate_def_map.exit unwind label %.loopexit.split-lp ; 3 uses

.loopexit.split-lp:                               ; preds = %.noexc, %bb.a, %_RNvNtCsileJQcQObtj_7hir_def7nameres13crate_def_map.exit
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load i64, ptr %3, align 8, !range !35
  %i.t = icmp eq i64 %.pre, -1
  br i1 %i.t, label %.thread, label %bb.p

_RNvNtCsileJQcQObtj_7hir_def7nameres13crate_def_map.exit: ; preds = %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.v = load i32, ptr %i.u, align 8, !range !11, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 92
  %i.x = load i32, ptr %i.w, align 4, !noundef !5
  %i.y = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCsileJQcQObtj_7hir_def7nameresNtB5_6DefMapINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB7_10ModuleIdLtE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.s, i32 noundef %i.v, i32 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154)
          to label %bb.b unwind label %.loopexit.split-lp ; 3 uses

bb.b:                                             ; preds = %_RNvNtCsileJQcQObtj_7hir_def7nameres13crate_def_map.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load i64, ptr %3, align 8, !range !35, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.aa, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 1152921504606846976
  tail call void @llvm.assume(i1 %i.af)
  %.idx = shl nuw nsw i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.ac, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.aa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store ptr %i.ag, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs33K2ylI4knu_10hir_expand4name4NameEECsileJQcQObtj_7hir_def.exit28, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.4.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.an = getelementptr i8, ptr %i.y, i64 176
  %.val20 = load ptr, ptr %i.an, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.y, i64 184
  %.val21 = load i64, ptr %i.ao, align 8, !noundef !5 ; 2 uses
  %.idx57 = mul nuw nsw i64 %.val21, 56
  %i.ap = getelementptr inbounds nuw i8, ptr %.val20, i64 %.idx57
  %i.aq = icmp eq i64 %.val21, 0
  br i1 %i.aq, label %._crit_edge, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs33K2ylI4knu_10hir_expand4name4NameEECsileJQcQObtj_7hir_def.exit28
  ret void

bb.e:                                             ; preds = %.lr.ph56, %bb.e
  %.sroa.035.055 = phi ptr [ %.val20, %.lr.ph56 ], [ %i.au, %bb.e ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.035.055, i64 56 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.035.055, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.035.055, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.aw = tail call noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 8 dereferenceable(12) %i.c, i64 12, i1 false)
  store i32 %4, ptr %i.ar, align 4
  store i32 %5, ptr %i.as, align 4
  call void @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1u_13ExternCrateIdEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertB1u_(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = icmp eq ptr %i.au, %i.ap
  br i1 %i.ax, label %._crit_edge, label %bb.e

bb.f:                                             ; preds = %bb.h, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.n ], [ %i.bb, %bb.h ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %.thread unwind label %bb.o

bb.g:                                             ; preds = %.lr.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit
  %i.ay = phi ptr [ %i.ac, %.lr.ph ], [ %i.bl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.az, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2025
  %i.ba = load ptr, ptr %i.ay, align 8, !noalias !2025, !nonnull !5, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.ba, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope3get(ptr noalias nofree noundef nonnull sret([128 x i8]) align 4 captures(none) dereferenceable(128) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %_RNvMNtCsileJQcQObtj_7hir_def6per_nsNtB2_5PerNs11take_macros.exit unwind label %bb.n

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs33K2ylI4knu_10hir_expand4name4NameEECsileJQcQObtj_7hir_def.exit28: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit, %bb.c
  call void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %._crit_edge

bb.h:                                             ; preds = %bb.k, %bb.l, %.noexc30, %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

_RNvMNtCsileJQcQObtj_7hir_def6per_nsNtB2_5PerNs11take_macros.exit: ; preds = %bb.g
  %.val22 = load i32, ptr %i.ai, align 4          ; 2 uses
  %.val23 = load i64, ptr %i.aj, align 4
  %.not.i = icmp eq i32 %.val22, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvMNtCsileJQcQObtj_7hir_def6per_nsNtB2_5PerNs11take_macros.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %.val22, ptr %i.f, align 4
  store i64 %.val23, ptr %.sroa.4.0..sroa_idx34, align 4
  store i32 %4, ptr %i.ak, align 4
  store i32 %5, ptr %i.al, align 4
  invoke void @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1u_13ExternCrateIdEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertB1u_(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull %i.ba, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.f)
          to label %bb.m unwind label %bb.h

bb.j:                                             ; preds = %_RNvMNtCsileJQcQObtj_7hir_def6per_nsNtB2_5PerNs11take_macros.exit
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = and i64 %i.bc, 1
  %.not.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr i8, ptr %i.ba, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  %i.bf = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.be)
          to label %.noexc29 unwind label %bb.h

.noexc29:                                         ; preds = %bb.k
  %i.bg = sub nsw i64 0, %i.bf
end_hunk_5
begin_hunk_6_@_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope12declarations:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdE8data_rawBI_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.d
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %i.e, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope13extern_blocks(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternBlockIdE8data_rawBI_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %i.e, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope13legacy_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 360
  tail call void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterB23_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope14inherent_impls(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEE8data_rawBJ_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.d
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %i.e, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope14unnamed_consts(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def7ConstIdE8data_rawBI_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %i.e, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope15all_macro_calls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([416 x i8]) align 8 captures(none) dereferenceable(416) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 424
  call void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBS_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroCallEENtBS_11MacroCallIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBS_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBS_11MacroCallIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBS_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3AdtEEINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationj1_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterB44_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2065)
  store i64 1, ptr %0, align 8, !alias.scope !2066
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.a, i64 80, i1 false), !alias.scope !2067
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 -1, ptr %.sroa.4.0..sroa_idx, align 4, !alias.scope !2068
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 404
  store i32 -1, ptr %.sroa.57.0..sroa_idx, align 4, !alias.scope !2068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope16iter_macro_invoc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 424
  tail call void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBS_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroCallEENtBS_11MacroCallIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope18extern_crate_decls(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.b = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternCrateIdE8data_rawBI_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %i.e, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope20builtin_derive_impls(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdE8data_rawBI_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %i.e, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope20fully_resolve_import(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 4 captures(none) dereferenceable(128) initializes((0, 4), (44, 48), (84, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %3, ptr noalias nofree noundef align 4 captures(none) dead_on_return dereferenceable(12) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %.sroa.639 = alloca [15 x i8], align 1          ; 5 uses
  %i.b = alloca [16 x i8], align 4                ; 10 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %.sroa.621 = alloca [15 x i8], align 1          ; 5 uses
  %i.d = alloca [16 x i8], align 4                ; 10 uses
  %i.e = alloca [12 x i8], align 4                ; 4 uses
  %.sroa.6 = alloca [15 x i8], align 1            ; 5 uses
  %i.f = alloca [16 x i8], align 4                ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i32 -2, ptr %i.g, align 4, !alias.scope !2140
  store i32 -1, ptr %0, align 4, !alias.scope !2140
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 -1, ptr %i.h, align 4, !alias.scope !2140
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  store i32 1, ptr %i.f, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !2141, !noundef !5
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.6.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 3 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.08.0108 = phi ptr [ %1, %.lr.ph ], [ %i.bn, %bb.g ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2142)
  call void @llvm.experimental.noalias.scope.decl(metadata !2143)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.0108, i64 312
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.0108, i64 344
  %i.q = call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateEB1D_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  call void @llvm.experimental.noalias.scope.decl(metadata !2145)
  call void @llvm.experimental.noalias.scope.decl(metadata !2146)
  %i.r = lshr i64 %i.q, 57
  %i.s = trunc nuw nsw i64 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.0108, i64 320
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !2147, !noundef !5 ; 2 uses
  %i.v = load ptr, ptr %i.o, align 8, !alias.scope !2147, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.y = load i32, ptr %i.m, align 4, !alias.scope !2148
  %i.z = load i32, ptr %i.i, align 4, !range !11, !alias.scope !2148
  %i.aa = load i32, ptr %i.n, align 4, !alias.scope !2148
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.bb, %bb.f ]
  %.pn.i.i = phi i64 [ %i.q, %bb.b ], [ %i.bc, %bb.f ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.u      ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.ab, align 1, !noalias !2149 ; 2 uses
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.x
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not.i.not34.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not34.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1P_E0E0BW_.exit.thread.i.i
  %.sroa.06.0.i35.i.i = phi i16 [ %i.ba, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1P_E0E0BW_.exit.thread.i.i ], [ %i.ad, %bb.c ] ; 3 uses
  %i.ae = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i35.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.01.0.i.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.u
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.ai ; 7 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -32
  %i.al = load i32, ptr %i.ak, align 4, !range !9, !alias.scope !2150, !noalias !2151, !noundef !5
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.d, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1P_E0E0BW_.exit.thread.i.i, !prof !42

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 -24
  %i.ao = load i32, ptr %i.an, align 4, !alias.scope !2150, !noalias !2151, !noundef !5
  %i.ap = icmp eq i32 %i.y, %i.ao
  br i1 %i.ap, label %bb.e, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1P_E0E0BW_.exit.thread.i.i, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds i8, ptr %i.aj, i64 -28
  %i.ar = load i32, ptr %i.aq, align 4, !range !11, !alias.scope !2150, !noalias !2151, !noundef !5
  %i.as = icmp eq i32 %i.z, %i.ar
  br i1 %i.as, label %.split25.i.i, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1P_E0E0BW_.exit.thread.i.i, !prof !42

.split25.i.i:                                     ; preds = %bb.e
  %i.at = getelementptr inbounds i8, ptr %i.aj, i64 -20
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !2150, !noalias !2151, !noundef !5
  %i.av = icmp eq i32 %i.aa, %i.au
  br i1 %i.av, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBQ_11ImportOrDefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1P_E0E0BW_.exit.thread.i.i, !prof !43

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1P_E0E0BW_.exit.thread.i.i, %bb.c
  %i.aw = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = icmp eq i16 %i.ax, 0
  br i1 %i.ay, label %bb.f, label %select.unfold, !prof !6

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1P_E0E0BW_.exit.thread.i.i: ; preds = %.split25.i.i, %bb.e, %bb.d, %.lr.ph.i.i
  %i.az = add i16 %.sroa.06.0.i35.i.i, -1
  %i.ba = and i16 %i.az, %.sroa.06.0.i35.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ba, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.bb = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.bc = add i64 %.sroa.01.0.i.i.i, %i.bb
  br label %bb.c

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBQ_11ImportOrDefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit: ; preds = %.split25.i.i
  %i.bd = getelementptr inbounds i8, ptr %i.aj, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.05.0.copyload = load i8, ptr %i.bd, align 4 ; 3 uses
  %.sroa.6.0..sroa.03.0.4.sroa_idx = getelementptr inbounds i8, ptr %i.aj, i64 -15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6.0..sroa.03.0.4.sroa_idx, i64 15, i1 false)
  %i.be = add i8 %.sroa.05.0.copyload, -10
  %i.bf = icmp ugt i8 %.sroa.05.0.copyload, 9
  %narrow = select i1 %i.bf, i8 %i.be, i8 3
  switch i8 %narrow, label %.loopexit99 [
    i8 0, label %bb.g
    i8 3, label %bb.h
  ]

.loopexit99:                                      ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBQ_11ImportOrDefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %select.unfold

bb.g:                                             ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBQ_11ImportOrDefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 1 dereferenceable(12) %.sroa.6.4..sroa_idx, i64 12, i1 false)
  %i.bg = call noundef nonnull align 4 ptr @_RNvXs3o_CsileJQcQObtj_7hir_defNtB6_5UseIdNtCs33K2ylI4knu_10hir_expand6Lookup6lookup(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i32, ptr %i.bh, align 4, !range !11, !noundef !5 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.bk = load i32, ptr %i.bj, align 4, !noundef !5 ; 2 uses
  %i.bl = call noundef nonnull align 8 ptr @_RNvMsn_CsileJQcQObtj_7hir_defNtB5_10ModuleIdLt7def_map(i32 noundef %i.bi, i32 noundef %i.bk, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3)
  %i.bm = call noundef nonnull align 8 ptr @_RNvXs1_NtCsileJQcQObtj_7hir_def7nameresNtB5_6DefMapINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB7_10ModuleIdLtE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.bl, i32 noundef %i.bi, i32 noundef %i.bk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(12) %.sroa.6.4..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  store i32 1, ptr %i.f, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 392
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !2152, !noundef !5
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %select.unfold, label %bb.b

bb.h:                                             ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBQ_11ImportOrDefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit
  %i.br = icmp eq i8 %.sroa.05.0.copyload, 9
  br i1 %i.br, label %bb.i, label %.loopexit99

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds i8, ptr %i.aj, i64 -12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 1 dereferenceable(12) %i.bs, i64 12, i1 false)
  %.sroa.012.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 -1, ptr %.sroa.012.sroa.4.0..sroa_idx, align 4
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 2, ptr %.sroa.413.0..sroa_idx, align 4
  br label %.loopexit99

select.unfold:                                    ; preds = %bb.g, %._crit_edge.i.i, %bb.a, %.loopexit99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bt, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  store i32 1, ptr %i.d, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !2153, !noundef !5
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %select.unfold86, label %.lr.ph110

.lr.ph110:                                        ; preds = %select.unfold
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.621.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.621, i64 3 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph110, %bb.o
  %.sroa.022.0109 = phi ptr [ %1, %.lr.ph110 ], [ %i.dy, %bb.o ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2154)
  call void @llvm.experimental.noalias.scope.decl(metadata !2155)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.022.0109, i64 248
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.022.0109, i64 280
  %i.cb = call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateEB1D_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ca, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2156)
  call void @llvm.experimental.noalias.scope.decl(metadata !2157)
  call void @llvm.experimental.noalias.scope.decl(metadata !2158)
  %i.cc = lshr i64 %i.cb, 57
  %i.cd = trunc nuw nsw i64 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.022.0109, i64 256
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !2159, !noundef !5 ; 2 uses
  %i.cg = load ptr, ptr %i.bz, align 8, !alias.scope !2159, !nonnull !5, !noundef !5 ; 2 uses
  %i.ch = insertelement <16 x i8> poison, i8 %i.cd, i64 0
  %i.ci = shufflevector <16 x i8> %i.ch, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.cj = load i32, ptr %i.bx, align 4, !alias.scope !2160
  %i.ck = load i32, ptr %i.bt, align 4, !range !11, !alias.scope !2160
  %i.cl = load i32, ptr %i.by, align 4, !alias.scope !2160
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  %.sroa.9.0.i.i.i56 = phi i64 [ 0, %bb.j ], [ %i.dm, %bb.n ]
  %.pn.i.i57 = phi i64 [ %i.cb, %bb.j ], [ %i.dn, %bb.n ]
  %.sroa.01.0.i.i.i58 = and i64 %.pn.i.i57, %i.cf ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.01.0.i.i.i58
  %.sroa.0.0.copyload.i26.i.i59 = load <16 x i8>, ptr %i.cm, align 1, !noalias !2161 ; 2 uses
  %i.cn = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i59, %i.ci
  %i.co = bitcast <16 x i1> %i.cn to i16          ; 2 uses
  %.not.i.not34.i.i60 = icmp eq i16 %i.co, 0
  br i1 %.not.i.not34.i.i60, label %._crit_edge.i.i65, label %.lr.ph.i.i61

.lr.ph.i.i61:                                     ; preds = %bb.k, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1P_E0E0BW_.exit.thread.i.i63
  %.sroa.06.0.i35.i.i62 = phi i16 [ %i.dl, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1P_E0E0BW_.exit.thread.i.i63 ], [ %i.co, %bb.k ] ; 3 uses
  %i.cp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i35.i.i62, i1 true)
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = add i64 %.sroa.01.0.i.i.i58, %i.cq
  %i.cs = and i64 %i.cr, %i.cf
  %i.ct = sub nsw i64 0, %i.cs
  %i.cu = getelementptr inbounds [32 x i8], ptr %i.cg, i64 %i.ct ; 6 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -32
  %i.cw = load i32, ptr %i.cv, align 4, !range !9, !alias.scope !2162, !noalias !2163, !noundef !5
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %bb.l, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1P_E0E0BW_.exit.thread.i.i63, !prof !42

bb.l:                                             ; preds = %.lr.ph.i.i61
  %i.cy = getelementptr inbounds i8, ptr %i.cu, i64 -24
  %i.cz = load i32, ptr %i.cy, align 4, !alias.scope !2162, !noalias !2163, !noundef !5
  %i.da = icmp eq i32 %i.cj, %i.cz
  br i1 %i.da, label %bb.m, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1P_E0E0BW_.exit.thread.i.i63, !prof !42

bb.m:                                             ; preds = %bb.l
  %i.db = getelementptr inbounds i8, ptr %i.cu, i64 -28
  %i.dc = load i32, ptr %i.db, align 4, !range !11, !alias.scope !2162, !noalias !2163, !noundef !5
  %i.dd = icmp eq i32 %i.ck, %i.dc
  br i1 %i.dd, label %.split25.i.i71, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1P_E0E0BW_.exit.thread.i.i63, !prof !42

.split25.i.i71:                                   ; preds = %bb.m
  %i.de = getelementptr inbounds i8, ptr %i.cu, i64 -20
  %i.df = load i32, ptr %i.de, align 4, !alias.scope !2162, !noalias !2163, !noundef !5
  %i.dg = icmp eq i32 %i.cl, %i.df
  br i1 %i.dg, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBQ_11ImportOrDefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit74, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1P_E0E0BW_.exit.thread.i.i63, !prof !43

._crit_edge.i.i65:                                ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1P_E0E0BW_.exit.thread.i.i63, %bb.k
  %i.dh = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i59, splat (i8 -1)
  %i.di = bitcast <16 x i1> %i.dh to i16
  %i.dj = icmp eq i16 %i.di, 0
  br i1 %i.dj, label %bb.n, label %select.unfold86, !prof !6

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1P_E0E0BW_.exit.thread.i.i63: ; preds = %.split25.i.i71, %bb.m, %bb.l, %.lr.ph.i.i61
  %i.dk = add i16 %.sroa.06.0.i35.i.i62, -1
  %i.dl = and i16 %i.dk, %.sroa.06.0.i35.i.i62    ; 2 uses
  %.not.i.not.i.i64 = icmp eq i16 %i.dl, 0
  br i1 %.not.i.not.i.i64, label %._crit_edge.i.i65, label %.lr.ph.i.i61

bb.n:                                             ; preds = %._crit_edge.i.i65
  %i.dm = add i64 %.sroa.9.0.i.i.i56, 16          ; 2 uses
  %i.dn = add i64 %.sroa.01.0.i.i.i58, %i.dm
  br label %bb.k

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBQ_11ImportOrDefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit74: ; preds = %.split25.i.i71
  %i.do = getelementptr inbounds i8, ptr %i.cu, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.621)
  %.sroa.019.0.copyload = load i8, ptr %i.do, align 4 ; 3 uses
  %.sroa.621.0..sroa.017.0.18.sroa_idx = getelementptr inbounds i8, ptr %i.cu, i64 -15 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.621, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.621.0..sroa.017.0.18.sroa_idx, i64 15, i1 false)
  %i.dp = add i8 %.sroa.019.0.copyload, -10
  %i.dq = icmp ugt i8 %.sroa.019.0.copyload, 9
  %narrow53 = select i1 %i.dq, i8 %i.dp, i8 3
  switch i8 %narrow53, label %.loopexit97 [
    i8 0, label %bb.o
    i8 3, label %bb.p
  ]

.loopexit97:                                      ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBQ_11ImportOrDefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit74, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.621)
  br label %select.unfold86

bb.o:                                             ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBQ_11ImportOrDefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 1 dereferenceable(12) %.sroa.621.4..sroa_idx, i64 12, i1 false)
  %i.dr = call noundef nonnull align 4 ptr @_RNvXs3o_CsileJQcQObtj_7hir_defNtB6_5UseIdNtCs33K2ylI4knu_10hir_expand6Lookup6lookup(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3) ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load i32, ptr %i.ds, align 4, !range !11, !noundef !5 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %i.dv = load i32, ptr %i.du, align 4, !noundef !5 ; 2 uses
  %i.dw = call noundef nonnull align 8 ptr @_RNvMsn_CsileJQcQObtj_7hir_defNtB5_10ModuleIdLt7def_map(i32 noundef %i.dt, i32 noundef %i.dv, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3)
  %i.dx = call noundef nonnull align 8 ptr @_RNvXs1_NtCsileJQcQObtj_7hir_def7nameresNtB5_6DefMapINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB7_10ModuleIdLtE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.dw, i32 noundef %i.dt, i32 noundef %i.dv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(12) %.sroa.621.4..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.621)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bt, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  store i32 1, ptr %i.d, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 328
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !2164, !noundef !5
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %select.unfold86, label %bb.j

bb.p:                                             ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBQ_11ImportOrDefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit74
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.530.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.621.0..sroa.017.0.18.sroa_idx, i64 15, i1 false)
  store i32 -1, ptr %i.g, align 4
  %.sroa.028.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 2, ptr %.sroa.028.sroa.4.0..sroa_idx, align 4
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %.sroa.019.0.copyload, ptr %.sroa.429.0..sroa_idx, align 4
  br label %.loopexit97

select.unfold86:                                  ; preds = %bb.o, %._crit_edge.i.i65, %select.unfold, %.loopexit97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ec, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  store i32 1, ptr %i.b, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !2165, !noundef !5
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %select.unfold89, label %.lr.ph112

.lr.ph112:                                        ; preds = %select.unfold86
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.639.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.639, i64 3 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph112, %bb.u
  %.sroa.0.0111 = phi ptr [ %1, %.lr.ph112 ], [ %i.gg, %bb.u ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2166)
  call void @llvm.experimental.noalias.scope.decl(metadata !2167)
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.0111, i64 280
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0111, i64 312
  %i.ek = call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCsileJQcQObtj_7hir_def10item_scope12ImportOrGlobEB1D_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ej, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2168)
  call void @llvm.experimental.noalias.scope.decl(metadata !2169)
  call void @llvm.experimental.noalias.scope.decl(metadata !2170)
  %i.el = lshr i64 %i.ek, 57
  %i.em = trunc nuw nsw i64 %i.el to i8
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.0111, i64 288
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !2171, !noundef !5 ; 2 uses
  %i.ep = load ptr, ptr %i.ei, align 8, !alias.scope !2171, !nonnull !5, !noundef !5 ; 2 uses
  %i.eq = insertelement <16 x i8> poison, i8 %i.em, i64 0
  %i.er = shufflevector <16 x i8> %i.eq, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.es = load i32, ptr %i.eg, align 4, !alias.scope !2172
  %i.et = load i32, ptr %i.ec, align 4, !range !11, !alias.scope !2172
  %i.eu = load i32, ptr %i.eh, align 4, !alias.scope !2172
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.q, %bb.t
  %.sroa.9.0.i.us.i.i = phi i64 [ %i.fu, %bb.t ], [ 0, %bb.q ]
  %.pn.us.i.i = phi i64 [ %i.fv, %bb.t ], [ %i.ek, %bb.q ]
  %.sroa.01.0.i.us.i.i = and i64 %.pn.us.i.i, %i.eo ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sroa.01.0.i.us.i.i
  %.sroa.0.0.copyload.i25.us.i.i = load <16 x i8>, ptr %i.ev, align 1, !noalias !2173 ; 2 uses
  %i.ew = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.us.i.i, %i.er
  %i.ex = bitcast <16 x i1> %i.ew to i16          ; 2 uses
  %.not.i.not31.us.i.i = icmp eq i16 %i.ex, 0
  br i1 %.not.i.not31.us.i.i, label %._crit_edge.split.us.us.i.i, label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %.split.us.i.i, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope12ImportOrGlobNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1I_E0E0BW_.exit.thread.us.us.i.i
  %.sroa.06.0.i32.us.us.i.i = phi i16 [ %i.fq, %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope12ImportOrGlobNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1I_E0E0BW_.exit.thread.us.us.i.i ], [ %i.ex, %.split.us.i.i ] ; 3 uses
  %i.ey = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.us.us.i.i, i1 true)
  %i.ez = zext nneg i16 %i.ey to i64
  %i.fa = add i64 %.sroa.01.0.i.us.i.i, %i.ez
  %i.fb = and i64 %i.fa, %i.eo
  %i.fc = sub nsw i64 0, %i.fb
  %i.fd = getelementptr inbounds [32 x i8], ptr %i.ep, i64 %i.fc ; 6 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -32
  %i.ff = load i32, ptr %i.fe, align 4, !range !28, !alias.scope !2174, !noalias !2175, !noundef !5
  %.not = icmp eq i32 %i.ff, 0
  br i1 %.not, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope12ImportOrGlobNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1I_E0E0BW_.exit.thread.us.us.i.i, label %bb.r, !prof !2176

bb.r:                                             ; preds = %.lr.ph.us.i.i
  %i.fg = getelementptr inbounds i8, ptr %i.fd, i64 -24
  %i.fh = load i32, ptr %i.fg, align 4, !alias.scope !2174, !noalias !2175, !noundef !5
  %i.fi = icmp eq i32 %i.es, %i.fh
  br i1 %i.fi, label %bb.s, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope12ImportOrGlobNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1I_E0E0BW_.exit.thread.us.us.i.i, !prof !42

bb.s:                                             ; preds = %bb.r
  %i.fj = getelementptr inbounds i8, ptr %i.fd, i64 -28
  %i.fk = load i32, ptr %i.fj, align 4, !range !11, !alias.scope !2174, !noalias !2175, !noundef !5
  %i.fl = icmp eq i32 %i.et, %i.fk
  br i1 %i.fl, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope12ImportOrGlobNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1I_E0E0BW_.exit.us.us.i.i, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope12ImportOrGlobNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1I_E0E0BW_.exit.thread.us.us.i.i, !prof !42

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope12ImportOrGlobNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1I_E0E0BW_.exit.us.us.i.i: ; preds = %bb.s
  %i.fm = getelementptr inbounds i8, ptr %i.fd, i64 -20
  %i.fn = load i32, ptr %i.fm, align 4, !alias.scope !2174, !noalias !2175, !noundef !5
  %i.fo = icmp eq i32 %i.eu, %i.fn
  br i1 %i.fo, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsileJQcQObtj_7hir_def10item_scope12ImportOrGlobNtBQ_11ImportOrDefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope12ImportOrGlobNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1I_E0E0BW_.exit.thread.us.us.i.i, !prof !43

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope12ImportOrGlobNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1I_E0E0BW_.exit.thread.us.us.i.i: ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope12ImportOrGlobNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1I_E0E0BW_.exit.us.us.i.i, %bb.s, %bb.r, %.lr.ph.us.i.i
  %i.fp = add i16 %.sroa.06.0.i32.us.us.i.i, -1
  %i.fq = and i16 %i.fp, %.sroa.06.0.i32.us.us.i.i ; 2 uses
  %.not.i.not.us.us.i.i = icmp eq i16 %i.fq, 0
  br i1 %.not.i.not.us.us.i.i, label %._crit_edge.split.us.us.i.i, label %.lr.ph.us.i.i

._crit_edge.split.us.us.i.i:                      ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope12ImportOrGlobNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1I_E0E0BW_.exit.thread.us.us.i.i, %.split.us.i.i
  %i.fr = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.us.i.i, splat (i8 -1)
  %i.fs = bitcast <16 x i1> %i.fr to i16
  %i.ft = icmp eq i16 %i.fs, 0
  br i1 %i.ft, label %bb.t, label %select.unfold89, !prof !6

bb.t:                                             ; preds = %._crit_edge.split.us.us.i.i
  %i.fu = add i64 %.sroa.9.0.i.us.i.i, 16         ; 2 uses
  %i.fv = add i64 %.sroa.01.0.i.us.i.i, %i.fu
  br label %.split.us.i.i

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsileJQcQObtj_7hir_def10item_scope12ImportOrGlobNtBQ_11ImportOrDefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit: ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtNtCsileJQcQObtj_7hir_def10item_scope12ImportOrGlobNtBU_11ImportOrDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1I_E0E0BW_.exit.us.us.i.i
  %i.fw = getelementptr inbounds i8, ptr %i.fd, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.639)
  %.sroa.037.0.copyload = load i8, ptr %i.fw, align 4 ; 3 uses
  %.sroa.639.0..sroa.035.0.36.sroa_idx = getelementptr inbounds i8, ptr %i.fd, i64 -15 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.639, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.639.0..sroa.035.0.36.sroa_idx, i64 15, i1 false)
  %i.fx = add i8 %.sroa.037.0.copyload, -10
  %i.fy = icmp ugt i8 %.sroa.037.0.copyload, 9
  %narrow55 = select i1 %i.fy, i8 %i.fx, i8 3
  switch i8 %narrow55, label %.loopexit [
    i8 0, label %bb.u
    i8 3, label %bb.v
  ]

.loopexit:                                        ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsileJQcQObtj_7hir_def10item_scope12ImportOrGlobNtBQ_11ImportOrDefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.639)
  br label %select.unfold89

bb.u:                                             ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsileJQcQObtj_7hir_def10item_scope12ImportOrGlobNtBQ_11ImportOrDefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) %.sroa.639.4..sroa_idx, i64 12, i1 false)
  %i.fz = call noundef nonnull align 4 ptr @_RNvXs3o_CsileJQcQObtj_7hir_defNtB6_5UseIdNtCs33K2ylI4knu_10hir_expand6Lookup6lookup(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3) ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load i32, ptr %i.ga, align 4, !range !11, !noundef !5 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 20
  %i.gd = load i32, ptr %i.gc, align 4, !noundef !5 ; 2 uses
  %i.ge = call noundef nonnull align 8 ptr @_RNvMsn_CsileJQcQObtj_7hir_defNtB5_10ModuleIdLt7def_map(i32 noundef %i.gb, i32 noundef %i.gd, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3)
  %i.gf = call noundef nonnull align 8 ptr @_RNvXs1_NtCsileJQcQObtj_7hir_def7nameresNtB5_6DefMapINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB7_10ModuleIdLtE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.ge, i32 noundef %i.gb, i32 noundef %i.gd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(12) %.sroa.639.4..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.639)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ec, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  store i32 1, ptr %i.b, align 4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 360
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !2177, !noundef !5
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %select.unfold89, label %bb.q

bb.v:                                             ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsileJQcQObtj_7hir_def10item_scope12ImportOrGlobNtBQ_11ImportOrDefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.547.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.639.0..sroa.035.0.36.sroa_idx, i64 15, i1 false)
  store i32 2, ptr %0, align 4
  %.sroa.045.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %.sroa.045.sroa.4.0..sroa_idx, align 4
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %.sroa.037.0.copyload, ptr %.sroa.446.0..sroa_idx, align 4
  br label %.loopexit

select.unfold89:                                  ; preds = %bb.u, %._crit_edge.split.us.us.i.i, %select.unfold86, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope3get(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 4 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %.sroa.513 = alloca [36 x i8], align 4          ; 4 uses
  %.sroa.57 = alloca [40 x i8], align 4           ; 4 uses
  %.sroa.5 = alloca [40 x i8], align 4            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2199)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2200, !noundef !5 ; 3 uses
  switch i64 %i.b, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i [
    i64 0, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.thread
    i64 1, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i
  ]

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = tail call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
  %i.e = tail call { i64, i64 } @_RINvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB5_4CoreNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1u_11ModuleDefIdNtNtB1u_10item_scope19ImportOrExternCrateEE12get_index_ofBL_EB1u_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 3 uses
  %i.h = trunc nuw i64 %i.f to i1
  br i1 %i.h, label %bb.b, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.thread

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2200, !nonnull !5, !noundef !5 ; 2 uses
  %.val.i.i = load ptr, ptr %2, align 8, !alias.scope !2201, !nonnull !5, !noundef !5
  %.val2.i.i = load ptr, ptr %i.j, align 8, !noalias !2202, !nonnull !5, !noundef !5
  %i.k = icmp eq ptr %.val.i.i, %.val2.i.i
  br i1 %i.k, label %bb.d, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.thread

bb.b:                                             ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i
  %i.l = icmp ult i64 %i.g, %i.b
  br i1 %i.l, label %..thread_crit_edge.i, label %bb.c

..thread_crit_edge.i:                             ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !2196
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #39
  unreachable

bb.d:                                             ; preds = %..thread_crit_edge.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i
  %i.m = phi ptr [ %.pre.i, %..thread_crit_edge.i ], [ %i.j, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i ]
  %.sroa.5.0.i911.i = phi i64 [ %i.g, %..thread_crit_edge.i ], [ 0, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i ]
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.5.0.i911.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.017.0.copyload = load i32, ptr %i.o, align 4
  %.sroa.4.0..sroa.03.0.4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(40) %.sroa.4.0..sroa.03.0.4.sroa_idx, i64 40, i1 false)
  br label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.thread

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.thread: ; preds = %bb.a, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i, %bb.d
  %.sroa.0.0 = phi i32 [ %.sroa.017.0.copyload, %bb.d ], [ -2, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i ], [ -2, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i ], [ -2, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !2207, !noundef !5 ; 3 uses
  switch i64 %i.q, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i [
    i64 0, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.thread
    i64 1, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i
  ]

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i: ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.t = tail call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
  %i.u = tail call { i64, i64 } @_RINvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB5_4CoreNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1u_11ModuleDefIdNtNtB1u_10item_scope12ImportOrGlobEE12get_index_ofBL_EB1u_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r, i64 noundef %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = extractvalue { i64, i64 } %i.u, 1        ; 3 uses
  %i.x = trunc nuw i64 %i.v to i1
  br i1 %i.x, label %bb.e, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.thread

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i: ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !2207, !nonnull !5, !noundef !5 ; 2 uses
  %.val.i.i24 = load ptr, ptr %2, align 8, !alias.scope !2208, !nonnull !5, !noundef !5
  %.val2.i.i25 = load ptr, ptr %i.z, align 8, !noalias !2209, !nonnull !5, !noundef !5
  %i.aa = icmp eq ptr %.val.i.i24, %.val2.i.i25
  br i1 %i.aa, label %bb.g, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.thread

bb.e:                                             ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i
  %i.ab = icmp ult i64 %i.w, %i.q
  br i1 %i.ab, label %..thread_crit_edge.i29, label %bb.f

..thread_crit_edge.i29:                           ; preds = %bb.e
  %.phi.trans.insert.i30 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.pre.i31 = load ptr, ptr %.phi.trans.insert.i30, align 8, !alias.scope !2203
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.w, i64 noundef %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #39
  unreachable

bb.g:                                             ; preds = %..thread_crit_edge.i29, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i
  %i.ac = phi ptr [ %.pre.i31, %..thread_crit_edge.i29 ], [ %i.z, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i ]
  %.sroa.5.0.i911.i28 = phi i64 [ %i.w, %..thread_crit_edge.i29 ], [ 0, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i ]
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %.sroa.5.0.i911.i28 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.018.0.copyload = load i32, ptr %i.ae, align 4
  %.sroa.419.0..sroa.09.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.57, ptr noundef nonnull align 4 dereferenceable(40) %.sroa.419.0..sroa.09.0.10.sroa_idx, i64 40, i1 false)
  br label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.thread

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.thread: ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.thread, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i, %bb.g
  %.sroa.05.0 = phi i32 [ %.sroa.018.0.copyload, %bb.g ], [ -1, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i ], [ -1, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i ], [ -1, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2213)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !2214, !noundef !5 ; 3 uses
  switch i64 %i.ag, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i [
    i64 0, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.thread
    i64 1, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i
  ]
end_hunk_6
begin_hunk_7_@_RNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12ModCollector28emit_unconfigured_diagnostic:bb.a

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store <2 x i32> %i.h, ptr %i.m, align 8
  store i32 3, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.4, i64 36, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !2355, !noundef !5 ; 3 uses
  %i.p = load i64, ptr %i.l, align 8, !range !17, !alias.scope !2355, !noundef !5
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticE8push_mutBL_.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticE8push_mutBL_.exit unwind label %bb.e, !noalias !2356

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d) #41
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.k, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticE8push_mutBL_.exit: ; preds = %bb.c, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !2355, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw [96 x i8], ptr %i.u, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.v, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  %i.w = add i64 %i.o, 1
  store i64 %i.w, ptr %i.n, align 8, !alias.scope !2355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.g:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12ModCollector7collect(ptr noalias nofree noundef align 8 dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 14 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !align !13, !noundef !5 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %.val = load i32, ptr %i.k, align 8             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.val1 = load i32, ptr %i.o, align 4, !noundef !5 ; 2 uses
  %.val2 = load i32, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.m, i64 92
  %.val3 = load i32, ptr %i.p, align 4, !noundef !5
  %i.q = icmp eq i32 %.val1, %.val3
  %i.r = icmp eq i32 %.val, %.val2
  %.sroa.0.0.i = select i1 %i.q, i1 %i.r, i1 false
  br i1 %.sroa.0.0.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 200
  %i.t = load i32, ptr %i.s, align 8, !noundef !5
  %.not = icmp eq i32 %i.t, 0
  %i.u = zext i1 %.not to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.v = phi i8 [ %i.u, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  store i8 %i.v, ptr %i.j, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  call void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i8, ptr %i.w, align 4, !range !8, !alias.scope !2382, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i32, ptr %i.y, align 8, !alias.scope !2382, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i8 %i.x, ptr %i.aa, align 4, !alias.scope !2381
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 %i.z, ptr %i.ab, align 8, !alias.scope !2381
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 496
  call void @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtNtBP_7nameres14mod_resolution6ModDirNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertBP_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac, i32 noundef %.val, i32 noundef %.val1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ad = load i64, ptr %i.i, align 8, !range !35, !alias.scope !2383, !noundef !5
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsileJQcQObtj_7hir_def7nameres14mod_resolution6ModDirEEB13_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def7nameres14mod_resolution6ModDirEBH_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECsileJQcQObtj_7hir_def.exit.i.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECsileJQcQObtj_7hir_def.exit.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.af

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def7nameres14mod_resolution6ModDirEBH_.exit.i: ; preds = %bb.d
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsileJQcQObtj_7hir_def7nameres14mod_resolution6ModDirEEB13_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsileJQcQObtj_7hir_def7nameres14mod_resolution6ModDirEEB13_.exit: ; preds = %bb.c, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def7nameres14mod_resolution6ModDirEBH_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ah = load ptr, ptr %i.l, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 416
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 424
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !5, !align !13, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.am = load <2 x i32>, ptr %i.k, align 8
  store <2 x i32> %i.am, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.aj, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.al, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.aj, ptr %i.d, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.al, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.g, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %3, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.g, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.aj, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.al, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.d, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.j, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.e, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.f, ptr %i.ay, align 8
  %i.az = trunc nuw i8 %i.v to i1
  br i1 %i.az, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsileJQcQObtj_7hir_def7nameres14mod_resolution6ModDirEEB13_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  %i.ba = icmp eq i64 %2, 0
  br i1 %i.ba, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters6copied9copy_foldBQ_uNCINvNvB1B_8for_each4callBQ_NCNvMs1_NtNtBU_7nameres9collectorNtB3D_12ModCollector7collects1_0E0E0EBU_.exit, label %.preheader10

.preheader10:                                     ; preds = %bb.g, %.preheader10
  %.sroa.01.0.i = phi i64 [ %i.bf, %.preheader10 ], [ 0, %bb.g ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.0.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2384)
  %i.bc = load i32, ptr %i.bb, align 4, !range !44, !alias.scope !2384, !noundef !5
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !alias.scope !2384, !noundef !5
  call fastcc void @_RNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector7collects1_0Bb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a, i32 noundef range(i32 0, 16) %i.bc, i32 noundef %i.be) #40, !noalias !2384, !inline_history !2364
  %i.bf = add nuw nsw i64 %.sroa.01.0.i, 1        ; 2 uses
  %i.bg = icmp eq i64 %i.bf, %2
  br i1 %i.bg, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters6copied9copy_foldBQ_uNCINvNvB1B_8for_each4callBQ_NCNvMs1_NtNtBU_7nameres9collectorNtB3D_12ModCollector7collects1_0E0E0EBU_.exit, label %.preheader10

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters6copied9copy_foldBQ_uNCINvNvB1B_8for_each4callBQ_NCNvMs1_NtNtBU_7nameres9collectorNtB3D_12ModCollector7collects1_0E0E0EBU_.exit: ; preds = %.preheader10, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsileJQcQObtj_7hir_def7nameres14mod_resolution6ModDirEEB13_.exit
  %i.bh = icmp eq i64 %2, 0
  br i1 %i.bh, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters6filter11filter_foldRBQ_uNCNvMs1_NtNtBU_7nameres9collectorNtB3f_12ModCollector7collects3_0NCINvNtB2t_6copied9copy_foldBQ_uNCINvNvB1B_8for_each4callBQ_NCB39_s1_0E0E0E0EBU_.exit.critedge, label %.preheader

.preheader:                                       ; preds = %bb.h, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter11filter_foldRNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIduNCNvMs1_NtNtB16_7nameres9collectorNtB1V_12ModCollector7collects2_0NCINvNtB6_6copied9copy_foldB12_uNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB12_QNCB1P_s1_0E0E0E0B16_.exit
  %.sroa.01.0.i4 = phi i64 [ %i.bn, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter11filter_foldRNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIduNCNvMs1_NtNtB16_7nameres9collectorNtB1V_12ModCollector7collects2_0NCINvNtB6_6copied9copy_foldB12_uNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB12_QNCB1P_s1_0E0E0E0B16_.exit ], [ 0, %bb.h ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.0.i4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !range !44, !noalias !2385, !noundef !5
  %i.bk = icmp eq i32 %i.bj, 3
  br i1 %i.bk, label %bb.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter11filter_foldRNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIduNCNvMs1_NtNtB16_7nameres9collectorNtB1V_12ModCollector7collects2_0NCINvNtB6_6copied9copy_foldB12_uNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB12_QNCB1P_s1_0E0E0E0B16_.exit

bb.i:                                             ; preds = %.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !alias.scope !2387, !noundef !5
  call fastcc void @_RNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector7collects1_0Bb_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.c, i32 noundef range(i32 0, 16) 3, i32 noundef %i.bm) #40, !noalias !2388, !inline_history !2374
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter11filter_foldRNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIduNCNvMs1_NtNtB16_7nameres9collectorNtB1V_12ModCollector7collects2_0NCINvNtB6_6copied9copy_foldB12_uNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB12_QNCB1P_s1_0E0E0E0B16_.exit

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter11filter_foldRNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIduNCNvMs1_NtNtB16_7nameres9collectorNtB1V_12ModCollector7collects2_0NCINvNtB6_6copied9copy_foldB12_uNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB12_QNCB1P_s1_0E0E0E0B16_.exit: ; preds = %.preheader, %bb.i
  %i.bn = add nuw nsw i64 %.sroa.01.0.i4, 1       ; 2 uses
  %i.bo = icmp eq i64 %i.bn, %2
  br i1 %i.bo, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters6filter11filter_foldRBQ_uNCNvMs1_NtNtBU_7nameres9collectorNtB3f_12ModCollector7collects2_0NCINvNtB2t_6copied9copy_foldBQ_uNCINvNvB1B_8for_each4callBQ_QNCB39_s1_0E0E0E0EBU_.exit, label %.preheader

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters6filter11filter_foldRBQ_uNCNvMs1_NtNtBU_7nameres9collectorNtB3f_12ModCollector7collects2_0NCINvNtB2t_6copied9copy_foldBQ_uNCINvNvB1B_8for_each4callBQ_QNCB39_s1_0E0E0E0EBU_.exit: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter11filter_foldRNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIduNCNvMs1_NtNtB16_7nameres9collectorNtB1V_12ModCollector7collects2_0NCINvNtB6_6copied9copy_foldB12_uNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB12_QNCB1P_s1_0E0E0E0B16_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter11filter_foldRNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIduNCNvMs1_NtNtB16_7nameres9collectorNtB1V_12ModCollector7collects3_0NCINvNtB6_6copied9copy_foldB12_uNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB12_NCB1P_s1_0E0E0E0B16_.exit, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters6filter11filter_foldRBQ_uNCNvMs1_NtNtBU_7nameres9collectorNtB3f_12ModCollector7collects2_0NCINvNtB2t_6copied9copy_foldBQ_uNCINvNvB1B_8for_each4callBQ_QNCB39_s1_0E0E0E0EBU_.exit
  %.sroa.01.0.i5 = phi i64 [ 0, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters6filter11filter_foldRBQ_uNCNvMs1_NtNtBU_7nameres9collectorNtB3f_12ModCollector7collects2_0NCINvNtB2t_6copied9copy_foldBQ_uNCINvNvB1B_8for_each4callBQ_QNCB39_s1_0E0E0E0EBU_.exit ], [ %i.bt, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter11filter_foldRNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIduNCNvMs1_NtNtB16_7nameres9collectorNtB1V_12ModCollector7collects3_0NCINvNtB6_6copied9copy_foldB12_uNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB12_NCB1P_s1_0E0E0E0B16_.exit ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.0.i5 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !range !44, !noalias !2389, !noundef !5 ; 2 uses
  %.not9 = icmp eq i32 %i.bq, 3
  br i1 %.not9, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter11filter_foldRNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIduNCNvMs1_NtNtB16_7nameres9collectorNtB1V_12ModCollector7collects3_0NCINvNtB6_6copied9copy_foldB12_uNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB12_NCB1P_s1_0E0E0E0B16_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !2390)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !alias.scope !2391, !noundef !5
  call fastcc void @_RNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector7collects1_0Bb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, i32 noundef range(i32 0, 16) %i.bq, i32 noundef %i.bs) #40, !noalias !2390, !inline_history !2380
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter11filter_foldRNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIduNCNvMs1_NtNtB16_7nameres9collectorNtB1V_12ModCollector7collects3_0NCINvNtB6_6copied9copy_foldB12_uNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB12_NCB1P_s1_0E0E0E0B16_.exit

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter11filter_foldRNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIduNCNvMs1_NtNtB16_7nameres9collectorNtB1V_12ModCollector7collects3_0NCINvNtB6_6copied9copy_foldB12_uNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB12_NCB1P_s1_0E0E0E0B16_.exit: ; preds = %bb.j, %bb.k
  %i.bt = add nuw nsw i64 %.sroa.01.0.i5, 1       ; 2 uses
  %i.bu = icmp eq i64 %i.bt, %2
  br i1 %i.bu, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters6filter11filter_foldRBQ_uNCNvMs1_NtNtBU_7nameres9collectorNtB3f_12ModCollector7collects3_0NCINvNtB2t_6copied9copy_foldBQ_uNCINvNvB1B_8for_each4callBQ_NCB39_s1_0E0E0E0EBU_.exit, label %bb.j

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters6filter11filter_foldRBQ_uNCNvMs1_NtNtBU_7nameres9collectorNtB3f_12ModCollector7collects3_0NCINvNtB2t_6copied9copy_foldBQ_uNCINvNvB1B_8for_each4callBQ_NCB39_s1_0E0E0E0EBU_.exit.critedge: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters6filter11filter_foldRBQ_uNCNvMs1_NtNtBU_7nameres9collectorNtB3f_12ModCollector7collects3_0NCINvNtB2t_6copied9copy_foldBQ_uNCINvNvB1B_8for_each4callBQ_NCB39_s1_0E0E0E0EBU_.exit

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters6filter11filter_foldRBQ_uNCNvMs1_NtNtBU_7nameres9collectorNtB3f_12ModCollector7collects3_0NCINvNtB2t_6copied9copy_foldBQ_uNCINvNvB1B_8for_each4callBQ_NCB39_s1_0E0E0E0EBU_.exit: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter11filter_foldRNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIduNCNvMs1_NtNtB16_7nameres9collectorNtB1V_12ModCollector7collects3_0NCINvNtB6_6copied9copy_foldB12_uNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB12_NCB1P_s1_0E0E0E0B16_.exit, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters6filter11filter_foldRBQ_uNCNvMs1_NtNtBU_7nameres9collectorNtB3f_12ModCollector7collects3_0NCINvNtB2t_6copied9copy_foldBQ_uNCINvNvB1B_8for_each4callBQ_NCB39_s1_0E0E0E0EBU_.exit.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.l:                                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters6filter11filter_foldRBQ_uNCNvMs1_NtNtBU_7nameres9collectorNtB3f_12ModCollector7collects3_0NCINvNtB2t_6copied9copy_foldBQ_uNCINvNvB1B_8for_each4callBQ_NCB39_s1_0E0E0E0EBU_.exit, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters6copied9copy_foldBQ_uNCINvNvB1B_8for_each4callBQ_NCNvMs1_NtNtBU_7nameres9collectorNtB3D_12ModCollector7collects1_0E0E0EBU_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBP_7nameres10ModuleDataNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11insert_fullBP_(ptr dead_on_unwind noalias nofree noundef writable sret([608 x i8]) align 8 captures(none) dereferenceable(608) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(600) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [600 x i8], align 8               ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 3 uses
  store i32 %2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %3, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = invoke noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtCsileJQcQObtj_7hir_def10ModuleIdLtEB1B_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.a, ptr noundef nonnull align 8 dereferenceable(600) %4, i64 600, i1 false)
  call void @_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBM_7nameres10ModuleDataE11insert_fullBM_(ptr noalias nofree noundef nonnull sret([608 x i8]) align 8 captures(none) dereferenceable(608) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.e, i32 noundef %2, i32 noundef %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(600) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def7nameres10ModuleDataEBF_(ptr noalias nofree noundef align 8 dereferenceable(600) %4) #41
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefj1_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE5entryB25_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = invoke noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @_RNvMNtNtCs3gqD4ldeioo_8indexmap5inner5entryINtNtNtB6_3map5entry5EntryNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefj1_EE3newB2n_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.c, ptr noundef nonnull %2)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr nonnull %2) #41
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtNtCsileJQcQObtj_7hir_def6per_ns5PerNsNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11insert_fullB1v_(ptr dead_on_unwind noalias nofree noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(128) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = invoke noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs33K2ylI4knu_10hir_expand4name4NameNtNtCsileJQcQObtj_7hir_def6per_ns5PerNsE11insert_fullB1s_(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.c, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(128) %3)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr nonnull %2) #41
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1u_13ExternCrateIdEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11insert_fullB1u_(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = invoke noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1r_13ExternCrateIdEEE11insert_fullB1r_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.c, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr nonnull %2) #41
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i1 } @_RNvMs2_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11insert_fullCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = invoke noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = call { i64, i1 } @_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs33K2ylI4knu_10hir_expand4name4NameuE11insert_fullCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.c, ptr noundef nonnull %1)
  ret { i64, i1 } %i.d

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr nonnull %1) #41
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i1 } @_RNvMs2_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs39E2wp1vf7X_6intern6symbol6SymboluNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11insert_fullCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = invoke noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = call { i64, i1 } @_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs39E2wp1vf7X_6intern6symbol6SymboluE11insert_fullCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.c, ptr noundef nonnull %1)
  ret { i64, i1 } %i.d

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e

end_hunk_7
begin_hunk_8_@_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtE10new_structB15_:bb.a
  %i.t = alloca [16 x i8], align 8                ; 3 uses
  %i.u = alloca [8 x i8], align 8                 ; 11 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.048 = alloca [24 x i8], align 8          ; 6 uses
  %.sroa.7 = alloca [12 x i8], align 4            ; 6 uses
  %.sroa.16.sroa.0 = alloca [12 x i8], align 4    ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr %3, ptr %i.aa, align 8, !alias.scope !2592
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ad, ptr %i.ag, align 8, !alias.scope !2592
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.ae, ptr %i.ah, align 8, !alias.scope !2592
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.af, ptr %i.ai, align 8, !alias.scope !2592
  %.sink10.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sink10.i.sroa.gep50 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aj = invoke noundef i64 @_RINvYINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRTRNtNtCsgIpRO4v45SJ_7base_db5input5CrateRINtNtB8_6option6OptionNtCsileJQcQObtj_7hir_def9BlockIdLtERIB2A_NtB2X_10ModuleIdLtERNtNtCs33K2ylI4knu_10hir_expand4name4NameEEB2X_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa)
          to label %bb.b unwind label %.thread    ; 2 uses

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsgIpRO4v45SJ_7base_db5input5CrateINtNtB4_6option6OptionNtCsileJQcQObtj_7hir_def9BlockIdLtEIB1f_NtB1C_10ModuleIdLtENtNtCs33K2ylI4knu_10hir_expand4name4NameEEB1C_(ptr nonnull %.val) #41
          to label %.thread55 unwind label %bb.bo

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal12disambiguate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noundef nonnull align 8 %2, i64 noundef %i.aj, i32 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.al = load i64, ptr %i.y, align 8, !range !7, !noundef !5 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.an = load i8, ptr %i.am, align 8, !range !4, !noundef !5 ; 5 uses
  store i64 %i.al, ptr %i.z, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i8 %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %i.ac, ptr %i.ar, align 8
  store i64 %i.aj, ptr %i.x, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 %i.aq, ptr %i.as, align 4
  %i.at = invoke { i32, i32 } @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal17tracked_struct_id(ptr noundef nonnull align 8 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207)
          to label %bb.d unwind label %.thread    ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.au = extractvalue { i32, i32 } %i.at, 0      ; 4 uses
  %i.av = extractvalue { i32, i32 } %i.at, 1      ; 3 uses
  %.not = icmp eq i32 %i.au, 0
  %.sroa.649.0.copyload.pre = load ptr, ptr %i.af, align 8 ; 14 uses
  br i1 %.not, label %bb.an, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %.sroa.036.0.copyload = load i32, ptr %3, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 3 uses
  %.sroa.6.0.copyload = load i32, ptr %i.ad, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx, i64 12, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2593)
  call void @llvm.experimental.noalias.scope.decl(metadata !2594)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i32 %i.au, ptr %i.u, align 8, !noalias !2595
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 6 uses
  store i32 %i.av, ptr %i.aw, align 4, !noalias !2595
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.az = invoke noundef ptr @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table7get_rawINtNtB8_14tracked_struct5ValueNtCsileJQcQObtj_7hir_def10ModuleIdLtEEB1n_(ptr noundef nonnull align 8 %i.ay, i32 noundef range(i32 1, 0) %i.au, i32 noundef %i.av)
          to label %bb.f unwind label %bb.af, !noalias !2595 ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 3 uses
  %i.bb = invoke noundef i64 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision4load(ptr noundef nonnull align 8 %i.ba)
          to label %bb.g unwind label %bb.af, !noalias !2595 ; 3 uses

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  %i.bc = load i64, ptr %i.ax, align 8, !range !7, !noalias !2595, !noundef !5
  %i.bd = icmp eq i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2595
  br label %.invoke.i

bb.j:                                             ; preds = %bb.h
  %i.be = load i32, ptr %i.aw, align 4, !noalias !2595, !noundef !5
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.bg = load i32, ptr %i.u, align 8, !range !11, !noalias !2595, !noundef !5 ; 2 uses
  %i.bh = load i32, ptr %i.aw, align 4, !noalias !2595, !noundef !5 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.649.0.copyload.pre) ]
  %i.bi = ptrtoint ptr %.sroa.649.0.copyload.pre to i64
  %i.bj = and i64 %i.bi, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i, label %.thread65, label %.noexc

.noexc:                                           ; preds = %bb.k
  %i.bk = getelementptr i8, ptr %.sroa.649.0.copyload.pre, i64 -1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  %i.bl = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.bk)
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2595
  store ptr %i.bn, ptr %i.n, align 8, !noalias !2595
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8, !noalias !2595
  %i.bp = icmp eq i64 %i.bo, 2
  br i1 %i.bp, label %bb.l, label %.noexc15, !prof !6

bb.l:                                             ; preds = %.noexc
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
  br label %.noexc15

.noexc15:                                         ; preds = %bb.l, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2595
  store ptr %i.bn, ptr %i.m, align 8, !noalias !2595
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2595
  br label %.thread65

bb.m:                                             ; preds = %bb.j
  %i.bq = invoke noundef i64 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision4swap(ptr noundef nonnull align 8 %i.ba, i64 noundef 0)
          to label %bb.w unwind label %bb.af, !noalias !2595

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2595
  store ptr %0, ptr %i.s, align 8, !noalias !2595
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.u, ptr %i.br, align 8, !noalias !2595
  %i.bs = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2595
  %i.bt = icmp ult i64 %i.bs, 3
  br i1 %i.bt, label %bb.o, label %bb.ah

bb.o:                                             ; preds = %bb.n
  %i.bu = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE6update10___CALLSITE, i64 16) monotonic, align 8, !noalias !2595 ; 3 uses
  switch i8 %i.bu, label %bb.p [
    i8 0, label %bb.ah
    i8 1, label %bb.q
    i8 2, label %bb.q
  ], !prof !26

bb.p:                                             ; preds = %bb.o
  %i.bv = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE6update10___CALLSITE)
          to label %bb.r unwind label %bb.af, !noalias !2595 ; 2 uses

bb.q:                                             ; preds = %bb.o, %bb.r, %bb.o
  %.sroa.08.0.i = phi i8 [ %i.bv, %bb.r ], [ %i.bu, %bb.o ], [ %i.bu, %bb.o ]
  %i.bw = load ptr, ptr @_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE6update10___CALLSITE, align 8, !noalias !2595, !nonnull !5, !align !13, !noundef !5
  %i.bx = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bw, i8 noundef %.sroa.08.0.i)
          to label %bb.s unwind label %bb.af, !noalias !2595

bb.r:                                             ; preds = %bb.p
  %i.by = icmp eq i8 %i.bv, 0
  br i1 %i.by, label %bb.ah, label %bb.q

bb.s:                                             ; preds = %bb.q
  br i1 %i.bx, label %bb.t, label %bb.ah

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2595
  %i.bz = load ptr, ptr @_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE6update10___CALLSITE, align 8, !noalias !2595, !nonnull !5, !align !13, !noundef !5
  store ptr %i.bz, ptr %i.r, align 8, !noalias !2595
  %i.ca = invoke noundef zeroext i1 @_RINvNtCsaMQbKjKCVRW_12tracing_core10dispatcher11get_defaultbNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB14_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtE6updates_0EB25_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r)
          to label %bb.u unwind label %bb.af, !noalias !2595

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2595
  br i1 %i.ca, label %bb.v, label %bb.ah

bb.v:                                             ; preds = %bb.u
  invoke void @_RNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtE6update0B17_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s)
          to label %bb.ah unwind label %bb.af, !noalias !2595

bb.w:                                             ; preds = %bb.m
  %.not40.i = icmp eq i64 %i.bb, %i.bq
  br i1 %.not40.i, label %.noexc17, label %bb.x, !prof !45

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2595
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.x, %bb.i
  %.sink10.i.sroa.phi = phi ptr [ %.sink10.i.sroa.gep, %bb.i ], [ %.sink10.i.sroa.gep50, %bb.x ]
  %.sink10.i = phi ptr [ %i.t, %bb.i ], [ %i.q, %bb.x ] ; 2 uses
  %i.cb = phi ptr [ @215, %bb.i ], [ @219, %bb.x ]
  %i.cc = phi ptr [ @221, %bb.i ], [ @220, %bb.x ]
  store ptr %i.u, ptr %.sink10.i, align 8, !noalias !2595
  store ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa2idNtB5_2IdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sink10.i.sroa.phi, align 8, !noalias !2595
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull %i.cb, ptr noundef nonnull %.sink10.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cc) #43
          to label %.cont.i unwind label %bb.af, !noalias !2595

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.noexc17:                                         ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %i.az, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2595
  store i32 %.sroa.036.0.copyload, ptr %i.p, align 8, !noalias !2593
  %.sroa.5.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx38, align 4, !noalias !2593
  %.sroa.6.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx40, align 8, !noalias !2593
  %.sroa.7.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx42, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7, i64 12, i1 false), !noalias !2593
  %.sroa.843.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %.sroa.649.0.copyload.pre, ptr %.sroa.843.0..sroa_idx44, align 8, !noalias !2593
  %i.ce = call noundef zeroext i1 @_RNvXs_NvCsileJQcQObtj_7hir_defsi_1__NtB6_10ModuleIdLtNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct13Configuration13update_fields(i64 noundef %i.al, ptr noundef nonnull align 8 %i.cd, ptr noundef nonnull %i.az, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2595
  br i1 %i.ce, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.ac, %.noexc17
  %i.cf = getelementptr inbounds nuw i8, ptr %i.az, i64 56 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 8, !range !4, !noalias !2595, !noundef !5
  %i.ch = icmp samesign ult i8 %i.an, %i.cg
  br i1 %i.ch, label %bb.ad, label %.noexc21

bb.z:                                             ; preds = %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2595
  %i.ci = load <2 x i32>, ptr %i.u, align 8, !noalias !2595
  store <2 x i32> %i.ci, ptr %i.l, align 8, !noalias !2596
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ck = load ptr, ptr %i.cj, align 128, !noalias !2596, !nonnull !5, !noundef !5
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2596
  store ptr %i.cl, ptr %i.k, align 8, !noalias !2596
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.cd, ptr %i.cm, align 8, !noalias !2596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2596
  store ptr %1, ptr %i.j, align 8, !noalias !2596
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %0, ptr %i.cn, align 8, !noalias !2596
  %i.co = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.l, ptr %i.co, align 8, !noalias !2596
  invoke void @_RINvMs5_NtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB6_21MemoTableWithTypesMut10take_memosNCNvMs3_NtBa_14tracked_structINtB1r_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtE11clear_memos0EB2b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc18 unwind label %bb.aa, !noalias !2595

.noexc18:                                         ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2596
  call void @_RNvMNtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB2_9MemoTable5reset(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2595
  %i.cp = load i32, ptr %i.aw, align 4, !noalias !2595, !noundef !5 ; 2 uses
  %i.cq = icmp eq i32 %i.cp, -1
  br i1 %i.cq, label %.noexc19, label %bb.ac, !prof !6

bb.aa:                                            ; preds = %bb.z
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB8_14IngredientImplpE11clear_memosNtB2_14TableDropGuardNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %.thread55 unwind label %bb.ab, !noalias !2595

bb.ab:                                            ; preds = %bb.aa
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !2595
  unreachable

bb.ac:                                            ; preds = %.noexc18
  %i.ct = add nuw i32 %i.cp, 1
  store i32 %i.ct, ptr %i.aw, align 4, !noalias !2595
  br label %bb.y

.noexc19:                                         ; preds = %.noexc18
  call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @217, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #43
  unreachable

.noexc21:                                         ; preds = %bb.ad, %bb.y
  store i8 %i.an, ptr %i.cf, align 8, !noalias !2595
  %i.cu = load i64, ptr %i.ax, align 8, !range !7, !noalias !2595, !noundef !5
  %i.cv = call noundef i64 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision4swap(ptr noundef nonnull align 8 %i.ba, i64 noundef %i.cu)
  %.not41.i = icmp eq i64 %i.cv, 0
  br i1 %.not41.i, label %bb.ae, label %.noexc22, !prof !12

bb.ad:                                            ; preds = %bb.y
  call void @_RNvXs_NvCsileJQcQObtj_7hir_defsi_1__NtB6_10ModuleIdLtNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct13Configuration13new_revisions(i64 noundef %i.al)
  br label %.noexc21

.noexc22:                                         ; preds = %.noexc21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2595
  store ptr %i.u, ptr %i.o, align 8, !noalias !2595
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa2idNtB5_2IdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !2595
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @215, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @216) #43
  unreachable

bb.ae:                                            ; preds = %.noexc21
  %i.cw = load i32, ptr %i.u, align 8, !range !11, !noalias !2595, !noundef !5
  %i.cx = load i32, ptr %i.aw, align 4, !noalias !2595, !noundef !5
  br label %.thread65

bb.af:                                            ; preds = %.invoke.i, %bb.v, %bb.t, %bb.q, %bb.p, %bb.m, %bb.f, %bb.e
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.649.0.copyload.pre) ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsgIpRO4v45SJ_7base_db5input5CrateINtNtB4_6option6OptionNtCsileJQcQObtj_7hir_def9BlockIdLtEIB1f_NtB1C_10ModuleIdLtENtNtCs33K2ylI4knu_10hir_expand4name4NameEEB1C_(ptr nonnull %.sroa.649.0.copyload.pre) #41
          to label %.thread55 unwind label %bb.ag, !noalias !2595

bb.ag:                                            ; preds = %bb.af
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !2595
  unreachable

.thread65:                                        ; preds = %bb.k, %.noexc15, %bb.ae
  %.sroa.12.0.ph = phi i32 [ %i.cx, %bb.ae ], [ %i.bh, %.noexc15 ], [ %i.bh, %bb.k ]
  %.sroa.8.0.ph = phi i32 [ %i.cw, %bb.ae ], [ %i.bg, %.noexc15 ], [ %i.bg, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.aj

bb.ah:                                            ; preds = %bb.n, %bb.o, %bb.r, %bb.s, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.16.sroa.0, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7, i64 12, i1 false), !alias.scope !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %.not6 = icmp eq i32 %.sroa.036.0.copyload, 0
  br i1 %.not6, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.16.sroa.0, i64 12, i1 false)
  store i32 %.sroa.036.0.copyload, ptr %3, align 8
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 4
  store i32 %.sroa.6.0.copyload, ptr %i.ad, align 8
  store ptr %.sroa.649.0.copyload.pre, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.sroa.0)
  br label %bb.an

bb.aj:                                            ; preds = %.thread65, %bb.ah
  %.sroa.8.072 = phi i32 [ %.sroa.8.0.ph, %.thread65 ], [ %.sroa.5.0.copyload, %bb.ah ] ; 3 uses
  %.sroa.12.071 = phi i32 [ %.sroa.12.0.ph, %.thread65 ], [ %.sroa.6.0.copyload, %bb.ah ] ; 3 uses
  %i.cz = icmp eq i32 %.sroa.12.071, %i.av
  %.not7 = icmp eq i32 %.sroa.8.072, %i.au
  %or.cond = select i1 %i.cz, i1 %.not7, i1 false
  br i1 %or.cond, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  call void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal23store_tracked_struct_id(ptr noundef nonnull align 8 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.w, i32 noundef %.sroa.8.072, i32 noundef %.sroa.12.071, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.sroa.0)
  br label %bb.am

bb.am:                                            ; preds = %bb.bn, %bb.al
  %.sroa.0.0.i.pn = phi i32 [ %.sroa.0.0.i, %bb.bn ], [ %.sroa.8.072, %bb.al ]
  %.sroa.5.0.i.pn = phi i32 [ %.sroa.5.0.i, %bb.bn ], [ %.sroa.12.071, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.pn75 = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i.pn, 0
  %.pn11 = insertvalue { i32, i32 } %.pn75, i32 %.sroa.5.0.i.pn, 1
  ret { i32, i32 } %.pn11

bb.an:                                            ; preds = %bb.d, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.048)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.048, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2597
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.db = load i64, ptr %i.da, align 8, !range !7, !noalias !2597, !noundef !5 ; 2 uses
  store i64 %i.db, ptr %i.i, align 8, !noalias !2597
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.bk, %bb.an
  %i.de = invoke { i32, i32 } @_RNvMs4_NtCsgRlkuWZPriE_15crossbeam_queue9seg_queueINtB5_8SegQueueNtNtCsd9Lm8bEdjjY_5salsa2id2IdE3popCsileJQcQObtj_7hir_def(ptr noundef nonnull align 128 %0)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2597 ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %i.df = extractvalue { i32, i32 } %i.de, 0      ; 4 uses
  %.not.i23 = icmp eq i32 %i.df, 0
  br i1 %.not.i23, label %.noexc24, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
end_hunk_8
begin_hunk_9_@_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtE10new_structB15_:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !2597
  unreachable

bb.bn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsd9Lm8bEdjjY_5salsa14tracked_struct5ValueNtCsileJQcQObtj_7hir_def10ModuleIdLtEEB1o_.exit.i, %.noexc24
  %.sroa.5.0.i = phi i32 [ %i.dm, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsd9Lm8bEdjjY_5salsa14tracked_struct5ValueNtCsileJQcQObtj_7hir_def10ModuleIdLtEEB1o_.exit.i ], [ %i.dl, %.noexc24 ] ; 2 uses
  %.sroa.0.0.i = phi i32 [ %i.df, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsd9Lm8bEdjjY_5salsa14tracked_struct5ValueNtCsileJQcQObtj_7hir_def10ModuleIdLtEEB1o_.exit.i ], [ %i.dj, %.noexc24 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2597
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.048)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  call void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal23store_tracked_struct_id(ptr noundef nonnull align 8 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.v, i32 noundef %.sroa.0.0.i, i32 noundef %.sroa.5.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @209)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.am

.thread55:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread.i, %bb.at, %bb.af, %bb.aa, %.thread
  %.pn953 = phi { ptr, i32 } [ %i.ak, %.thread ], [ %i.dq, %bb.at ], [ %lpad.thr_comm.i, %bb.af ], [ %i.cr, %bb.aa ], [ %eh.lpad-body24.i, %.thread.i ], [ %lpad.loopexit.split-lp91, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn953

bb.bo:                                            ; preds = %.thread
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtE11leak_fieldsB15_(ptr nofree noundef nonnull readnone align 128 captures(none) %0, ptr noundef nonnull align 8 %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.c = tail call noundef ptr @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table7get_rawINtNtB8_14tracked_struct5ValueNtCsileJQcQObtj_7hir_def10ModuleIdLtEEB1n_(ptr noundef nonnull align 8 %i.b, i32 noundef %2, i32 noundef %3) ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !range !7, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.f = tail call noundef i64 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision4load(ptr noundef nonnull align 8 %i.e) ; 3 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %i.f, %i.d
  br i1 %i.g, label %_RNvNtCsd9Lm8bEdjjY_5salsa14tracked_struct17acquire_read_lock.exit, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @253, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #39
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = tail call { i64, i64 } @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision16compare_exchange(ptr noundef nonnull align 8 %i.e, i64 noundef %i.f, i64 noundef range(i64 1, 0) %i.d)
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvNtCsd9Lm8bEdjjY_5salsa14tracked_struct17acquire_read_lock.exit, label %bb.b

_RNvNtCsd9Lm8bEdjjY_5salsa14tracked_struct17acquire_read_lock.exit: ; preds = %bb.c, %bb.e
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtE15untracked_fieldB15_(ptr nofree noundef nonnull readnone align 128 captures(none) %0, ptr noundef nonnull align 8 %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.c = tail call noundef ptr @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table7get_rawINtNtB8_14tracked_struct5ValueNtCsileJQcQObtj_7hir_def10ModuleIdLtEEB1n_(ptr noundef nonnull align 8 %i.b, i32 noundef %2, i32 noundef %3) ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !range !7, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.f = tail call noundef i64 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision4load(ptr noundef nonnull align 8 %i.e) ; 3 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %i.f, %i.d
  br i1 %i.g, label %_RNvNtCsd9Lm8bEdjjY_5salsa14tracked_struct17acquire_read_lock.exit, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @253, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #39
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = tail call { i64, i64 } @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision16compare_exchange(ptr noundef nonnull align 8 %i.e, i64 noundef %i.f, i64 noundef range(i64 1, 0) %i.d)
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvNtCsd9Lm8bEdjjY_5salsa14tracked_struct17acquire_read_lock.exit, label %bb.b

_RNvNtCsd9Lm8bEdjjY_5salsa14tracked_struct17acquire_read_lock.exit: ; preds = %bb.c, %bb.e
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE10new_structB15_(ptr noundef nonnull align 128 %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 4                 ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 4                 ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 4                 ; 10 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 4                ; 6 uses
  %i.t = alloca [24 x i8], align 4                ; 9 uses
  %.sroa.16 = alloca [12 x i8], align 4           ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %3, ptr %i.x, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = call noundef i64 @_RINvYINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRTRINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB21_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprEERNtCsileJQcQObtj_7hir_def10ModuleIdLtEEB4J_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal12disambiguate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noundef nonnull align 8 %2, i64 noundef %i.ac, i32 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ad = load i64, ptr %i.v, align 8, !range !7, !noundef !5 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !4, !noundef !5 ; 5 uses
  store i64 %i.ad, ptr %i.w, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i8 %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %i.z, ptr %i.aj, align 8
  store i64 %i.ac, ptr %i.u, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 %i.ai, ptr %i.ak, align 4
  %i.al = call { i32, i32 } @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal17tracked_struct_id(ptr noundef nonnull align 8 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) ; 2 uses
  %i.am = extractvalue { i32, i32 } %i.al, 0      ; 6 uses
  %i.an = extractvalue { i32, i32 } %i.al, 1      ; 6 uses
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.t, ptr noundef nonnull align 4 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2613)
  call void @llvm.experimental.noalias.scope.decl(metadata !2614)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i32 %i.am, ptr %i.p, align 4, !noalias !2615
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 4 uses
  store i32 %i.an, ptr %i.ao, align 4, !noalias !2615
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ar = call noundef ptr @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table7get_rawINtNtB8_14tracked_struct5ValueNtCsileJQcQObtj_7hir_def9BlockIdLtEEB1n_(ptr noundef nonnull align 8 %i.aq, i32 noundef range(i32 1, 0) %i.am, i32 noundef %i.an), !noalias !2615 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 3 uses
  %i.at = call noundef i64 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision4load(ptr noundef nonnull align 8 %i.as), !noalias !2615 ; 3 uses
  %.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.au = load i64, ptr %i.ap, align 8, !range !7, !noalias !2615, !noundef !5
  %i.av = icmp eq i64 %i.at, %i.au
  br i1 %i.av, label %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE6updateB15_.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2615
  store ptr %i.p, ptr %i.o, align 8, !noalias !2615
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa2idNtB5_2IdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !2615
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @215, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @221) #39, !noalias !2615
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aw = icmp eq i32 %i.an, -1
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2615
  store ptr %0, ptr %i.n, align 8, !noalias !2615
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.p, ptr %i.ax, align 8, !noalias !2615
  %i.ay = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2615
  %i.az = icmp ult i64 %i.ay, 3
  br i1 %i.az, label %bb.h, label %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE6updateB15_.exit

bb.g:                                             ; preds = %bb.e
  %i.ba = call noundef i64 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision4swap(ptr noundef nonnull align 8 %i.as, i64 noundef 0), !noalias !2615
  %.not39.i = icmp eq i64 %i.at, %i.ba
  br i1 %.not39.i, label %bb.n, label %bb.m, !prof !45

bb.h:                                             ; preds = %bb.f
  %i.bb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE6update10___CALLSITE, i64 16) monotonic, align 8, !noalias !2615 ; 3 uses
  switch i8 %i.bb, label %bb.i [
    i8 0, label %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE6updateB15_.exit
    i8 1, label %bb.j
    i8 2, label %bb.j
  ], !prof !26

bb.i:                                             ; preds = %bb.h
  %i.bc = call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE6update10___CALLSITE) #44, !noalias !2615 ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE6updateB15_.exit, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.h
  %.sroa.08.0.i = phi i8 [ %i.bc, %bb.i ], [ %i.bb, %bb.h ], [ %i.bb, %bb.h ]
  %i.be = load ptr, ptr @_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE6update10___CALLSITE, align 8, !noalias !2615, !nonnull !5, !align !13, !noundef !5
  %i.bf = call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.be, i8 noundef %.sroa.08.0.i), !noalias !2615
  br i1 %i.bf, label %bb.k, label %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE6updateB15_.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2615
  %i.bg = load ptr, ptr @_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE6update10___CALLSITE, align 8, !noalias !2615, !nonnull !5, !align !13, !noundef !5
  store ptr %i.bg, ptr %i.m, align 8, !noalias !2615
  %i.bh = call noundef zeroext i1 @_RINvNtCsaMQbKjKCVRW_12tracing_core10dispatcher11get_defaultbNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB14_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE6updates_0EB25_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m), !noalias !2615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2615
  br i1 %i.bh, label %bb.l, label %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE6updateB15_.exit

bb.l:                                             ; preds = %bb.k
  call void @_RNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE6update0B17_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n) #44, !noalias !2615
  br label %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE6updateB15_.exit

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2615
  store ptr %i.p, ptr %i.l, align 8, !noalias !2615
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa2idNtB5_2IdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !2615
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @219, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #39, !noalias !2615
  unreachable

bb.n:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 3 uses
  %i.bj = call noundef zeroext i1 @_RNvXs_NvCsileJQcQObtj_7hir_defsh_1__NtB6_9BlockIdLtNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct13Configuration13update_fields(i64 noundef %i.ad, ptr noundef nonnull align 8 %i.bi, ptr noundef nonnull %i.ar, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.t), !noalias !2613
  br i1 %i.bj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.s, %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 48 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8, !range !4, !noalias !2615, !noundef !5
  %i.bm = icmp samesign ult i8 %i.af, %i.bl
  br i1 %i.bm, label %bb.v, label %bb.u

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2615
  store i32 %i.am, ptr %i.j, align 4, !noalias !2616
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.an, ptr %i.bn, align 4, !noalias !2616
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bp = load ptr, ptr %i.bo, align 128, !noalias !2616, !nonnull !5, !noundef !5
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2616
  store ptr %i.bq, ptr %i.i, align 8, !noalias !2616
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.bi, ptr %i.br, align 8, !noalias !2616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2616
  store ptr %1, ptr %i.h, align 8, !noalias !2616
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.bs, align 8, !noalias !2616
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.j, ptr %i.bt, align 8, !noalias !2616
  invoke void @_RINvMs5_NtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB6_21MemoTableWithTypesMut10take_memosNCNvMs3_NtBa_14tracked_structINtB1r_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE11clear_memos0EB2b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE11clear_memosB15_.exit.i unwind label %bb.q, !noalias !2615

common.resume:                                    ; preds = %bb.q, %bb.ah
  %common.resume.op = phi { ptr, i32 } [ %i.de, %bb.ah ], [ %i.bu, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.p
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB8_14IngredientImplpE11clear_memosNtB2_14TableDropGuardNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %common.resume unwind label %bb.r, !noalias !2615

bb.r:                                             ; preds = %bb.q
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !2615
  unreachable

_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE11clear_memosB15_.exit.i: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2616
  call void @_RNvMNtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB2_9MemoTable5reset(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bi), !noalias !2615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2615
  %i.bw = load i32, ptr %i.ao, align 4, !noalias !2615, !noundef !5 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, -1
  br i1 %i.bx, label %bb.t, label %bb.s, !prof !6

bb.s:                                             ; preds = %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE11clear_memosB15_.exit.i
  %i.by = add nuw i32 %i.bw, 1
  store i32 %i.by, ptr %i.ao, align 4, !noalias !2615
  br label %bb.o

bb.t:                                             ; preds = %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE11clear_memosB15_.exit.i
  call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @217, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #39, !noalias !2615
  unreachable

bb.u:                                             ; preds = %bb.v, %bb.o
  store i8 %i.af, ptr %i.bk, align 8, !noalias !2615
  %i.bz = load i64, ptr %i.ap, align 8, !range !7, !noalias !2615, !noundef !5
  %i.ca = call noundef i64 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision4swap(ptr noundef nonnull align 8 %i.as, i64 noundef %i.bz), !noalias !2615
  %.not40.i = icmp eq i64 %i.ca, 0
  br i1 %.not40.i, label %bb.x, label %bb.w, !prof !12

bb.v:                                             ; preds = %bb.o
  call void @_RNvXs_NvCsileJQcQObtj_7hir_defsh_1__NtB6_9BlockIdLtNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct13Configuration13new_revisions(i64 noundef %i.ad), !noalias !2615
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2615
  store ptr %i.p, ptr %i.k, align 8, !noalias !2615
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa2idNtB5_2IdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !2615
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @215, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @216) #39, !noalias !2615
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.cb = load i32, ptr %i.p, align 4, !range !11, !noalias !2615, !noundef !5
  %i.cc = load i32, ptr %i.ao, align 4, !noalias !2615, !noundef !5
  br label %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE6updateB15_.exit.thread

_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE6updateB15_.exit.thread: ; preds = %bb.x, %bb.c
  %.sroa.12.0.ph = phi i32 [ %i.an, %bb.c ], [ %i.cc, %bb.x ]
  %.sroa.8.0.ph = phi i32 [ %i.am, %bb.c ], [ %i.cb, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.z

_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE6updateB15_.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2615
  %.sroa.0.0.copyload12 = load i32, ptr %i.t, align 4, !alias.scope !2615 ; 2 uses
  %.sroa.8.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.sroa.8.0.copyload14 = load i32, ptr %.sroa.8.0..sroa_idx13, align 4, !alias.scope !2615 ; 2 uses
  %.sroa.12.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.12.0.copyload17 = load i32, ptr %.sroa.12.0..sroa_idx16, align 4, !alias.scope !2615 ; 2 uses
  %.sroa.16.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.16, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.16.0..sroa_idx19, i64 12, i1 false), !alias.scope !2615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.not5 = icmp eq i32 %.sroa.0.0.copyload12, 2
  br i1 %.not5, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE6updateB15_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.16, i64 12, i1 false)
  store i32 %.sroa.0.0.copyload12, ptr %3, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sroa.8.0.copyload14, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.12.0.copyload17, ptr %.sroa.3.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  br label %bb.ad

bb.z:                                             ; preds = %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE6updateB15_.exit.thread, %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE6updateB15_.exit
  %.sroa.8.026 = phi i32 [ %.sroa.8.0.ph, %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE6updateB15_.exit.thread ], [ %.sroa.8.0.copyload14, %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE6updateB15_.exit ] ; 3 uses
  %.sroa.12.025 = phi i32 [ %.sroa.12.0.ph, %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE6updateB15_.exit.thread ], [ %.sroa.12.0.copyload17, %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE6updateB15_.exit ] ; 3 uses
  %i.cd = icmp eq i32 %.sroa.12.025, %i.an
  %.not6 = icmp eq i32 %.sroa.8.026, %i.am
  %or.cond = select i1 %i.cd, i1 %.not6, i1 false
  br i1 %or.cond, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  call void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal23store_tracked_struct_id(ptr noundef nonnull align 8 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.r, i32 noundef %.sroa.8.026, i32 noundef %.sroa.12.025, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE8allocateB15_.exit, %bb.ab
  %.sroa.0.0.i.pn = phi i32 [ %.sroa.0.0.i, %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE8allocateB15_.exit ], [ %.sroa.8.026, %bb.ab ]
  %.sroa.5.0.i.pn = phi i32 [ %.sroa.5.0.i, %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE8allocateB15_.exit ], [ %.sroa.12.025, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.pn29 = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i.pn, 0
  %.pn8 = insertvalue { i32, i32 } %.pn29, i32 %.sroa.5.0.i.pn, 1
  ret { i32, i32 } %.pn8

bb.ad:                                            ; preds = %bb.a, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.s, ptr noundef nonnull align 4 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2617
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cf = load i64, ptr %i.ce, align 8, !range !7, !noalias !2617, !noundef !5 ; 2 uses
  store i64 %i.cf, ptr %i.g, align 8, !noalias !2617
  %i.cg = call { i32, i32 } @_RNvMs4_NtCsgRlkuWZPriE_15crossbeam_queue9seg_queueINtB5_8SegQueueNtNtCsd9Lm8bEdjjY_5salsa2id2IdE3popCsileJQcQObtj_7hir_def(ptr noundef nonnull align 128 %0), !noalias !2617 ; 2 uses
  %i.ch = extractvalue { i32, i32 } %i.cg, 0      ; 2 uses
  %.not47.i = icmp eq i32 %i.ch, 0
end_hunk_9
begin_hunk_10_@_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE15untracked_fieldB15_:bb.a
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %i.f, %i.d
  br i1 %i.g, label %_RNvNtCsd9Lm8bEdjjY_5salsa14tracked_struct17acquire_read_lock.exit, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @253, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #39
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = tail call { i64, i64 } @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision16compare_exchange(ptr noundef nonnull align 8 %i.e, i64 noundef %i.f, i64 noundef range(i64 1, 0) %i.d)
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvNtCsd9Lm8bEdjjY_5salsa14tracked_struct17acquire_read_lock.exit, label %bb.b

_RNvNtCsd9Lm8bEdjjY_5salsa14tracked_struct17acquire_read_lock.exit: ; preds = %bb.c, %bb.e
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairE10new_structB17_(ptr noundef nonnull align 128 %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(288) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [312 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [312 x i8], align 8               ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 4                 ; 6 uses
  %i.h = alloca [312 x i8], align 8               ; 9 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [288 x i8], align 8               ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 3 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 3 uses
  %i.s = alloca [8 x i8], align 8                 ; 11 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [288 x i8], align 8               ; 5 uses
  %i.w = alloca [288 x i8], align 8               ; 11 uses
  %.sroa.16 = alloca [272 x i8], align 8          ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 232
  %.sink13.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sink13.i.sroa.gep35 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.ad, ptr %i.aa, align 8
  %i.ae = invoke noundef i64 @_RINvYINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRRNtNtCsileJQcQObtj_7hir_def7nameres11LocalDefMapEB1Z_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa)
          to label %bb.b unwind label %.thread    ; 2 uses

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBE_11LocalDefMapEEBG_(ptr noalias nofree noundef align 8 dereferenceable(288) %3) #41
          to label %.thread40 unwind label %bb.bl

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal12disambiguate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noundef nonnull align 8 %2, i64 noundef %i.ae, i32 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ag = load i64, ptr %i.y, align 8, !range !7, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !range !4, !noundef !5
  store i64 %i.ag, ptr %i.z, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store i8 %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %i.ac, ptr %i.am, align 8
  store i64 %i.ae, ptr %i.x, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 %i.al, ptr %i.an, align 4
  %i.ao = invoke { i32, i32 } @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal17tracked_struct_id(ptr noundef nonnull align 8 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207)
          to label %bb.d unwind label %.thread    ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.ap = extractvalue { i32, i32 } %i.ao, 0      ; 4 uses
  %i.aq = extractvalue { i32, i32 } %i.ao, 1      ; 3 uses
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.al, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.w, ptr noundef nonnull align 8 dereferenceable(288) %3, i64 288, i1 false)
  %.val = load i64, ptr %i.z, align 8             ; 2 uses
  %.val13 = load i8, ptr %i.aj, align 8           ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2632)
  call void @llvm.experimental.noalias.scope.decl(metadata !2633)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i32 %i.ap, ptr %i.s, align 8, !noalias !2634
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 6 uses
  store i32 %i.aq, ptr %i.ar, align 4, !noalias !2634
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.au = invoke noundef ptr @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table7get_rawINtNtB8_14tracked_struct5ValueNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairEEB1p_(ptr noundef nonnull align 8 %i.at, i32 noundef range(i32 1, 0) %i.ap, i32 noundef %i.aq)
          to label %bb.f unwind label %bb.ad, !noalias !2634 ; 5 uses

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 288 ; 3 uses
  %i.aw = invoke noundef i64 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision4load(ptr noundef nonnull align 8 %i.av)
          to label %bb.g unwind label %bb.ad, !noalias !2634 ; 3 uses

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  %i.ax = load i64, ptr %i.as, align 8, !range !7, !noalias !2634, !noundef !5
  %i.ay = icmp eq i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2634
  br label %.invoke.i

bb.j:                                             ; preds = %bb.h
  %i.az = load i32, ptr %i.ar, align 4, !noalias !2634, !noundef !5
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.bb = load i32, ptr %i.s, align 8, !range !11, !noalias !2634, !noundef !5
  %i.bc = load i32, ptr %i.ar, align 4, !noalias !2634, !noundef !5
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBE_11LocalDefMapEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.w)
  br label %.thread50

bb.l:                                             ; preds = %bb.j
  %i.bd = invoke noundef i64 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision4swap(ptr noundef nonnull align 8 %i.av, i64 noundef 0)
          to label %bb.v unwind label %bb.ad, !noalias !2634

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2634
  store ptr %0, ptr %i.q, align 8, !noalias !2634
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.s, ptr %i.be, align 8, !noalias !2634
  %i.bf = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2634
  %i.bg = icmp ult i64 %i.bf, 3
  br i1 %i.bg, label %bb.n, label %bb.af

bb.n:                                             ; preds = %bb.m
  %i.bh = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE6update10___CALLSITE, i64 16) monotonic, align 8, !noalias !2634 ; 3 uses
  switch i8 %i.bh, label %bb.o [
    i8 0, label %bb.af
    i8 1, label %bb.p
    i8 2, label %bb.p
  ], !prof !26

bb.o:                                             ; preds = %bb.n
  %i.bi = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE6update10___CALLSITE)
          to label %bb.q unwind label %bb.ad, !noalias !2634 ; 2 uses

bb.p:                                             ; preds = %bb.n, %bb.q, %bb.n
  %.sroa.08.0.i = phi i8 [ %i.bi, %bb.q ], [ %i.bh, %bb.n ], [ %i.bh, %bb.n ]
  %i.bj = load ptr, ptr @_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE6update10___CALLSITE, align 8, !noalias !2634, !nonnull !5, !align !13, !noundef !5
  %i.bk = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bj, i8 noundef %.sroa.08.0.i)
          to label %bb.r unwind label %bb.ad, !noalias !2634

bb.q:                                             ; preds = %bb.o
  %i.bl = icmp eq i8 %i.bi, 0
  br i1 %i.bl, label %bb.af, label %bb.p

bb.r:                                             ; preds = %bb.p
  br i1 %i.bk, label %bb.s, label %bb.af

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2634
  %i.bm = load ptr, ptr @_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE6update10___CALLSITE, align 8, !noalias !2634, !nonnull !5, !align !13, !noundef !5
  store ptr %i.bm, ptr %i.p, align 8, !noalias !2634
  %i.bn = invoke noundef zeroext i1 @_RINvNtCsaMQbKjKCVRW_12tracing_core10dispatcher11get_defaultbNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB14_14IngredientImplNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairE6updates_0EB27_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %bb.t unwind label %bb.ad, !noalias !2634

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2634
  br i1 %i.bn, label %bb.u, label %bb.af

bb.u:                                             ; preds = %bb.t
  invoke void @_RNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairE6update0B19_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q)
          to label %bb.af unwind label %bb.ad, !noalias !2634

bb.v:                                             ; preds = %bb.l
  %.not41.i = icmp eq i64 %i.aw, %i.bd
  br i1 %.not41.i, label %.noexc14, label %bb.w, !prof !45

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2634
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.w, %bb.i
  %.sink13.i.sroa.phi = phi ptr [ %.sink13.i.sroa.gep, %bb.i ], [ %.sink13.i.sroa.gep35, %bb.w ]
  %.sink13.i = phi ptr [ %i.r, %bb.i ], [ %i.o, %bb.w ] ; 2 uses
  %i.bo = phi ptr [ @215, %bb.i ], [ @219, %bb.w ]
  %i.bp = phi ptr [ @221, %bb.i ], [ @220, %bb.w ]
  store ptr %i.s, ptr %.sink13.i, align 8, !noalias !2634
  store ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa2idNtB5_2IdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sink13.i.sroa.phi, align 8, !noalias !2634
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull %i.bo, ptr noundef nonnull %.sink13.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bp) #43
          to label %.cont.i unwind label %bb.ad, !noalias !2634

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.noexc14:                                         ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %i.au, i64 296 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.n, ptr noundef nonnull align 8 dereferenceable(288) %i.w, i64 288, i1 false), !noalias !2632
  %i.br = call noundef zeroext i1 @_RNvXs_NvNtCsileJQcQObtj_7hir_def7nameres1__NtB6_10DefMapPairNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct13Configuration13update_fields(i64 noundef %.val, ptr noundef nonnull align 8 %i.bq, ptr noundef nonnull %i.au, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2634
  br i1 %i.br, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.ab, %.noexc14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 320 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 8, !range !4, !noalias !2634, !noundef !5
  %i.bu = icmp samesign ult i8 %.val13, %i.bt
  br i1 %i.bu, label %.loopexit.i, label %.noexc19

bb.y:                                             ; preds = %.noexc14
  %i.bv = getelementptr inbounds nuw i8, ptr %i.au, i64 304 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2634
  %i.bw = load <2 x i32>, ptr %i.s, align 8, !noalias !2634
  store <2 x i32> %i.bw, ptr %i.l, align 8, !noalias !2635
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.by = load ptr, ptr %i.bx, align 128, !noalias !2635, !nonnull !5, !noundef !5
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2635
  store ptr %i.bz, ptr %i.k, align 8, !noalias !2635
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.bv, ptr %i.ca, align 8, !noalias !2635
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2635
  store ptr %1, ptr %i.j, align 8, !noalias !2635
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %0, ptr %i.cb, align 8, !noalias !2635
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.l, ptr %i.cc, align 8, !noalias !2635
  invoke void @_RINvMs5_NtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB6_21MemoTableWithTypesMut10take_memosNCNvMs3_NtBa_14tracked_structINtB1r_14IngredientImplNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairE11clear_memos0EB2d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc15 unwind label %bb.z, !noalias !2634

.noexc15:                                         ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2635
  call void @_RNvMNtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB2_9MemoTable5reset(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2634
  %i.cd = load i32, ptr %i.ar, align 4, !noalias !2634, !noundef !5 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, -1
  br i1 %i.ce, label %.noexc16, label %bb.ab, !prof !6

bb.z:                                             ; preds = %bb.y
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB8_14IngredientImplpE11clear_memosNtB2_14TableDropGuardNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %.thread40 unwind label %bb.aa, !noalias !2634

bb.aa:                                            ; preds = %bb.z
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !2634
  unreachable

bb.ab:                                            ; preds = %.noexc15
  %i.ch = add nuw i32 %i.cd, 1
  store i32 %i.ch, ptr %i.ar, align 4, !noalias !2634
  br label %bb.x

.noexc16:                                         ; preds = %.noexc15
  call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @217, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #43
  unreachable

.noexc19:                                         ; preds = %.loopexit.i, %bb.x
  store i8 %.val13, ptr %i.bs, align 8, !noalias !2634
  %i.ci = load i64, ptr %i.as, align 8, !range !7, !noalias !2634, !noundef !5
  %i.cj = call noundef i64 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision4swap(ptr noundef nonnull align 8 %i.av, i64 noundef %i.ci)
  %.not42.i = icmp eq i64 %i.cj, 0
  br i1 %.not42.i, label %bb.ac, label %.noexc20, !prof !12

.loopexit.i:                                      ; preds = %bb.x
  %i.ck = call noundef i64 @_RNvXs_NvNtCsileJQcQObtj_7hir_def7nameres1__NtB6_10DefMapPairNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct13Configuration13new_revisions(i64 noundef %.val) ; 2 uses
  %i.cl = icmp ne i64 %i.ck, 0
  call void @llvm.assume(i1 %i.cl)
  call void @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.bq, i64 noundef %i.ck)
  br label %.noexc19

.noexc20:                                         ; preds = %.noexc19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2634
  store ptr %i.s, ptr %i.m, align 8, !noalias !2634
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa2idNtB5_2IdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !2634
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @215, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @216) #43
  unreachable

bb.ac:                                            ; preds = %.noexc19
  %i.cm = load i32, ptr %i.s, align 8, !range !11, !noalias !2634, !noundef !5
  %i.cn = load i32, ptr %i.ar, align 4, !noalias !2634, !noundef !5
  br label %.thread50

bb.ad:                                            ; preds = %.invoke.i, %bb.u, %bb.s, %bb.p, %bb.o, %bb.l, %bb.f, %bb.e
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBE_11LocalDefMapEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.w) #41
          to label %.thread40 unwind label %bb.ae, !noalias !2632

bb.ae:                                            ; preds = %bb.ad
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !2632
  unreachable

.thread50:                                        ; preds = %bb.k, %bb.ac
  %.sroa.12.0.ph = phi i32 [ %i.bc, %bb.k ], [ %i.cn, %bb.ac ]
  %.sroa.8.0.ph = phi i32 [ %i.bb, %bb.k ], [ %i.cm, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ah

bb.af:                                            ; preds = %bb.m, %bb.n, %bb.q, %bb.r, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2634
  %.sroa.0.0.copyload26 = load i64, ptr %i.w, align 8, !alias.scope !2634 ; 2 uses
  %.sroa.8.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.8.0.copyload28 = load i32, ptr %.sroa.8.0..sroa_idx27, align 8, !alias.scope !2634 ; 2 uses
  %.sroa.12.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.sroa.12.0.copyload31 = load i32, ptr %.sroa.12.0..sroa_idx30, align 4, !alias.scope !2634 ; 2 uses
  %.sroa.16.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.16.0..sroa_idx33, i64 272, i1 false), !alias.scope !2634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.not6 = icmp eq i64 %.sroa.0.0.copyload26, -1
  br i1 %.not6, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.16, i64 272, i1 false)
  store i64 %.sroa.0.0.copyload26, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.8.0.copyload28, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sroa.12.0.copyload31, ptr %.sroa.3.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  br label %bb.al

bb.ah:                                            ; preds = %.thread50, %bb.af
  %.sroa.8.056 = phi i32 [ %.sroa.8.0.ph, %.thread50 ], [ %.sroa.8.0.copyload28, %bb.af ] ; 3 uses
  %.sroa.12.055 = phi i32 [ %.sroa.12.0.ph, %.thread50 ], [ %.sroa.12.0.copyload31, %bb.af ] ; 3 uses
  %i.cp = icmp eq i32 %.sroa.12.055, %i.aq
  %.not7 = icmp eq i32 %.sroa.8.056, %i.ap
  %or.cond = select i1 %i.cp, i1 %.not7, i1 false
  br i1 %or.cond, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  call void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal23store_tracked_struct_id(ptr noundef nonnull align 8 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.u, i32 noundef %.sroa.8.056, i32 noundef %.sroa.12.055, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.bk, %bb.aj
  %.sroa.0.0.i.pn = phi i32 [ %.sroa.0.0.i, %bb.bk ], [ %.sroa.8.056, %bb.aj ]
  %.sroa.5.0.i.pn = phi i32 [ %.sroa.5.0.i, %bb.bk ], [ %.sroa.12.055, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.pn59 = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i.pn, 0
  %.pn11 = insertvalue { i32, i32 } %.pn59, i32 %.sroa.5.0.i.pn, 1
  ret { i32, i32 } %.pn11

bb.al:                                            ; preds = %bb.d, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.v, ptr noundef nonnull align 8 dereferenceable(288) %3, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2636
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cr = load i64, ptr %i.cq, align 8, !range !7, !noalias !2636, !noundef !5
  store i64 %i.cr, ptr %i.i, align 8, !noalias !2636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2636
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  store ptr %i.i, ptr %i.cs, align 8, !noalias !2636
  %i.ct = getelementptr inbounds nuw i8, ptr %i.h, i64 296
  store ptr %i.z, ptr %i.ct, align 8, !noalias !2636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.h, ptr noundef nonnull align 8 dereferenceable(288) %3, i64 288, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  store ptr %0, ptr %i.cu, align 8, !noalias !2636
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.am

bb.am:                                            ; preds = %bb.bh, %bb.al
  %i.cx = invoke { i32, i32 } @_RNvMs4_NtCsgRlkuWZPriE_15crossbeam_queue9seg_queueINtB5_8SegQueueNtNtCsd9Lm8bEdjjY_5salsa2id2IdE3popCsileJQcQObtj_7hir_def(ptr noundef nonnull align 128 %0)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2637 ; 2 uses

bb.an:                                            ; preds = %bb.am
  %i.cy = extractvalue { i32, i32 } %i.cx, 0      ; 4 uses
  %.not.i21 = icmp eq i32 %i.cy, 0
  br i1 %.not.i21, label %.noexc22, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cz = extractvalue { i32, i32 } %i.cx, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2636
  store i32 %i.cy, ptr %i.g, align 4, !noalias !2636
  store i32 %i.cz, ptr %i.cv, align 4, !noalias !2636
  %i.da = icmp eq i32 %i.cz, -1
  br i1 %i.da, label %bb.az, label %bb.ap, !prof !6

.noexc22:                                         ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2636
  %i.db = load i32, ptr %i.ab, align 8, !noalias !2636, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.b, ptr noundef nonnull align 8 dereferenceable(312) %i.h, i64 312, i1 false), !noalias !2636
  call void @_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal8allocateINtNtB7_14tracked_struct5ValueNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairENCNvMs3_B17_INtB17_14IngredientImplB1y_E8allocate0EB1C_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 %1, i32 noundef %i.db, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(312) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2636
  %i.dc = load i32, ptr %i.c, align 8, !range !11, !noalias !2636, !noundef !5
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !noalias !2636, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2636
  br label %bb.bk

bb.ap:                                            ; preds = %bb.ao
  %i.df = add nuw i32 %i.cz, 1                    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.dh = invoke noundef ptr @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table7get_rawINtNtB8_14tracked_struct5ValueNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairEEB1p_(ptr noundef nonnull align 8 %i.dg, i32 noundef %i.cy, i32 noundef %i.df)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2637 ; 14 uses

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.d, ptr noundef nonnull align 8 dereferenceable(312) %i.h, i64 312, i1 false), !noalias !2636
  call void @llvm.experimental.noalias.scope.decl(metadata !2638)
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !2638, !noalias !2636, !nonnull !5, !align !13, !noundef !5
  %i.dk = load i64, ptr %i.dj, align 8, !range !7, !noalias !2639, !noundef !5
  %i.dl = invoke noundef i64 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision3new(i64 noundef %i.dk)
          to label %bb.as unwind label %bb.ar, !noalias !2639 ; 2 uses

bb.ar:                                            ; preds = %bb.as, %bb.aq
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBE_11LocalDefMapEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %i.d) #41
          to label %.thread40 unwind label %bb.at, !noalias !2640

bb.as:                                            ; preds = %bb.aq
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !2638, !noalias !2636, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i8, ptr %i.dp, align 8, !range !4, !noalias !2639, !noundef !5 ; 2 uses
  %i.dr = load i64, ptr %i.do, align 8, !range !7, !noalias !2639, !noundef !5
  %i.ds = invoke noundef i64 @_RNvXs_NvNtCsileJQcQObtj_7hir_def7nameres1__NtB6_10DefMapPairNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct13Configuration13new_revisions(i64 noundef %i.dr)
          to label %bb.au unwind label %bb.ar, !noalias !2639 ; 2 uses

bb.at:                                            ; preds = %bb.ar
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !2640
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !2638, !noalias !2636, !nonnull !5, !align !39, !noundef !5
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 256
  %i.dx = load ptr, ptr %i.dw, align 128, !noalias !2639, !nonnull !5, !noundef !5
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.dz = load i64, ptr %i.dy, align 8, !noalias !2639, !noundef !5 ; 3 uses
  %i.ea = icmp ult i64 %i.dz, 384307168202282326
  call void @llvm.assume(i1 %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2636
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBE_11LocalDefMapEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.dh)
          to label %bb.aw unwind label %bb.av, !noalias !2637

bb.av:                                            ; preds = %bb.au
  %i.eb = landingpad { ptr, i32 }
          cleanup
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dh, i64 304
  invoke void @_RNvXs0_NtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB5_15LazyMemoEntriesNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ec)
          to label %.thread.i unwind label %bb.ax, !noalias !2637

bb.aw:                                            ; preds = %bb.au
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dh, i64 304 ; 2 uses
  invoke void @_RNvXs0_NtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB5_15LazyMemoEntriesNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ed)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsd9Lm8bEdjjY_5salsa14tracked_struct5ValueNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairEEB1q_.exit.i unwind label %bb.ay, !noalias !2637

bb.ax:                                            ; preds = %bb.av
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !2637
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ay, %bb.av
  %eh.lpad-body23.i = phi { ptr, i32 } [ %i.ef, %bb.ay ], [ %i.eb, %bb.av ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.dh, ptr noundef nonnull readonly align 8 dereferenceable(288) %i.v, i64 288, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 288
  store i64 %i.dl, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2637
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 296
  store i64 %i.ds, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2637
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 304
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !2637
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 312
  store i64 %i.dz, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2637
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 320
  store i8 %i.dq, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !2637
  br label %.thread40

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsd9Lm8bEdjjY_5salsa14tracked_struct5ValueNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairEEB1q_.exit.i: ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.dh, ptr noundef nonnull readonly align 8 dereferenceable(288) %i.v, i64 288, i1 false)
  %.sroa.5.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 288
  store i64 %i.dl, ptr %.sroa.5.0..sroa_idx24.i, align 8, !noalias !2637
  %.sroa.6.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 296
  store i64 %i.ds, ptr %.sroa.6.0..sroa_idx26.i, align 8, !noalias !2637
  store i64 0, ptr %i.ed, align 8, !noalias !2637
  %.sroa.8.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 312
  store i64 %i.dz, ptr %.sroa.8.0..sroa_idx30.i, align 8, !noalias !2637
  %.sroa.9.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 320
  store i8 %i.dq, ptr %.sroa.9.0..sroa_idx32.i, align 8, !noalias !2637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2636
  br label %bb.bk

bb.az:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2636
  store ptr %0, ptr %i.f, align 8, !noalias !2636
  store ptr %i.g, ptr %i.cw, align 8, !noalias !2636
  %i.eg = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2636
  %i.eh = icmp ult i64 %i.eg, 3
  br i1 %i.eh, label %bb.ba, label %bb.bh

bb.ba:                                            ; preds = %bb.az
  %i.ei = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE8allocate10___CALLSITE, i64 16) monotonic, align 8, !noalias !2636 ; 3 uses
  switch i8 %i.ei, label %bb.bb [
    i8 0, label %bb.bh
    i8 1, label %bb.bc
    i8 2, label %bb.bc
  ], !prof !26

bb.bb:                                            ; preds = %bb.ba
  %i.ej = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE8allocate10___CALLSITE)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2637 ; 2 uses

bb.bc:                                            ; preds = %bb.ba, %bb.bd, %bb.ba
  %.sroa.013.0.i = phi i8 [ %i.ej, %bb.bd ], [ %i.ei, %bb.ba ], [ %i.ei, %bb.ba ]
  %i.ek = load ptr, ptr @_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE8allocate10___CALLSITE, align 8, !noalias !2636, !nonnull !5, !align !13, !noundef !5
  %i.el = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ek, i8 noundef %.sroa.013.0.i)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2637

bb.bd:                                            ; preds = %bb.bb
  %i.em = icmp eq i8 %i.ej, 0
  br i1 %i.em, label %bb.bh, label %bb.bc

bb.be:                                            ; preds = %bb.bc
  br i1 %i.el, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2636
  %i.en = load ptr, ptr @_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE8allocate10___CALLSITE, align 8, !noalias !2636, !nonnull !5, !align !13, !noundef !5
  store ptr %i.en, ptr %i.e, align 8, !noalias !2636
  %i.eo = invoke noundef zeroext i1 @_RINvNtCsaMQbKjKCVRW_12tracing_core10dispatcher11get_defaultbNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB14_14IngredientImplNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairE8allocates0_0EB27_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2637

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2636
  br i1 %i.eo, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bi, %bb.bg, %bb.be, %bb.bd, %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2636
  br label %bb.am

bb.bi:                                            ; preds = %bb.bg
  invoke void @_RNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairE8allocates_0B19_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2637

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bi, %bb.bf, %bb.bc, %bb.bb, %bb.am, %bb.ap
  %lpad.loopexit.split-lp75 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBE_11LocalDefMapEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %i.h)
          to label %.thread40 unwind label %bb.bj, !noalias !2637

bb.bj:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !2637
  unreachable

bb.bk:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsd9Lm8bEdjjY_5salsa14tracked_struct5ValueNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairEEB1q_.exit.i, %.noexc22
  %.sroa.5.0.i = phi i32 [ %i.df, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsd9Lm8bEdjjY_5salsa14tracked_struct5ValueNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairEEB1q_.exit.i ], [ %i.de, %.noexc22 ] ; 2 uses
  %.sroa.0.0.i = phi i32 [ %i.cy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsd9Lm8bEdjjY_5salsa14tracked_struct5ValueNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairEEB1q_.exit.i ], [ %i.dc, %.noexc22 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  call void @_RNvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB4_10ZalsaLocal23store_tracked_struct_id(ptr noundef nonnull align 8 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.t, i32 noundef %.sroa.0.0.i, i32 noundef %.sroa.5.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @209)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ak

.thread40:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread.i, %bb.ar, %bb.ad, %bb.z, %.thread
  %.pn938 = phi { ptr, i32 } [ %i.af, %.thread ], [ %lpad.loopexit.split-lp75, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.thr_comm.i, %bb.ad ], [ %i.cf, %bb.z ], [ %eh.lpad-body23.i, %.thread.i ], [ %i.dm, %bb.ar ]
  resume { ptr, i32 } %.pn938

bb.bl:                                            ; preds = %.thread
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairE11leak_fieldsB17_(ptr nofree noundef nonnull readnone align 128 captures(none) %0, ptr noundef nonnull align 8 %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.c = tail call noundef ptr @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table7get_rawINtNtB8_14tracked_struct5ValueNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairEEB1p_(ptr noundef nonnull align 8 %i.b, i32 noundef %2, i32 noundef %3) ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !range !7, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 288 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.f = tail call noundef i64 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision4load(ptr noundef nonnull align 8 %i.e) ; 3 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %i.f, %i.d
  br i1 %i.g, label %_RNvNtCsd9Lm8bEdjjY_5salsa14tracked_struct17acquire_read_lock.exit, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @253, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #39
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = tail call { i64, i64 } @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision16compare_exchange(ptr noundef nonnull align 8 %i.e, i64 noundef %i.f, i64 noundef range(i64 1, 0) %i.d)
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvNtCsd9Lm8bEdjjY_5salsa14tracked_struct17acquire_read_lock.exit, label %bb.b

_RNvNtCsd9Lm8bEdjjY_5salsa14tracked_struct17acquire_read_lock.exit: ; preds = %bb.c, %bb.e
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairE13tracked_fieldB17_(ptr nofree noundef nonnull readonly align 128 captures(none) %0, ptr noundef nonnull align 8 %1, ptr nofree noundef nonnull align 8 captures(none) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.c = load i32, ptr %i.b, align 8, !noundef !5
  %i.d = trunc nuw nsw i64 %5 to i32
  %i.e = add nuw nsw i32 %i.d, 1
  %i.f = add i32 %i.e, %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.i = tail call noundef ptr @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table7get_rawINtNtB8_14tracked_struct5ValueNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairEEB1p_(ptr noundef nonnull align 8 %i.h, i32 noundef %3, i32 noundef %4) ; 4 uses
  %i.j = load i64, ptr %i.g, align 8, !range !7, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 288 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
end_hunk_10
begin_hunk_11_@_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairE13tracked_fieldB17_:bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #39
  unreachable

_RNvXsd_NtCshzWfHUSfYae_4core5arrayANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj1_INtNtNtB7_3ops5index5IndexjE5indexCsileJQcQObtj_7hir_def.exit: ; preds = %_RNvNtCsd9Lm8bEdjjY_5salsa14tracked_struct17acquire_read_lock.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 296
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 320
  %i.v = load i8, ptr %i.u, align 8, !range !4, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 -1, ptr %i.w, align 8, !noalias !2646
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2647)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !2647, !noundef !5 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !2647, !nonnull !5, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !2647, !noundef !5 ; 2 uses
  %.not.i5 = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i5, label %bb.g, label %bb.h, !prof !18

bb.g:                                             ; preds = %_RNvXsd_NtCshzWfHUSfYae_4core5arrayANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj1_INtNtNtB7_3ops5index5IndexjE5indexCsileJQcQObtj_7hir_def.exit
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.y, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #39
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_RNvXsd_NtCshzWfHUSfYae_4core5arrayANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj1_INtNtNtB7_3ops5index5IndexjE5indexCsileJQcQObtj_7hir_def.exit
  %.not2.i = icmp eq i64 %i.y, 0
  br i1 %.not2.i, label %_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal30with_query_stack_unchecked_mutuNCNvB2_26report_tracked_read_simple0ECsileJQcQObtj_7hir_def.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr [152 x i8], ptr %i.aa, i64 %i.y
  %i.ae = getelementptr i8, ptr %i.ad, i64 -152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2648
  store i32 %3, ptr %i.a, align 4, !noalias !2648
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %4, ptr %.sroa.4.0..sroa_idx, align 4, !noalias !2648
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.f, ptr %.sroa.5.0..sroa_idx, align 4, !noalias !2648
  invoke void @_RNvMNtCsd9Lm8bEdjjY_5salsa12active_queryNtB2_11ActiveQuery15add_read_simple(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.ae, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, i8 noundef %i.v, i64 noundef %i.s)
          to label %.noexc6 unwind label %bb.j

.noexc6:                                          ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2648
  %.pre = load i64, ptr %i.w, align 8
  %i.af = add i64 %.pre, 1
  br label %_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal30with_query_stack_unchecked_mutuNCNvB2_26report_tracked_read_simple0ECsileJQcQObtj_7hir_def.exit

bb.j:                                             ; preds = %bb.g, %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load i64, ptr %i.w, align 8, !noundef !5
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.w, align 8
  resume { ptr, i32 } %i.ag

_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal30with_query_stack_unchecked_mutuNCNvB2_26report_tracked_read_simple0ECsileJQcQObtj_7hir_def.exit: ; preds = %.noexc6, %bb.h
  %i.aj = phi i64 [ %i.af, %.noexc6 ], [ 0, %bb.h ]
  store i64 %i.aj, ptr %i.w, align 8
  ret ptr %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairE15untracked_fieldB17_(ptr nofree noundef nonnull readnone align 128 captures(none) %0, ptr noundef nonnull align 8 %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.c = tail call noundef ptr @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table7get_rawINtNtB8_14tracked_struct5ValueNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairEEB1p_(ptr noundef nonnull align 8 %i.b, i32 noundef %2, i32 noundef %3) ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !range !7, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 288 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.f = tail call noundef i64 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision4load(ptr noundef nonnull align 8 %i.e) ; 3 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %i.f, %i.d
  br i1 %i.g, label %_RNvNtCsd9Lm8bEdjjY_5salsa14tracked_struct17acquire_read_lock.exit, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @253, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #39
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = tail call { i64, i64 } @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision16compare_exchange(ptr noundef nonnull align 8 %i.e, i64 noundef %i.f, i64 noundef range(i64 1, 0) %i.d)
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvNtCsd9Lm8bEdjjY_5salsa14tracked_struct17acquire_read_lock.exit, label %bb.b

_RNvNtCsd9Lm8bEdjjY_5salsa14tracked_struct17acquire_read_lock.exit: ; preds = %bb.c, %bb.e
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope23update_visibility_types(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(488) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2659, !noundef !5 ; 3 uses
  switch i64 %i.b, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i [
    i64 0, label %bb.e
    i64 1, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i
  ]

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = tail call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.e = tail call { i64, i64 } @_RINvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB5_4CoreNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1u_11ModuleDefIdNtNtB1u_10item_scope19ImportOrExternCrateEE12get_index_ofBL_EB1u_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 3 uses
  %i.h = trunc nuw i64 %i.f to i1
  br i1 %i.h, label %bb.b, label %bb.e

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2659, !nonnull !5, !noundef !5 ; 2 uses
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !2660, !nonnull !5, !noundef !5
  %.val2.i.i = load ptr, ptr %i.j, align 8, !noalias !2661, !nonnull !5, !noundef !5
  %i.k = icmp eq ptr %.val.i.i, %.val2.i.i
  br i1 %i.k, label %bb.d, label %bb.e

bb.b:                                             ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i
  %i.l = icmp ult i64 %i.g, %i.b
  br i1 %i.l, label %..thread_crit_edge.i, label %bb.c

..thread_crit_edge.i:                             ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !2655
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #39
  unreachable

bb.d:                                             ; preds = %..thread_crit_edge.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i
  %i.m = phi ptr [ %.pre.i, %..thread_crit_edge.i ], [ %i.j, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i ]
  %.sroa.5.0.i911.i = phi i64 [ %i.g, %..thread_crit_edge.i ], [ 0, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i ]
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.5.0.i911.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.o, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  ret void

bb.e:                                             ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @232, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @233) #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope24update_visibility_macros(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(488) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2671)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2672, !noundef !5 ; 3 uses
  switch i64 %i.b, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i [
    i64 0, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit.thread
    i64 1, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i
  ]

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = tail call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.f = tail call { i64, i64 } @_RINvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB5_4CoreNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1u_7MacroIdNtNtB1u_10item_scope19ImportOrExternCrateEE12get_index_ofBL_EB1u_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = extractvalue { i64, i64 } %i.f, 1        ; 3 uses
  %i.i = trunc nuw i64 %i.g to i1
  br i1 %i.i, label %bb.b, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit.thread

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2672, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !2673, !nonnull !5, !noundef !5
  %.val2.i.i = load ptr, ptr %i.l, align 8, !noalias !2674, !nonnull !5, !noundef !5
  %i.m = icmp eq ptr %.val.i.i, %.val2.i.i
  br i1 %i.m, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit.thread6, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit.thread

bb.b:                                             ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i
  %i.n = icmp ult i64 %i.h, %i.b
  br i1 %i.n, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #39
  unreachable

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !2668 ; 2 uses
  %.not = icmp eq ptr %.pre.i, null
  br i1 %.not, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit.thread, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit.thread6, !prof !41

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit.thread6: ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit
  %.sroa.5.0.i911.i9 = phi i64 [ %i.h, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit ], [ 0, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i ]
  %i.o = phi ptr [ %.pre.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit ], [ %i.k, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i ]
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.5.0.i911.i9
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.q, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  ret void

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit.thread: ; preds = %bb.a, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE7get_mutBO_EB1x_.exit
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @234, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope24update_visibility_values(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(488) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2684)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2685, !noundef !5 ; 3 uses
  switch i64 %i.b, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i [
    i64 0, label %bb.e
    i64 1, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i
  ]

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = tail call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.f = tail call { i64, i64 } @_RINvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB5_4CoreNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1u_11ModuleDefIdNtNtB1u_10item_scope12ImportOrGlobEE12get_index_ofBL_EB1u_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = extractvalue { i64, i64 } %i.f, 1        ; 3 uses
  %i.i = trunc nuw i64 %i.g to i1
  br i1 %i.i, label %bb.b, label %bb.e

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2685, !nonnull !5, !noundef !5 ; 2 uses
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !2686, !nonnull !5, !noundef !5
  %.val2.i.i = load ptr, ptr %i.k, align 8, !noalias !2687, !nonnull !5, !noundef !5
  %i.l = icmp eq ptr %.val.i.i, %.val2.i.i
  br i1 %i.l, label %bb.d, label %bb.e

bb.b:                                             ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i
  %i.m = icmp ult i64 %i.h, %i.b
  br i1 %i.m, label %..thread_crit_edge.i, label %bb.c

..thread_crit_edge.i:                             ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !2681
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #39
  unreachable

bb.d:                                             ; preds = %..thread_crit_edge.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i
  %i.n = phi ptr [ %.pre.i, %..thread_crit_edge.i ], [ %i.k, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i ]
  %.sroa.5.0.i911.i = phi i64 [ %i.h, %..thread_crit_edge.i ], [ 0, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i ]
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %.sroa.5.0.i911.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  ret void

bb.e:                                             ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @236, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa5inputINtB5_5ValueNtCsileJQcQObtj_7hir_def20ExpandProcAttrMacrosE12memory_usageBL_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RNvMs4_NtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB5_18MemoTableWithTypes12memory_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @240, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 20, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 31, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %i.g, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB5_9AttrQuery6exists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %0, align 8, !nonnull !5, !align !13, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %.idx = mul nuw nsw i64 %i.h, 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx ; 2 uses
  store ptr %i.f, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store ptr %i.j, ptr %i.m, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2691)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.m, ptr %i.d, align 8, !noalias !2692
  %i.n = icmp eq i64 %i.h, 0
  br i1 %i.n, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.noexc
  %i.o = phi ptr [ %i.p, %.noexc ], [ %i.f, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.p, ptr %i.e, align 8, !alias.scope !2691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2692
  store ptr %i.o, ptr %i.c, align 8, !noalias !2692, !captures !14
  %i.q = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtBW_9AttrQuery5attrs0INtB7_5FnMutTRRNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEE8call_mutB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2692
  %i.r = icmp eq ptr %i.p, %i.k
  %or.cond = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.val1 = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtB4_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrENCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB2t_9AttrQuery5attrs0EEB2x_(ptr nonnull %.val1) #41
          to label %bb.g unwind label %bb.f

.loopexit:                                        ; preds = %.noexc, %bb.a
  %.sroa.0.0.i = phi i1 [ false, %bb.a ], [ %i.q, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = ptrtoint ptr %.val to i64
  %i.u = and i64 %i.t, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtB4_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrENCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB2t_9AttrQuery5attrs0EEB2x_.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.v = getelementptr i8, ptr %.val, i64 -1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.v)
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.y, ptr %i.b, align 8
  %i.z = load atomic i64, ptr %i.y acquire, align 8
  %i.aa = icmp eq i64 %i.z, 2
  br i1 %i.aa, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.y, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtB4_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrENCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB2t_9AttrQuery5attrs0EEB2x_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtB4_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrENCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB2t_9AttrQuery5attrs0EEB2x_.exit: ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %.sroa.0.0.i

bb.f:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs5_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_8ItemInNs5krate(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(20) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !9, !alias.scope !2695, !noundef !5
  %i.b = icmp eq i32 %i.a, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_11
begin_hunk_12_@_RNvNtNtCsileJQcQObtj_7hir_def7nameres9collector12collect_defs:bb.a
  %i.zb = load ptr, ptr %.sroa.6.0..sroa_idx.i79.i.i, align 8, !alias.scope !3147, !noalias !3143, !nonnull !5, !noundef !5
  %i.zc = load ptr, ptr %.sroa.4.0..sroa_idx.i77.i.i, align 8, !alias.scope !3147, !noalias !3143, !nonnull !5, !noundef !5 ; 2 uses
  %i.zd = icmp eq ptr %i.zc, %i.zb
  br i1 %i.zd, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1C_9HirFileIdTINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB2J_3ast9generated5nodes9MacroCallEINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdB3f_EEENtB1C_11MacroCallIdEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread.i.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1C_9HirFileIdTINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB2J_3ast9generated5nodes9MacroCallEINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdB3f_EEENtB1C_11MacroCallIdEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i.i.i

bb.he:                                            ; preds = %.thread36.i.i.i, %.thread45.i.i.i
  %.sroa.07.042.i.i.i = phi i1 [ false, %.thread36.i.i.i ], [ true, %.thread45.i.i.i ]
  %.pn41.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i76.i.i, %.thread36.i.i.i ], [ %lpad.thr_comm.i.i.i, %.thread45.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1O_9HirFileIdTINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB2V_3ast9generated5nodes9MacroCallEINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdB3r_EEENtB1O_11MacroCallIdEEEB1b_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.be) #41
          to label %.thread62.i.i.i unwind label %bb.hb

bb.hf:                                            ; preds = %.thread62.i.i.i
  br i1 %.sroa.07.03467.i.i.i, label %bb.hg, label %.body.i.i

.thread62.i.i.i:                                  ; preds = %bb.he, %.thread70.i.i.i, %bb.gw
  %.pn3369.i.i.i = phi { ptr, i32 } [ %.pn41.i.i.i, %bb.he ], [ %lpad.thr_comm.split-lp72.i.i.i, %.thread70.i.i.i ], [ %i.yi, %bb.gw ] ; 2 uses
  %.sroa.07.03467.i.i.i = phi i1 [ %.sroa.07.042.i.i.i, %bb.he ], [ false, %.thread70.i.i.i ], [ false, %bb.gw ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCsileJQcQObtj_7hir_def10ModuleIdLtjNtB1b_15ItemContainerIdNtCs33K2ylI4knu_10hir_expand11MacroCallIdINtNtB4_6option6OptionINtNtB29_5files13InFileWrapperNtB29_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEEEEEEB1b_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bf) #41
          to label %bb.hf unwind label %bb.hb

bb.hg:                                            ; preds = %bb.hf
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsileJQcQObtj_7hir_def7nameres9collector14MacroDirectiveEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bg) #41
          to label %.body.i.i unwind label %bb.hb

bb.hh:                                            ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtCsileJQcQObtj_7hir_def10ModuleIdLtjNtBZ_15ItemContainerIdNtCs33K2ylI4knu_10hir_expand11MacroCallIdINtNtCshzWfHUSfYae_4core6option6OptionINtNtB1W_5files13InFileWrapperNtB1W_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEEEEENtNtNtNtB2E_4iter6traits8iterator8Iterator4nextBZ_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !3143
  %i.ze = load i8, ptr %i.bd, align 1, !range !8, !noalias !3143, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !3143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !3143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !3143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !3143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !3143
  %i.zf = icmp eq i8 %i.ze, 0
  br i1 %i.zf, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.zg = add i64 %.sroa.07.1.i.i, 1
  %exitcond.i.i = icmp eq i64 %.sroa.07.1.i.i, %umax.i.i
  br i1 %exitcond.i.i, label %bb.ig, label %bb.fo

bb.hj:                                            ; preds = %bb.hh
  call void @llvm.experimental.noalias.scope.decl(metadata !3148)
  %i.zh = load atomic i64, ptr @_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt5LEVEL monotonic, align 8, !noalias !3149 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.zh, 0
  br i1 %.not.i.i.i.i, label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i.i.i, label %bb.hk, !prof !12

bb.hk:                                            ; preds = %bb.hj
  %i.zi = icmp slt i64 %i.zh, 0
  br i1 %i.zi, label %bb.hl, label %.noexc87.i.i

.noexc87.i.i:                                     ; preds = %bb.hl, %bb.hk
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit8hit_cold(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 29)
          to label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hl:                                            ; preds = %bb.hk
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit13add_to_survey(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 29)
          to label %.noexc87.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i.i.i: ; preds = %.noexc87.i.i, %bb.hj
  %i.zj = load ptr, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !alias.scope !3150, !nonnull !5, !noundef !5 ; 2 uses
  %i.zk = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i, align 8, !alias.scope !3150, !noundef !5 ; 2 uses
  %.idx.i84.i.i = mul nuw nsw i64 %i.zk, 120
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zj, i64 %.idx.i84.i.i
  %i.zm = icmp eq i64 %i.zk, 0
  br i1 %i.zm, label %.loopexit113.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i.i.i, %bb.hu
  %.sroa.8.0.i.i.i = phi i64 [ %i.aau, %bb.hu ], [ 0, %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i.i.i ] ; 4 uses
  %i.zn = phi ptr [ %i.zo, %bb.hu ], [ %i.zj, %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i.i.i ] ; 16 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3151)
  call void @llvm.experimental.noalias.scope.decl(metadata !3152)
  call void @llvm.experimental.noalias.scope.decl(metadata !3153)
  call void @llvm.experimental.noalias.scope.decl(metadata !3154)
  %i.zp = load i32, ptr %i.zn, align 8, !range !27, !alias.scope !3155, !noalias !3156, !noundef !5
  %.inv.i.i.i.i.i.i.i = icmp samesign ult i32 %i.zp, 2
  br i1 %.inv.i.i.i.i.i.i.i, label %bb.hm, label %bb.hu

bb.hm:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !3157
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zn, i64 88
  %i.zr = load <2 x i32>, ptr %i.zq, align 8, !alias.scope !3155, !noalias !3156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !3157
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zn, i64 84
  %i.zt = load i32, ptr %i.zs, align 4, !alias.scope !3155, !noalias !3156, !noundef !5 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(120) %i.zn, i64 16, i1 false), !noalias !3158
  store ptr null, ptr %i.vm, align 8, !noalias !3157
  store i32 0, ptr %i.vn, align 8, !noalias !3157
  store i32 %i.zt, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !3157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zn, i64 32
  %i.zv = load ptr, ptr %i.zu, align 8, !alias.scope !3155, !noalias !3156, !nonnull !5, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 8 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zv, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aj, ptr noundef nonnull align 8 dereferenceable(12) %i.zx, i64 12, i1 false), !noalias !3159
  call void @llvm.experimental.noalias.scope.decl(metadata !3160)
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zv, i64 24
  %i.zz = load i64, ptr %i.zy, align 8, !alias.scope !3161, !noalias !3159, !noundef !5 ; 2 uses
  %i.aaa = icmp ugt i64 %i.zz, 1                  ; 2 uses
  %i.aab = load ptr, ptr %i.zw, align 8, !alias.scope !3161, !noalias !3159, !nonnull !5
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  %i.aad = load i64, ptr %i.aac, align 8, !alias.scope !3161, !noalias !3159
  %.sink11.i.i.i.i.i.i.i.i.i = select i1 %i.aaa, ptr %i.aab, ptr %i.zw ; 2 uses
  %.sink10.i.i.i.i.i.i.i.i.i = select i1 %i.aaa, i64 %i.aad, i64 %i.zz
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i.i.i.i.i.i, i64 %.sink10.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !3162
  store i64 0, ptr %i.vo, align 8, !noalias !3162
  invoke void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1y_8adapters6cloned6ClonedINtNtNtB1A_5slice4iter4IterBJ_EEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull %.sink11.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %i.aae)
          to label %bb.hp unwind label %bb.hn, !noalias !3163

bb.hn:                                            ; preds = %bb.hm
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.ho, !noalias !3163

bb.ho:                                            ; preds = %bb.hn
  %i.aag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !3163
  unreachable

.body.i.i.i.i.i.i.i:                              ; preds = %bb.hn
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs33K2ylI4knu_10hir_expand13MacroCallKindECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(40) %i.am) #41
          to label %.body.i.i unwind label %bb.ht, !noalias !3159

bb.hp:                                            ; preds = %bb.hm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !3157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !3162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.vp, ptr noundef nonnull align 4 dereferenceable(12) %i.aj, i64 12, i1 false), !noalias !3157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.am, i64 40, i1 false), !noalias !3157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.49.8..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.al, i64 40, i1 false), !noalias !3157
  store <2 x i32> %i.zr, ptr %i.vq, align 8, !noalias !3157
  store i32 4, ptr %i.an, align 8, !noalias !3157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.49.i.i.i.i.i.i.i, i64 44, i1 false), !noalias !3157
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !3157
  %i.aah = load i64, ptr %i.vr, align 8, !alias.scope !3164, !noalias !3159, !noundef !5 ; 3 uses
  %i.aai = load i64, ptr %i.vl, align 8, !range !17, !alias.scope !3164, !noalias !3159, !noundef !5
  %i.aaj = icmp eq i64 %i.aah, %i.aai
  br i1 %i.aaj, label %bb.hq, label %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector32reseed_with_unresolved_attribute0Bb_.exit.i.i.i.i.i.i

bb.hq:                                            ; preds = %bb.hp
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.vl)
          to label %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector32reseed_with_unresolved_attribute0Bb_.exit.i.i.i.i.i.i unwind label %bb.hr, !noalias !3165

bb.hr:                                            ; preds = %bb.hq
  %i.aak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.an) #41
          to label %.body.i.i unwind label %bb.hs, !noalias !3159

bb.hs:                                            ; preds = %bb.hr
  %i.aal = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !3159
  unreachable

bb.ht:                                            ; preds = %.body.i.i.i.i.i.i.i
  %i.aam = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !3159
  unreachable

_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector32reseed_with_unresolved_attribute0Bb_.exit.i.i.i.i.i.i: ; preds = %bb.hq, %bb.hp
  %i.aan = load ptr, ptr %i.vs, align 8, !alias.scope !3164, !noalias !3159, !nonnull !5, !noundef !5
  %i.aao = getelementptr inbounds nuw [96 x i8], ptr %i.aan, i64 %i.aah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aao, ptr noundef nonnull align 8 dereferenceable(96) %i.an, i64 96, i1 false), !noalias !3159
  %i.aap = add i64 %i.aah, 1
  store i64 %i.aap, ptr %i.vr, align 8, !alias.scope !3164, !noalias !3159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !3157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !3157
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.zn, i64 28
  %i.aar = load i32, ptr %i.aaq, align 4, !alias.scope !3155, !noalias !3156, !noundef !5 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(120) %i.zn, i64 12, i1 false), !noalias !3158
  store i32 %i.aar, ptr %i.vt, align 4, !noalias !3157
  %i.aas = invoke { i32, i32 } @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBS_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtNtBS_5attrs6AttrIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.hj, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ak, i32 noundef %i.zt)
          to label %.noexc90.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc90.i.i:                                     ; preds = %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector32reseed_with_unresolved_attribute0Bb_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !3157
  %i.aat = getelementptr inbounds nuw i8, ptr %i.zn, i64 64
  %.sroa.7.24.copyload.i.i.i.i.i.i = load i32, ptr %i.aat, align 8, !alias.scope !3166, !noalias !3156 ; 2 uses
  %.not.i.i.i.i.i.i96 = icmp eq i32 %.sroa.7.24.copyload.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i96, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %.noexc90.i.i, %.lr.ph.i.i.i.i
  %i.aau = add nuw nsw i64 %.sroa.8.0.i.i.i, 1
  %i.aav = icmp eq ptr %i.zo, %i.zl
  br i1 %i.aav, label %.loopexit113.i.i, label %.lr.ph.i.i.i.i

bb.hv:                                            ; preds = %.noexc90.i.i
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.zn, i64 88
  %i.aax = getelementptr inbounds nuw i8, ptr %i.zn, i64 92
  %.sroa.10.24..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.zn, i64 68
  %i.aay = getelementptr inbounds nuw i8, ptr %i.zn, i64 24
  %i.aaz = load i32, ptr %i.aay, align 8, !range !44, !alias.scope !3155, !noalias !3156, !noundef !5
  %i.aba = getelementptr inbounds nuw i8, ptr %i.zn, i64 56
  %i.abb = load ptr, ptr %i.aba, align 8, !alias.scope !3155, !noalias !3156, !nonnull !5, !align !13, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !3150
  %i.abc = load i32, ptr %i.aaw, align 8, !range !11, !noundef !5 ; 2 uses
  %i.abd = load i32, ptr %i.aax, align 4, !noundef !5 ; 2 uses
  store i32 %i.abc, ptr %i.at, align 4, !noalias !3150
  store i32 %i.abd, ptr %i.vu, align 4, !noalias !3150
  %i.abe = getelementptr inbounds nuw i8, ptr %i.zn, i64 96
  %i.abf = load i64, ptr %i.abe, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !3150
  %i.abg = getelementptr inbounds nuw i8, ptr %i.zn, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.as, ptr noundef nonnull align 8 dereferenceable(12) %i.abg, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.46.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.46.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.24..sroa_idx.i.i.i.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !3150
  %i.abh = load i64, ptr %i.vv, align 8, !alias.scope !3167, !noundef !5
  %i.abi = icmp eq i64 %i.abh, 0
  br i1 %i.abi, label %select.unfold.i.i.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.abj = invoke noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtCsileJQcQObtj_7hir_def10ModuleIdLtEB1B_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.he, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.at)
          to label %.noexc91.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc91.i.i:                                     ; preds = %bb.hw
  call void @llvm.experimental.noalias.scope.decl(metadata !3168)
  call void @llvm.experimental.noalias.scope.decl(metadata !3169)
  %i.abk = lshr i64 %i.abj, 57
  %i.abl = trunc nuw nsw i64 %i.abk to i8
  %i.abm = load i64, ptr %i.vw, align 8, !alias.scope !3170, !noundef !5 ; 2 uses
  %i.abn = load ptr, ptr %i.hd, align 8, !alias.scope !3170, !nonnull !5, !noundef !5 ; 2 uses
  %i.abo = insertelement <16 x i8> poison, i8 %i.abl, i64 0
  %i.abp = shufflevector <16 x i8> %i.abo, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hz, %.noexc91.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.noexc91.i.i ], [ %i.acg, %bb.hz ]
  %.pn.i.i.i.i.i = phi i64 [ %i.abj, %.noexc91.i.i ], [ %i.ach, %bb.hz ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.abm ; 3 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abn, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.abq, align 1, !noalias !3171 ; 2 uses
  %i.abr = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.abp
  %i.abs = bitcast <16 x i1> %i.abr to i16        ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.abs, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.hx, %bb.hy
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.acf, %bb.hy ], [ %i.abs, %bb.hx ] ; 3 uses
  %i.abt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.abu = zext nneg i16 %i.abt to i64
  %i.abv = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.abu
  %i.abw = and i64 %i.abv, %i.abm
  %i.abx = sub nsw i64 0, %i.abw
  %i.aby = getelementptr inbounds [40 x i8], ptr %i.abn, i64 %i.abx ; 4 uses
  %i.abz = getelementptr inbounds i8, ptr %i.aby, i64 -40
  %i.aca = invoke noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtCsileJQcQObtj_7hir_def10ModuleIdLtINtB2_10EquivalentBq_E10equivalentBs_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.abz)
          to label %.noexc92.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc92.i.i:                                     ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.aca, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtNtBQ_7nameres14mod_resolution6ModDirNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBQ_.exit.i.i.i, label %bb.hy, !prof !12

._crit_edge.i.i.i.i.i:                            ; preds = %bb.hy, %bb.hx
  %i.acb = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.acc = bitcast <16 x i1> %i.acb to i16
  %i.acd = icmp eq i16 %i.acc, 0
  br i1 %i.acd, label %bb.hz, label %select.unfold.i.i.i, !prof !6

bb.hy:                                            ; preds = %.noexc92.i.i
  %i.ace = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.acf = and i16 %i.ace, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.acf, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.hz:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.acg = add i64 %.sroa.9.0.i.i.i.i.i.i, 16     ; 2 uses
  %i.ach = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.acg
  br label %bb.hx

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtNtBQ_7nameres14mod_resolution6ModDirNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBQ_.exit.i.i.i: ; preds = %.noexc92.i.i
  %i.aci = getelementptr inbounds i8, ptr %i.aby, i64 -32
  call void @llvm.experimental.noalias.scope.decl(metadata !3172)
  call void @llvm.experimental.noalias.scope.decl(metadata !3173)
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aci)
          to label %.noexc93.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc93.i.i:                                     ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtNtBQ_7nameres14mod_resolution6ModDirNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBQ_.exit.i.i.i
  %i.acj = getelementptr inbounds i8, ptr %i.aby, i64 -4
  %i.ack = load i8, ptr %i.acj, align 4, !range !8, !alias.scope !3173, !noundef !5
  %i.acl = getelementptr inbounds i8, ptr %i.aby, i64 -8
  %i.acm = load i32, ptr %i.acl, align 8, !alias.scope !3173, !noundef !5
  store i8 %i.ack, ptr %i.vx, align 4, !alias.scope !3172, !noalias !3150
  store i32 %i.acm, ptr %i.vy, align 8, !alias.scope !3172, !noalias !3150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !3150
  store ptr %i.dl, ptr %i.vz, align 8, !noalias !3150
  store i64 %i.abf, ptr %i.wa, align 8, !noalias !3150
  store i32 %i.abc, ptr %i.wb, align 8, !noalias !3150
  store i32 %i.abd, ptr %i.wc, align 4, !noalias !3150
  store i32 %.sroa.7.24.copyload.i.i.i.i.i.i, ptr %i.wd, align 8, !noalias !3150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.46.0..sroa_idx.i85.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.46.i.i.i, i64 16, i1 false), !noalias !3150
  store ptr %i.abb, ptr %i.we, align 8, !noalias !3150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 32, i1 false), !noalias !3150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !3150
  store i32 %i.aaz, ptr %i.ap, align 4, !noalias !3150
  store i32 %i.aar, ptr %i.wf, align 4, !noalias !3150
  invoke void @_RNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB5_12ModCollector7collect(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.aq, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ap, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.as)
          to label %bb.ib unwind label %bb.ia

select.unfold.i.i.i:                              ; preds = %bb.hv, %._crit_edge.i.i.i.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #39
          to label %.noexc94.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc94.i.i:                                     ; preds = %select.unfold.i.i.i
  unreachable

bb.ia:                                            ; preds = %.noexc93.i.i
  %i.acn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def7nameres9collector12ModCollectorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.aq) #41
          to label %.body.i.i unwind label %bb.if

bb.ib:                                            ; preds = %.noexc93.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3150
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.aq)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def7nameres9collector12ModCollectorEBH_.exit.i.i.i unwind label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.aco = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.aq)
          to label %.body.i.i unwind label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.acp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def7nameres9collector12ModCollectorEBH_.exit.i.i.i: ; preds = %bb.ib
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.aq)
          to label %.noexc95.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc95.i.i:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def7nameres9collector12ModCollectorEBH_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !3150
  call void @llvm.experimental.noalias.scope.decl(metadata !3174)
  %i.acq = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i, align 8, !alias.scope !3175, !noundef !5 ; 4 uses
  %i.acr = icmp ult i64 %i.acq, 76861433640456466
  call void @llvm.assume(i1 %i.acr)
  %.not.i19.i.i.i = icmp samesign ult i64 %.sroa.8.0.i.i.i, %i.acq
  br i1 %.not.i19.i.i.i, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCsileJQcQObtj_7hir_def7nameres9collector14MacroDirectiveE11swap_removeBK_.exit.i.i.i, label %bb.ie, !prof !12

bb.ie:                                            ; preds = %.noexc95.i.i
  invoke void @_RNvNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecppE11swap_remove13assert_failed(i64 noundef %.sroa.8.0.i.i.i, i64 noundef %i.acq) #39
          to label %.noexc96.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc96.i.i:                                     ; preds = %bb.ie
  unreachable

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCsileJQcQObtj_7hir_def7nameres9collector14MacroDirectiveE11swap_removeBK_.exit.i.i.i: ; preds = %.noexc95.i.i
  %i.acs = load ptr, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !alias.scope !3175, !nonnull !5, !noundef !5 ; 2 uses
  %i.act = getelementptr inbounds nuw [120 x i8], ptr %i.acs, i64 %.sroa.8.0.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ao, ptr noundef nonnull align 8 dereferenceable(120) %i.act, i64 120, i1 false), !noalias !3174
  %i.acu = add nsw i64 %i.acq, -1                 ; 2 uses
  %i.acv = getelementptr inbounds nuw [120 x i8], ptr %i.acs, i64 %i.acu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.act, ptr noundef nonnull align 8 dereferenceable(120) %i.acv, i64 120, i1 false), !noalias !3176
  store i64 %i.acu, ptr %.sroa.510.0..sroa_idx.i.i.i, align 8, !alias.scope !3175
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def7nameres9collector14MacroDirectiveEBH_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.ao)
          to label %bb.in unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.if:                                            ; preds = %bb.ia
  %i.acw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.ig:                                            ; preds = %bb.hi
  %i.acx = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3133
  %i.acy = icmp ult i64 %i.acx, 5
  br i1 %i.acy, label %bb.ih, label %.loopexit113.i.i

bb.ih:                                            ; preds = %bb.ig
  %i.acz = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector15resolution_loops1_10___CALLSITE, i64 16) monotonic, align 8, !noalias !3133 ; 3 uses
  switch i8 %i.acz, label %bb.ii [
    i8 0, label %.loopexit113.i.i
    i8 1, label %bb.ij
    i8 2, label %bb.ij
  ], !prof !26

bb.ii:                                            ; preds = %bb.ih
  %i.ada = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector15resolution_loops1_10___CALLSITE)
          to label %bb.ik unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ij:                                            ; preds = %bb.ih, %bb.ik, %bb.ih
  %.sroa.029.0.i.i = phi i8 [ %i.ada, %bb.ik ], [ %i.acz, %bb.ih ], [ %i.acz, %bb.ih ]
  %i.adb = load ptr, ptr @_RNvNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector15resolution_loops1_10___CALLSITE, align 8, !noalias !3133, !nonnull !5, !align !13, !noundef !5
  %i.adc = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.adb, i8 noundef %.sroa.029.0.i.i)
          to label %bb.il unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ik:                                            ; preds = %bb.ii
  %i.add = icmp eq i8 %i.ada, 0
  br i1 %i.add, label %.loopexit113.i.i, label %bb.ij
end_hunk_12
begin_hunk_13_@_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower4path26hir_segment_to_ast_segment12find_segmentINtNtNtNtBb_4iter8adapters5chain5ChainINtNtNtB2x_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB3P_8node_extNtB3L_4Path8segments0EB32_EE0INtB7_5FnMutTRB3J_EE8call_mutB11_:bb.a
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3510
  call void @_RNvMse_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes11PathSegment4kind(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  %i.e = load i64, ptr %i.d, align 8, !range !33, !noalias !3510, !noundef !5 ; 9 uses
  %.not.i = icmp eq i64 %i.e, -2
  br i1 %.not.i, label %_RNCINvNvNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower4path26hir_segment_to_ast_segment12find_segmentINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB1I_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB3g_8node_extNtB3c_4Path8segments0EB2t_EE0Bc_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ne i64 %i.e, 16
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.e, -15
  %i.h = icmp sgt i64 %i.e, 14
  %i.i = select i1 %i.h, i64 %i.g, i64 1
  switch i64 %i.i, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %.thread6.i
    i64 2, label %bb.e
    i64 3, label %.thread6.i
    i64 4, label %.thread6.i
    i64 5, label %.thread6.i
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3510
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !3510, !nonnull !5, !noundef !5 ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !noalias !3510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3510
  invoke void @_RNvMs0_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes7NameRef4text(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  br label %.thread6.i

bb.f:                                             ; preds = %bb.g
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.k) #44
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsileJQcQObtj_7hir_def.exit.i unwind label %bb.o

bb.g:                                             ; preds = %bb.k, %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !noundef !5
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.m, align 4
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsileJQcQObtj_7hir_def.exit.i

bb.h:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !3511)
  %i.q = load ptr, ptr %i.b, align 8, !alias.scope !3511, !noalias !3510, !noundef !5 ; 2 uses
  %i.r = icmp eq ptr %i.q, null                   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !3511, !noalias !3510 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.sroa.3.0.in.i.i = select i1 %i.r, ptr %i.u, ptr %i.s
  %.sroa.3.0.i.i = load i64, ptr %.sroa.3.0.in.i.i, align 8, !noundef !5
  %i.v = icmp eq i64 %.sroa.3.0.i.i, 6
  br i1 %i.v, label %bb.i, label %_RNvXs3_NtCsjJXvCMGntp8_6syntax10token_textNtB5_9TokenTextINtNtCshzWfHUSfYae_4core3cmp9PartialEqReE2eq.exit.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.01.0.i.i = select i1 %i.r, ptr %i.w, ptr %i.q ; 2 uses
  %i.x = load i32, ptr %.sroa.01.0.i.i, align 1
  %i.y = xor i32 %i.x, 1634886436
  %i.z = getelementptr i8, ptr %.sroa.01.0.i.i, i64 4
  %i.aa = load i16, ptr %i.z, align 1
  %i.ab = zext i16 %i.aa to i32
  %i.ac = xor i32 %i.ab, 25972
  %i.ad = or i32 %i.y, %i.ac
  %i.ae = icmp ne i32 %i.ad, 0                    ; 2 uses
  %i.af = zext i1 %i.ae to i32                    ; 0 uses
  br label %_RNvXs3_NtCsjJXvCMGntp8_6syntax10token_textNtB5_9TokenTextINtNtCshzWfHUSfYae_4core3cmp9PartialEqReE2eq.exit.i

_RNvXs3_NtCsjJXvCMGntp8_6syntax10token_textNtB5_9TokenTextINtNtCshzWfHUSfYae_4core3cmp9PartialEqReE2eq.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i = phi i1 [ %i.ae, %bb.i ], [ true, %bb.h ] ; 2 uses
  br i1 %i.r, label %bb.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsileJQcQObtj_7hir_def.exit.i

bb.j:                                             ; preds = %_RNvXs3_NtCsjJXvCMGntp8_6syntax10token_textNtB5_9TokenTextINtNtCshzWfHUSfYae_4core3cmp9PartialEqReE2eq.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3510
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.ag = load i64, ptr %i.u, align 8, !noundef !5
  store ptr %i.t, ptr %i.a, align 8, !noalias !3510
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !noalias !3510
  call void @llvm.experimental.noalias.scope.decl(metadata !3512)
  call void @llvm.experimental.noalias.scope.decl(metadata !3513)
  %i.ai = atomicrmw add ptr %i.t, i64 -1 release, align 8, !noalias !3514
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green5token10GreenTokenECsileJQcQObtj_7hir_def.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.a, align 8, !alias.scope !3514, !noalias !3510, !nonnull !5, !noundef !5
  %i.al = load atomic i64, ptr %i.ak acquire, align 8, !noalias !3514 ; 0 uses
  invoke void @_RNvMs3_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green5token14GreenTokenHeadShEE9drop_slowB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #44
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green5token10GreenTokenECsileJQcQObtj_7hir_def.exit.i.i.i unwind label %bb.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green5token10GreenTokenECsileJQcQObtj_7hir_def.exit.i.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3510
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsileJQcQObtj_7hir_def.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsileJQcQObtj_7hir_def.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green5token10GreenTokenECsileJQcQObtj_7hir_def.exit.i.i.i, %_RNvXs3_NtCsjJXvCMGntp8_6syntax10token_textNtB5_9TokenTextINtNtCshzWfHUSfYae_4core3cmp9PartialEqReE2eq.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3510
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !noundef !5
  %i.ao = add i32 %i.an, -1                       ; 2 uses
  store i32 %i.ao, ptr %i.am, align 4
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsileJQcQObtj_7hir_def.exit.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.k) #44
          to label %bb.n unwind label %bb.m

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.m, %bb.g, %bb.f
  %.pn3.i = phi { ptr, i32 } [ %i.ar, %bb.m ], [ %i.l, %bb.f ], [ %i.l, %bb.g ]
  %i.aq = load i64, ptr %i.d, align 8, !range !33, !noalias !3510, !noundef !5 ; 3 uses
  %.not5.i = icmp eq i64 %i.aq, -2
  br i1 %.not5.i, label %bb.q, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsileJQcQObtj_7hir_def.exit.i

bb.n:                                             ; preds = %bb.l, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsileJQcQObtj_7hir_def.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3510
  %.pr.pre.i = load i64, ptr %i.d, align 8, !noalias !3510 ; 2 uses
  %.not6.i = icmp eq i64 %.pr.pre.i, -2
  br i1 %.not6.i, label %_RNCINvNvNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower4path26hir_segment_to_ast_segment12find_segmentINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB1I_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB3g_8node_extNtB3c_4Path8segments0EB2t_EE0Bc_.exit, label %.thread6.i

bb.o:                                             ; preds = %bb.r, %bb.f
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsileJQcQObtj_7hir_def.exit.i
  %i.at = icmp ne i64 %i.aq, 16
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp eq i64 %i.aq, 15
  br i1 %i.au, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.r, %bb.p, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsileJQcQObtj_7hir_def.exit.i
  resume { ptr, i32 } %.pn3.i

bb.r:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext15PathSegmentKindECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #41
          to label %bb.q unwind label %bb.o

.thread6.i:                                       ; preds = %bb.n, %bb.e, %bb.b, %bb.b, %bb.b, %bb.b
  %.sroa.0.0.ph11.i = phi i1 [ %.sroa.0.0.i.i, %bb.n ], [ true, %bb.e ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.b ] ; 2 uses
  %.pr10.i = phi i64 [ %.pr.pre.i, %bb.n ], [ %i.e, %bb.e ], [ %i.e, %bb.b ], [ %i.e, %bb.b ], [ %i.e, %bb.b ], [ %i.e, %bb.b ] ; 2 uses
  %i.av = icmp ne i64 %.pr10.i, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = icmp eq i64 %.pr10.i, 15
  br i1 %i.aw, label %_RNCINvNvNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower4path26hir_segment_to_ast_segment12find_segmentINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB1I_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB3g_8node_extNtB3c_4Path8segments0EB2t_EE0Bc_.exit, label %bb.s

bb.s:                                             ; preds = %.thread6.i
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext15PathSegmentKindECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d)
  br label %_RNCINvNvNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower4path26hir_segment_to_ast_segment12find_segmentINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB1I_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB3g_8node_extNtB3c_4Path8segments0EB2t_EE0Bc_.exit

_RNCINvNvNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower4path26hir_segment_to_ast_segment12find_segmentINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB1I_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB3g_8node_extNtB3c_4Path8segments0EB2t_EE0Bc_.exit: ; preds = %bb.a, %bb.n, %.thread6.i, %bb.s
  %.sroa.0.03.i = phi i1 [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.ph11.i, %bb.s ], [ %.sroa.0.0.ph11.i, %.thread6.i ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3510
  ret i1 %.sroa.0.03.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtBW_12DefCollector16update_recursives_0INtB7_5FnMutTRRTNtB10_10ModuleIdLtNtNtB10_10visibility10VisibilityNtNtB10_10item_scope6GlobIdEEE8call_mutB10_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !13, !noundef !5 ; 4 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !34, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3517)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3517
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3517, !nonnull !5, !align !34, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false), !noalias !3517
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3517, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3517, !nonnull !5, !align !13, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !3517, !nonnull !5, !align !13, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.k = load i32, ptr %i.j, align 4, !range !11, !noalias !3517, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.m = load i32, ptr %i.l, align 4, !noalias !3517, !noundef !5
  %i.n = call noundef zeroext i1 @_RNvMNtCsileJQcQObtj_7hir_def10visibilityNtB2_10Visibility23is_visible_from_def_map(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.i, i32 noundef %i.k, i32 noundef %i.m), !noalias !3517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3517
  ret i1 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtBW_12DefCollector22record_resolved_imports0_0INtB7_5FnMutTRTINtNtBb_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtB10_6per_ns5PerNsEEE8call_mutB10_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.b = load i32, ptr %i.a, align 4, !range !40, !alias.scope !3520, !noundef !5
  %.not.i = icmp eq i32 %i.b, -2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !range !10, !alias.scope !3520
  %.not1.i = icmp eq i32 %i.d, -1
  %or.cond.i = select i1 %.not.i, i1 %.not1.i, i1 false
  br i1 %or.cond.i, label %bb.b, label %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_imports0_0Bb_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.f = load i32, ptr %i.e, align 4, !range !10, !alias.scope !3520, !noundef !5
  %.not2.i = icmp ne i32 %i.f, -1
  br label %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_imports0_0Bb_.exit

_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_imports0_0Bb_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %.not2.i, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtBW_12DefCollector22record_resolved_imports2_0INtB7_5FnMutTRTINtNtBb_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtB10_6per_ns5PerNsEEE8call_mutB10_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.b = load i32, ptr %i.a, align 4, !range !40, !alias.scope !3523, !noundef !5
  %.not.i = icmp eq i32 %i.b, -2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !range !10, !alias.scope !3523
  %.not1.i = icmp eq i32 %i.d, -1
  %or.cond.i = select i1 %.not.i, i1 %.not1.i, i1 false
  br i1 %or.cond.i, label %bb.b, label %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_imports2_0Bb_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.f = load i32, ptr %i.e, align 4, !range !10, !alias.scope !3523, !noundef !5
  %.not2.i = icmp ne i32 %i.f, -1
  br label %_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_imports2_0Bb_.exit

_RNCNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12DefCollector22record_resolved_imports2_0Bb_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %.not2.i, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtBW_9ItemScope14inherent_impls0INtB7_5FnMutTRRTNtBY_6ImplIdbEEE8call_mutBY_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #16 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !34, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.b = load i8, ptr %i.a, align 4, !range !8, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = xor i1 %i.c, true
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtBW_9ItemScope16modules_in_scope0INtB7_5FnMutTRINtNtBY_6per_ns4ItemNtBY_11ModuleDefIdNtBW_19ImportOrExternCrateEEE8call_mutBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([20 x i8]) align 4 captures(none) dereferenceable(20) initializes((8, 9)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(44) %2) unnamed_addr #17 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3528)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.b = load i8, ptr %i.a, align 4, !range !36, !alias.scope !3528, !noundef !5
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.e, i64 12, i1 false), !alias.scope !3529
  %i.f = load <2 x i32>, ptr %i.d, align 4, !alias.scope !3528
  store <2 x i32> %i.f, ptr %0, align 4, !alias.scope !3527
  br label %_RNCNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB7_9ItemScope16modules_in_scope0B9_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %i.g, align 4, !alias.scope !3527
  br label %_RNCNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB7_9ItemScope16modules_in_scope0B9_.exit

_RNCNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB7_9ItemScope16modules_in_scope0B9_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtBW_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtE7entries0INtB7_5FnMutTRTNtNtBY_2id2IdRINtBW_5ValueB1U_EEEE8call_mutB1W_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !align !13, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.c = tail call noundef i64 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision4load(ptr noundef nonnull align 8 %i.b)
  %i.d = icmp ne i64 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtBW_14IngredientImplNtCsileJQcQObtj_7hir_def9BlockIdLtE7entries0INtB7_5FnMutTRTNtNtBY_2id2IdRINtBW_5ValueB1U_EEEE8call_mutB1W_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !align !13, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.c = tail call noundef i64 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision4load(ptr noundef nonnull align 8 %i.b)
  %i.d = icmp ne i64 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtBW_14IngredientImplNtNtCsileJQcQObtj_7hir_def7nameres10DefMapPairE7entries0INtB7_5FnMutTRTNtNtBY_2id2IdRINtBW_5ValueB1U_EEEE8call_mutB1Y_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !align !13, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 288
  %i.c = tail call noundef i64 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision4load(ptr noundef nonnull align 8 %i.b)
  %i.d = icmp ne i64 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNvMs_NtCsileJQcQObtj_7hir_def10item_scopeNtBT_12ImportOrGlob11into_importINtB7_5FnMutTB1t_EE8call_mutBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #1 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %2, align 4
  %i.a = trunc nuw i32 %.sroa.0.0.copyload to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.2.0..sroa_idx, i64 12, i1 false)
  br label %_RNvYNvMs_NtCsileJQcQObtj_7hir_def10item_scopeNtB7_12ImportOrGlob11into_importINtNtNtCshzWfHUSfYae_4core3ops8function5FnMutTBH_EE8call_mutB9_.exit

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4, !alias.scope !3534
  br label %_RNvYNvMs_NtCsileJQcQObtj_7hir_def10item_scopeNtB7_12ImportOrGlob11into_importINtNtNtCshzWfHUSfYae_4core3ops8function5FnMutTBH_EE8call_mutB9_.exit

_RNvYNvMs_NtCsileJQcQObtj_7hir_def10item_scopeNtB7_12ImportOrGlob11into_importINtNtNtCshzWfHUSfYae_4core3ops8function5FnMutTBH_EE8call_mutB9_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs1_NvNvMs5_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtBd_10TraitItems22query_with_diagnostics1__NtB7_23query_with_diagnostics_NtNtCsd9Lm8bEdjjY_5salsa10ingredient3Jar17id_struct_type_id(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @329, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NvNvMs5_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtBd_10TraitItems22query_with_diagnostics1__NtB7_23query_with_diagnostics_NtNtCsd9Lm8bEdjjY_5salsa10ingredient3Jar18create_ingredients(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(1368) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [584 x i8], align 8               ; 4 uses
  %i.b = alloca [584 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = tail call { ptr, i64 } @_RNvXs7_NvCsileJQcQObtj_7hir_defs5_1__NtB7_7TraitIdNtNtCsd9Lm8bEdjjY_5salsa12salsa_struct15SalsaStructInDb23lookup_ingredient_index(ptr noundef nonnull align 8 %1) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) @301, i64 16, i1 false)
  store ptr @_RNvYNCINvMs1_NtNtCsd9Lm8bEdjjY_5salsa5table4memoNtBb_13MemoEntryType9to_dyn_fnINtNtNtBf_8function4memo4MemoNtNvNvMs5_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtB1R_10TraitItems22query_with_diagnostics1__38query_with_diagnostics__Configuration_EE0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtNtB42_3ptr8non_null7NonNullB1e_EEE9call_onceB1V_, ptr %i.c, align 8
  %i.h = call fastcc noundef i32 @_RNvXs3_NtCsd9Lm8bEdjjY_5salsa23memo_ingredient_indicesNtB5_28MemoIngredientSingletonIndexNtB5_24NewMemoIngredientIndices6create(ptr noalias nofree noundef align 8 dereferenceable(1368) %1, ptr noalias noundef nonnull align 4 %i.e, i64 noundef %i.f, i32 noundef %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa8functionINtB2_14IngredientImplNtNvNvMs5_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtB13_10TraitItems22query_with_diagnostics1__38query_with_diagnostics__Configuration_E3newB17_(ptr noalias nofree noundef nonnull sret([584 x i8]) align 8 captures(none) dereferenceable(584) %i.b, i32 noundef %2, i32 noundef %i.h, i64 noundef 0)
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.i = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 8, 585) 16, i64 noundef range(i64 4, 129) 8) #45 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #43
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.e
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 16, i64 noundef 8) #45
  br label %bb.i

_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(584) %i.a, ptr noundef nonnull align 8 dereferenceable(584) %i.b, i64 584, i1 false)
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !3537
  %i.k = call noundef align 8 dereferenceable_or_null(584) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 8, 585) 584, i64 noundef range(i64 4, 129) 8) #45, !noalias !3537 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.g, !prof !6

bb.d:                                             ; preds = %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 584) #43
          to label %.noexc3 unwind label %bb.e

.noexc3:                                          ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsd9Lm8bEdjjY_5salsa8function14IngredientImplNtNvNvMs5_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtB1z_10TraitItems22query_with_diagnostics1__38query_with_diagnostics__Configuration_EEB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(584) %i.a) #41
          to label %bb.c unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.g:                                             ; preds = %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(584) %i.k, ptr noundef nonnull align 8 dereferenceable(584) %i.b, i64 584, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.k, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @331, ptr %i.o, align 8
  store i64 1, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.i:                                             ; preds = %bb.c, %bb.j
  %.pn8 = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.m, %bb.c ]
  resume { ptr, i32 } %.pn8
end_hunk_13
begin_hunk_14_@_RNvXs2_NtCsd9Lm8bEdjjY_5salsa5inputINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def20ExpandProcAttrMacrosENtNtB7_10ingredient10Ingredient16memo_table_typesBV_:bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCsd9Lm8bEdjjY_5salsa5inputINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def20ExpandProcAttrMacrosENtNtB7_10ingredient10Ingredient16should_serializeBV_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  ret i1 false
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCsd9Lm8bEdjjY_5salsa5inputINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def20ExpandProcAttrMacrosENtNtB7_10ingredient10Ingredient19maybe_changed_afterBV_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone captures(none) %2, i32 range(i32 1, 0) %3, i32 %4, i64 range(i64 1, 0) %5) unnamed_addr #14 {
bb.a:
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @344, ptr noundef nonnull inttoptr (i64 109 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #39
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs2_NtCsd9Lm8bEdjjY_5salsa5inputINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def20ExpandProcAttrMacrosENtNtB7_10ingredient10Ingredient20memo_table_types_mutBV_(ptr noalias nofree noundef readnone returned align 8 captures(ret: address, provenance) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret ptr %0
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal void @_RNvXs2_NtCsd9Lm8bEdjjY_5salsa5inputINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def20ExpandProcAttrMacrosENtNtB7_10ingredient10Ingredient31flatten_cycle_head_dependenciesBV_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i32 range(i32 1, 0) %2, i32 %3, ptr noalias nofree readnone align 8 captures(none) %4, ptr noalias nofree readnone align 8 captures(none) %5) unnamed_addr #14 {
bb.a:
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @344, ptr noundef nonnull inttoptr (i64 109 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @346) #39
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal void @_RNvXs2_NtCsd9Lm8bEdjjY_5salsa5inputINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def20ExpandProcAttrMacrosENtNtB7_10ingredient10Ingredient32collect_minimum_serialized_edgesBV_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, ptr noalias nofree readnone align 8 captures(none) %3, ptr noalias nofree readnone align 8 captures(none) %4) unnamed_addr #14 {
bb.a:
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @344, ptr noundef nonnull inttoptr (i64 109 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @347) #39
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCsd9Lm8bEdjjY_5salsa5inputINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def20ExpandProcAttrMacrosENtNtB7_10ingredient10Ingredient8jar_kindBV_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs2_NtCsd9Lm8bEdjjY_5salsa5inputINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def20ExpandProcAttrMacrosENtNtB7_10ingredient10Ingredient8locationBV_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret ptr @349
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB5_21BuiltinDeriveExpanderNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !36, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs2_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB5_21BuiltinDeriveExpanderNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs2_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB5_21BuiltinDeriveExpanderNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.542, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef captures(address, read_provenance) %0, ptr noundef captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.01.06 ; 4 uses
  %i.d = getelementptr inbounds nuw [72 x i8], ptr %1, i64 %.sroa.01.06 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3640)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.f = load i32, ptr %i.e, align 8, !alias.scope !3641, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !3642, !noundef !5
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_RNvYNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.k = load i32, ptr %i.j, align 4, !alias.scope !3641, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !3642, !noundef !5
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %_RNvYNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.c, align 8, !range !11, !alias.scope !3641, !noundef !5
  %i.p = load i32, ptr %i.d, align 8, !range !11, !alias.scope !3642, !noundef !5
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %_RNvYNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = tail call { ptr, i64 } @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEj4_EINtNtNtBN_3ops5index5IndexNtNtB3o_5range9RangeFullE5indexB2w_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @571), !noalias !3643 ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 1        ; 2 uses
  %i.v = tail call { ptr, i64 } @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEj4_EINtNtNtBN_3ops5index5IndexNtNtB3o_5range9RangeFullE5indexB2w_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 1
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %_RNvYNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit, label %_RNvYNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvYNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit: ; preds = %bb.e
  %i.y = extractvalue { ptr, i64 } %i.v, 0
  %i.z = extractvalue { ptr, i64 } %i.t, 0
  %i.aa = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtNtB9_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEINtB5_14SlicePartialEqBC_E17equal_same_lengthB2a_(ptr noundef %i.z, ptr noundef %i.y, i64 noundef %i.u)
  br i1 %i.aa, label %bb.b, label %_RNvYNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvYNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread: ; preds = %bb.b, %_RNvYNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit, %.lr.ph, %bb.c, %bb.d, %bb.e, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %.lr.ph ], [ false, %_RNvYNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_Cs3gTr8JIMkcl_7editionNtB5_7EditionNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !4, !noundef !5
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs3_Cs3gTr8JIMkcl_7editionNtB5_7EditionNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load, i64 noundef 11)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_7ModPathNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @366, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @367, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @368, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @365)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i32 @_RNvXs3_NtCsd9Lm8bEdjjY_5salsa23memo_ingredient_indicesNtB5_28MemoIngredientSingletonIndexNtB5_24NewMemoIngredientIndices6create(ptr noalias nofree noundef nonnull align 8 dereferenceable(1368) %0, ptr noalias noundef nonnull align 4 captures(address) %1, i64 noundef %2, i32 noundef %3, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = icmp eq i64 %2, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !noundef !5   ; 2 uses
  %i.d = invoke noundef i32 @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa26next_memo_ingredient_index(ptr noalias nofree noundef nonnull align 8 dereferenceable(1368) %0, i32 noundef %i.c, i32 noundef %3)
          to label %bb.e unwind label %.thread    ; 2 uses

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @372, ptr noundef nonnull inttoptr (i64 193 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @373) #43
          to label %bb.i unwind label %bb.d

.thread:                                          ; preds = %bb.h, %_RNvMsD_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo14MemoTableTypesE9is_uniqueCsileJQcQObtj_7hir_def.exit.thread, %bb.f, %bb.e, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsd9Lm8bEdjjY_5salsa23memo_ingredient_indices17IngredientIndicesECsileJQcQObtj_7hir_def.exit, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %.thread, %bb.d
  %lpad.phi3 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.d ]
  %i.f = shl nuw nsw i64 %2, 2
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %i.f, i64 noundef 4) #45
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsd9Lm8bEdjjY_5salsa23memo_ingredient_indices17IngredientIndicesECsileJQcQObtj_7hir_def.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa21lookup_ingredient_mut(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(1368) %0, i32 noundef %i.c)
          to label %bb.f unwind label %.thread

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !align !13, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !5, !nonnull !5
  %i.l = invoke noundef nonnull align 8 ptr %i.k(ptr noundef nonnull %i.g)
          to label %bb.g unwind label %.thread    ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.val9 = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val9, i64 8 ; 2 uses
  %i.n = cmpxchg ptr %i.m, i64 1, i64 -1 acquire monotonic, align 8
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.n, 1
  br i1 %.sroa.18.0.in.i.i, label %_RNvMsD_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo14MemoTableTypesE9is_uniqueCsileJQcQObtj_7hir_def.exit, label %_RNvMsD_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo14MemoTableTypesE9is_uniqueCsileJQcQObtj_7hir_def.exit.thread, !prof !42

_RNvMsD_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo14MemoTableTypesE9is_uniqueCsileJQcQObtj_7hir_def.exit: ; preds = %bb.g
  %i.o = load atomic i64, ptr %.val9 acquire, align 8
  %i.p = icmp eq i64 %i.o, 1
  store atomic i64 1, ptr %i.m release, align 8
  br i1 %i.p, label %bb.h, label %_RNvMsD_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo14MemoTableTypesE9is_uniqueCsileJQcQObtj_7hir_def.exit.thread, !prof !43

_RNvMsD_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo14MemoTableTypesE9is_uniqueCsileJQcQObtj_7hir_def.exit.thread: ; preds = %bb.g, %_RNvMsD_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo14MemoTableTypesE9is_uniqueCsileJQcQObtj_7hir_def.exit
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @369, i64 noundef 68, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #43
          to label %bb.i unwind label %.thread

bb.h:                                             ; preds = %_RNvMsD_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo14MemoTableTypesE9is_uniqueCsileJQcQObtj_7hir_def.exit
  %i.q = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  invoke void @_RNvMs3_NtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB5_14MemoTableTypes3set(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, i32 noundef %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %4)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsd9Lm8bEdjjY_5salsa23memo_ingredient_indices17IngredientIndicesECsileJQcQObtj_7hir_def.exit11 unwind label %.thread

bb.i:                                             ; preds = %_RNvMsD_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo14MemoTableTypesE9is_uniqueCsileJQcQObtj_7hir_def.exit.thread, %bb.c
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsd9Lm8bEdjjY_5salsa23memo_ingredient_indices17IngredientIndicesECsileJQcQObtj_7hir_def.exit11: ; preds = %bb.h
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 4, i64 noundef 4) #45
  ret i32 %i.d

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsd9Lm8bEdjjY_5salsa23memo_ingredient_indices17IngredientIndicesECsileJQcQObtj_7hir_def.exit: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.d
  %lpad.phi4 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.d ], [ %lpad.phi3, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i ]
  resume { ptr, i32 } %lpad.phi4
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCsd9Lm8bEdjjY_5salsa5inputINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def20ExpandProcAttrMacrosENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtBV_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @374, i64 noundef 59)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @376, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @375)
  %i.d = call noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXs5_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsTINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtBR_10import_map10ImportInfoj1_ENtB2b_16IsTraitAssocItemENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtCshzWfHUSfYae_4core3ops5index5IndexRBN_E5indexBR_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(20) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsTINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtBS_10import_map10ImportInfoj1_ENtB2c_16IsTraitAssocItemENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %1) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #39
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs5_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtENtNtB7_10ingredient10Ingredient10debug_nameB15_(ptr nofree nonnull readnone align 128 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @241, i64 10 }
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs5_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtENtNtB7_10ingredient10Ingredient12memory_usageB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(136) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !5, !nonnull !5
  %i.d = tail call noundef nonnull align 8 ptr %i.c(ptr noundef nonnull %2) #40
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table8slots_ofINtNtB8_14tracked_struct5ValueNtCsileJQcQObtj_7hir_def10ModuleIdLtEEB1o_(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 %i.e)
  store ptr %1, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %1, ptr %i.f, align 8
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsd9Lm8bEdjjY_5salsa8database12memory_usage8SlotInfoEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB2f_INtNtB2j_6filter6FilterINtNtB2j_7flatten7FlatMapINtNtB2j_10filter_map9FilterMapINtNtCsg1bCijyqAnf_6boxcar3vec4IterNtNtB10_5table4PageENCINvMs4_B4Z_NtB4Z_5Table8slots_ofINtNtB10_14tracked_struct5ValueNtCsileJQcQObtj_7hir_def10ModuleIdLtEE0EIB2f_INtNtB2j_9enumerate9EnumerateINtNtNtB2n_5slice4iter4IterB5P_EENCNCB5j_s_00ENCB5j_s_0ENCNvMs3_B5S_INtB5S_14IngredientImplB6k_E7entries0ENCB8s_s_0ENCNvXs5_B5S_B8C_NtNtB10_10ingredient10Ingredient12memory_usage0EE9from_iterB6m_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs5_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtENtNtB7_10ingredient10Ingredient14is_persistableB15_(ptr nofree nonnull readnone align 128 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs5_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtENtNtB7_10ingredient10Ingredient16ingredient_indexB15_(ptr nofree noundef nonnull readonly align 128 captures(none) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load i32, ptr %i.a, align 8, !noundef !5
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs5_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtENtNtB7_10ingredient10Ingredient16memo_table_typesB15_(ptr nofree noundef nonnull readnone align 128 captures(ret: address, provenance) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs5_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtENtNtB7_10ingredient10Ingredient16should_serializeB15_(ptr nofree nonnull readnone align 128 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  ret i1 false
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtENtNtB7_10ingredient10Ingredient19maybe_changed_afterB15_(ptr nofree nonnull readnone align 128 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone captures(none) %2, i32 range(i32 1, 0) %3, i32 %4, i64 range(i64 1, 0) %5) unnamed_addr #14 {
bb.a:
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @380, ptr noundef nonnull inttoptr (i64 111 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @381) #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs5_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtENtNtB7_10ingredient10Ingredient19remove_stale_outputB15_(ptr noundef nonnull align 128 %0, ptr noundef nonnull align 8 %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  store i32 %4, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %0, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1352
  %i.k = load ptr, ptr %i.j, align 8, !noundef !5
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.l = phi i32 [ %.pre10.i, %bb.c ], [ %4, %bb.a ]
  %i.m = phi i32 [ %.pre.i, %bb.c ], [ %3, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.o = call noundef ptr @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table7get_rawINtNtB8_14tracked_struct5ValueNtCsileJQcQObtj_7hir_def10ModuleIdLtEEB1n_(ptr noundef nonnull align 8 %i.n, i32 noundef %i.m, i32 noundef %i.l) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = call noundef i64 @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa8revisionNtB5_22OptionalAtomicRevision4swap(ptr noundef nonnull align 8 %i.p, i64 noundef 0) ; 2 uses
  %.not9.i = icmp eq i64 %i.q, 0
  br i1 %.not9.i, label %bb.e, label %bb.d, !prof !6

bb.c:                                             ; preds = %bb.a
  call void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %1, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @210) #44
  %.pre.i = load i32, ptr %i.g, align 8, !range !11
  %.pre10.i = load i32, ptr %i.h, align 4
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.s = load i64, ptr %i.r, align 8, !range !7, !noundef !5
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.i, label %bb.f, !prof !6

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa2idNtB5_2IdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.44.0..sroa_idx.i, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @211, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #39
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.v = load <2 x i32>, ptr %i.g, align 8
  store <2 x i32> %i.v, ptr %i.c, align 8, !noalias !3646
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.x = load ptr, ptr %i.w, align 128, !noalias !3646, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3646
  store ptr %i.y, ptr %i.b, align 8, !noalias !3646
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.u, ptr %i.z, align 8, !noalias !3646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3646
  store ptr %1, ptr %i.a, align 8, !noalias !3646
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.aa, align 8, !noalias !3646
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.ab, align 8, !noalias !3646
  invoke void @_RINvMs5_NtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB6_21MemoTableWithTypesMut10take_memosNCNvMs3_NtBa_14tracked_structINtB1r_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtE11clear_memos0EB2b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtE13delete_entityB15_.exit unwind label %bb.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtBJ_14IngredientImplpE11clear_memos14TableDropGuardECsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.g
  resume { ptr, i32 } %i.ac

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB8_14IngredientImplpE11clear_memosNtB2_14TableDropGuardNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtBJ_14IngredientImplpE11clear_memos14TableDropGuardECsileJQcQObtj_7hir_def.exit.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

end_hunk_14
begin_hunk_15_@_RNvXs7P_CsileJQcQObtj_7hir_defNtB6_11ModuleDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.as = load <2 x i32>, ptr %i.aq, align 4
  %i.at = load <2 x i32>, ptr %i.ar, align 4
  %i.au = icmp eq <2 x i32> %i.as, %i.at          ; 2 uses
  %i.av = extractelement <2 x i1> %i.au, i64 0
  %i.aw = extractelement <2 x i1> %i.au, i64 1
  %.sroa.0.0.i34 = select i1 %i.aw, i1 %i.av, i1 false
  br label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.az = load <2 x i32>, ptr %i.ax, align 4
  %i.ba = load <2 x i32>, ptr %i.ay, align 4
  %i.bb = icmp eq <2 x i32> %i.az, %i.ba          ; 2 uses
  %i.bc = extractelement <2 x i1> %i.bb, i64 0
  %i.bd = extractelement <2 x i1> %i.bb, i64 1
  %.sroa.0.0.i35 = select i1 %i.bd, i1 %i.bc, i1 false
  br label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bg = load <2 x i32>, ptr %i.be, align 4
  %i.bh = load <2 x i32>, ptr %i.bf, align 4
  %i.bi = icmp eq <2 x i32> %i.bg, %i.bh          ; 2 uses
  %i.bj = extractelement <2 x i1> %i.bi, i64 0
  %i.bk = extractelement <2 x i1> %i.bi, i64 1
  %.sroa.0.0.i36 = select i1 %i.bk, i1 %i.bj, i1 false
  br label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bn = load <2 x i32>, ptr %i.bl, align 4
  %i.bo = load <2 x i32>, ptr %i.bm, align 4
  %i.bp = icmp eq <2 x i32> %i.bn, %i.bo          ; 2 uses
  %i.bq = extractelement <2 x i1> %i.bp, i64 0
  %i.br = extractelement <2 x i1> %i.bp, i64 1
  %.sroa.0.0.i37 = select i1 %i.br, i1 %i.bq, i1 false
  br label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.b
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bu = load <2 x i32>, ptr %i.bs, align 4
  %i.bv = load <2 x i32>, ptr %i.bt, align 4
  %i.bw = icmp eq <2 x i32> %i.bu, %i.bv          ; 2 uses
  %i.bx = extractelement <2 x i1> %i.bw, i64 0
  %i.by = extractelement <2 x i1> %i.bw, i64 1
  %.sroa.0.0.i38 = select i1 %i.by, i1 %i.bx, i1 false
  br label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.val29 = load i8, ptr %i.bz, align 1, !range !3661, !noundef !5 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val30 = load i8, ptr %i.cb, align 2           ; 3 uses
  %.val31 = load i8, ptr %i.ca, align 1, !range !3661, !noundef !5
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val32 = load i8, ptr %i.cc, align 2           ; 3 uses
  %i.cd = icmp eq i8 %.val29, %.val31
  br i1 %i.cd, label %bb.s, label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  switch i8 %.val29, label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit [
    i8 3, label %bb.t
    i8 4, label %bb.u
    i8 5, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.ce = icmp eq i8 %.val30, %.val32
  br label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.s
  %i.cf = icmp eq i8 %.val30, %.val32
  br label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.s
  %i.cg = icmp eq i8 %.val30, %.val32
  br label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %bb.b
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3663)
  %i.cj = load i32, ptr %i.ch, align 4, !range !9, !alias.scope !3662, !noundef !5 ; 2 uses
  %i.ck = load i32, ptr %i.ci, align 4, !range !9, !alias.scope !3663, !noundef !5
  %i.cl = icmp eq i32 %i.cj, %i.ck
  br i1 %i.cl, label %bb.x, label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !alias.scope !3662, !noundef !5
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !alias.scope !3663, !noundef !5
  %i.cq = icmp eq i32 %i.cn, %i.cp                ; 3 uses
  switch i32 %i.cj, label %default.unreachable44 [
    i32 0, label %bb.y
    i32 1, label %bb.z
    i32 2, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  br i1 %i.cq, label %bb.ab, label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.x
  br i1 %i.cq, label %bb.ac, label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.x
  br i1 %i.cq, label %bb.ad, label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !range !11, !alias.scope !3662, !noundef !5
  %i.cu = load i32, ptr %i.cr, align 4, !range !11, !alias.scope !3663, !noundef !5
  %i.cv = icmp eq i32 %i.ct, %i.cu
  br label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.z
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = load i32, ptr %i.cx, align 4, !range !11, !alias.scope !3662, !noundef !5
  %i.cz = load i32, ptr %i.cw, align 4, !range !11, !alias.scope !3663, !noundef !5
  %i.da = icmp eq i32 %i.cy, %i.cz
  br label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load i32, ptr %i.dc, align 4, !range !11, !alias.scope !3662, !noundef !5
  %i.de = load i32, ptr %i.db, align 4, !range !11, !alias.scope !3663, !noundef !5
  %i.df = icmp eq i32 %i.dd, %i.de
  br label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define hidden void @_RNvXs8_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB7_3BoxSNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCsileJQcQObtj_7hir_def(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #19 {
bb.a:
  %i.a = icmp ult i64 %2, 384307168202282326
  tail call void @llvm.assume(i1 %i.a)
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define hidden void @_RNvXs8_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB7_3BoxSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCsileJQcQObtj_7hir_def(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef nonnull align 4 %1, i64 noundef %2) unnamed_addr #19 {
bb.a:
  %i.a = icmp ult i64 %2, 2305843009213693952
  tail call void @llvm.assume(i1 %i.a)
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtBP_11ModuleDefIdNtNtBP_10item_scope12ImportOrGlobEENtNtB7_3fmt5Debug3fmtBP_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(44) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !10, !noundef !5
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @424, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @45)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @423, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtBP_11ModuleDefIdNtNtBP_10item_scope19ImportOrExternCrateEENtNtB7_3fmt5Debug3fmtBP_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(44) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !40, !noundef !5
  %.not = icmp eq i32 %i.b, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @424, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @423, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorENtNtB7_3fmt5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !5
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @424, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @425)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @423, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtCsileJQcQObtj_7hir_def9item_tree11ImportAliasENtNtB7_3fmt5Debug3fmtBO_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !19, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @424, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @426)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @423, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionRNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtB7_3fmt5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !align !13, !noundef !5
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @424, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @427)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @423, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsV_NtCsgIpRO4v45SJ_7base_db5inputNtB5_9CrateNameNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @467, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsW_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsu_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsw_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3666, !noundef !5 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !3666, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !3666, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
end_hunk_15
begin_hunk_16_@_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1u_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1u_:bb.a
  %i.y = extractelement <2 x i1> %i.w, i64 1
  %.sroa.0.0.i.i.i.i.i.i.us23.i = select i1 %i.y, i1 %i.x, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i.us23.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1V_9item_tree11FieldsShapeEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3b_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1V_.exit.us24.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1s_9item_tree11FieldsShapeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2A_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2I_3cmp9PartialEq2eq0E0INtNtNtB2I_3ops12control_flow11ControlFlowuEEB1s_.exit

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1V_9item_tree11FieldsShapeEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3b_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1V_.exit.us24.i: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.val4.i.i.i.i.i.us25.i = load i8, ptr %i.z, align 8, !range !23, !alias.scope !4203, !noalias !4196, !noundef !5
  %.val5.i.i.i.i.i.us26.i = load i8, ptr %i.p, align 8, !range !23, !alias.scope !4204, !noalias !4205, !noundef !5
  %.not.us27.i = icmp eq i8 %.val4.i.i.i.i.i.us25.i, %.val5.i.i.i.i.i.us26.i
  br i1 %.not.us27.i, label %bb.d, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1s_9item_tree11FieldsShapeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2A_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2I_3cmp9PartialEq2eq0E0INtNtNtB2I_3ops12control_flow11ControlFlowuEEB1s_.exit

.split.i:                                         ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1V_9item_tree11FieldsShapeEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3b_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1V_.exit.i
  %.not34.not.i = icmp eq ptr %i.ab, %i.i
  br i1 %.not34.not.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1s_9item_tree11FieldsShapeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2A_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2I_3cmp9PartialEq2eq0E0INtNtNtB2I_3ops12control_flow11ControlFlowuEEB1s_.exit, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.i.i.i.i

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.i.i.i.i: ; preds = %.split.i.preheader, %.split.i
  %i.aa = phi ptr [ %i.ab, %.split.i ], [ %i.f, %.split.i.preheader ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4193)
  %i.ad = tail call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa), !noalias !4206
  %i.ae = tail call { i64, i64 } @_RINvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB5_4CoreNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1s_9item_tree11FieldsShapeEE12get_index_ofBL_EB1s_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, i64 noundef %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa), !noalias !4206 ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %i.ag = extractvalue { i64, i64 } %i.ae, 1      ; 3 uses
  %i.ah = trunc nuw i64 %i.af to i1
  br i1 %i.ah, label %bb.f, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1s_9item_tree11FieldsShapeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2A_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2I_3cmp9PartialEq2eq0E0INtNtNtB2I_3ops12control_flow11ControlFlowuEEB1s_.exit

bb.f:                                             ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.i.i.i.i
  %i.ai = icmp ult i64 %i.ag, %.fr.i
  br i1 %i.ai, label %..thread_crit_edge.i.i.i.i, label %bb.g

..thread_crit_edge.i.i.i.i:                       ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.ag ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4202)
  %i.al = load <2 x i32>, ptr %i.ac, align 4, !alias.scope !4203, !noalias !4207
  %i.am = load <2 x i32>, ptr %i.ak, align 4, !alias.scope !4204, !noalias !4206
  %i.an = icmp eq <2 x i32> %i.al, %i.am          ; 2 uses
  %i.ao = extractelement <2 x i1> %i.an, i64 0
  %i.ap = extractelement <2 x i1> %i.an, i64 1
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %i.ap, i1 %i.ao, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1V_9item_tree11FieldsShapeEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3b_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1V_.exit.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1s_9item_tree11FieldsShapeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2A_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2I_3cmp9PartialEq2eq0E0INtNtNtB2I_3ops12control_flow11ControlFlowuEEB1s_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef %.fr.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #39, !noalias !4206
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1V_9item_tree11FieldsShapeEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3b_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1V_.exit.i: ; preds = %..thread_crit_edge.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.val4.i.i.i.i.i.i = load i8, ptr %i.aq, align 4, !range !23, !alias.scope !4203, !noalias !4207, !noundef !5
  %.val5.i.i.i.i.i.i = load i8, ptr %i.ar, align 4, !range !23, !alias.scope !4204, !noalias !4206, !noundef !5
  %.not.i = icmp eq i8 %.val4.i.i.i.i.i.i, %.val5.i.i.i.i.i.i
  br i1 %.not.i, label %.split.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1s_9item_tree11FieldsShapeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2A_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2I_3cmp9PartialEq2eq0E0INtNtNtB2I_3ops12control_flow11ControlFlowuEEB1s_.exit

_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1s_9item_tree11FieldsShapeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2A_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2I_3cmp9PartialEq2eq0E0INtNtNtB2I_3ops12control_flow11ControlFlowuEEB1s_.exit: ; preds = %bb.d, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.thread6.i.i.i.us.i, %bb.e, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1V_9item_tree11FieldsShapeEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3b_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1V_.exit.us24.i, %.split.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.i.i.i.i, %..thread_crit_edge.i.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1V_9item_tree11FieldsShapeEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3b_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1V_.exit.i, %.split.us17.i, %.split.i.preheader, %bb.c, %.split.us.i, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.split.us.i ], [ false, %bb.c ], [ true, %.split.us17.i ], [ true, %.split.i.preheader ], [ false, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1V_9item_tree11FieldsShapeEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3b_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1V_.exit.i ], [ false, %..thread_crit_edge.i.i.i.i ], [ false, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.i.i.i.i ], [ true, %.split.i ], [ false, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1V_9item_tree11FieldsShapeEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3b_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1V_.exit.us24.i ], [ false, %bb.e ], [ false, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.thread6.i.i.i.us.i ], [ true, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsTINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtBR_10import_map10ImportInfoj1_ENtB2b_16IsTraitAssocItemENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBR_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsTINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtBP_10import_map10ImportInfoj1_ENtB29_16IsTraitAssocItemEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBL_RB1w_ENCNvXse_B8_INtB8_8IndexMapBL_B1w_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3e_3cmp9PartialEq2eq0E0INtNtNtB3e_3ops12control_flow11ControlFlowuEEBP_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.h, 72
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %.not12.not.not.i.not6 = icmp eq i64 %i.h, 0
  br i1 %.not12.not.not.i.not6, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsTINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtBP_10import_map10ImportInfoj1_ENtB29_16IsTraitAssocItemEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBL_RB1w_ENCNvXse_B8_INtB8_8IndexMapBL_B1w_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3e_3cmp9PartialEq2eq0E0INtNtNtB3e_3ops12control_flow11ControlFlowuEEBP_.exit, label %.lr.ph

bb.c:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsRTINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtB1h_10import_map10ImportInfoj1_ENtB2C_16IsTraitAssocItemEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3I_8IndexMapB1d_B1Z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1h_.exit.i
  %.not12.not.not.i.not = icmp eq ptr %i.k, %i.i
  br i1 %.not12.not.not.i.not, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsTINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtBP_10import_map10ImportInfoj1_ENtB29_16IsTraitAssocItemEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBL_RB1w_ENCNvXse_B8_INtB8_8IndexMapBL_B1w_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3e_3cmp9PartialEq2eq0E0INtNtNtB3e_3ops12control_flow11ControlFlowuEEBP_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.k, %bb.c ], [ %i.f, %bb.b ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4226)
  %i.m = tail call noundef align 8 ptr @_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsTINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtBS_10import_map10ImportInfoj1_ENtB2c_16IsTraitAssocItemENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.l), !noalias !4227 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4229)
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsTINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtBP_10import_map10ImportInfoj1_ENtB29_16IsTraitAssocItemEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBL_RB1w_ENCNvXse_B8_INtB8_8IndexMapBL_B1w_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3e_3cmp9PartialEq2eq0E0INtNtNtB3e_3ops12control_flow11ControlFlowuEEBP_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4233)
  %i.n = tail call { ptr, i64 } @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_EINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtNtB1F_5range9RangeFullE5indexBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @571), !noalias !4234 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  %i.p = tail call { ptr, i64 } @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_EINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtNtB1F_5range9RangeFullE5indexBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) dereferenceable_or_null(40) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @572), !noalias !4235 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 1
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %_RNvXsy_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_ENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBM_.exit.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsTINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtBP_10import_map10ImportInfoj1_ENtB29_16IsTraitAssocItemEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBL_RB1w_ENCNvXse_B8_INtB8_8IndexMapBL_B1w_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3e_3cmp9PartialEq2eq0E0INtNtNtB3e_3ops12control_flow11ControlFlowuEEBP_.exit

_RNvXsy_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_ENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBM_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.s = extractvalue { ptr, i64 } %i.p, 0
  %i.t = extractvalue { ptr, i64 } %i.n, 0
  %i.u = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef %i.t, ptr noundef %i.s, i64 noundef %i.o), !noalias !4235
  br i1 %i.u, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsRTINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtB1h_10import_map10ImportInfoj1_ENtB2C_16IsTraitAssocItemEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3I_8IndexMapB1d_B1Z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1h_.exit.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsTINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtBP_10import_map10ImportInfoj1_ENtB29_16IsTraitAssocItemEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBL_RB1w_ENCNvXse_B8_INtB8_8IndexMapBL_B1w_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3e_3cmp9PartialEq2eq0E0INtNtNtB3e_3ops12control_flow11ControlFlowuEEBP_.exit

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsRTINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtB1h_10import_map10ImportInfoj1_ENtB2C_16IsTraitAssocItemEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3I_8IndexMapB1d_B1Z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1h_.exit.i: ; preds = %_RNvXsy_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_ENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBM_.exit.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.val.i.i.i.i.i.i = load i8, ptr %i.v, align 1, !range !8, !alias.scope !4236, !noalias !4235, !noundef !5
  %.val1.i.i.i.i.i.i = load i8, ptr %i.w, align 8, !range !8, !alias.scope !4237, !noalias !4235, !noundef !5
  %.not.i = icmp eq i8 %.val.i.i.i.i.i.i, %.val1.i.i.i.i.i.i
  br i1 %.not.i, label %bb.c, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsTINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtBP_10import_map10ImportInfoj1_ENtB29_16IsTraitAssocItemEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBL_RB1w_ENCNvXse_B8_INtB8_8IndexMapBL_B1w_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3e_3cmp9PartialEq2eq0E0INtNtNtB3e_3ops12control_flow11ControlFlowuEEBP_.exit

_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsTINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtBP_10import_map10ImportInfoj1_ENtB29_16IsTraitAssocItemEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBL_RB1w_ENCNvXse_B8_INtB8_8IndexMapBL_B1w_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3e_3cmp9PartialEq2eq0E0INtNtNtB3e_3ops12control_flow11ControlFlowuEEBP_.exit: ; preds = %bb.c, %.lr.ph, %bb.d, %_RNvXsy_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_ENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBM_.exit.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsRTINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtB1h_10import_map10ImportInfoj1_ENtB2C_16IsTraitAssocItemEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3I_8IndexMapB1d_B1Z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1h_.exit.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsRTINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtB1h_10import_map10ImportInfoj1_ENtB2C_16IsTraitAssocItemEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3I_8IndexMapB1d_B1Z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1h_.exit.i ], [ false, %_RNvXsy_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_ENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBM_.exit.i.i.i.i.i.i ], [ false, %bb.d ], [ false, %.lr.ph ], [ true, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXse_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBL_13SpanStorage32EENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4243)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4244
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !4244
  %i.g = load i64, ptr %i.a, align 8, !range !19, !noalias !4244, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !20, !noalias !4244, !noundef !5 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !noalias !4244
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #43, !noalias !4244
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !noalias !4244, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4244
  store i64 %i.j, ptr %i.b, align 8, !noalias !4244
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.o, align 8, !noalias !4244
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %i.r = icmp eq i64 %i.j, 0
  br i1 %i.r, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage32ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsileJQcQObtj_7hir_def.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage32ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i
  %.sroa.013.049.i = phi ptr [ %i.u, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage32ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i ], [ %i.d, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i ] ; 8 uses
  %.sroa.7.048.i = phi i64 [ %i.v, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage32ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i ], [ 0, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i ] ; 3 uses
  %.sroa.10.047.i = phi i64 [ %i.s, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage32ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i ], [ %i.j, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i ]
  %i.s = add i64 %.sroa.10.047.i, -1              ; 2 uses
  %i.t = icmp eq ptr %.sroa.013.049.i, %i.q
  br i1 %i.t, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage32ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsileJQcQObtj_7hir_def.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i, i64 16
  %i.v = add nuw nsw i64 %.sroa.7.048.i, 1
  %i.w = load i8, ptr %.sroa.013.049.i, align 8, !range !4, !alias.scope !4245, !noundef !5 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i, i64 8 ; 4 uses
  switch i8 %i.w, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.d
    i8 2, label %bb.g
    i8 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.x, align 8, !range !46, !alias.scope !4245, !noundef !5
  %.sroa.14.8.insert.ext18.i = zext nneg i32 %i.y to i64
  %i.z = inttoptr i64 %.sroa.14.8.insert.ext18.i to ptr
  br label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage32ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i

bb.e:                                             ; preds = %bb.c
  %.val4.i.i = load i64, ptr %i.x, align 8, !alias.scope !4245
  %i.aa = inttoptr i64 %.val4.i.i to ptr
  br label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage32ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i

bb.f:                                             ; preds = %bb.c
  %i.ab = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
          to label %.noexc.i unwind label %bb.i, !noalias !4246

.noexc.i:                                         ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i, i64 2
  %i.ad = load i8, ptr %i.ac, align 2, !range !38, !alias.scope !4245, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !4245
  br label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage32ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i

bb.g:                                             ; preds = %bb.c
  %i.ag = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
          to label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage32ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i unwind label %bb.i, !noalias !4246

_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage32ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.g, %.noexc.i, %bb.e, %bb.d
  %.sroa.14.0.i = phi ptr [ %i.ab, %.noexc.i ], [ %i.z, %bb.d ], [ %i.aa, %bb.e ], [ %i.ag, %bb.g ]
  %.sroa.9.0.i = phi i8 [ %i.af, %.noexc.i ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.g ]
  %.sroa.8.0.i = phi i8 [ %i.ad, %.noexc.i ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.g ]
  %.sroa.415.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i, i64 1
  %.sroa.415.0.i = load i8, ptr %.sroa.415.0.in.i, align 1, !alias.scope !4245, !noundef !5
  %.sroa.1016.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i, i64 4
  %.sroa.1016.0.i = load i32, ptr %.sroa.1016.0.in.i, align 4, !alias.scope !4245, !noundef !5
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.7.048.i ; 6 uses
  store i8 %i.w, ptr %i.ah, align 8, !noalias !4246
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %.sroa.415.0.i, ptr %.sroa.433.0..sroa_idx.i, align 1, !noalias !4246
  %.sroa.534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i8 %.sroa.8.0.i, ptr %.sroa.534.0..sroa_idx.i, align 2, !noalias !4246
  %.sroa.635.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  store i8 %.sroa.9.0.i, ptr %.sroa.635.0..sroa_idx.i, align 1, !noalias !4246
  %.sroa.736.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %.sroa.1016.0.i, ptr %.sroa.736.0..sroa_idx.i, align 4, !noalias !4246
  %.sroa.837.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.sroa.14.0.i, ptr %.sroa.837.0..sroa_idx.i, align 8, !noalias !4246
  %i.ai = icmp eq i64 %i.s, 0
  br i1 %i.ai, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage32ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsileJQcQObtj_7hir_def.exit, label %.lr.ph.i

bb.h:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !4246
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.048.i, ptr %i.p, align 8, !noalias !4244
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1b_13SpanStorage32EEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #41
          to label %bb.j unwind label %bb.h, !noalias !4246

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage32ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsileJQcQObtj_7hir_def.exit: ; preds = %.lr.ph.i, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage32ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i
  store i64 %i.f, ptr %i.p, align 8, !noalias !4244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !4243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4244
  %i.ak = call { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBH_13SpanStorage32EE16into_boxed_sliceCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { ptr, i64 } %i.ak
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXse_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBL_13SpanStorage64EENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4252)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4253
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !4253
  %i.g = load i64, ptr %i.a, align 8, !range !19, !noalias !4253, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !20, !noalias !4253, !noundef !5 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !noalias !4253
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #43, !noalias !4253
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !noalias !4253, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4253
  store i64 %i.j, ptr %i.b, align 8, !noalias !4253
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.o, align 8, !noalias !4253
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.f
  %i.r = icmp eq i64 %i.j, 0
  br i1 %i.r, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage64ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsileJQcQObtj_7hir_def.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i
  %.sroa.013.051.i = phi ptr [ %i.u, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i ], [ %i.d, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i ] ; 12 uses
  %.sroa.7.050.i = phi i64 [ %i.v, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i ], [ 0, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i ] ; 3 uses
  %.sroa.10.049.i = phi i64 [ %i.s, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i ], [ %i.j, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i ]
  %i.s = add i64 %.sroa.10.049.i, -1              ; 2 uses
  %i.t = icmp eq ptr %.sroa.013.051.i, %i.q
  br i1 %i.t, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage64ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsileJQcQObtj_7hir_def.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.051.i, i64 24
  %i.v = add nuw nsw i64 %.sroa.7.050.i, 1
  %i.w = load i8, ptr %.sroa.013.051.i, align 8, !range !4, !alias.scope !4254, !noundef !5 ; 2 uses
  switch i8 %i.w, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.d
    i8 2, label %bb.g
    i8 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.051.i, i64 12
  %i.y = load i32, ptr %i.x, align 4, !range !46, !alias.scope !4254, !noundef !5
  br label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.051.i, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.051.i, i64 12
  %.val6.i.i = load i32, ptr %i.aa, align 4, !alias.scope !4254, !noundef !5
  %.val3.i.i = load i64, ptr %i.z, align 8, !alias.scope !4254
  %i.ab = inttoptr i64 %.val3.i.i to ptr
  br label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i

bb.f:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.013.051.i, i64 16
  %i.ad = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac)
          to label %.noexc.i unwind label %bb.i, !noalias !4255

.noexc.i:                                         ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.013.051.i, i64 2
  %i.af = load i8, ptr %i.ae, align 2, !range !38, !alias.scope !4254, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.013.051.i, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !4254
  br label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i

bb.g:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.013.051.i, i64 16
  %i.aj = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai)
          to label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i unwind label %bb.i, !noalias !4255

_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.g, %.noexc.i, %bb.e, %bb.d
  %.sroa.20.0.i = phi ptr [ %i.ad, %.noexc.i ], [ undef, %bb.d ], [ %i.ab, %bb.e ], [ %i.aj, %bb.g ]
  %.sroa.18.0.i = phi i32 [ undef, %.noexc.i ], [ %i.y, %bb.d ], [ %.val6.i.i, %bb.e ], [ undef, %bb.g ]
  %.sroa.9.0.i = phi i8 [ %i.ah, %.noexc.i ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.g ]
  %.sroa.8.0.i = phi i8 [ %i.af, %.noexc.i ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.g ]
  %.sroa.415.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.013.051.i, i64 1
  %.sroa.415.0.i = load i8, ptr %.sroa.415.0.in.i, align 1, !alias.scope !4254, !noundef !5
  %.sroa.1016.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.013.051.i, i64 4
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.7.050.i ; 7 uses
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %.sroa.534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %.sroa.635.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 3
  %.sroa.736.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.al = load <2 x i32>, ptr %.sroa.1016.0.in.i, align 4, !alias.scope !4254
  store i8 %i.w, ptr %i.ak, align 8, !noalias !4255
  store i8 %.sroa.415.0.i, ptr %.sroa.433.0..sroa_idx.i, align 1, !noalias !4255
  store i8 %.sroa.8.0.i, ptr %.sroa.534.0..sroa_idx.i, align 2, !noalias !4255
  store i8 %.sroa.9.0.i, ptr %.sroa.635.0..sroa_idx.i, align 1, !noalias !4255
  store <2 x i32> %i.al, ptr %.sroa.736.0..sroa_idx.i, align 4, !noalias !4255
  %.sroa.938.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 %.sroa.18.0.i, ptr %.sroa.938.0..sroa_idx.i, align 4, !noalias !4255
  %.sroa.1039.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %.sroa.20.0.i, ptr %.sroa.1039.0..sroa_idx.i, align 8, !noalias !4255
  %i.am = icmp eq i64 %i.s, 0
  br i1 %i.am, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage64ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsileJQcQObtj_7hir_def.exit, label %.lr.ph.i

bb.h:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !4255
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.050.i, ptr %i.p, align 8, !noalias !4253
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1b_13SpanStorage64EEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #41
          to label %bb.j unwind label %bb.h, !noalias !4255

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage64ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsileJQcQObtj_7hir_def.exit: ; preds = %.lr.ph.i, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i
  store i64 %i.f, ptr %i.p, align 8, !noalias !4253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !4252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4253
  %i.ao = call { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBH_13SpanStorage64EE16into_boxed_sliceCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { ptr, i64 } %i.ao
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXse_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBL_13SpanStorage96EENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4262)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4263
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 288230376151711744) %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !4263
  %i.g = load i64, ptr %i.a, align 8, !range !19, !noalias !4263, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !20, !noalias !4263, !noundef !5 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !noalias !4263
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #43, !noalias !4263
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !noalias !4263, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4263
  store i64 %i.j, ptr %i.b, align 8, !noalias !4263
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.o, align 8, !noalias !4263
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.f
  %i.r = icmp eq i64 %i.j, 0
  br i1 %i.r, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage96ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsileJQcQObtj_7hir_def.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i
  %.sroa.013.059.i = phi ptr [ %i.u, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i ], [ %i.d, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i ] ; 10 uses
  %.sroa.7.058.i = phi i64 [ %i.v, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i ], [ 0, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i ] ; 3 uses
  %.sroa.10.057.i = phi i64 [ %i.s, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i ], [ %i.j, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i ]
  %i.s = add i64 %.sroa.10.057.i, -1              ; 2 uses
  %i.t = icmp eq ptr %.sroa.013.059.i, %i.q
  br i1 %i.t, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage96ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsileJQcQObtj_7hir_def.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.059.i, i64 32
  %i.v = add nuw nsw i64 %.sroa.7.058.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4264)
  %i.w = load i8, ptr %.sroa.013.059.i, align 8, !range !4, !alias.scope !4265, !noundef !5 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.059.i, i64 16 ; 4 uses
  switch i8 %i.w, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.d
    i8 2, label %bb.g
    i8 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.x, align 8, !range !46, !alias.scope !4265, !noundef !5
  %.sroa.18.0.insert.ext.i = zext nneg i32 %i.y to i64
  %i.z = inttoptr i64 %.sroa.18.0.insert.ext.i to ptr
  br label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i

bb.e:                                             ; preds = %bb.c
  %.sroa.18.0.copyload22.i = load i64, ptr %i.x, align 8, !alias.scope !4266
  %i.aa = inttoptr i64 %.sroa.18.0.copyload22.i to ptr
  %.sroa.22.20..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.013.059.i, i64 24
  %.sroa.22.20.copyload.i = load i64, ptr %.sroa.22.20..sroa_idx.i, align 8, !alias.scope !4266
  br label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i

bb.f:                                             ; preds = %bb.c
  %i.ab = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
          to label %.noexc.i unwind label %bb.i, !noalias !4267

.noexc.i:                                         ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.013.059.i, i64 2
  %i.ad = load i8, ptr %i.ac, align 2, !range !38, !alias.scope !4265, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.013.059.i, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !4265
  br label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i

bb.g:                                             ; preds = %bb.c
  %i.ag = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
          to label %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i unwind label %bb.i, !noalias !4267

_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.g, %.noexc.i, %bb.e, %bb.d
  %.sroa.18.0.i = phi ptr [ %i.ab, %.noexc.i ], [ %i.z, %bb.d ], [ %i.aa, %bb.e ], [ %i.ag, %bb.g ]
  %.sroa.22.0.i = phi i64 [ undef, %.noexc.i ], [ undef, %bb.d ], [ %.sroa.22.20.copyload.i, %bb.e ], [ undef, %bb.g ]
  %.sroa.12.0.i = phi i8 [ %i.af, %.noexc.i ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.g ]
  %.sroa.11.0.i = phi i8 [ %i.ad, %.noexc.i ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.g ]
  %.sroa.715.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.013.059.i, i64 1
  %.sroa.715.0.i = load i8, ptr %.sroa.715.0.in.i, align 1, !alias.scope !4265, !noundef !5
  %.sroa.13.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.013.059.i, i64 4
  %.sroa.13.0.i = load i32, ptr %.sroa.13.0.in.i, align 4, !alias.scope !4266
  %.sroa.17.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.013.059.i, i64 8
  %.sroa.17.0.i = load i64, ptr %.sroa.17.0.in.i, align 8, !alias.scope !4266
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.7.058.i ; 8 uses
  store i8 %i.w, ptr %i.ah, align 8, !noalias !4267
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %.sroa.715.0.i, ptr %.sroa.441.0..sroa_idx.i, align 1, !noalias !4267
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i8 %.sroa.11.0.i, ptr %.sroa.542.0..sroa_idx.i, align 2, !noalias !4267
  %.sroa.643.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  store i8 %.sroa.12.0.i, ptr %.sroa.643.0..sroa_idx.i, align 1, !noalias !4267
  %.sroa.744.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %.sroa.13.0.i, ptr %.sroa.744.0..sroa_idx.i, align 4, !noalias !4267
  %.sroa.845.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.sroa.17.0.i, ptr %.sroa.845.0..sroa_idx.i, align 8, !noalias !4267
  %.sroa.946.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %.sroa.18.0.i, ptr %.sroa.946.0..sroa_idx.i, align 8, !noalias !4267
  %.sroa.1047.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 %.sroa.22.0.i, ptr %.sroa.1047.0..sroa_idx.i, align 8, !noalias !4267
  %i.ai = icmp eq i64 %i.s, 0
  br i1 %i.ai, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage96ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsileJQcQObtj_7hir_def.exit, label %.lr.ph.i

bb.h:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !4267
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.058.i, ptr %i.p, align 8, !noalias !4263
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1b_13SpanStorage96EEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #41
          to label %bb.j unwind label %bb.h, !noalias !4267

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBN_13SpanStorage96ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsileJQcQObtj_7hir_def.exit: ; preds = %.lr.ph.i, %_RNvXsH_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i
  store i64 %i.f, ptr %i.p, align 8, !noalias !4263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !4262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4263
  %i.ak = call { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBH_13SpanStorage96EE16into_boxed_sliceCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { ptr, i64 } %i.ak
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXse_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtNtBN_5clone5Clone5cloneB1q_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4274)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4275
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 230584300921369396) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40), !noalias !4275
  %i.h = load i64, ptr %i.a, align 8, !range !19, !noalias !4275, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !20, !noalias !4275, !noundef !5 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !4275
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #43, !noalias !4275
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !4275, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4275
  store i64 %i.k, ptr %i.c, align 8, !noalias !4275
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !4275
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1s_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsENtNtB7_5clone5Clone5cloneBQ_.exit.i, %.lr.ph.i
  %.sroa.012.023.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.w, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsENtNtB7_5clone5Clone5cloneBQ_.exit.i ] ; 4 uses
  %.sroa.7.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.x, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsENtNtB7_5clone5Clone5cloneBQ_.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.u, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsENtNtB7_5clone5Clone5cloneBQ_.exit.i ]
  %i.u = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.v = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.v, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1s_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 40
  %i.x = add nuw nsw i64 %.sroa.7.022.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4275
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4277)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 33
  %i.z = load i8, ptr %i.y, align 1, !range !23, !alias.scope !4278, !noundef !5
  %.not.i.i = icmp eq i8 %i.z, 2
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RNvXso_NtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB5_11GenericArgsNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.012.023.i) #40
          to label %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsENtNtB7_5clone5Clone5cloneBQ_.exit.i unwind label %bb.h, !noalias !4279

bb.f:                                             ; preds = %bb.d
  store i8 2, ptr %i.t, align 1, !alias.scope !4276, !noalias !4275
  br label %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsENtNtB7_5clone5Clone5cloneBQ_.exit.i

_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsENtNtB7_5clone5Clone5cloneBQ_.exit.i: ; preds = %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !4275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4275
  %i.ab = icmp eq i64 %i.u, 0
  br i1 %i.ab, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1s_.exit, label %bb.c

bb.g:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !4275
  unreachable

bb.h:                                             ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !4275
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEB1A_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #41
          to label %bb.i unwind label %bb.g, !noalias !4275

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB1s_.exit: ; preds = %bb.c, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsENtNtB7_5clone5Clone5cloneBQ_.exit.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !4275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !4274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4275
  %i.ad = call { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEE16into_boxed_sliceB1m_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret { ptr, i64 } %i.ad
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXse_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4283)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4284
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 768614336404564651) %i.e, i1 noundef zeroext false, i64 noundef 4, i64 noundef 12), !noalias !4284
  %i.f = load i64, ptr %i.a, align 8, !range !19, !noalias !4284, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !20, !noalias !4284, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !4284
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #43, !noalias !4284
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !4284, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4284
  store i64 %i.i, ptr %i.b, align 8, !alias.scope !4283
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !4283
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !4283
end_hunk_16
begin_hunk_17_@_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymboluENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def
declare hidden { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymboluENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCs33K2ylI4knu_10hir_expand5attrsNtB5_9AttrInputNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB5_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprNtB5_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCshzWfHUSfYae_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCs33K2ylI4knu_10hir_expand8mod_path7DisplayNtB6_7Display3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtNtB8_3ops5range5RangejENtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCs33K2ylI4knu_10hir_expand9HirFileIdNtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCs42xZ1oUXfIG_8smol_str7SmolStrNtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCsileJQcQObtj_7hir_def9BlockIdLtNtB6_5Debug3fmtBy_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRRNtNtCsileJQcQObtj_7hir_def10import_map5QueryNtB6_5Debug3fmtBB_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEj4_EINtNtNtBN_3ops5index5IndexNtNtB3o_5range9RangeFullE5indexB2w_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtNtB9_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEINtB5_14SlicePartialEqBC_E17equal_same_lengthB2a_(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_EINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtNtB1v_5range9RangeFullE5indexCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_EINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtNtB1F_5range9RangeFullE5indexBM_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBP_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3AdtEEINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationj1_EENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB41_(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBP_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsileJQcQObtj_7hir_def7nameres9collector21DeferredBuiltinDeriveEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB41_(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBP_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEEINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtBP_4name4NameNtCsileJQcQObtj_7hir_def7MacroIdINtCs83ee1IJTiSq_6either6EitherNtBP_11MacroCallIdNtB4f_19BuiltinDeriveImplIdEEEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB4f_(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBP_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtBP_11MacroCallIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBP_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroCallEENtBP_11MacroCallIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBP_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtCsileJQcQObtj_7hir_def7MacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2D_(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtCsileJQcQObtj_7hir_def10FunctionIdNtBM_11ProcMacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBM_(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtCsileJQcQObtj_7hir_def11ProcMacroIdNtBM_10FunctionIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBM_(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtCsileJQcQObtj_7hir_def7MacroIdINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBM_(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1r_13ExternCrateIdEEENtNtNtNtB20_4iter6traits8iterator8Iterator4nextB1r_(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCsileJQcQObtj_7hir_def10item_scope12ImportOrGlobNtBM_11ImportOrDefENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtBM_11ImportOrDefENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsd9Lm8bEdjjY_5salsa10ingredient9fmt_index(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef range(i32 1, 0), i32 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #37

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #24 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #39 = { noinline noreturn }
attributes #40 = { inlinehint }
attributes #41 = { cold }
attributes #42 = { cold noreturn nounwind }
attributes #43 = { noreturn }
attributes #44 = { noinline }
attributes #45 = { nounwind }
attributes #46 = { "function-inline-cost-multiplier"="2" }
attributes #47 = { cold "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{i8 0, i8 4}
!5 = !{}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i64 1, i64 0}
!8 = !{i8 0, i8 2}
!9 = !{i32 0, i32 3}
!10 = !{i32 -1, i32 3}
!11 = !{i32 1, i32 0}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{i64 8}
!14 = !{!"address", !"read_provenance"}
!15 = !{i64 -1, i64 3}
!16 = !{i64 -2, i64 3}
!17 = !{i64 0, i64 -9223372036854775808}
!18 = !{!"branch_weights", i32 4001, i32 4000000}
!19 = !{i64 0, i64 2}
!20 = !{i64 0, i64 -9223372036854775807}
!21 = !{i64 -2, i64 -9223372036854775808}
!22 = !{i64 0, i64 3}
!23 = !{i8 0, i8 3}
!24 = !{i8 -1, i8 5}
!25 = !{i8 0, i8 5}
!26 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!27 = !{i32 0, i32 4}
!28 = !{i32 0, i32 2}
!29 = !{i32 0, i32 8}
!30 = !{i64 0, i64 5}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{i64 -2, i64 21}
!34 = !{i64 4}
!35 = !{i64 -1, i64 -9223372036854775808}
!36 = !{i8 0, i8 10}
!37 = !{i8 -1, i8 3}
!38 = !{i8 0, i8 11}
!39 = !{i64 128}
!40 = !{i32 -2, i32 3}
!41 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!42 = !{!"branch_weights", i32 2146410443, i32 1073205}
!43 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!44 = !{i32 0, i32 16}
!45 = !{!"branch_weights", i32 4000000, i32 4001}
!46 = !{i32 0, i32 1114112}
!47 = distinct !{!47, i1 true, !"_RNvXsd_NtCshzWfHUSfYae_4core5arrayANtNtCsd9Lm8bEdjjY_5salsa10durability10Durabilityj1_INtNtNtB7_3ops5index5IndexjE5indexCsileJQcQObtj_7hir_def"}
!48 = distinct !{!48, !47, !"_RNvXsd_NtCshzWfHUSfYae_4core5arrayANtNtCsd9Lm8bEdjjY_5salsa10durability10Durabilityj1_INtNtNtB7_3ops5index5IndexjE5indexCsileJQcQObtj_7hir_def: argument 0"}
!49 = distinct !{!49, i1 true, !"_RNvXs0_NtNtCshzWfHUSfYae_4core5slice5indexjINtB5_10SliceIndexSNtNtCsd9Lm8bEdjjY_5salsa10durability10DurabilityE5indexCsileJQcQObtj_7hir_def"}
!50 = distinct !{!50, !49, !"_RNvXs0_NtNtCshzWfHUSfYae_4core5slice5indexjINtB5_10SliceIndexSNtNtCsd9Lm8bEdjjY_5salsa10durability10DurabilityE5indexCsileJQcQObtj_7hir_def: argument 0"}
!51 = distinct !{!51, i1 true, !"_RNCNvXs_NtNtCsd9Lm8bEdjjY_5salsa5input6setterINtB6_10SetterImplNtCsileJQcQObtj_7hir_def20ExpandProcAttrMacrosNCINvMs5_NvB11_1__BZ_11set_enabledDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_E0bENtB6_6Setter2to0B11_"}
!52 = distinct !{!52, !51, !"_RNCNvXs_NtNtCsd9Lm8bEdjjY_5salsa5input6setterINtB6_10SetterImplNtCsileJQcQObtj_7hir_def20ExpandProcAttrMacrosNCINvMs5_NvB11_1__BZ_11set_enabledDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_E0bENtB6_6Setter2to0B11_: argument 0"}
!53 = distinct !{!53, i1 true, !"_RNCINvMs5_NvCsileJQcQObtj_7hir_def1__NtBa_20ExpandProcAttrMacros11set_enabledDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_E0Ba_"}
!54 = distinct !{!54, !53, !"_RNCINvMs5_NvCsileJQcQObtj_7hir_def1__NtBa_20ExpandProcAttrMacros11set_enabledDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_E0Ba_: argument 0"}
!55 = !{!50, !48}
!56 = !{!54, !52}
!57 = distinct !{!57, i1 true, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB20_11ModuleDefIdNtNtB20_10item_scope19ImportOrExternCrateEETB1f_NtNtB20_10visibility10VisibilitybEuINtNtNtBa_3ops12control_flow11ControlFlowB1g_ENCINvMs1_B2T_NtB2T_9ItemScope8names_ofB1g_NCNCNvNtB20_9find_path13find_in_scope00Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB3y_B1g_NCB4Y_s1_0E0E0B20_"}
!58 = distinct !{!58, !57, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB20_11ModuleDefIdNtNtB20_10item_scope19ImportOrExternCrateEETB1f_NtNtB20_10visibility10VisibilitybEuINtNtNtBa_3ops12control_flow11ControlFlowB1g_ENCINvMs1_B2T_NtB2T_9ItemScope8names_ofB1g_NCNCNvNtB20_9find_path13find_in_scope00Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB3y_B1g_NCB4Y_s1_0E0E0B20_: argument 1"}
!59 = distinct !{!59, i1 true, !"_RNCINvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB8_9ItemScope8names_ofNtNtCs33K2ylI4knu_10hir_expand4name4NameNCNCNvNtBa_9find_path13find_in_scope00Es0_0Ba_"}
!60 = distinct !{!60, !59, !"_RNCINvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB8_9ItemScope8names_ofNtNtCs33K2ylI4knu_10hir_expand4name4NameNCNCNvNtBa_9find_path13find_in_scope00Es0_0Ba_: argument 2"}
!61 = distinct !{!61, i1 true, !"_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1u_11ModuleDefIdNtNtB1u_10item_scope19ImportOrExternCrateEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB38_8adapters10filter_map19filter_map_try_foldTRBL_RB1p_ETB51_NtNtB1u_10visibility10VisibilitybEuINtNtNtB3a_3ops12control_flow11ControlFlowBL_ENCINvMs1_B2n_NtB2n_9ItemScope8names_ofBL_NCNCNvNtB1u_9find_path13find_in_scope00Es0_0NCINvNvB32_8find_map5checkB5b_BL_NCB6B_s1_0E0E0B5P_EB1u_"}
!62 = distinct !{!62, !61, !"_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1u_11ModuleDefIdNtNtB1u_10item_scope19ImportOrExternCrateEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB38_8adapters10filter_map19filter_map_try_foldTRBL_RB1p_ETB51_NtNtB1u_10visibility10VisibilitybEuINtNtNtB3a_3ops12control_flow11ControlFlowBL_ENCINvMs1_B2n_NtB2n_9ItemScope8names_ofBL_NCNCNvNtB1u_9find_path13find_in_scope00Es0_0NCINvNvB32_8find_map5checkB5b_BL_NCB6B_s1_0E0E0B5P_EB1u_: argument 2"}
!63 = distinct !{!63, !61, !"_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1u_11ModuleDefIdNtNtB1u_10item_scope19ImportOrExternCrateEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB38_8adapters10filter_map19filter_map_try_foldTRBL_RB1p_ETB51_NtNtB1u_10visibility10VisibilitybEuINtNtNtB3a_3ops12control_flow11ControlFlowBL_ENCINvMs1_B2n_NtB2n_9ItemScope8names_ofBL_NCNCNvNtB1u_9find_path13find_in_scope00Es0_0NCINvNvB32_8find_map5checkB5b_BL_NCB6B_s1_0E0E0B5P_EB1u_: argument 1"}
!64 = distinct !{!64, !61, !"_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1u_11ModuleDefIdNtNtB1u_10item_scope19ImportOrExternCrateEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB38_8adapters10filter_map19filter_map_try_foldTRBL_RB1p_ETB51_NtNtB1u_10visibility10VisibilitybEuINtNtNtB3a_3ops12control_flow11ControlFlowBL_ENCINvMs1_B2n_NtB2n_9ItemScope8names_ofBL_NCNCNvNtB1u_9find_path13find_in_scope00Es0_0NCINvNvB32_8find_map5checkB5b_BL_NCB6B_s1_0E0E0B5P_EB1u_: argument 0"}
!65 = distinct !{!65, i1 true, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB20_11ModuleDefIdNtNtB20_10item_scope12ImportOrGlobEETB1f_NtNtB20_10visibility10VisibilitybEuINtNtNtBa_3ops12control_flow11ControlFlowB1g_ENCINvMs1_B2T_NtB2T_9ItemScope8names_ofB1g_NCNCNvNtB20_9find_path13find_in_scope00Es2_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB3r_B1g_NCB4R_s3_0E0E0B20_"}
!66 = distinct !{!66, !65, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB20_11ModuleDefIdNtNtB20_10item_scope12ImportOrGlobEETB1f_NtNtB20_10visibility10VisibilitybEuINtNtNtBa_3ops12control_flow11ControlFlowB1g_ENCINvMs1_B2T_NtB2T_9ItemScope8names_ofB1g_NCNCNvNtB20_9find_path13find_in_scope00Es2_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB3r_B1g_NCB4R_s3_0E0E0B20_: argument 1"}
!67 = distinct !{!67, i1 true, !"_RNCINvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB8_9ItemScope8names_ofNtNtCs33K2ylI4knu_10hir_expand4name4NameNCNCNvNtBa_9find_path13find_in_scope00Es2_0Ba_"}
!68 = distinct !{!68, !67, !"_RNCINvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB8_9ItemScope8names_ofNtNtCs33K2ylI4knu_10hir_expand4name4NameNCNCNvNtBa_9find_path13find_in_scope00Es2_0Ba_: argument 2"}
!69 = distinct !{!69, i1 true, !"_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1u_11ModuleDefIdNtNtB1u_10item_scope12ImportOrGlobEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB31_8adapters10filter_map19filter_map_try_foldTRBL_RB1p_ETB4U_NtNtB1u_10visibility10VisibilitybEuINtNtNtB33_3ops12control_flow11ControlFlowBL_ENCINvMs1_B2n_NtB2n_9ItemScope8names_ofBL_NCNCNvNtB1u_9find_path13find_in_scope00Es2_0NCINvNvB2V_8find_map5checkB54_BL_NCB6u_s3_0E0E0B5I_EB1u_"}
!70 = distinct !{!70, !69, !"_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1u_11ModuleDefIdNtNtB1u_10item_scope12ImportOrGlobEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB31_8adapters10filter_map19filter_map_try_foldTRBL_RB1p_ETB4U_NtNtB1u_10visibility10VisibilitybEuINtNtNtB33_3ops12control_flow11ControlFlowBL_ENCINvMs1_B2n_NtB2n_9ItemScope8names_ofBL_NCNCNvNtB1u_9find_path13find_in_scope00Es2_0NCINvNvB2V_8find_map5checkB54_BL_NCB6u_s3_0E0E0B5I_EB1u_: argument 2"}
!71 = distinct !{!71, !69, !"_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1u_11ModuleDefIdNtNtB1u_10item_scope12ImportOrGlobEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB31_8adapters10filter_map19filter_map_try_foldTRBL_RB1p_ETB4U_NtNtB1u_10visibility10VisibilitybEuINtNtNtB33_3ops12control_flow11ControlFlowBL_ENCINvMs1_B2n_NtB2n_9ItemScope8names_ofBL_NCNCNvNtB1u_9find_path13find_in_scope00Es2_0NCINvNvB2V_8find_map5checkB54_BL_NCB6u_s3_0E0E0B5I_EB1u_: argument 1"}
!72 = distinct !{!72, !69, !"_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1u_11ModuleDefIdNtNtB1u_10item_scope12ImportOrGlobEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB31_8adapters10filter_map19filter_map_try_foldTRBL_RB1p_ETB4U_NtNtB1u_10visibility10VisibilitybEuINtNtNtB33_3ops12control_flow11ControlFlowBL_ENCINvMs1_B2n_NtB2n_9ItemScope8names_ofBL_NCNCNvNtB1u_9find_path13find_in_scope00Es2_0NCINvNvB2V_8find_map5checkB54_BL_NCB6u_s3_0E0E0B5I_EB1u_: argument 0"}
!73 = distinct !{!73, i1 true, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB20_7MacroIdNtNtB20_10item_scope19ImportOrExternCrateEETB1f_NtNtB20_10visibility10VisibilitybEuINtNtNtBa_3ops12control_flow11ControlFlowB1g_ENCINvMs1_B2O_NtB2O_9ItemScope8names_ofB1g_NCNCNvNtB20_9find_path13find_in_scope00E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB3t_B1g_NCB4T_s_0E0E0B20_"}
!74 = distinct !{!74, !73, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB20_7MacroIdNtNtB20_10item_scope19ImportOrExternCrateEETB1f_NtNtB20_10visibility10VisibilitybEuINtNtNtBa_3ops12control_flow11ControlFlowB1g_ENCINvMs1_B2O_NtB2O_9ItemScope8names_ofB1g_NCNCNvNtB20_9find_path13find_in_scope00E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB3t_B1g_NCB4T_s_0E0E0B20_: argument 1"}
!75 = distinct !{!75, i1 true, !"_RNCINvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB8_9ItemScope8names_ofNtNtCs33K2ylI4knu_10hir_expand4name4NameNCNCNvNtBa_9find_path13find_in_scope00E0Ba_"}
!76 = distinct !{!76, !75, !"_RNCINvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB8_9ItemScope8names_ofNtNtCs33K2ylI4knu_10hir_expand4name4NameNCNCNvNtBa_9find_path13find_in_scope00E0Ba_: argument 2"}
!77 = distinct !{!77, i1 true, !"_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!78 = distinct !{!78, !77, !"_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!79 = distinct !{!79, i1 true, !"_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1u_7MacroIdNtNtB1u_10item_scope19ImportOrExternCrateEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB33_8adapters10filter_map19filter_map_try_foldTRBL_RB1p_ETB4W_NtNtB1u_10visibility10VisibilitybEuINtNtNtB35_3ops12control_flow11ControlFlowBL_ENCINvMs1_B2i_NtB2i_9ItemScope8names_ofBL_NCNCNvNtB1u_9find_path13find_in_scope00E0NCINvNvB2X_8find_map5checkB56_BL_NCB6w_s_0E0E0B5K_EB1u_"}
!80 = distinct !{!80, !79, !"_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1u_7MacroIdNtNtB1u_10item_scope19ImportOrExternCrateEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB33_8adapters10filter_map19filter_map_try_foldTRBL_RB1p_ETB4W_NtNtB1u_10visibility10VisibilitybEuINtNtNtB35_3ops12control_flow11ControlFlowBL_ENCINvMs1_B2i_NtB2i_9ItemScope8names_ofBL_NCNCNvNtB1u_9find_path13find_in_scope00E0NCINvNvB2X_8find_map5checkB56_BL_NCB6w_s_0E0E0B5K_EB1u_: argument 2"}
!81 = distinct !{!81, !79, !"_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1u_7MacroIdNtNtB1u_10item_scope19ImportOrExternCrateEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB33_8adapters10filter_map19filter_map_try_foldTRBL_RB1p_ETB4W_NtNtB1u_10visibility10VisibilitybEuINtNtNtB35_3ops12control_flow11ControlFlowBL_ENCINvMs1_B2i_NtB2i_9ItemScope8names_ofBL_NCNCNvNtB1u_9find_path13find_in_scope00E0NCINvNvB2X_8find_map5checkB56_BL_NCB6w_s_0E0E0B5K_EB1u_: argument 1"}
!82 = distinct !{!82, !79, !"_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1u_7MacroIdNtNtB1u_10item_scope19ImportOrExternCrateEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB33_8adapters10filter_map19filter_map_try_foldTRBL_RB1p_ETB4W_NtNtB1u_10visibility10VisibilitybEuINtNtNtB35_3ops12control_flow11ControlFlowBL_ENCINvMs1_B2i_NtB2i_9ItemScope8names_ofBL_NCNCNvNtB1u_9find_path13find_in_scope00E0NCINvNvB2X_8find_map5checkB56_BL_NCB6w_s_0E0E0B5K_EB1u_: argument 0"}
!83 = !{!60, !58}
!84 = !{!64, !63, !62}
!85 = !{!68, !66}
!86 = !{!72, !71, !70}
!87 = !{!78, !76, !74}
!88 = !{!82, !81, !80}
!89 = !{!76, !74}
!90 = distinct !{!90, i1 true, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrENCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB2g_9AttrQuery5attrs0ENtNtNtB9_6traits8iterator8Iterator4nextB2k_"}
!91 = distinct !{!91, !90, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrENCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB2g_9AttrQuery5attrs0ENtNtNtB9_6traits8iterator8Iterator4nextB2k_: argument 0:pre.rot"}
!92 = distinct !{!92, i1 true, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB2p_9AttrQuery5attrs0EB2t_"}
!93 = distinct !{!93, !92, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB2p_9AttrQuery5attrs0EB2t_: argument 0:pre.rot"}
!94 = distinct !{!94, i1 true, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB2p_9AttrQuery5attrs0EB2t_"}
!95 = distinct !{!95, !94, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB2p_9AttrQuery5attrs0EB2t_: argument 1"}
!96 = distinct !{!96, i1 true, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrENCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB2g_9AttrQuery5attrs0ENtNtNtB9_6traits8iterator8Iterator4nextB2k_"}
!97 = distinct !{!97, !96, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrENCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB2g_9AttrQuery5attrs0ENtNtNtB9_6traits8iterator8Iterator4nextB2k_: argument 0"}
!98 = distinct !{!98, !94, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB2p_9AttrQuery5attrs0EB2t_: argument 0"}
!99 = distinct !{!99, i1 true, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources7from_fn6FromFnNCINvMs3_Cs4dcH4YgJDq_2ttNtB16_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2X_8find_map5checkB1m_TNtNtB1U_8mod_path7ModPathNtCsdovh4xi6v3I_4span4SpanB1m_EQNCB1Q_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB49_EECsileJQcQObtj_7hir_def"}
!100 = distinct !{!100, !99, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources7from_fn6FromFnNCINvMs3_Cs4dcH4YgJDq_2ttNtB16_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2X_8find_map5checkB1m_TNtNtB1U_8mod_path7ModPathNtCsdovh4xi6v3I_4span4SpanB1m_EQNCB1Q_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB49_EECsileJQcQObtj_7hir_def: argument 2"}
!101 = distinct !{!101, !99, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources7from_fn6FromFnNCINvMs3_Cs4dcH4YgJDq_2ttNtB16_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2X_8find_map5checkB1m_TNtNtB1U_8mod_path7ModPathNtCsdovh4xi6v3I_4span4SpanB1m_EQNCB1Q_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB49_EECsileJQcQObtj_7hir_def: argument 1"}
!102 = distinct !{!102, !99, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources7from_fn6FromFnNCINvMs3_Cs4dcH4YgJDq_2ttNtB16_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2X_8find_map5checkB1m_TNtNtB1U_8mod_path7ModPathNtCsdovh4xi6v3I_4span4SpanB1m_EQNCB1Q_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB49_EECsileJQcQObtj_7hir_def: argument 0"}
!103 = distinct !{!103, i1 true, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources7from_fnINtB2_6FromFnNCINvMs3_Cs4dcH4YgJDq_2ttNtB18_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0ENtNtNtB6_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def"}
!104 = distinct !{!104, !103, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources7from_fnINtB2_6FromFnNCINvMs3_Cs4dcH4YgJDq_2ttNtB18_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0ENtNtNtB6_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def: argument 1:pre.rot"}
!105 = distinct !{!105, i1 true, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources7from_fnINtB2_6FromFnNCINvMs3_Cs4dcH4YgJDq_2ttNtB18_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0ENtNtNtB6_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def"}
!106 = distinct !{!106, !105, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources7from_fnINtB2_6FromFnNCINvMs3_Cs4dcH4YgJDq_2ttNtB18_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0ENtNtNtB6_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def: argument 0"}
!107 = distinct !{!107, i1 true, !"_RNCINvMs3_Cs4dcH4YgJDq_2ttNtB8_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0CsileJQcQObtj_7hir_def"}
!108 = distinct !{!108, !107, !"_RNCINvMs3_Cs4dcH4YgJDq_2ttNtB8_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0CsileJQcQObtj_7hir_def: argument 1:pre.rot"}
!109 = distinct !{!109, !105, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources7from_fnINtB2_6FromFnNCINvMs3_Cs4dcH4YgJDq_2ttNtB18_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0ENtNtNtB6_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def: argument 1"}
!110 = distinct !{!110, i1 true, !"_RNCINvMs3_Cs4dcH4YgJDq_2ttNtB8_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0CsileJQcQObtj_7hir_def"}
!111 = distinct !{!111, !110, !"_RNCINvMs3_Cs4dcH4YgJDq_2ttNtB8_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0CsileJQcQObtj_7hir_def: argument 1"}
!112 = distinct !{!112, !110, !"_RNCINvMs3_Cs4dcH4YgJDq_2ttNtB8_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0CsileJQcQObtj_7hir_def: argument 0"}
!113 = distinct !{!113, i1 true, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkNtCs4dcH4YgJDq_2tt14TokenTreesViewTNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathNtCsdovh4xi6v3I_4span4SpanB1g_EQNCNvNtB1T_5attrs27parse_path_comma_token_trees_0E0CsileJQcQObtj_7hir_def"}
!114 = distinct !{!114, !113, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkNtCs4dcH4YgJDq_2tt14TokenTreesViewTNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathNtCsdovh4xi6v3I_4span4SpanB1g_EQNCNvNtB1T_5attrs27parse_path_comma_token_trees_0E0CsileJQcQObtj_7hir_def: argument 2"}
!115 = distinct !{!115, !113, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkNtCs4dcH4YgJDq_2tt14TokenTreesViewTNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathNtCsdovh4xi6v3I_4span4SpanB1g_EQNCNvNtB1T_5attrs27parse_path_comma_token_trees_0E0CsileJQcQObtj_7hir_def: argument 1"}
!116 = distinct !{!116, !113, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkNtCs4dcH4YgJDq_2tt14TokenTreesViewTNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathNtCsdovh4xi6v3I_4span4SpanB1g_EQNCNvNtB1T_5attrs27parse_path_comma_token_trees_0E0CsileJQcQObtj_7hir_def: argument 0"}
!117 = distinct !{!117, i1 true, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources7from_fnINtB2_6FromFnNCINvMs3_Cs4dcH4YgJDq_2ttNtB18_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0ENtNtNtB6_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def"}
!118 = distinct !{!118, !117, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources7from_fnINtB2_6FromFnNCINvMs3_Cs4dcH4YgJDq_2ttNtB18_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0ENtNtNtB6_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def: argument 1"}
!119 = distinct !{!119, i1 true, !"_RNCINvMs3_Cs4dcH4YgJDq_2ttNtB8_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0CsileJQcQObtj_7hir_def"}
!120 = distinct !{!120, !119, !"_RNCINvMs3_Cs4dcH4YgJDq_2ttNtB8_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0CsileJQcQObtj_7hir_def: argument 1"}
!121 = distinct !{!121, !117, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources7from_fnINtB2_6FromFnNCINvMs3_Cs4dcH4YgJDq_2ttNtB18_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0ENtNtNtB6_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def: argument 0"}
!122 = distinct !{!122, !119, !"_RNCINvMs3_Cs4dcH4YgJDq_2ttNtB8_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0CsileJQcQObtj_7hir_def: argument 0"}
!123 = distinct !{!123, i1 true, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrENCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB2g_9AttrQuery5attrs0ENtNtNtB9_6traits8iterator8Iterator4nextB2k_"}
!124 = distinct !{!124, !123, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrENCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB2g_9AttrQuery5attrs0ENtNtNtB9_6traits8iterator8Iterator4nextB2k_: argument 0:h.rot"}
!125 = distinct !{!125, i1 true, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB2p_9AttrQuery5attrs0EB2t_"}
!126 = distinct !{!126, !125, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB2p_9AttrQuery5attrs0EB2t_: argument 0:h.rot"}
!127 = distinct !{!127, i1 true, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameE8push_mutCsileJQcQObtj_7hir_def"}
!128 = distinct !{!128, !127, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameE8push_mutCsileJQcQObtj_7hir_def: argument 0"}
!129 = distinct !{!129, i1 true, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources7from_fnINtB2_6FromFnNCINvMs3_Cs4dcH4YgJDq_2ttNtB18_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0ENtNtNtB6_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def"}
!130 = distinct !{!130, !129, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources7from_fnINtB2_6FromFnNCINvMs3_Cs4dcH4YgJDq_2ttNtB18_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0ENtNtNtB6_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def: argument 1:h.rot"}
!131 = distinct !{!131, i1 true, !"_RNCINvMs3_Cs4dcH4YgJDq_2ttNtB8_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0CsileJQcQObtj_7hir_def"}
!132 = distinct !{!132, !131, !"_RNCINvMs3_Cs4dcH4YgJDq_2ttNtB8_14TokenTreesView5splitNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_tree0E0CsileJQcQObtj_7hir_def: argument 1:h.rot"}
!133 = !{!91}
!134 = !{!93}
!135 = !{!93, !95, !91}
!136 = !{!93, !91}
!137 = !{!97}
!138 = !{!98}
!139 = !{!98, !97}
!140 = !{!98, !95, !97}
!141 = !{!102, !101, !100}
!142 = !{!104}
!143 = !{!106, !104}
!144 = !{!108, !104}
!145 = !{!106, !109}
!146 = !{!109}
!147 = !{!111}
!148 = !{!111, !109}
!149 = !{!112, !106}
!150 = !{!112, !111, !106, !109}
!151 = !{!116, !115, !114, !102, !101, !100}
!152 = !{!118}
!153 = !{!120}
!154 = !{!121, !118}
!155 = !{!120, !118}
!156 = !{!122, !121}
!157 = !{!122, !120, !121, !118}
!158 = !{!124}
!159 = !{!126}
!160 = !{!126, !95, !124}
!161 = !{!126, !124}
!162 = !{!128}
!163 = !{!130}
!164 = !{!106, !130}
!165 = !{!132, !130}
!166 = distinct !{!166, i1 true, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBQ_7nameres10ModuleDataNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EBQ_"}
!167 = distinct !{!167, !166, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBQ_7nameres10ModuleDataNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EBQ_: argument 0"}
!168 = distinct !{!168, !166, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBQ_7nameres10ModuleDataNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EBQ_: argument 1"}
!169 = !{!167}
!170 = !{!168}
!171 = !{!167, !168}
!172 = distinct !{!172, i1 true, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBQ_7nameres10ModuleDataNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EBQ_"}
!173 = distinct !{!173, !172, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBQ_7nameres10ModuleDataNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EBQ_: argument 0"}
!174 = distinct !{!174, !172, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBQ_7nameres10ModuleDataNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EBQ_: argument 1"}
!175 = !{!173}
!176 = !{!174}
!177 = !{!173, !174}
!178 = distinct !{!178, i1 true, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsgIpRO4v45SJ_7base_db5input10DependencyNtB1v_5CrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_ECsileJQcQObtj_7hir_def"}
!179 = distinct !{!179, !178, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsgIpRO4v45SJ_7base_db5input10DependencyNtB1v_5CrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_ECsileJQcQObtj_7hir_def: argument 0"}
!180 = distinct !{!180, !178, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsgIpRO4v45SJ_7base_db5input10DependencyNtB1v_5CrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_ECsileJQcQObtj_7hir_def: argument 1"}
!181 = !{!179}
!182 = !{!180}
!183 = !{!179, !180}
!184 = distinct !{!184, i1 true, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtNtCsileJQcQObtj_7hir_def6per_ns5PerNsNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1w_"}
!185 = distinct !{!185, !184, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtNtCsileJQcQObtj_7hir_def6per_ns5PerNsNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1w_: argument 0"}
!186 = distinct !{!186, !184, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtNtCsileJQcQObtj_7hir_def6per_ns5PerNsNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1w_: argument 1"}
!187 = !{!185}
!188 = !{!186}
!189 = !{!185, !186}
!190 = distinct !{!190, i1 true, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1v_13ExternCrateIdEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_"}
!191 = distinct !{!191, !190, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1v_13ExternCrateIdEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_: argument 0"}
!192 = distinct !{!192, !190, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1v_13ExternCrateIdEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_: argument 1"}
!193 = !{!191}
!194 = !{!192}
!195 = !{!191, !192}
!196 = distinct !{!196, i1 true, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_"}
!197 = distinct !{!197, !196, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_: argument 0"}
!198 = distinct !{!198, !196, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_: argument 1"}
!199 = !{!197}
!200 = !{!198}
!201 = !{!197, !198}
!202 = distinct !{!202, i1 true, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_"}
!203 = distinct !{!203, !202, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_: argument 0"}
!204 = distinct !{!204, !202, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_: argument 1"}
!205 = !{!203}
!206 = !{!204}
!207 = !{!203, !204}
!208 = distinct !{!208, i1 true, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsTINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtBS_10import_map10ImportInfoj1_ENtB2c_16IsTraitAssocItemENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EBS_"}
!209 = distinct !{!209, !208, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsTINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtBS_10import_map10ImportInfoj1_ENtB2c_16IsTraitAssocItemENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EBS_: argument 0"}
!210 = distinct !{!210, !208, !"_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsTINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtBS_10import_map10ImportInfoj1_ENtB2c_16IsTraitAssocItemENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EBS_: argument 1"}
!211 = distinct !{!211, i1 true, !"_RNvXCslbz2dGnOj3d_10equivalentNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB2_10EquivalentBs_E10equivalentBw_"}
!212 = distinct !{!212, !211, !"_RNvXCslbz2dGnOj3d_10equivalentNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB2_10EquivalentBs_E10equivalentBw_: argument 0"}
!213 = distinct !{!213, !211, !"_RNvXCslbz2dGnOj3d_10equivalentNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB2_10EquivalentBs_E10equivalentBw_: argument 1"}
!214 = distinct !{!214, i1 true, !"_RNvXs1d_NtCsileJQcQObtj_7hir_def10item_scopeNtB6_8ItemInNsNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!215 = distinct !{!215, !214, !"_RNvXs1d_NtCsileJQcQObtj_7hir_def10item_scopeNtB6_8ItemInNsNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!216 = distinct !{!216, !214, !"_RNvXs1d_NtCsileJQcQObtj_7hir_def10item_scopeNtB6_8ItemInNsNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!217 = distinct !{!217, i1 true, !"_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!218 = distinct !{!218, !217, !"_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!219 = distinct !{!219, !217, !"_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!220 = !{!209}
!221 = !{!210}
!222 = !{!212}
!223 = !{!213}
!224 = !{!215}
!225 = !{!216}
!226 = !{!215, !212, !210}
!227 = !{!216, !213}
!228 = !{!209, !210}
!229 = !{!218}
!230 = !{!219}
!231 = !{!218, !215, !212, !210}
!232 = !{!219, !216, !213}
!233 = distinct !{!233, i1 true, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBO_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2U_ECsileJQcQObtj_7hir_def"}
!234 = distinct !{!234, !233, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBO_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2U_ECsileJQcQObtj_7hir_def: argument 0"}
!235 = !{!234}
!236 = distinct !{!236, i1 true, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECsileJQcQObtj_7hir_def"}
!237 = distinct !{!237, !236, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECsileJQcQObtj_7hir_def: argument 0"}
!238 = !{!237}
!239 = distinct !{!239, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtNtCsileJQcQObtj_7hir_def12builtin_type11BuiltinTypeEEB1l_"}
!240 = distinct !{!240, !239, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtNtCsileJQcQObtj_7hir_def12builtin_type11BuiltinTypeEEB1l_: argument 0"}
!241 = !{!240}
!242 = distinct !{!242, i1 true, !"_RNvXs6_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBI_"}
!243 = distinct !{!243, !242, !"_RNvXs6_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBI_: argument 0"}
!244 = !{!243}
!245 = distinct !{!245, i1 true, !"_RNvXs6_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternBlockIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBI_"}
!246 = distinct !{!246, !245, !"_RNvXs6_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternBlockIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBI_: argument 0"}
end_hunk_17
