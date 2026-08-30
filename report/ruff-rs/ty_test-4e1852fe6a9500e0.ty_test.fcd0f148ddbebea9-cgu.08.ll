Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_test-4e1852fe6a9500e0.ty_test.fcd0f148ddbebea9-cgu.08?download=true
inline.NumInlined: 313
inline.NumDeleted: 170
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreNtNtCskXhPDodhyTq_6mdtest6parser16EmbeddedFilePathNtBM_14EmbeddedFileIdE13insert_uniqueCslHJxOrvIAon_7ty_test:bb.a
  br i1 %i.br, label %bb.e, label %_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreNtNtCskXhPDodhyTq_6mdtest6parser16EmbeddedFilePathNtBM_14EmbeddedFileIdE10push_entryCslHJxOrvIAon_7ty_test.exit

bb.e:                                             ; preds = %_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreNtNtCskXhPDodhyTq_6mdtest6parser16EmbeddedFilePathNtBM_14EmbeddedFileIdE15reserve_entriesCslHJxOrvIAon_7ty_test.exit.i
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskXhPDodhyTq_6mdtest6parser16EmbeddedFilePathNtB1k_14EmbeddedFileIdEE8grow_oneCslHJxOrvIAon_7ty_test(ptr noalias noundef nonnull align 8 dereferenceable(56) %0), !noalias !304
  br label %_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreNtNtCskXhPDodhyTq_6mdtest6parser16EmbeddedFilePathNtBM_14EmbeddedFileIdE10push_entryCslHJxOrvIAon_7ty_test.exit

_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreNtNtCskXhPDodhyTq_6mdtest6parser16EmbeddedFilePathNtBM_14EmbeddedFileIdE10push_entryCslHJxOrvIAon_7ty_test.exit: ; preds = %_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreNtNtCskXhPDodhyTq_6mdtest6parser16EmbeddedFilePathNtBM_14EmbeddedFileIdE15reserve_entriesCslHJxOrvIAon_7ty_test.exit.i, %bb.e
  %i.bs = load ptr, ptr %i.d, align 8, !alias.scope !301, !noalias !304, !nonnull !8, !noundef !8
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.bs, i64 %i.bp ; 3 uses
  store i64 %1, ptr %i.bt, align 8, !noalias !296
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store i32 %3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !296
  %i.bu = add i64 %i.bp, 1                        ; 3 uses
  store i64 %i.bu, ptr %i.f, align 8, !alias.scope !301, !noalias !304
  %i.bv = icmp ult i64 %i.c, %i.bu
  br i1 %i.bv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreNtNtCskXhPDodhyTq_6mdtest6parser16EmbeddedFilePathNtBM_14EmbeddedFileIdE10push_entryCslHJxOrvIAon_7ty_test.exit
  %i.bw = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.c
  ret ptr %i.bx

bb.g:                                             ; preds = %_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreNtNtCskXhPDodhyTq_6mdtest6parser16EmbeddedFilePathNtBM_14EmbeddedFileIdE10push_entryCslHJxOrvIAon_7ty_test.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #30
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreNtNtCskXhPDodhyTq_6mdtest6parser16EmbeddedFilePathNtBM_14EmbeddedFileIdE5clearCslHJxOrvIAon_7ty_test(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) initializes((16, 24)) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !306, !noundef !8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB5_8RawTablejE5clearCslHJxOrvIAon_7ty_test.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !306, !noundef !8 ; 5 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTablejENCNvMs6_B1w_B1t_5clear0EECslHJxOrvIAon_7ty_test.exit5.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !alias.scope !306, !nonnull !8, !noundef !8
  %i.i = add i64 %i.f, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 -1, i64 %i.i, i1 false), !noalias !306
  %i.j = icmp ult i64 %i.f, 8
  %i.k = add i64 %i.f, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %spec.select.i.i.i4.i = select i1 %i.j, i64 %i.f, i64 %i.m
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTablejENCNvMs6_B1w_B1t_5clear0EECslHJxOrvIAon_7ty_test.exit5.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTablejENCNvMs6_B1w_B1t_5clear0EECslHJxOrvIAon_7ty_test.exit5.i: ; preds = %bb.c, %bb.b
  %i.n = phi i64 [ %spec.select.i.i.i4.i, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %i.b, align 8, !alias.scope !306
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !306
  br label %_RNvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB5_8RawTablejE5clearCslHJxOrvIAon_7ty_test.exit

_RNvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB5_8RawTablejE5clearCslHJxOrvIAon_7ty_test.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTablejENCNvMs6_B1w_B1t_5clear0EECslHJxOrvIAon_7ty_test.exit5.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.p, align 8
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_RNvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr nofree readonly captures(none) %.0.val, i64 %.8.val, i64 noundef %0) unnamed_addr #8 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.07 = and i64 %0, %.8.val               ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.07
  %.sroa.0.0.copyload.i68 = load <16 x i8>, ptr %i.a, align 1, !noalias !309
  %i.b = icmp slt <16 x i8> %.sroa.0.0.copyload.i68, zeroinitializer
  %i.c = bitcast <16 x i1> %i.b to i16            ; 2 uses
  %.not.i9 = icmp eq i16 %i.c, 0
  br i1 %.not.i9, label %.lr.ph, label %._crit_edge, !prof !37

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.07, %bb.a ], [ %.sroa.0.0, %.lr.ph ]
  %.lcssa = phi i16 [ %i.c, %bb.a ], [ %i.t, %.lr.ph ]
  %i.d = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.e = zext nneg i16 %i.d to i64
  %i.f = add i64 %.sroa.0.0.lcssa, %i.e
  %i.g = and i64 %i.f, %.8.val                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !8
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.b, label %_RNvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit, !prof !9

