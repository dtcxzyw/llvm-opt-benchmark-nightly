inline.NumInlined: 127
inline.NumDeleted: 58
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCslRtAOKA59qD_8bitflags6parser9to_writerNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph13PathsToNestedQNtNtCshzWfHUSfYae_4core3fmt9FormatterEBM_:bb.a
  %i.ai = call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ac)
  br i1 %i.ai, label %.loopexit16, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1nWGUjlayfI_19ra_ap_rustc_type_ir(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #1 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep5 = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %scevgep5
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !alias.scope !31, !noalias !34
  %wide.load6 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !31, !noalias !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !34, !noalias !26
  %wide.load8 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !34, !noalias !26
  store <2 x i64> %wide.load7, ptr %i.b, align 1, !alias.scope !31, !noalias !34
  store <2 x i64> %wide.load8, ptr %i.d, align 1, !alias.scope !31, !noalias !34
  store <2 x i64> %wide.load, ptr %i.c, align 1, !alias.scope !34, !noalias !26
  store <2 x i64> %wide.load6, ptr %i.e, align 1, !alias.scope !34, !noalias !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.g = or disjoint i64 %.sroa.0.04.ph, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1, !alias.scope !26, !noalias !29
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1, !alias.scope !29, !noalias !26
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1, !alias.scope !26, !noalias !29
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1, !alias.scope !29, !noalias !26
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.g, %scalar.ph.prol ]
  %i.j = icmp eq i64 %2, %.neg
  br i1 %i.j, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.k = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1, !alias.scope !26, !noalias !29
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1, !alias.scope !29, !noalias !26
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1, !alias.scope !26, !noalias !29
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1, !alias.scope !29, !noalias !26
  %i.n = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1, !alias.scope !39, !noalias !41
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1, !alias.scope !41, !noalias !39
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1, !alias.scope !39, !noalias !41
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1, !alias.scope !41, !noalias !39
  %exitcond.not.1 = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !43
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthEB1F_(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void @_RINvXsc_NtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stackNtB6_10StackDepthNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEBa_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val1 = load i64, ptr %i.a, align 8, !noundef !13 ; 2 uses
  %i.b = call noundef i64 @llvm.fshl.i64(i64 %.val1, i64 %.val1, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsfjX3T6UU9IB_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB13_10HeadUsagesNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11rustc_entryB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44
  store i64 0, ptr %i.a, align 8, !noalias !44
  call void @_RINvXsc_NtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stackNtB6_10StackDepthNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEBa_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val1.i = load i64, ptr %i.a, align 8, !noalias !44, !noundef !13 ; 2 uses
  %i.d = call noundef i64 @llvm.fshl.i64(i64 %.val1.i, i64 %.val1.i, i64 26) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.e = lshr i64 %i.d, 57
  %i.f = trunc nuw nsw i64 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !53, !noalias !54, !noundef !13 ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !alias.scope !53, !noalias !54, !nonnull !13, !noundef !13 ; 2 uses
  %i.j = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.k = shufflevector <16 x i8> %i.j, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.ab, %bb.d ]
  %.pn.i = phi i64 [ %i.d, %bb.a ], [ %i.ac, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.h          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.l, align 1, !noalias !56 ; 2 uses
  %i.m = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.k
  %i.n = bitcast <16 x i1> %i.m to i16            ; 2 uses
  %.not.i.not30.i = icmp eq i16 %i.n, 0
  br i1 %.not.i.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i31.i = phi i16 [ %i.aa, %bb.c ], [ %i.n, %bb.b ] ; 3 uses
  %i.o = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = add i64 %.sroa.01.0.i.i, %i.p
  %i.r = and i64 %i.q, %i.h
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [20 x i8], ptr %i.i, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -20
  %.val2.i.i = load i32, ptr %i.u, align 4, !noalias !59, !noundef !13
  %i.v = icmp eq i32 %.val2.i.i, %2
  br i1 %i.v, label %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtBU_10HeadUsagesEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B21_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11rustc_entry0EBW_.exit, label %bb.c, !prof !62

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.w = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, splat (i8 -1)
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = icmp eq i16 %i.x, 0
  br i1 %i.y, label %bb.d, label %bb.e, !prof !63

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = add i16 %.sroa.06.0.i31.i, -1
  %i.aa = and i16 %i.z, %.sroa.06.0.i31.i         ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.ab = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ac = add i64 %.sroa.01.0.i.i, %i.ab
  br label %bb.b

_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtBU_10HeadUsagesEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B21_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11rustc_entry0EBW_.exit: ; preds = %.lr.ph.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.ae, align 8
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtBU_10HeadUsagesEE7reserveNCINvNtB8_3map11make_hasherBQ_B21_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0EBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c)
  store ptr %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtBU_10HeadUsagesEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B21_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11rustc_entry0EBW_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 1, -255) i32 @_RNvMs1_Cs1nWGUjlayfI_19ra_ap_rustc_type_irNtB5_13UniverseIndex13next_universe(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %1 = add i32 %0, 1                              ; 2 uses
  %i.a = icmp eq i32 %0, -1
  br i1 %i.a, label %bb.c, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %1, -255
  br i1 %i.b, label %bb.e, label %bb.d, !prof !62

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #14
  unreachable

bb.e:                                             ; preds = %bb.b
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs1_NtCslRtAOKA59qD_8bitflags4iterINtB5_9IterNamesNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph13PathsToNestedE3newBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val1 = load i8, ptr %1, align 1, !noundef !13 ; 2 uses
  store ptr @12, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.val1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %.val1, ptr %i.d, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB1p_9CycleHeadE9remove_kvB1r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 4 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 0, ptr %i.b, align 1
  call void @_RINvMNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB1N_9CycleHeadNtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB49_13OccupiedEntryB1J_B2U_E9remove_kv0NtNtB9_5alloc6GlobalEB1P_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull dereferenceable(1) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !13, !noundef !13 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !13
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %i.e, align 8
  %i.h = load i8, ptr %i.b, align 1, !range !64, !noundef !13
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.d, align 8, !noundef !13
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.d, !prof !63

bb.c:                                             ; preds = %bb.a, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @_RINvMss_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB1w_9CycleHeadNtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalEB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #14
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i32 @_RNvMsj_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9Certainty3and(i32 %0, i32 %1) unnamed_addr #3 {
bb.a:
  %i.a = and i32 %0, 255
  %.not = icmp eq i32 %i.a, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %1, 255
  %.not30 = icmp eq i32 %i.b, 2
  br i1 %.not30, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a, %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo3and.exit
  %.sroa.4.0.in.in = phi i32 [ %.sroa.014.0.insert.insert.i, %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo3and.exit ], [ %1, %bb.a ], [ %0, %bb.b ]
  ret i32 %.sroa.4.0.in.in

bb.d:                                             ; preds = %bb.b
  %.sroa.5.0.extract.shift.i = lshr i32 %0, 16    ; 2 uses
  %.sroa.6.0.extract.shift.i = lshr i32 %0, 24    ; 2 uses
  %.sroa.512.0.extract.shift.i = lshr i32 %1, 16  ; 2 uses
  %.sroa.613.0.extract.shift.i = lshr i32 %1, 24  ; 2 uses
  %i.c = and i32 %0, 16711680
  %.not.i = icmp eq i32 %i.c, 131072
  br i1 %.not.i, label %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo3and.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = and i32 %1, 16711680
  %.not34.i = icmp eq i32 %i.d, 131072
  br i1 %.not34.i, label %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo3and.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = trunc i32 %.sroa.5.0.extract.shift.i to i1
  %i.f = trunc i32 %.sroa.6.0.extract.shift.i to i1
  %spec.select.i = select i1 %i.e, i32 %.sroa.512.0.extract.shift.i, i32 0
  %.sroa.033.0.i = select i1 %i.f, i32 %.sroa.613.0.extract.shift.i, i32 0
  br label %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo3and.exit

_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo3and.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.024.0.i = phi i32 [ %spec.select.i, %bb.f ], [ %.sroa.512.0.extract.shift.i, %bb.d ], [ %.sroa.5.0.extract.shift.i, %bb.e ]
  %.sroa.627.0.i = phi i32 [ %.sroa.033.0.i, %bb.f ], [ %.sroa.613.0.extract.shift.i, %bb.d ], [ %.sroa.6.0.extract.shift.i, %bb.e ]
  %i.g = trunc i32 %0 to i1
  %i.h = and i32 %1, 1
  %..i = select i1 %i.g, i32 1, i32 %i.h
  %i.i = and i32 %0, 256
  %i.j = icmp ne i32 %i.i, 0
  %i.k = and i32 %1, 256
  %i.l = icmp ne i32 %i.k, 0
  %or.cond3.i = select i1 %i.j, i1 %i.l, i1 false
  %.sroa.031.0.i = select i1 %or.cond3.i, i32 256, i32 0
  %.sroa.417.0.insert.shift.i = shl nuw i32 %.sroa.627.0.i, 24
  %.sroa.316.0.insert.ext.i = shl nuw i32 %.sroa.024.0.i, 16
  %.sroa.316.0.insert.shift.i = and i32 %.sroa.316.0.insert.ext.i, 16711680
  %.sroa.316.0.insert.insert.i = or disjoint i32 %.sroa.417.0.insert.shift.i, %.sroa.316.0.insert.shift.i
  %.sroa.215.0.insert.insert.i = or disjoint i32 %.sroa.316.0.insert.insert.i, %.sroa.031.0.i
  %.sroa.014.0.insert.insert.i = or disjoint i32 %.sroa.215.0.insert.insert.i, %..i
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_Cs1nWGUjlayfI_19ra_ap_rustc_type_irNtB5_8VarianceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !65, !noundef !13
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs0_Cs1nWGUjlayfI_19ra_ap_rustc_type_irNtB5_8VarianceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load, i64 noundef 1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindNtB5_22AliasRelationDirectionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !64, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !13, !align !19, !noundef !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !13, !nonnull !13
  %spec.select = select i1 %i.b, ptr @117, ptr @116
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %spec.select, i64 noundef 2) #15
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kindNtB6_8FloatVidNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i32, ptr %0, align 4, !noundef !13
  store i32 %i.c, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !13, !align !19, !noundef !13
  %i.g = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @118, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1b_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kindNtB6_5TyVidNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i32, ptr %0, align 4, !noundef !13
  store i32 %i.c, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !13, !align !19, !noundef !13
  %i.g = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @119, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flags1__16InternalBitFlagsNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !13, !align !66, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.c = load i32, ptr %i.b, align 4, !alias.scope !67, !noalias !70, !noundef !13
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsc_NvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flags1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsb_NvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5flags1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !72
  store ptr @138, ptr %i.a, align 8, !noalias !72
end_hunk_0