bb.b:                                             ; preds = %._crit_edge
  %.val2.i = load <16 x i8>, ptr %.0.val, align 16
  %i.k = icmp slt <16 x i8> %.val2.i, zeroinitializer
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not.i6 = icmp ne i16 %i.l, 0
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.l, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  tail call void @llvm.assume(i1 %.not.i6)
  br label %_RNvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit

_RNvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit: ; preds = %._crit_edge, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.n, %bb.b ], [ %i.g, %._crit_edge ]
  ret i64 %.sroa.0.0.i5

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.010 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.07, %bb.a ]
  %i.o = phi i64 [ %i.p, %.lr.ph ], [ 0, %bb.a ]
  %i.p = add i64 %i.o, 16                         ; 2 uses
  %i.q = add i64 %i.p, %.sroa.0.010
  %.sroa.0.0 = and i64 %i.q, %.8.val              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.0
  %.sroa.0.0.copyload.i6 = load <16 x i8>, ptr %i.r, align 1, !noalias !309
  %i.s = icmp slt <16 x i8> %.sroa.0.0.copyload.i6, zeroinitializer
  %i.t = bitcast <16 x i1> %i.s to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.t, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !prof !38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCsoTR8nlGN3X_18ty_python_semantic4lint6LintIdTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8SeverityNtBW_10LintSourceEEE3newCslHJxOrvIAon_7ty_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs45bxiIjzMqg_5salsa12active_query10QueryStackNtB6_5Debug3fmtCslHJxOrvIAon_7ty_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !115, !noundef !8
  %i.b = tail call noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa12active_queryNtB5_10QueryStackNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNvCscxDUFidjJwY_9inventory1__4IterNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarEENtNtNtB8_6traits8iterator8Iterator4nextCslHJxOrvIAon_7ty_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((32, 33)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !312, !align !115, !noundef !8 ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !noalias !312, !nonnull !8, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noalias !312, !align !115, !noundef !8
  store ptr %i.d, ptr %1, align 8, !alias.scope !312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNvCscxDUFidjJwY_9inventory1__4IterNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarEENtNtNtB8_6traits8iterator8Iterator9size_hintCslHJxOrvIAon_7ty_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !315
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEENtNtB1H_5clone5Clone5cloneCslHJxOrvIAon_7ty_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, 1                          ; 3 uses
  %i.g = icmp ugt i64 %i.f, 576460752303423487
  br i1 %i.g, label %bb.e, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.f, 5                      ; 3 uses
  %i.i = add nsw i64 %i.d, 17                     ; 2 uses
  %i.j = add i64 %i.i, %i.h                       ; 4 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %bb.e, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, !prof !66

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !318
  %i.m = tail call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !318 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !318
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.p = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.j), !noalias !318
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.p, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEE17new_uninitializedCslHJxOrvIAon_7ty_test.exit

bb.h:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.r = icmp ult i64 %i.d, 8
  %i.s = lshr i64 %i.f, 3
  %i.t = mul nuw nsw i64 %i.s, 7
  %.sroa.07.0.i.i = select i1 %i.r, i64 %i.d, i64 %i.t
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEE17new_uninitializedCslHJxOrvIAon_7ty_test.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEE17new_uninitializedCslHJxOrvIAon_7ty_test.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.i, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.q, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.u = load ptr, ptr %1, align 8, !alias.scope !333, !noalias !334, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.u, i64 %.pre-phi, i1 false), !noalias !335
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !333, !noalias !334, !noundef !8 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEE17new_uninitializedCslHJxOrvIAon_7ty_test.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.u, align 16, !noalias !336
  %i.y = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ac = ptrtoint ptr %i.u to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEEENCNvMse_B1y_B1v_15clone_from_impl0EECslHJxOrvIAon_7ty_test(i64 %.sroa.012.026.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #27
          to label %.body unwind label %bb.m, !noalias !333

bb.j:                                             ; preds = %_RNvYTNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtNtBV_5clone5Clone5cloneCslHJxOrvIAon_7ty_test.exit.i.i, %.lr.ph.i.i
  %.sroa.012.026.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.az, %_RNvYTNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtNtBV_5clone5Clone5cloneCslHJxOrvIAon_7ty_test.exit.i.i ]
  %.sroa.013.025.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtNtBV_5clone5Clone5cloneCslHJxOrvIAon_7ty_test.exit.i.i ] ; 2 uses
  %.sroa.6.024.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtNtBV_5clone5Clone5cloneCslHJxOrvIAon_7ty_test.exit.i.i ] ; 2 uses
  %.sroa.814.023.i.i = phi i16 [ %i.z, %.lr.ph.i.i ], [ %i.am, %_RNvYTNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtNtBV_5clone5Clone5cloneCslHJxOrvIAon_7ty_test.exit.i.i ] ; 2 uses
  %.sroa.1015.022.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.ap, %_RNvYTNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtNtBV_5clone5Clone5cloneCslHJxOrvIAon_7ty_test.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.814.023.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ae = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.sroa.6.024.i.i, %bb.j ] ; 2 uses
  %i.af = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.sroa.013.025.i.i, %bb.j ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.ae, align 16, !noalias !339
  %i.ag = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -512 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ag to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.024.i.i, %bb.j ], [ %i.ai, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.025.i.i, %bb.j ], [ %i.ah, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.023.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.aj = add i16 %.lcssa.i.i.i, -1
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = and i16 %i.aj, %.lcssa.i.i.i
  %i.an = sub nsw i64 0, %i.al
  %i.ao = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i, i64 %i.an ; 3 uses
  %i.ap = add i64 %.sroa.1015.022.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !335
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %.val.i.i.i = load i8, ptr %i.aq, align 1, !range !347, !alias.scope !345, !noalias !348, !noundef !8
  store i8 %.val.i.i.i, ptr %i.a, align 8, !alias.scope !342, !noalias !349
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.as = load i64, ptr %i.ar, align 8, !range !124, !alias.scope !355, !noalias !356, !noundef !8
  %.not.i.i.i.i = icmp eq i64 %i.as, -1
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit.i.i
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar)
          to label %_RNvYTNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtNtBV_5clone5Clone5cloneCslHJxOrvIAon_7ty_test.exit.i.i unwind label %bb.i, !noalias !335

bb.l:                                             ; preds = %.loopexit.i.i
  store i64 -1, ptr %i.ab, align 8, !alias.scope !357, !noalias !358
  br label %_RNvYTNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtNtBV_5clone5Clone5cloneCslHJxOrvIAon_7ty_test.exit.i.i

_RNvYTNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtNtBV_5clone5Clone5cloneCslHJxOrvIAon_7ty_test.exit.i.i: ; preds = %bb.l, %bb.k
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = sub i64 %i.ac, %i.at
  %i.av = ashr exact i64 %i.au, 5                 ; 2 uses
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [32 x i8], ptr %.sroa.0.0, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !335
  %i.az = add nsw i64 %i.av, 1
  %i.ba = icmp eq i64 %i.ap, 0
  br i1 %i.ba, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !335
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEENtNtNtB1H_3ops4drop4Drop4dropCslHJxOrvIAon_7ty_test(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw8RawTableTNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEEECslHJxOrvIAon_7ty_test.exit unwind label %bb.o

.loopexit:                                        ; preds = %_RNvYTNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtNtBV_5clone5Clone5cloneCslHJxOrvIAon_7ty_test.exit.i.i, %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEE17new_uninitializedCslHJxOrvIAon_7ty_test.exit
  store i64 %i.w, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !334, !noalias !333
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !333, !noalias !334, !noundef !8
  store i64 %i.bd, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !334, !noalias !333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw8RawTableTNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEEECslHJxOrvIAon_7ty_test.exit: ; preds = %.body
  resume { ptr, i32 } %i.ad
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtBT_8function4sync9SyncStateEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCslHJxOrvIAon_7ty_test(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !8 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB1h_8function4sync9SyncStateENtNtCscdodAO9FK5_5alloc5alloc6GlobalECslHJxOrvIAon_7ty_test.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = mul i64 %.val1, 24
  %i.d = icmp slt i64 %.val1, 768614336404564650
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 32                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB1h_8function4sync9SyncStateENtNtCscdodAO9FK5_5alloc5alloc6GlobalECslHJxOrvIAon_7ty_test.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub i64 -32, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #29
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB1h_8function4sync9SyncStateENtNtCscdodAO9FK5_5alloc5alloc6GlobalECslHJxOrvIAon_7ty_test.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB1h_8function4sync9SyncStateENtNtCscdodAO9FK5_5alloc5alloc6GlobalECslHJxOrvIAon_7ty_test.exit: ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCslHJxOrvIAon_7ty_test(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !359, !noundef !8 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EENtNtCscdodAO9FK5_5alloc5alloc6GlobalECslHJxOrvIAon_7ty_test.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !365, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEECslHJxOrvIAon_7ty_test.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !365, !nonnull !8, !noundef !8 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !366
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d
end_hunk_0
