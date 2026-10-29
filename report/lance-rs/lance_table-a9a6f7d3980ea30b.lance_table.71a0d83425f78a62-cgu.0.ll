Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 190
loop-unroll.NumUnrolled: 294
begin_hunk_0_@_RNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB4_25RowDatasetVersionSequence22get_version_for_row_id:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 64 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.y
  br i1 %i.ae, label %_RNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB4_25RowDatasetVersionSequence10version_at.exit, label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 56
  %i.ag = load i64, ptr %i.af, align 8, !noalias !55375, !noundef !62
  br label %_RNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB4_25RowDatasetVersionSequence10version_at.exit

_RNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB4_25RowDatasetVersionSequence10version_at.exit: ; preds = %bb.f, %bb.h, %bb.a, %bb.i, %bb.g
  %.sroa.3.0 = phi i64 [ undef, %bb.a ], [ %i.ag, %bb.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.f ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.i ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.f ]
  %i.ah = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.ai = insertvalue { i64, i64 } %i.ah, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.ai
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB4_25RowDatasetVersionSequence30rows_with_version_greater_than(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i.i.i.i = alloca i64, align 8      ; 4 uses
  %.sroa.8.i.i.i.i.i.i = alloca i64, align 8      ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i.i = alloca i64, align 8          ; 4 uses
  %.sroa.8.i.i.i.i = alloca i64, align 8          ; 3 uses
  %i.e = alloca [112 x i8], align 8               ; 15 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [112 x i8], align 8               ; 17 uses
  %i.i = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %3, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !62
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %i.m
  store ptr %i.k, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55521)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !55521, !nonnull !62, !noundef !62 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !55521, !noundef !62 ; 2 uses
  %.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = invoke noundef i64 @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.p)
          to label %.noexc unwind label %bb.ar

.noexc:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !55522, !noalias !55523, !noundef !62
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.noexc
  %.sroa.11.0.i.i = phi i64 [ %i.u, %.noexc ], [ 0, %bb.a ]
  %.sink.i.i.i = phi i64 [ %i.s, %.noexc ], [ 0, %bb.a ]
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.p, ptr %i.h, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i64 %i.r, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store i64 %.sink.i.i.i, ptr %.sroa.611.0..sroa_idx, align 8
  %.sroa.712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  store i64 %.sroa.11.0.i.i, ptr %.sroa.712.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store ptr %i.i, ptr %i.v, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !55524)
  call void @llvm.experimental.noalias.scope.decl(metadata !55525)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !55526
  call void @llvm.experimental.noalias.scope.decl(metadata !55527)
  call void @llvm.experimental.noalias.scope.decl(metadata !55528)
  call void @llvm.experimental.noalias.scope.decl(metadata !55529)
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !55530)
  call void @llvm.experimental.noalias.scope.decl(metadata !55531)
  %i.w = invoke fastcc { i64, i64 } @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENCNvMs1_B1V_NtB1V_13RowIdSequence4iter0EINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENtNtB48_8iterator8Iterator4nextB1X_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.8.0..sroa_idx)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !55524 ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.n

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !55532)
  %i.z = load i64, ptr %.sroa.611.0..sroa_idx, align 8, !alias.scope !55533, !noundef !62 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.f, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.e
  %.pre.i.i.i.i.i.i.i = load i64, ptr %.sroa.712.0..sroa_idx, align 8, !alias.scope !55533
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %.sroa.510.0..sroa_idx, align 8, !alias.scope !55533, !noundef !62
  %i.ac = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ac, ptr %.sroa.510.0..sroa_idx, align 8, !alias.scope !55533
  %i.ad = load i64, ptr %.sroa.49.0..sroa_idx, align 8, !alias.scope !55533, !noundef !62
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.ac, %i.ad
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_12VersionsIter11advance_run.exit.i.i.i.i.i.i.i, label %bb.n

_RNvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_12VersionsIter11advance_run.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !55534)
  %i.ae = load ptr, ptr %i.h, align 8, !alias.scope !55535, !nonnull !62, !align !67, !noundef !62
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %i.ae, i64 %i.ac ; 2 uses
  %i.ag = invoke noundef i64 @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.af)
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !55526

.noexc8.i:                                        ; preds = %_RNvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_12VersionsIter11advance_run.exit.i.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !55536, !noundef !62 ; 2 uses
  store i64 %i.ai, ptr %.sroa.712.0..sroa_idx, align 8, !alias.scope !55535
  br label %bb.g

bb.g:                                             ; preds = %.noexc8.i, %._crit_edge.i.i.i.i.i.i.i
  %i.aj = phi i64 [ %.pre.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %i.ai, %.noexc8.i ]
  %i.ak = phi i64 [ %i.z, %._crit_edge.i.i.i.i.i.i.i ], [ %i.ag, %.noexc8.i ]
  %i.al = call i64 @llvm.usub.sat.i64(i64 %i.ak, i64 1)
  store i64 %i.al, ptr %.sroa.611.0..sroa_idx, align 8, !alias.scope !55533
  %i.am = load i64, ptr %i.i, align 8, !noalias !55537, !noundef !62
  %i.an = icmp ugt i64 %i.aj, %i.am
  br i1 %i.an, label %bb.h, label %bb.d

bb.h:                                             ; preds = %bb.g
  %i.ao = extractvalue { i64, i64 } %i.w, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !55538)
  call void @llvm.experimental.noalias.scope.decl(metadata !55539)
  call void @llvm.experimental.noalias.scope.decl(metadata !55540)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !55541)
  call void @llvm.experimental.noalias.scope.decl(metadata !55542)
  call void @llvm.experimental.noalias.scope.decl(metadata !55543)
  call void @llvm.experimental.noalias.scope.decl(metadata !55544)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !55545
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !55546, !noundef !62 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  call void @llvm.experimental.noalias.scope.decl(metadata !55547)
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.val4.i.i.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !55548, !nonnull !62, !align !67, !noundef !62
  %i.as = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i.i.i, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !invariant.load !62, !noalias !55549, !nonnull !62
  invoke void %i.at(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.aq)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !55526, !inline_history !55429

.noexc9.i:                                        ; preds = %bb.i
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre76.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !range !70, !noalias !55545
  %.phi.trans.insert77.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre78.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert77.i.i.i.i.i.i, align 8, !noalias !55545
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i: ; preds = %.noexc9.i, %bb.h
  %i.au = phi i64 [ %.pre78.i.i.i.i.i.i, %.noexc9.i ], [ 0, %bb.h ]
  %i.av = phi i64 [ %.pre76.i.i.i.i.i.i, %.noexc9.i ], [ 1, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !55545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !55545
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !55546, !noundef !62 ; 2 uses
  %.not55.i.i.i.i.i.i = icmp eq ptr %i.ax, null
  call void @llvm.experimental.noalias.scope.decl(metadata !55550)
  br i1 %.not55.i.i.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %.val4.i65.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !55551, !nonnull !62, !align !67, !noundef !62
  %i.az = getelementptr inbounds nuw i8, ptr %.val4.i65.i.i.i.i.i.i, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !invariant.load !62, !noalias !55552, !nonnull !62
  invoke void %i.ba(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.ax)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !55526, !inline_history !55429

.noexc10.i:                                       ; preds = %bb.j
  %.phi.trans.insert80.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre81.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert80.i.i.i.i.i.i, align 8, !range !70, !noalias !55545
  %.phi.trans.insert82.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre83.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert82.i.i.i.i.i.i, align 8, !noalias !55545
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i.i.i: ; preds = %.noexc10.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i
  %i.bb = phi i64 [ %.pre83.i.i.i.i.i.i, %.noexc10.i ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ]
  %.fr216 = phi i64 [ %.pre81.i.i.i.i.i.i, %.noexc10.i ], [ 1, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !55545
  %i.bc = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !55546, !noundef !62 ; 2 uses
  %.not56.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not56.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.val63.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !55546, !nonnull !62, !noundef !62
  %i.be = icmp eq ptr %.val63.i.i.i.i.i.i, %i.bc
  %i.bf = trunc nuw i64 %i.av to i1
  %i.bg = trunc nuw i64 %.fr216 to i1
  %op.rdx214 = select i1 %i.be, i1 %i.bf, i1 false
  %op.rdx215 = select i1 %op.rdx214, i1 %i.bg, i1 false
  br i1 %op.rdx215, label %bb.m, label %bb.o

bb.l:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i.i.i
  %i.bh = and i64 %.fr216, %i.av
  %or.cond57.not.i.i.i.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %or.cond57.not.i.i.i.i.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bi = add i64 %i.bb, %i.au
  br label %bb.o

bb.n:                                             ; preds = %bb.f, %.noexc.i
  store i64 0, ptr %0, align 8, !alias.scope !55524
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bj, align 8, !alias.scope !55524
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bk, align 8, !alias.scope !55524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !55526
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1L_NtB1L_13RowIdSequence4iter0EEB1N_(ptr noalias noundef readonly align 8 dereferenceable(48) %.sroa.8.0..sroa_idx), !noalias !55524
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB1z_3zip3ZipINtNtB1z_7flatten7FlatMapINtNtNtB1D_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB6_5boxed3BoxDNtNtNtB1B_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B3H_NtB3H_13RowIdSequence4iter0ENtNtB3H_7version12VersionsIterENCNvMs_B6C_NtB6C_25RowDatasetVersionSequence30rows_with_version_greater_than0EE9from_iterB3J_.exit

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.sink87.i.i.sroa.phi.i.i.i.i = phi ptr [ %.sroa.8.i.i.i.i, %bb.m ], [ %.sroa.5.i.i.i.i, %bb.l ], [ %.sroa.5.i.i.i.i, %bb.k ]
  %.sink.i.i.i.i.i.i = phi i64 [ %i.bi, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ]
  store i64 %.sink.i.i.i.i.i.i, ptr %.sink87.i.i.sroa.phi.i.i.i.i, align 8, !alias.scope !55553, !noalias !55554
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !55555
  %i.bl = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 9) 8) #76, !noalias !55555 ; 4 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 32) #80
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !55526

.noexc11.i:                                       ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  store i64 %i.ao, ptr %i.bl, align 8, !noalias !55526
  store i64 4, ptr %i.f, align 8, !noalias !55526
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.bl, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !55526
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !55526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !55526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(112) %i.h, i64 112, i1 false), !noalias !55524
  call void @llvm.experimental.noalias.scope.decl(metadata !55556)
  call void @llvm.experimental.noalias.scope.decl(metadata !55557)
  call void @llvm.experimental.noalias.scope.decl(metadata !55558)
  call void @llvm.experimental.noalias.scope.decl(metadata !55559)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.phi.trans.insert77.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.phi.trans.insert80.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.phi.trans.insert82.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.promoted55.pre.i.i.i = load i64, ptr %i.bq, align 8, !alias.scope !55560, !noalias !55526
  %.val.i.i.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !55561, !noalias !55526
  %i.bx = load ptr, ptr %i.bu, align 8, !alias.scope !55562, !noalias !55526, !nonnull !62 ; 2 uses
  %i.by = load i64, ptr %i.br, align 8, !alias.scope !55560, !noalias !55526
  %i.bz = load ptr, ptr %i.e, align 8, !alias.scope !55560, !noalias !55526, !nonnull !62, !align !67
  %i.ca = load ptr, ptr %i.bv, align 8, !alias.scope !55557, !noalias !55526 ; 6 uses
  %.not55.i.i.i.i.i.i.i.i = icmp eq ptr %i.ca, null ; 2 uses
  %.val4.i65.i.i.i.i.i.i.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !55557, !noalias !55526 ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val4.i65.i.i.i.i.i.i.i.i, i64 32
  %.promoted.i.pre.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !55562, !noalias !55526 ; 2 uses
  %.promoted51.i.pre.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !55562, !noalias !55526 ; 2 uses
  %.promoted52.i.pre.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !55562, !noalias !55526 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.promoted.i.pre.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !55560, !noalias !55526
  %.promoted56.i.pre.i.i = load i64, ptr %i.bo, align 8, !alias.scope !55560, !noalias !55526
  %i.cc = getelementptr inbounds nuw i8, ptr %.val4.i65.i.i.i.i.i.i.i.i, i64 24
  br label %bb.r

bb.r:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i, %bb.q
  %i.cd = phi ptr [ %i.fh, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ], [ %i.bl, %bb.q ]
  %i.ce = phi i64 [ %i.fj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ], [ 1, %bb.q ] ; 5 uses
  %i.cf = phi ptr [ %i.ed, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ], [ %.promoted51.i.pre.i.i, %bb.q ]
  %.val4.i.i.i.i.i.i.i70.i.i = phi ptr [ %.val4.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ], [ %.promoted52.i.pre.i.i, %bb.q ]
  %i.cg = phi ptr [ %i.ee, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ], [ %.promoted.i.pre.i.i, %bb.q ]
  %.promoted56.i.i.i = phi i64 [ %.promoted56.i65.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ], [ %.promoted56.i.pre.i.i, %bb.q ] ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.promoted.i.i.i = phi i64 [ %.phi.trans.insert.i.i.i.i.i.i.promoted.i62.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ], [ %.phi.trans.insert.i.i.i.i.i.i.promoted.i.pre.i.i, %bb.q ] ; 2 uses
  %.promoted52.i.i.i = phi ptr [ %.promoted52.i57.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ], [ %.promoted52.i.pre.i.i, %bb.q ] ; 2 uses
  %.promoted51.i.i.i = phi ptr [ %.promoted51.i51.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ], [ %.promoted51.i.pre.i.i, %bb.q ] ; 2 uses
  %.promoted.i.i.i = phi ptr [ %.promoted.i45.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ], [ %.promoted.i.pre.i.i, %bb.q ] ; 2 uses
  %.promoted55.i.i.i = phi i64 [ %i.ep, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ], [ %.promoted55.pre.i.i.i, %bb.q ]
  call void @llvm.experimental.noalias.scope.decl(metadata !55563)
  call void @llvm.experimental.noalias.scope.decl(metadata !55564)
  call void @llvm.experimental.noalias.scope.decl(metadata !55565)
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.r
  %i.ch = phi ptr [ %i.ed, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.cf, %bb.r ]
  %.val4.i.i.i.i.i.i.i69.i.i = phi ptr [ %.val4.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.val4.i.i.i.i.i.i.i70.i.i, %bb.r ]
  %i.ci = phi ptr [ %i.ee, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.cg, %bb.r ]
  %.promoted56.i66.i.i = phi i64 [ %.promoted56.i65.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.promoted56.i.i.i, %bb.r ]
  %.phi.trans.insert.i.i.i.i.i.i.promoted.i63.i.i = phi i64 [ %.phi.trans.insert.i.i.i.i.i.i.promoted.i62.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i.i.i.promoted.i.i.i, %bb.r ]
  %.promoted52.i60.i.i = phi ptr [ %.promoted52.i59.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.promoted52.i.i.i, %bb.r ]
  %.promoted51.i55.i.i = phi ptr [ %.promoted51.i52.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.promoted51.i.i.i, %bb.r ]
  %.promoted.i49.i.i = phi ptr [ %.promoted.i46.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.promoted.i.i.i, %bb.r ]
  %i.cj = phi i64 [ %i.em, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.promoted56.i.i.i, %bb.r ] ; 2 uses
  %i.ck = phi i64 [ %i.en, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i.i.i.promoted.i.i.i, %bb.r ]
  %i.cl = phi i64 [ %i.ep, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.promoted55.i.i.i, %bb.r ] ; 2 uses
  %.promoted81.i54.i.i.i = phi ptr [ %.promoted81.i53.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.promoted52.i.i.i, %bb.r ]
  %i.cm = phi ptr [ %i.ef, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.promoted51.i.i.i, %bb.r ]
  %.promoted.i50.i.i.i = phi ptr [ %.promoted.i47.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.promoted.i.i.i, %bb.r ]
  call void @llvm.experimental.noalias.scope.decl(metadata !55566)
  call void @llvm.experimental.noalias.scope.decl(metadata !55567)
  call void @llvm.experimental.noalias.scope.decl(metadata !55568)
  br label %bb.t

bb.t:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EEECs9KQ7US1M400_11lance_table.exit.i.i.i.i, %bb.s
  %i.cn = phi ptr [ %i.di, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EEECs9KQ7US1M400_11lance_table.exit.i.i.i.i ], [ %i.ch, %bb.s ] ; 2 uses
  %.val4.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ec, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EEECs9KQ7US1M400_11lance_table.exit.i.i.i.i ], [ %.val4.i.i.i.i.i.i.i69.i.i, %bb.s ] ; 4 uses
  %i.co = phi ptr [ %i.dk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EEECs9KQ7US1M400_11lance_table.exit.i.i.i.i ], [ %i.ci, %bb.s ] ; 2 uses
  %.promoted52.i59.i.i = phi ptr [ %i.ec, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EEECs9KQ7US1M400_11lance_table.exit.i.i.i.i ], [ %.promoted52.i60.i.i, %bb.s ] ; 3 uses
  %.promoted51.i54.i.i = phi ptr [ %i.di, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EEECs9KQ7US1M400_11lance_table.exit.i.i.i.i ], [ %.promoted51.i55.i.i, %bb.s ] ; 2 uses
  %.promoted.i48.i.i = phi ptr [ %i.dk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EEECs9KQ7US1M400_11lance_table.exit.i.i.i.i ], [ %.promoted.i49.i.i, %bb.s ] ; 2 uses
  %.promoted81.i53.i.i.i = phi ptr [ %i.ec, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EEECs9KQ7US1M400_11lance_table.exit.i.i.i.i ], [ %.promoted81.i54.i.i.i, %bb.s ] ; 7 uses
  %i.cp = phi ptr [ %i.di, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EEECs9KQ7US1M400_11lance_table.exit.i.i.i.i ], [ %i.cm, %bb.s ] ; 6 uses
  %.promoted.i49.i.i.i = phi ptr [ %i.dk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EEECs9KQ7US1M400_11lance_table.exit.i.i.i.i ], [ %.promoted.i50.i.i.i, %bb.s ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55569)
  %.not.i.i.i.i.i = icmp eq ptr %.promoted.i49.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB6_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EyNvYB16_NtNtB1K_8iterator8Iterator4nextECs9KQ7US1M400_11lance_table.exit.thread23.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %.promoted81.i53.i.i.i, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !62, !noalias !55570, !nonnull !62
  %i.cs = invoke { i64, i64 } %i.cr(ptr noundef nonnull %.promoted.i49.i.i.i)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !55571, !inline_history !55572 ; 2 uses

.noexc11.i.i.i:                                   ; preds = %bb.u
  %i.ct = extractvalue { i64, i64 } %i.cs, 0
  %.not4.i.i.i.i.i = icmp eq i64 %i.ct, 1
  br i1 %.not4.i.i.i.i.i, label %.noexc.thread.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc11.i.i.i
  %i.cu = load ptr, ptr %.promoted81.i53.i.i.i, align 8, !invariant.load !62, !noalias !55573 ; 2 uses
  %.not.i.i.i.i.i.i12.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i12.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void %i.cu(ptr noundef nonnull %.promoted.i49.i.i.i)
          to label %bb.x unwind label %bb.y, !noalias !55573

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr %.promoted81.i53.i.i.i, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !range !66, !invariant.load !62, !noalias !55573 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB6_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EyNvYB16_NtNtB1K_8iterator8Iterator4nextECs9KQ7US1M400_11lance_table.exit.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %.promoted81.i53.i.i.i, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !range !88, !invariant.load !62, !noalias !55573
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.promoted.i49.i.i.i, i64 noundef %i.cw, i64 noundef range(i64 1, -9223372036854775807) %i.cz) #76, !noalias !55573
  br label %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB6_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EyNvYB16_NtNtB1K_8iterator8Iterator4nextECs9KQ7US1M400_11lance_table.exit.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.da = landingpad { ptr, i32 }
          cleanup
  %i.db = getelementptr inbounds nuw i8, ptr %.promoted81.i53.i.i.i, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !range !66, !invariant.load !62, !noalias !55573 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.body.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i: ; preds = %bb.y
  %i.de = getelementptr inbounds nuw i8, ptr %.promoted81.i53.i.i.i, i64 16
  %i.df = load i64, ptr %i.de, align 8, !range !88, !invariant.load !62, !noalias !55573
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.promoted.i49.i.i.i, i64 noundef %i.dc, i64 noundef range(i64 1, -9223372036854775807) %i.df) #76, !noalias !55573
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i, %bb.y
  store ptr null, ptr %i.bs, align 8, !alias.scope !55574, !noalias !55526
  br label %.body.i.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB6_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EyNvYB16_NtNtB1K_8iterator8Iterator4nextECs9KQ7US1M400_11lance_table.exit.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.x
  store ptr null, ptr %i.bs, align 8, !alias.scope !55574, !noalias !55526
  br label %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB6_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EyNvYB16_NtNtB1K_8iterator8Iterator4nextECs9KQ7US1M400_11lance_table.exit.thread23.i.i.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB6_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EyNvYB16_NtNtB1K_8iterator8Iterator4nextECs9KQ7US1M400_11lance_table.exit.thread23.i.i.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB6_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EyNvYB16_NtNtB1K_8iterator8Iterator4nextECs9KQ7US1M400_11lance_table.exit.i.i.i.i, %bb.t
  %i.dg = phi ptr [ null, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB6_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EyNvYB16_NtNtB1K_8iterator8Iterator4nextECs9KQ7US1M400_11lance_table.exit.i.i.i.i ], [ %i.co, %bb.t ]
  %.promoted.i47.i.i = phi ptr [ null, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB6_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EyNvYB16_NtNtB1K_8iterator8Iterator4nextECs9KQ7US1M400_11lance_table.exit.i.i.i.i ], [ %.promoted.i48.i.i, %bb.t ]
  %.not.i7.i.i.i.i = icmp eq ptr %i.cp, null
  %i.dh = icmp eq ptr %i.cp, %i.bx
  %or.cond.i.i13.i = select i1 %.not.i7.i.i.i.i, i1 true, i1 %i.dh
  br i1 %or.cond.i.i13.i, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENCNvMs1_B1I_NtB1I_13RowIdSequence4iter0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.i.i.i.i, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENCNvMs1_B1I_NtB1I_13RowIdSequence4iter0EEINtB5_8FuseImplBY_E4nextB1K_.exit.i.i.i.i

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENCNvMs1_B1I_NtB1I_13RowIdSequence4iter0EEINtB5_8FuseImplBY_E4nextB1K_.exit.i.i.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB6_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EyNvYB16_NtNtB1K_8iterator8Iterator4nextECs9KQ7US1M400_11lance_table.exit.thread23.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 56 ; 7 uses
  store ptr %i.di, ptr %i.bp, align 8, !alias.scope !55575, !noalias !55526
  %i.dj = invoke { ptr, ptr } @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment4iter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cp)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !55571 ; 2 uses

.noexc12.i.i.i:                                   ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENCNvMs1_B1I_NtB1I_13RowIdSequence4iter0EEINtB5_8FuseImplBY_E4nextB1K_.exit.i.i.i.i
  %i.dk = extractvalue { ptr, ptr } %i.dj, 0      ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENCNvMs1_B1I_NtB1I_13RowIdSequence4iter0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EEECs9KQ7US1M400_11lance_table.exit.i.i.i.i

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENCNvMs1_B1I_NtB1I_13RowIdSequence4iter0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.i.i.i.i: ; preds = %.noexc12.i.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB6_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EyNvYB16_NtNtB1K_8iterator8Iterator4nextECs9KQ7US1M400_11lance_table.exit.thread23.i.i.i.i
  %i.dl = phi ptr [ %i.di, %.noexc12.i.i.i ], [ %i.cn, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB6_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EyNvYB16_NtNtB1K_8iterator8Iterator4nextECs9KQ7US1M400_11lance_table.exit.thread23.i.i.i.i ]
  %.promoted51.i53.i.i = phi ptr [ %i.di, %.noexc12.i.i.i ], [ %.promoted51.i54.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB6_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EyNvYB16_NtNtB1K_8iterator8Iterator4nextECs9KQ7US1M400_11lance_table.exit.thread23.i.i.i.i ]
  %i.dm = phi ptr [ %i.di, %.noexc12.i.i.i ], [ %i.cp, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB6_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EyNvYB16_NtNtB1K_8iterator8Iterator4nextECs9KQ7US1M400_11lance_table.exit.thread23.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !55576)
  br i1 %.not55.i.i.i.i.i.i.i.i, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB15_3zip3ZipINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B3d_NtB3d_13RowIdSequence4iter0ENtNtB3d_7version12VersionsIterENCNvMs_B68_NtB68_25RowDatasetVersionSequence30rows_with_version_greater_than0EEB3f_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENCNvMs1_B1I_NtB1I_13RowIdSequence4iter0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.i.i.i.i
  %i.dn = load ptr, ptr %i.cc, align 8, !invariant.load !62, !noalias !55577, !nonnull !62
  %i.do = invoke { i64, i64 } %i.dn(ptr noundef nonnull %i.ca)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !55571, !inline_history !55572 ; 2 uses

.noexc13.i.i.i:                                   ; preds = %bb.z
  %i.dp = extractvalue { i64, i64 } %i.do, 0
  %.not4.i12.i.i.i.i = icmp eq i64 %i.dp, 1
  br i1 %.not4.i12.i.i.i.i, label %.noexc.thread.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.noexc13.i.i.i
  %i.dq = load ptr, ptr %.val4.i65.i.i.i.i.i.i.i.i, align 8, !invariant.load !62, !noalias !55578 ; 2 uses
  %.not.i.i.i13.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i13.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void %i.dq(ptr noundef nonnull %i.ca)
          to label %bb.ac unwind label %bb.ad, !noalias !55578

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dr = getelementptr inbounds nuw i8, ptr %.val4.i65.i.i.i.i.i.i.i.i, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !range !66, !invariant.load !62, !noalias !55578 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %.noexc.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i16.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i16.i.i.i.i: ; preds = %bb.ac
  %i.du = getelementptr inbounds nuw i8, ptr %.val4.i65.i.i.i.i.i.i.i.i, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !range !88, !invariant.load !62, !noalias !55578
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef %i.ds, i64 noundef range(i64 1, -9223372036854775807) %i.dv) #76, !noalias !55578
  br label %.noexc.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %i.dx = getelementptr inbounds nuw i8, ptr %.val4.i65.i.i.i.i.i.i.i.i, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !range !66, !invariant.load !62, !noalias !55578 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %.body.i15.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i14.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i14.i.i.i.i: ; preds = %bb.ad
  %i.ea = getelementptr inbounds nuw i8, ptr %.val4.i65.i.i.i.i.i.i.i.i, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !range !88, !invariant.load !62, !noalias !55578
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef %i.dy, i64 noundef range(i64 1, -9223372036854775807) %i.eb) #76, !noalias !55578
  br label %.body.i15.i.i.i.i

.body.i15.i.i.i.i:                                ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i14.i.i.i.i, %bb.ad
  store ptr null, ptr %i.bv, align 8, !alias.scope !55579, !noalias !55526
  br label %.body.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EEECs9KQ7US1M400_11lance_table.exit.i.i.i.i: ; preds = %.noexc12.i.i.i
  %i.ec = extractvalue { ptr, ptr } %i.dj, 1      ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ec) ]
  store ptr %i.dk, ptr %i.bs, align 8, !alias.scope !55562, !noalias !55526
  store ptr %i.ec, ptr %i.bt, align 8, !alias.scope !55562, !noalias !55526
  br label %bb.t

.noexc.i.i.i:                                     ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i16.i.i.i.i, %bb.ac
  store ptr null, ptr %i.bv, align 8, !alias.scope !55579, !noalias !55526
  br label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB15_3zip3ZipINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B3d_NtB3d_13RowIdSequence4iter0ENtNtB3d_7version12VersionsIterENCNvMs_B68_NtB68_25RowDatasetVersionSequence30rows_with_version_greater_than0EEB3f_.exit.i.i

.noexc.thread.i.i.i:                              ; preds = %.noexc11.i.i.i, %.noexc13.i.i.i
  %i.ed = phi ptr [ %i.dl, %.noexc13.i.i.i ], [ %i.cn, %.noexc11.i.i.i ] ; 5 uses
  %i.ee = phi ptr [ %i.dg, %.noexc13.i.i.i ], [ %i.co, %.noexc11.i.i.i ] ; 5 uses
  %.promoted51.i52.i.i = phi ptr [ %.promoted51.i53.i.i, %.noexc13.i.i.i ], [ %.promoted51.i54.i.i, %.noexc11.i.i.i ] ; 2 uses
  %.promoted.i46.i.i = phi ptr [ %.promoted.i47.i.i, %.noexc13.i.i.i ], [ %.promoted.i48.i.i, %.noexc11.i.i.i ] ; 2 uses
  %i.ef = phi ptr [ %i.dm, %.noexc13.i.i.i ], [ %i.cp, %.noexc11.i.i.i ]
  %.promoted.i47.i.i.i = phi ptr [ null, %.noexc13.i.i.i ], [ %.promoted.i49.i.i.i, %.noexc11.i.i.i ]
  %.pn.i.i.i = phi { i64, i64 } [ %i.do, %.noexc13.i.i.i ], [ %i.cs, %.noexc11.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !55580)
  %i.eg = icmp eq i64 %i.cl, 0
  br i1 %i.eg, label %bb.ae, label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %.noexc.thread.i.i.i
  %i.eh = add i64 %i.cj, 1                        ; 5 uses
  store i64 %i.eh, ptr %i.bo, align 8, !alias.scope !55581, !noalias !55526
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.eh, %i.by
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_12VersionsIter11advance_run.exit.i.i.i.i.i.i.i.i.i, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB15_3zip3ZipINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B3d_NtB3d_13RowIdSequence4iter0ENtNtB3d_7version12VersionsIterENCNvMs_B68_NtB68_25RowDatasetVersionSequence30rows_with_version_greater_than0EEB3f_.exit.i.i

_RNvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_12VersionsIter11advance_run.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !55582)
  %i.ei = getelementptr inbounds nuw [64 x i8], ptr %i.bz, i64 %i.eh ; 2 uses
  %i.ej = invoke noundef i64 @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ei)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !55571

.noexc6.i.i.i:                                    ; preds = %_RNvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_12VersionsIter11advance_run.exit.i.i.i.i.i.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 56
  %i.el = load i64, ptr %i.ek, align 8, !noalias !55583, !noundef !62 ; 3 uses
  store i64 %i.el, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !55584, !noalias !55526
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc6.i.i.i, %.noexc.thread.i.i.i
  %.promoted56.i65.i.i = phi i64 [ %i.eh, %.noexc6.i.i.i ], [ %.promoted56.i66.i.i, %.noexc.thread.i.i.i ] ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.promoted.i62.i.i = phi i64 [ %i.el, %.noexc6.i.i.i ], [ %.phi.trans.insert.i.i.i.i.i.i.promoted.i63.i.i, %.noexc.thread.i.i.i ] ; 2 uses
  %i.em = phi i64 [ %i.eh, %.noexc6.i.i.i ], [ %i.cj, %.noexc.thread.i.i.i ]
  %i.en = phi i64 [ %i.el, %.noexc6.i.i.i ], [ %i.ck, %.noexc.thread.i.i.i ] ; 2 uses
  %i.eo = phi i64 [ %i.ej, %.noexc6.i.i.i ], [ %i.cl, %.noexc.thread.i.i.i ]
  %i.ep = call i64 @llvm.usub.sat.i64(i64 %i.eo, i64 1) ; 3 uses
  store i64 %i.ep, ptr %i.bq, align 8, !alias.scope !55581, !noalias !55526
  %i.eq = load i64, ptr %.val.i.i.i.i, align 8, !noalias !55585, !noundef !62
  %i.er = icmp ugt i64 %i.en, %i.eq
  br i1 %i.er, label %bb.af, label %bb.s

bb.af:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %.sroa.3.0.i18.pn.i16.le.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i, 1
  %i.es = icmp samesign ult i64 %i.ce, 1152921504606846976
  call void @llvm.assume(i1 %i.es)
  %i.et = load i64, ptr %i.f, align 8, !range !66, !alias.scope !55586, !noalias !55526, !noundef !62
  %i.eu = icmp eq i64 %i.ce, %i.et
  br i1 %i.eu, label %bb.ag, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !55587)
  call void @llvm.experimental.noalias.scope.decl(metadata !55588)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !55589
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ev = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i.i.i.i.i, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !invariant.load !62, !noalias !55590, !nonnull !62
  invoke void %i.ew(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.ee)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !55571, !inline_history !55429

.noexc7.i.i.i:                                    ; preds = %bb.ah
  %.pre76.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !range !70, !noalias !55589
  %.pre78.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert77.i.i.i.i.i.i.i.i, align 8, !noalias !55589
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc7.i.i.i, %bb.ag
  %.promoted52.i58.i.i = phi ptr [ %.val4.i.i.i.i.i.i.i.i.i, %.noexc7.i.i.i ], [ %.promoted52.i59.i.i, %bb.ag ]
  %i.ex = phi i64 [ %.pre78.i.i.i.i.i.i.i.i, %.noexc7.i.i.i ], [ 0, %bb.ag ]
  %i.ey = phi i64 [ %.pre76.i.i.i.i.i.i.i.i, %.noexc7.i.i.i ], [ 1, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !55589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !55589
  br i1 %.not55.i.i.i.i.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i
  %i.ez = load ptr, ptr %i.cb, align 8, !invariant.load !62, !noalias !55591, !nonnull !62
  invoke void %i.ez(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.ca)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !55571, !inline_history !55429

.noexc8.i.i.i:                                    ; preds = %bb.ai
  %.pre81.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert80.i.i.i.i.i.i.i.i, align 8, !range !70, !noalias !55589
  %.pre83.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert82.i.i.i.i.i.i.i.i, align 8, !noalias !55589
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i.i.i.i.i: ; preds = %.noexc8.i.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i
  %i.fa = phi i64 [ %.pre83.i.i.i.i.i.i.i.i, %.noexc8.i.i.i ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i ]
  %i.fb = phi i64 [ %.pre81.i.i.i.i.i.i.i.i, %.noexc8.i.i.i ], [ 1, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !55589
  %.not56.i.i.i.i.i.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not56.i.i.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i.i.i.i.i
  %i.fc = icmp eq ptr %i.bx, %i.ed
  %i.fd = trunc nuw i64 %i.ey to i1
  %i.fe = trunc nuw i64 %i.fb to i1
  %op.rdx = select i1 %i.fc, i1 %i.fd, i1 false
  %op.rdx213 = select i1 %op.rdx, i1 %i.fe, i1 false
  br i1 %op.rdx213, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i.i.i.i.i
  %i.ff = and i64 %i.fb, %i.ey
  %or.cond57.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ff, 0
  br i1 %or.cond57.not.i.i.i.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fg = add i64 %i.fa, %i.ex
  br label %bb.am

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i, %bb.af
  %i.fh = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i ], [ %i.cd, %bb.af ] ; 2 uses
  %.promoted52.i57.i.i = phi ptr [ %.promoted52.i58.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i ], [ %.promoted52.i59.i.i, %bb.af ]
  %.promoted51.i51.i.i = phi ptr [ %i.ed, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i ], [ %.promoted51.i52.i.i, %bb.af ]
  %.promoted.i45.i.i = phi ptr [ %i.ee, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i ], [ %.promoted.i46.i.i, %bb.af ]
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.ce
  store i64 %.sroa.3.0.i18.pn.i16.le.i.i.i, ptr %i.fi, align 8, !noalias !55571
  %i.fj = add nuw nsw i64 %i.ce, 1                ; 2 uses
  store i64 %i.fj, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !55586, !noalias !55526
  br label %bb.r

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENCNvMs1_B1I_NtB1I_13RowIdSequence4iter0EEINtB5_8FuseImplBY_E4nextB1K_.exit.i.i.i.i, %bb.u, %_RNvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_12VersionsIter11advance_run.exit.i.i.i.i.i.i.i.i.i, %bb.z, %bb.am, %bb.ai, %bb.ah
  %lpad.loopexit.split-lp219 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i15.i.i.i.i, %.body.i.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.dw, %.body.i15.i.i.i.i ], [ %i.da, %.body.i.i.i.i.i ], [ %lpad.loopexit.split-lp219, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1L_NtB1L_13RowIdSequence4iter0EEB1N_(ptr noalias noundef readonly align 8 dereferenceable(48) %i.bp)
          to label %.body.i unwind label %bb.an, !noalias !55592

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.sink87.i.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sroa.8.i.i.i.i.i.i, %bb.al ], [ %.sroa.5.i.i.i.i.i.i, %bb.ak ], [ %.sroa.5.i.i.i.i.i.i, %bb.aj ]
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ %i.fg, %bb.al ], [ 0, %bb.ak ], [ 0, %bb.aj ]
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %.sink87.i.i.sroa.phi.i.i.i.i.i.i, align 8, !alias.scope !55593, !noalias !55594
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.ce, i64 noundef 1, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !55595

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i: ; preds = %bb.am
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !55586, !noalias !55526
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i

bb.an:                                            ; preds = %.body.i.i.i
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !55571
  unreachable

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB15_3zip3ZipINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B3d_NtB3d_13RowIdSequence4iter0ENtNtB3d_7version12VersionsIterENCNvMs_B68_NtB68_25RowDatasetVersionSequence30rows_with_version_greater_than0EEB3f_.exit.i.i: ; preds = %bb.ae, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENCNvMs1_B1I_NtB1I_13RowIdSequence4iter0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.i.i.i.i, %.noexc.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1L_NtB1L_13RowIdSequence4iter0EEB1N_(ptr noalias noundef readonly align 8 dereferenceable(48) %i.bp)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB1h_3zip3ZipINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B3p_NtB3p_13RowIdSequence4iter0ENtNtB3p_7version12VersionsIterENCNvMs_B6k_NtB6k_25RowDatasetVersionSequence30rows_with_version_greater_than0EE11spec_extendB3r_.exit.i unwind label %bb.ao, !noalias !55526

bb.ao:                                            ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB15_3zip3ZipINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B3d_NtB3d_13RowIdSequence4iter0ENtNtB3d_7version12VersionsIterENCNvMs_B68_NtB68_25RowDatasetVersionSequence30rows_with_version_greater_than0EEB3f_.exit.i.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ao, %.body.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fl, %bb.ao ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ] ; 2 uses
  %.val.i = load i64, ptr %i.f, align 8, !noalias !55526 ; 2 uses
  %i.fm = icmp eq i64 %.val.i, 0
  br i1 %i.fm, label %common.resume, label %bb.ap

bb.ap:                                            ; preds = %.body.i
  %.val7.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !55526, !nonnull !62, !noundef !62
  %i.fn = shl nuw i64 %.val.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef %i.fn, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !55526
  br label %common.resume

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB1h_3zip3ZipINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B3p_NtB3p_13RowIdSequence4iter0ENtNtB3p_7version12VersionsIterENCNvMs_B6k_NtB6k_25RowDatasetVersionSequence30rows_with_version_greater_than0EE11spec_extendB3r_.exit.i: ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB15_3zip3ZipINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B3d_NtB3d_13RowIdSequence4iter0ENtNtB3d_7version12VersionsIterENCNvMs_B68_NtB68_25RowDatasetVersionSequence30rows_with_version_greater_than0EEB3f_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !55526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !55525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !55526
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB1z_3zip3ZipINtNtB1z_7flatten7FlatMapINtNtNtB1D_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB6_5boxed3BoxDNtNtNtB1B_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B3H_NtB3H_13RowIdSequence4iter0ENtNtB3H_7version12VersionsIterENCNvMs_B6C_NtB6C_25RowDatasetVersionSequence30rows_with_version_greater_than0EE9from_iterB3J_.exit

bb.aq:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !55526
  unreachable

common.resume:                                    ; preds = %bb.ar, %.body.i, %bb.ap, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp260, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.ap ], [ %i.fp, %bb.ar ]
  resume { ptr, i32 } %common.resume.op

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_12VersionsIter11advance_run.exit.i.i.i.i.i.i.i, %bb.d, %bb.p, %bb.j, %bb.i
  %lpad.loopexit.split-lp260 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1L_NtB1L_13RowIdSequence4iter0EEB1N_(ptr noalias noundef readonly align 8 dereferenceable(48) %.sroa.8.0..sroa_idx)
          to label %common.resume unwind label %bb.aq, !noalias !55524

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB1z_3zip3ZipINtNtB1z_7flatten7FlatMapINtNtNtB1D_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB6_5boxed3BoxDNtNtNtB1B_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B3H_NtB3H_13RowIdSequence4iter0ENtNtB3H_7version12VersionsIterENCNvMs_B6C_NtB6C_25RowDatasetVersionSequence30rows_with_version_greater_than0EE9from_iterB3J_.exit: ; preds = %bb.n, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB1h_3zip3ZipINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B3p_NtB3p_13RowIdSequence4iter0ENtNtB3p_7version12VersionsIterENCNvMs_B6k_NtB6k_25RowDatasetVersionSequence30rows_with_version_greater_than0EE11spec_extendB3r_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.ar:                                            ; preds = %bb.b
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1L_NtB1L_13RowIdSequence4iter0EEB1N_(ptr noalias noundef align 8 dereferenceable(48) %i.g) #81
          to label %common.resume unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB4_25RowDatasetVersionSequence3len(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !62 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7version20RowDatasetVersionRunENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB25_8adapters3map8map_foldRBQ_yyNCNvMs_BS_NtBS_25RowDatasetVersionSequence3len0NCINvXsC_NtB23_5accumyNtB4j_3Sum3sumINtB2P_3MapBF_B3p_EE0E0EBW_.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.i, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.h, %.preheader ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.04.0.i
  %i.g = tail call noundef i64 @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.f)
  %i.h = add i64 %i.g, %.sroa.02.0.i              ; 2 uses
  %i.i = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7version20RowDatasetVersionRunENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB25_8adapters3map8map_foldRBQ_yyNCNvMs_BS_NtBS_25RowDatasetVersionSequence3len0NCINvXsC_NtB23_5accumyNtB4j_3Sum3sumINtB2P_3MapBF_B3p_EE0E0EBW_.exit, label %.preheader

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7version20RowDatasetVersionRunENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB25_8adapters3map8map_foldRBQ_yyNCNvMs_BS_NtBS_25RowDatasetVersionSequence3len0NCINvXsC_NtB23_5accumyNtB4j_3Sum3sumINtB2P_3MapBF_B3p_EE0E0EBW_.exit: ; preds = %.preheader, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.h, %.preheader ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB4_25RowDatasetVersionSequence8is_empty(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !62 ; 3 uses
  %i.c = icmp ult i64 %i.b, 144115188075855872
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7version20RowDatasetVersionRunENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_25RowDatasetVersionSequence8is_empty0EBW_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %.idx = shl nuw nsw i64 %i.b, 6
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %i.h = phi ptr [ %i.f, %.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  %i.i = tail call noundef i64 @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.h), !noalias !55598
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %.not = xor i1 %i.j, true
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.g
  %or.cond = select i1 %.not, i1 true, i1 %i.l
  br i1 %or.cond, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7version20RowDatasetVersionRunENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_25RowDatasetVersionSequence8is_empty0EBW_.exit, label %bb.b

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7version20RowDatasetVersionRunENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_25RowDatasetVersionSequence8is_empty0EBW_.exit: ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %i.j, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB4_25RowDatasetVersionSequence8versions(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !62 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55605)
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_RNvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_12VersionsIter3new.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b), !noalias !55606
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !55605, !noalias !55607, !noundef !62
  br label %_RNvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_12VersionsIter3new.exit

_RNvMs0_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_12VersionsIter3new.exit: ; preds = %bb.a, %bb.b
  %.sroa.11.0.i = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %.sink.i.i = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  store ptr %i.b, ptr %0, align 8, !alias.scope !55604
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !55604
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !55604
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink.i.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !55604
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.11.0.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !55604
  ret void
}
end_hunk_0
begin_hunk_1_@_RNvNtNtCs9KQ7US1M400_11lance_table11transaction11row_version31resolve_update_version_metadata:bb.a
  %.phi.trans.insert77.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %.phi.trans.insert80.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.phi.trans.insert82.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4.0..sroa_idx.i241 = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.rn = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.phi.trans.insert77.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ro = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.rp = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %.phi.trans.insert80.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.phi.trans.insert82.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.rq = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.rr = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %.sroa.6454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.7457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.rv = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.0.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.4.0..sroa_idx.i295 = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.rz = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph751, %bb.dr
  %.sroa.011.0749 = phi ptr [ %3, %.lr.ph751 ], [ %i.sb, %bb.dr ] ; 19 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.011.0749, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.011.0749, i64 112
  %i.sd = load i64, ptr %i.sc, align 8, !range !81, !noundef !62
  switch i64 %i.sd, label %bb.dz [
    i64 -2, label %bb.bl
    i64 -1, label %bb.bi
  ]

._crit_edge752:                                   ; preds = %bb.dr, %.loopexit604
  store i8 -1, ptr %0, align 8
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyNtNtNtCs9KQ7US1M400_11lance_table6rowids7version25RowDatasetVersionSequenceEEB1D_(ptr noalias noundef align 8 dereferenceable(48) %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.se = icmp eq i64 %.sroa.8.0.copyload, 0
  br i1 %i.se, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetyEECs9KQ7US1M400_11lance_table.exit305, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i304

bb.bg:                                            ; preds = %.body252, %bb.en, %bb.eu, %bb.bh
  %.pn95.pn = phi { ptr, i32 } [ %.pn95.ph, %bb.eu ], [ %i.aae, %bb.en ], [ %i.sf, %bb.bh ], [ %.pn92, %.body252 ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyNtNtNtCs9KQ7US1M400_11lance_table6rowids7version25RowDatasetVersionSequenceEEB1D_(ptr noalias noundef align 8 dereferenceable(48) %i.ak) #81
  br label %.body229

bb.bh:                                            ; preds = %bb.ea, %bb.bk, %bb.bl, %bb.bi
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bi:                                            ; preds = %bb.bf
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.011.0749, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %.val124 = load ptr, ptr %i.sg, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.val124, i64 24
  %i.si = load ptr, ptr %i.sh, align 8, !nonnull !62, !noundef !62
  %i.sj = getelementptr inbounds nuw i8, ptr %.val124, i64 32
  %i.sk = load i64, ptr %i.sj, align 8, !noundef !62
  invoke void @_RNvNtNtCs9KQ7US1M400_11lance_table6rowids5serde12read_row_ids(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.si, i64 noundef %i.sk)
          to label %bb.bj unwind label %bb.bh

bb.bj:                                            ; preds = %bb.bi
  %i.sl = load i8, ptr %i.aj, align 8, !range !104, !noundef !62
  %.not84 = icmp eq i8 %i.sl, -1
  br i1 %.not84, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB11_.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.aj)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB11_.exit.thread unwind label %bb.bh

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB11_.exit.thread: ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.bl

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB11_.exit: ; preds = %bb.bj
  %.sroa.050.0.copyload = load i64, ptr %i.rg, align 8 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.451.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %.not86 = icmp eq i64 %.sroa.050.0.copyload, -1
  br i1 %.not86, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB11_.exit.thread, %bb.eb, %bb.dz, %bb.bf, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB11_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.sm = load i64, ptr %i.as, align 8, !noundef !62
  invoke void @_RNvNtNtCs9KQ7US1M400_11lance_table6rowids7version18build_version_meta(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.sroa.011.0749, i64 noundef %i.sm)
          to label %bb.ec unwind label %bb.bh

.body252:                                         ; preds = %.body258.thread, %.body258, %.body.i242, %bb.cn, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bm
  %.pn92 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.sn, %bb.bm ], [ %eh.lpad-body.i243, %.body.i242 ], [ %eh.lpad-body.i243, %bb.cn ], [ %.pn90, %.body258 ], [ %.pn90, %.body258.thread ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEBF_(ptr noalias noundef align 8 dereferenceable(24) %i.ah) #81
  br label %bb.bg

bb.bm:                                            ; preds = %bb.bv
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %.body252

bb.bn:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB11_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %.sroa.050.0.copyload, ptr %i.ah, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %.val137 = load ptr, ptr %.sroa.9.0..sroa_idx15, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %.val138 = load i64, ptr %i.rh, align 8, !noundef !62
  %i.so = getelementptr inbounds nuw [56 x i8], ptr %.val137, i64 %.val138
  store ptr %.val137, ptr %i.ri, align 8
  store ptr %i.so, ptr %.sroa.4447.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.5448.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.6450.0..sroa_idx, align 8
  store ptr %i.aq, ptr %i.ag, align 8
  store ptr %i.ak, ptr %.sroa.421.0..sroa_idx, align 8
  store ptr %i.as, ptr %.sroa.522.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !58762)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !58763
  %i.sp = invoke fastcc { i64, i64 } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1O_NtB1O_13RowIdSequence4iter0ENCNvNtNtB1Q_11transaction11row_version31resolve_update_version_metadatas5_0ENtNtB3n_8iterator8Iterator4nextB1Q_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ag)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !58764 ; 2 uses

bb.bo:                                            ; preds = %bb.bn
  %i.sq = extractvalue { i64, i64 } %i.sp, 0
  %i.sr = extractvalue { i64, i64 } %i.sp, 1
  %i.ss = trunc nuw i64 %i.sq to i1
  br i1 %i.ss, label %bb.bp, label %bb.bv

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !58765)
  call void @llvm.experimental.noalias.scope.decl(metadata !58766)
  call void @llvm.experimental.noalias.scope.decl(metadata !58767)
  call void @llvm.experimental.noalias.scope.decl(metadata !58768)
  call void @llvm.experimental.noalias.scope.decl(metadata !58769)
  call void @llvm.experimental.noalias.scope.decl(metadata !58770)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !58771
  %i.st = load ptr, ptr %.sroa.5448.0..sroa_idx, align 8, !alias.scope !58772, !noundef !62 ; 2 uses
  %.not.i.i.i.i236 = icmp eq ptr %i.st, null
  call void @llvm.experimental.noalias.scope.decl(metadata !58773)
  br i1 %.not.i.i.i.i236, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.val4.i.i.i.i.i = load ptr, ptr %i.rj, align 8, !alias.scope !58774, !nonnull !62, !align !67, !noundef !62
  %i.su = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i, i64 32
  %i.sv = load ptr, ptr %i.su, align 8, !invariant.load !62, !noalias !58775, !nonnull !62
  invoke void %i.sv(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noundef nonnull %i.st)
          to label %.noexc.i237 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !58763, !inline_history !58467

.noexc.i237:                                      ; preds = %bb.bq
  %.pre.i.i.i.i238 = load i64, ptr %i.l, align 8, !noalias !58771
  %.pre76.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i239, align 8, !range !70, !noalias !58771
  %.pre78.i.i.i.i = load i64, ptr %.phi.trans.insert77.i.i.i.i, align 8, !noalias !58771
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i: ; preds = %.noexc.i237, %bb.bp
  %i.sw = phi i64 [ %.pre78.i.i.i.i, %.noexc.i237 ], [ 0, %bb.bp ]
  %i.sx = phi i64 [ %.pre76.i.i.i.i, %.noexc.i237 ], [ 1, %bb.bp ] ; 2 uses
  %i.sy = phi i64 [ %.pre.i.i.i.i238, %.noexc.i237 ], [ 0, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !58771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !58771
  %i.sz = load ptr, ptr %.sroa.6450.0..sroa_idx, align 8, !alias.scope !58772, !noundef !62 ; 2 uses
  %.not55.i.i.i.i = icmp eq ptr %i.sz, null
  call void @llvm.experimental.noalias.scope.decl(metadata !58776)
  br i1 %.not55.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i
  %.val4.i65.i.i.i.i = load ptr, ptr %i.rk, align 8, !alias.scope !58777, !nonnull !62, !align !67, !noundef !62
  %i.ta = getelementptr inbounds nuw i8, ptr %.val4.i65.i.i.i.i, i64 32
  %i.tb = load ptr, ptr %i.ta, align 8, !invariant.load !62, !noalias !58778, !nonnull !62
  invoke void %i.tb(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull %i.sz)
          to label %.noexc8.i240 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !58763, !inline_history !58467

.noexc8.i240:                                     ; preds = %bb.br
  %.pre79.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !58771
  %.pre81.i.i.i.i = load i64, ptr %.phi.trans.insert80.i.i.i.i, align 8, !range !70, !noalias !58771
  %.pre83.i.i.i.i = load i64, ptr %.phi.trans.insert82.i.i.i.i, align 8, !noalias !58771
  %i.tc = call i64 @llvm.uadd.sat.i64(i64 %i.sy, i64 %.pre79.i.i.i.i)
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i: ; preds = %.noexc8.i240, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i
  %i.td = phi i64 [ %.pre83.i.i.i.i, %.noexc8.i240 ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i ]
  %.fr1097 = phi i64 [ %.pre81.i.i.i.i, %.noexc8.i240 ], [ 1, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i ] ; 2 uses
  %i.te = phi i64 [ %i.tc, %.noexc8.i240 ], [ %i.sy, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !58771
  %i.tf = load ptr, ptr %i.ri, align 8, !alias.scope !58772, !noundef !62 ; 2 uses
  %.not56.i.i.i.i = icmp eq ptr %i.tf, null
  br i1 %.not56.i.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i
  %.val63.i.i.i.i = load ptr, ptr %.sroa.4447.0..sroa_idx, align 8, !alias.scope !58772, !nonnull !62, !noundef !62
  %i.tg = icmp eq ptr %.val63.i.i.i.i, %i.tf
  %i.th = trunc nuw i64 %i.sx to i1
  %i.ti = trunc nuw i64 %.fr1097 to i1
  %op.rdx1095 = select i1 %i.tg, i1 %i.th, i1 false
  %op.rdx1096 = select i1 %op.rdx1095, i1 %i.ti, i1 false
  br i1 %op.rdx1096, label %bb.bu, label %bb.bw

bb.bt:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i
  %i.tj = and i64 %.fr1097, %i.sx
  %or.cond57.not.i.i.i.i = icmp eq i64 %i.tj, 0
  br i1 %or.cond57.not.i.i.i.i, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.tk = add i64 %i.td, %i.sw
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !58763
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1L_NtB1L_13RowIdSequence4iter0EEB1N_(ptr noalias noundef readonly align 8 dereferenceable(48) %i.ri)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1z_7flatten7FlatMapINtNtNtB1D_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB6_5boxed3BoxDNtNtNtB1B_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B3c_NtB3c_13RowIdSequence4iter0ENCNvNtNtB3e_11transaction11row_version31resolve_update_version_metadatas5_0EE9from_iterB3e_.exit.thread unwind label %bb.bm

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1z_7flatten7FlatMapINtNtNtB1D_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB6_5boxed3BoxDNtNtNtB1B_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B3c_NtB3c_13RowIdSequence4iter0ENCNvNtNtB3e_11transaction11row_version31resolve_update_version_metadatas5_0EE9from_iterB3e_.exit.thread: ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %_RNvNtNtCs9KQ7US1M400_11lance_table11transaction11row_version19encode_version_runs.exit

bb.bw:                                            ; preds = %bb.bu, %bb.bt, %bb.bs
  %.sink87.i.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %bb.bu ], [ %.sroa.5.i, %bb.bt ], [ %.sroa.5.i, %bb.bs ]
  %.sink.i.i.i.i = phi i64 [ %i.tk, %bb.bu ], [ 0, %bb.bt ], [ 0, %bb.bs ]
  store i64 %.sink.i.i.i.i, ptr %.sink87.i.i.i.sroa.phi.i, align 8, !alias.scope !58779, !noalias !58763
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.tl = call i64 @llvm.uadd.sat.i64(i64 %i.te, i64 1) ; 2 uses
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.tl, i64 4) ; 2 uses
  %i.tm = shl i64 %.sroa.0.0.i.i, 3               ; 3 uses
  %i.tn = icmp ugt i64 %i.tl, 2305843009213693951
  %.not.i.i.i = icmp ugt i64 %i.tm, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.tn, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.by, label %bb.bx, !prof !63

bb.bx:                                            ; preds = %bb.bw
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !58780
  %i.to = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.tm, i64 noundef range(i64 1, 9) 8) #76, !noalias !58780 ; 4 uses
  %i.tp = icmp eq ptr %i.to, null
  br i1 %i.tp, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.bx ], [ 0, %bb.bw ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.tm) #80
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !58763

.noexc9.i:                                        ; preds = %bb.by
  unreachable

bb.bz:                                            ; preds = %bb.bx
  store i64 %i.sr, ptr %i.to, align 8, !noalias !58763
  store i64 %.sroa.0.0.i.i, ptr %i.n, align 8, !noalias !58763
  store ptr %i.to, ptr %.sroa.4.0..sroa_idx.i241, align 8, !noalias !58763
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !58763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !58763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.ag, i64 72, i1 false), !noalias !58764
  call void @llvm.experimental.noalias.scope.decl(metadata !58781)
  call void @llvm.experimental.noalias.scope.decl(metadata !58782)
  call void @llvm.experimental.noalias.scope.decl(metadata !58783)
  call void @llvm.experimental.noalias.scope.decl(metadata !58784)
  br label %bb.ca

bb.ca:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i, %bb.bz
  %i.tq = phi ptr [ %i.uq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ], [ %i.to, %bb.bz ]
  %.sroa.13.0.copyload = phi i64 [ %i.us, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ], [ 1, %bb.bz ] ; 9 uses
  %i.tr = invoke fastcc { i64, i64 } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1O_NtB1O_13RowIdSequence4iter0ENCNvNtNtB1Q_11transaction11row_version31resolve_update_version_metadatas5_0ENtNtB3n_8iterator8Iterator4nextB1Q_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.m)
          to label %bb.cb unwind label %bb.cj, !noalias !58785 ; 2 uses

bb.cb:                                            ; preds = %bb.ca
  %i.ts = extractvalue { i64, i64 } %i.tr, 0
  %i.tt = extractvalue { i64, i64 } %i.tr, 1
  %i.tu = trunc nuw i64 %i.ts to i1
  br i1 %i.tu, label %bb.cc, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2I_NtB2I_13RowIdSequence4iter0ENCNvNtNtB2K_11transaction11row_version31resolve_update_version_metadatas5_0EEB2K_.exit.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.tv = icmp samesign ult i64 %.sroa.13.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.tv)
  %i.tw = load i64, ptr %i.n, align 8, !range !66, !alias.scope !58786, !noalias !58763, !noundef !62
  %i.tx = icmp eq i64 %.sroa.13.0.copyload, %i.tw
  br i1 %i.tx, label %bb.cd, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !58787)
  call void @llvm.experimental.noalias.scope.decl(metadata !58788)
  call void @llvm.experimental.noalias.scope.decl(metadata !58789)
  call void @llvm.experimental.noalias.scope.decl(metadata !58790)
  call void @llvm.experimental.noalias.scope.decl(metadata !58791)
  call void @llvm.experimental.noalias.scope.decl(metadata !58792)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !58793
  %i.ty = load ptr, ptr %i.rm, align 8, !alias.scope !58794, !noalias !58763, !noundef !62 ; 2 uses
  %.not.i.i.i.i.i.i246 = icmp eq ptr %i.ty, null
  call void @llvm.experimental.noalias.scope.decl(metadata !58795)
  br i1 %.not.i.i.i.i.i.i246, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.val4.i.i.i.i.i.i.i247 = load ptr, ptr %i.rn, align 8, !alias.scope !58796, !noalias !58763, !nonnull !62, !align !67, !noundef !62
  %i.tz = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i.i.i247, i64 32
  %i.ua = load ptr, ptr %i.tz, align 8, !invariant.load !62, !noalias !58797, !nonnull !62
  invoke void %i.ua(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull %i.ty)
          to label %.noexc.i.i.i248 unwind label %bb.cj, !noalias !58798, !inline_history !58467

.noexc.i.i.i248:                                  ; preds = %bb.ce
  %.pre.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !58793
  %.pre76.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !range !70, !noalias !58793
  %.pre78.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert77.i.i.i.i.i.i, align 8, !noalias !58793
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i248, %bb.cd
  %i.ub = phi i64 [ %.pre78.i.i.i.i.i.i, %.noexc.i.i.i248 ], [ 0, %bb.cd ]
  %i.uc = phi i64 [ %.pre76.i.i.i.i.i.i, %.noexc.i.i.i248 ], [ 1, %bb.cd ] ; 2 uses
  %i.ud = phi i64 [ %.pre.i.i.i.i.i.i, %.noexc.i.i.i248 ], [ 0, %bb.cd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !58793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !58793
  %i.ue = load ptr, ptr %i.ro, align 8, !alias.scope !58794, !noalias !58763, !noundef !62 ; 2 uses
  %.not55.i.i.i.i.i.i249 = icmp eq ptr %i.ue, null
  call void @llvm.experimental.noalias.scope.decl(metadata !58799)
  br i1 %.not55.i.i.i.i.i.i249, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i
  %.val4.i65.i.i.i.i.i.i250 = load ptr, ptr %i.rp, align 8, !alias.scope !58800, !noalias !58763, !nonnull !62, !align !67, !noundef !62
  %i.uf = getelementptr inbounds nuw i8, ptr %.val4.i65.i.i.i.i.i.i250, i64 32
  %i.ug = load ptr, ptr %i.uf, align 8, !invariant.load !62, !noalias !58801, !nonnull !62
  invoke void %i.ug(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %i.ue)
          to label %.noexc6.i.i.i unwind label %bb.cj, !noalias !58798, !inline_history !58467

.noexc6.i.i.i:                                    ; preds = %bb.cf
  %.pre79.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !58793
  %.pre81.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert80.i.i.i.i.i.i, align 8, !range !70, !noalias !58793
  %.pre83.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert82.i.i.i.i.i.i, align 8, !noalias !58793
  %i.uh = call i64 @llvm.uadd.sat.i64(i64 %i.ud, i64 %.pre79.i.i.i.i.i.i)
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i.i.i: ; preds = %.noexc6.i.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i
  %i.ui = phi i64 [ %.pre83.i.i.i.i.i.i, %.noexc6.i.i.i ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ]
  %.fr1098 = phi i64 [ %.pre81.i.i.i.i.i.i, %.noexc6.i.i.i ], [ 1, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ] ; 2 uses
  %i.uj = phi i64 [ %i.uh, %.noexc6.i.i.i ], [ %i.ud, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !58793
  %i.uk = load ptr, ptr %i.rl, align 8, !alias.scope !58794, !noalias !58763, !noundef !62 ; 2 uses
  %.not56.i.i.i.i.i.i = icmp eq ptr %i.uk, null
  br i1 %.not56.i.i.i.i.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i.i.i
  %.val63.i.i.i.i.i.i = load ptr, ptr %i.rq, align 8, !alias.scope !58794, !noalias !58763, !nonnull !62, !noundef !62
  %i.ul = icmp eq ptr %.val63.i.i.i.i.i.i, %i.uk
  %i.um = trunc nuw i64 %i.uc to i1
  %i.un = trunc nuw i64 %.fr1098 to i1
  %op.rdx = select i1 %i.ul, i1 %i.um, i1 false
  %op.rdx1094 = select i1 %op.rdx, i1 %i.un, i1 false
  br i1 %op.rdx1094, label %bb.ci, label %bb.ck

bb.ch:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i.i.i
  %i.uo = and i64 %.fr1098, %i.uc
  %or.cond57.not.i.i.i.i.i.i = icmp eq i64 %i.uo, 0
  br i1 %or.cond57.not.i.i.i.i.i.i, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.up = add i64 %i.ui, %i.ub
  br label %bb.ck

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i, %bb.cc
  %i.uq = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i ], [ %i.tq, %bb.cc ] ; 2 uses
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.uq, i64 %.sroa.13.0.copyload
  store i64 %i.tt, ptr %i.ur, align 8, !noalias !58798
  %i.us = add nuw nsw i64 %.sroa.13.0.copyload, 1 ; 2 uses
  store i64 %i.us, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !58786, !noalias !58763
  br label %bb.ca

bb.cj:                                            ; preds = %bb.ck, %bb.cf, %bb.ce, %bb.ca
  %i.ut = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1L_NtB1L_13RowIdSequence4iter0EEB1N_(ptr noalias noundef readonly align 8 dereferenceable(48) %i.rl)
          to label %.body.i242 unwind label %bb.cl, !noalias !58785

bb.ck:                                            ; preds = %bb.ci, %bb.ch, %bb.cg
  %.sink87.i.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.7.i.i.i, %bb.ci ], [ %.sroa.5.i.i.i, %bb.ch ], [ %.sroa.5.i.i.i, %bb.cg ]
  %.sink.i.i.i.i.i.i = phi i64 [ %i.up, %bb.ci ], [ 0, %bb.ch ], [ 0, %bb.cg ]
  store i64 %.sink.i.i.i.i.i.i, ptr %.sink87.i.i.i.sroa.phi.i.i.i, align 8, !alias.scope !58802, !noalias !58798
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.uu = call i64 @llvm.uadd.sat.i64(i64 %i.uj, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %.sroa.13.0.copyload, i64 noundef %i.uu, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i unwind label %bb.cj, !noalias !58803

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i: ; preds = %bb.ck
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i241, align 8, !alias.scope !58786, !noalias !58763
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i

bb.cl:                                            ; preds = %bb.cj
  %i.uv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !58798
  unreachable

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2I_NtB2I_13RowIdSequence4iter0ENCNvNtNtB2K_11transaction11row_version31resolve_update_version_metadatas5_0EEB2K_.exit.i.i: ; preds = %bb.cb
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1L_NtB1L_13RowIdSequence4iter0EEB1N_(ptr noalias noundef readonly align 8 dereferenceable(48) %i.rl)
          to label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.peel.i unwind label %bb.cm, !noalias !58763

bb.cm:                                            ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2I_NtB2I_13RowIdSequence4iter0ENCNvNtNtB2K_11transaction11row_version31resolve_update_version_metadatas5_0EEB2K_.exit.i.i
  %i.uw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i242

.body.i242:                                       ; preds = %bb.cm, %bb.cj
  %eh.lpad-body.i243 = phi { ptr, i32 } [ %i.uw, %bb.cm ], [ %i.ut, %bb.cj ] ; 2 uses
  %.val.i244 = load i64, ptr %i.n, align 8, !noalias !58763 ; 2 uses
  %i.ux = icmp eq i64 %.val.i244, 0
  br i1 %i.ux, label %.body252, label %bb.cn

bb.cn:                                            ; preds = %.body.i242
  %.val7.i245 = load ptr, ptr %.sroa.4.0..sroa_idx.i241, align 8, !noalias !58763, !nonnull !62, !noundef !62
  %i.uy = shl nuw i64 %.val.i244, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i245, i64 noundef %i.uy, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !58763
  br label %.body252

bb.co:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.uz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !58763
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.br, %bb.bq, %bb.bn, %bb.by
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1L_NtB1L_13RowIdSequence4iter0EEB1N_(ptr noalias noundef readonly align 8 dereferenceable(48) %i.ri)
          to label %.body252 unwind label %bb.co, !noalias !58764

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.peel.i: ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB15_7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2I_NtB2I_13RowIdSequence4iter0ENCNvNtNtB2K_11transaction11row_version31resolve_update_version_metadatas5_0EEB2K_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !58763
  %.sroa.0444.0.copyload = load i64, ptr %i.n, align 8, !noalias !58762 ; 2 uses
  %.sroa.8445.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i241, align 8, !noalias !58762, !nonnull !62, !noundef !62 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !58763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.experimental.noalias.scope.decl(metadata !58804)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !58805
  store i64 0, ptr %i.h, align 8, !noalias !58805
  store ptr inttoptr (i64 8 to ptr), ptr %i.rr, align 8, !noalias !58805
  store i64 0, ptr %i.rs, align 8, !noalias !58805
  %i.va = load i64, ptr %.sroa.8445.0.copyload, align 8, !alias.scope !58804, !noundef !62 ; 4 uses
  %.idx754 = shl nuw nsw i64 %.sroa.13.0.copyload, 3
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.8445.0.copyload, i64 %.idx754
  %.not.i.not.i.peel.not.i = icmp eq i64 %.sroa.13.0.copyload, 1
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.8445.0.copyload, i64 16
  br i1 %.not.i.not.i.peel.not.i, label %.thread.i, label %bb.cp

.thread.i:                                        ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.peel.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !58805
  store i64 3, ptr %i.f, align 8, !noalias !58805
  store i64 0, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !58805
  store i64 1, ptr %.sroa.515.0..sroa_idx.i, align 8, !noalias !58805
  store i64 %i.va, ptr %i.ru, align 8, !noalias !58805
  br label %bb.cr

bb.cp:                                            ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.peel.i
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.8445.0.copyload, i64 8
  %i.ve = load i64, ptr %i.vd, align 8, !alias.scope !58804, !noundef !62 ; 2 uses
  %.not24.peel.i = icmp eq i64 %i.ve, %i.va
  br i1 %.not24.peel.i, label %.peel.next.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !58805
  store i64 3, ptr %i.g, align 8, !noalias !58805
  store i64 0, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !58805
  store i64 1, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !58805
  store i64 %i.va, ptr %i.rt, align 8, !noalias !58805
  call void @llvm.experimental.noalias.scope.decl(metadata !58806)
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9KQ7US1M400_11lance_table6rowids7version20RowDatasetVersionRunE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %._crit_edge43.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !58807

._crit_edge43.i:                                  ; preds = %bb.cq
  %.pre.i256 = load ptr, ptr %i.rr, align 8, !alias.scope !58806, !noalias !58805 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.pre.i256, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.g, i64 64, i1 false), !noalias !58808
  store i64 1, ptr %i.rs, align 8, !alias.scope !58806, !noalias !58805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !58805
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %._crit_edge43.i, %bb.cp
  %i.vf = phi ptr [ %.pre.i256, %._crit_edge43.i ], [ inttoptr (i64 8 to ptr), %bb.cp ] ; 2 uses
  %.sroa.03.1.peel.i = phi i64 [ 1, %._crit_edge43.i ], [ 0, %bb.cp ] ; 4 uses
  %.sroa.0.1.peel.i = phi i64 [ %i.ve, %._crit_edge43.i ], [ %i.va, %bb.cp ] ; 2 uses
  %i.vg = icmp eq i64 %.sroa.13.0.copyload, 2
  br i1 %i.vg, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.thread.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i

.body.i254:                                       ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.cs
  %.sink.i = phi ptr [ %i.f, %bb.cs ], [ %i.g, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  %eh.lpad-body.i255 = phi { ptr, i32 } [ %i.vo, %bb.cs ], [ %lpad.loopexit.split-lp1099, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %.sink.i), !noalias !58805
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7version20RowDatasetVersionRunEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.h) #81, !noalias !58805
  br label %.body258

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i: ; preds = %.peel.next.i, %bb.cw
  %.sroa.0.0.i257745 = phi i64 [ %.sroa.0.1.i, %bb.cw ], [ %.sroa.0.1.peel.i, %.peel.next.i ] ; 3 uses
  %.sroa.03.0.i744 = phi i64 [ %.sroa.03.1.i, %bb.cw ], [ %.sroa.03.1.peel.i, %.peel.next.i ] ; 2 uses
  %.sroa.0.033.i743 = phi ptr [ %i.vj, %bb.cw ], [ %i.vc, %.peel.next.i ] ; 2 uses
  %.sroa.10.0.i742 = phi i64 [ %i.vk, %bb.cw ], [ 2, %.peel.next.i ] ; 3 uses
  %i.vh = phi i64 [ %i.vv, %bb.cw ], [ %.sroa.03.1.peel.i, %.peel.next.i ] ; 4 uses
  %i.vi = phi ptr [ %i.vu, %bb.cw ], [ %i.vf, %.peel.next.i ] ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i743, i64 8 ; 2 uses
  %i.vk = add nuw nsw i64 %.sroa.10.0.i742, 1
  %i.vl = load i64, ptr %.sroa.0.033.i743, align 8, !alias.scope !58804, !noundef !62 ; 2 uses
  %.not24.i = icmp eq i64 %i.vl, %.sroa.0.0.i257745
  br i1 %.not24.i, label %bb.cw, label %bb.cu

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.thread.i: ; preds = %bb.cw, %.peel.next.i
  %.lcssa611 = phi ptr [ %i.vf, %.peel.next.i ], [ %i.vu, %bb.cw ]
  %.lcssa = phi i64 [ %.sroa.03.1.peel.i, %.peel.next.i ], [ %i.vv, %bb.cw ] ; 3 uses
  %.sroa.03.0.i.lcssa = phi i64 [ %.sroa.03.1.peel.i, %.peel.next.i ], [ %.sroa.03.1.i, %bb.cw ]
  %.sroa.0.0.i257.lcssa = phi i64 [ %.sroa.0.1.peel.i, %.peel.next.i ], [ %.sroa.0.1.i, %bb.cw ]
  %.pre46.i = load i64, ptr %i.h, align 8, !alias.scope !58809, !noalias !58805 ; 2 uses
  %i.vm = icmp eq i64 %.lcssa, %.pre46.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !58805
  store i64 3, ptr %i.f, align 8, !noalias !58805
  store i64 %.sroa.03.0.i.lcssa, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !58805
  store i64 %.sroa.13.0.copyload, ptr %.sroa.515.0..sroa_idx.i, align 8, !noalias !58805
  store i64 %.sroa.0.0.i257.lcssa, ptr %i.ru, align 8, !noalias !58805
  call void @llvm.experimental.noalias.scope.decl(metadata !58809)
  br i1 %i.vm, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.thread.i, %.thread.i
  %i.vn = phi i64 [ 0, %.thread.i ], [ %.lcssa, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.thread.i ]
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9KQ7US1M400_11lance_table6rowids7version20RowDatasetVersionRunE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %._crit_edge47.i unwind label %bb.cs, !noalias !58810

._crit_edge47.i:                                  ; preds = %bb.cr
  %.pre48.i = load ptr, ptr %i.rr, align 8, !alias.scope !58809, !noalias !58805
  %.sroa.0452.0.copyload453.pre = load i64, ptr %i.h, align 8, !noalias !58804
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.vo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i254

bb.ct:                                            ; preds = %._crit_edge47.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.thread.i
  %.sroa.0452.0.copyload453 = phi i64 [ %.sroa.0452.0.copyload453.pre, %._crit_edge47.i ], [ %.pre46.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.thread.i ]
  %i.vp = phi i64 [ %i.vn, %._crit_edge47.i ], [ %.lcssa, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.thread.i ] ; 2 uses
  %.sroa.6454.0.copyload456 = phi ptr [ %.pre48.i, %._crit_edge47.i ], [ %.lcssa611, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.thread.i ] ; 2 uses
  %i.vq = getelementptr inbounds nuw [64 x i8], ptr %.sroa.6454.0.copyload456, i64 %i.vp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.vq, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !58811
  %i.vr = add i64 %i.vp, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !58805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !58805
  br label %_RNvNtNtCs9KQ7US1M400_11lance_table11transaction11row_version19encode_version_runs.exit

bb.cu:                                            ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !58805
  store i64 3, ptr %i.g, align 8, !noalias !58805
  store i64 %.sroa.03.0.i744, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !58805
  store i64 %.sroa.10.0.i742, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !58805
end_hunk_1
begin_hunk_2_@_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtB2l_9enumerate9EnumerateINtNtNtB2p_5slice4iter4IterNtNtNtB1z_6rowids7segment10U64SegmentEEINtNtB6_5boxed3BoxDNtNtNtB2n_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B4a_NtB4a_13RowIdSeqSlice4iters0_0EEE9from_iterB1z_:bb.a
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.f ], [ 0, %bb.e ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.k) #80
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  store i64 %i.e, ptr %i.m, align 8
  store i64 %.sroa.0.0.i, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64182)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i, %bb.h
  %i.p = phi ptr [ %i.y, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i ], [ %i.m, %bb.h ]
  %i.q = phi i64 [ %i.aa, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i ], [ 1, %bb.h ] ; 5 uses
  %i.r = invoke fastcc { i64, i64 } @_RNvXs_NtCs9KQ7US1M400_11lance_table5utilsINtB4_9ExactSizeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtBY_9enumerate9EnumerateINtNtNtB12_5slice4iter4IterNtNtNtB6_6rowids7segment10U64SegmentEEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB10_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B2M_NtB2M_13RowIdSeqSlice4iters0_0EEB3U_4nextB6_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %bb.j unwind label %bb.l, !noalias !64183 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = extractvalue { i64, i64 } %i.r, 1
  %i.u = trunc nuw i64 %i.s to i1
  br i1 %i.u, label %bb.k, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtB1R_9enumerate9EnumerateINtNtNtB1V_5slice4iter4IterNtNtNtB15_6rowids7segment10U64SegmentEEINtNtB8_5boxed3BoxDNtNtNtB1T_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B3G_NtB3G_13RowIdSeqSlice4iters0_0EEEB15_.exit.i

bb.k:                                             ; preds = %bb.j
  %i.v = icmp samesign ult i64 %i.q, 1152921504606846976
  tail call void @llvm.assume(i1 %i.v)
  %i.w = load i64, ptr %i.b, align 8, !range !66, !alias.scope !64183, !noundef !62
  %i.x = icmp eq i64 %i.q, %i.w
  br i1 %i.x, label %bb.m, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge, %bb.k
  %i.y = phi ptr [ %.pre, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge ], [ %i.p, %bb.k ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.q
  store i64 %i.t, ptr %i.z, align 8, !noalias !64184
  %i.aa = add nuw nsw i64 %i.q, 1                 ; 2 uses
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !64183
  br label %bb.i

bb.l:                                             ; preds = %bb.m, %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB1s_9enumerate9EnumerateINtNtNtB4_5slice4iter4IterNtNtNtBG_6rowids7segment10U64SegmentEEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1u_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B30_NtB30_13RowIdSeqSlice4iters0_0EEEBG_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #81
          to label %.body unwind label %bb.n, !noalias !64183

bb.m:                                             ; preds = %bb.k
  %.val.i.i = load i64, ptr %i.o, align 8, !alias.scope !64185, !noundef !62
  %i.ac = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %i.ac, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge unwind label %bb.l, !noalias !64185

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge: ; preds = %bb.m
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !64183
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !64184
  unreachable

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtB1R_9enumerate9EnumerateINtNtNtB1V_5slice4iter4IterNtNtNtB15_6rowids7segment10U64SegmentEEINtNtB8_5boxed3BoxDNtNtNtB1T_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B3G_NtB3G_13RowIdSeqSlice4iters0_0EEEB15_.exit.i: ; preds = %bb.j
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB1s_9enumerate9EnumerateINtNtNtB4_5slice4iter4IterNtNtNtBG_6rowids7segment10U64SegmentEEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1u_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B30_NtB30_13RowIdSeqSlice4iters0_0EEEBG_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtB23_9enumerate9EnumerateINtNtNtB27_5slice4iter4IterNtNtNtB1h_6rowids7segment10U64SegmentEEINtNtB6_5boxed3BoxDNtNtNtB25_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B3S_NtB3S_13RowIdSeqSlice4iters0_0EEE11spec_extendB1h_.exit unwind label %bb.o

bb.o:                                             ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtB1R_9enumerate9EnumerateINtNtNtB1V_5slice4iter4IterNtNtNtB15_6rowids7segment10U64SegmentEEINtNtB8_5boxed3BoxDNtNtNtB1T_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B3G_NtB3G_13RowIdSeqSlice4iters0_0EEEB15_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.o ], [ %i.ab, %bb.l ] ; 2 uses
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.af = icmp eq i64 %.val, 0
  br i1 %i.af, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.body
  %.val7 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !62, !noundef !62
  %i.ag = shl nuw i64 %.val, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 8) #76
  br label %bb.r

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtB23_9enumerate9EnumerateINtNtNtB27_5slice4iter4IterNtNtNtB1h_6rowids7segment10U64SegmentEEINtNtB6_5boxed3BoxDNtNtNtB25_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B3S_NtB3S_13RowIdSeqSlice4iters0_0EEE11spec_extendB1h_.exit: ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtB1R_9enumerate9EnumerateINtNtNtB1V_5slice4iter4IterNtNtNtB15_6rowids7segment10U64SegmentEEINtNtB8_5boxed3BoxDNtNtNtB1T_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B3G_NtB3G_13RowIdSeqSlice4iters0_0EEEB15_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.q:                                             ; preds = %bb.s
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.r:                                             ; preds = %.body, %bb.p, %bb.s
  %.pn12 = phi { ptr, i32 } [ %i.ai, %bb.s ], [ %eh.lpad-body, %bb.p ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn12

bb.s:                                             ; preds = %bb.g, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9KQ7US1M400_11lance_table5utils9ExactSizeINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB1s_9enumerate9EnumerateINtNtNtB4_5slice4iter4IterNtNtNtBG_6rowids7segment10U64SegmentEEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1u_6traits8iterator8Iteratorp4ItemyEL_ENCNvMs5_B30_NtB30_13RowIdSeqSlice4iters0_0EEEBG_(ptr noalias noundef align 8 dereferenceable(80) %1) #81
          to label %bb.r unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1D_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB6_5boxed3BoxDNtNtNtB1B_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2V_NtB2V_13RowIdSequence4iter0EE9from_iterB2X_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i.i = alloca i64, align 8              ; 4 uses
  %.sroa.7.i.i = alloca i64, align 8              ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 12 uses
  %.sroa.5 = alloca i64, align 8                  ; 4 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = invoke fastcc { i64, i64 } @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENCNvMs1_B1V_NtB1V_13RowIdSequence4iter0EINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENtNtB48_8iterator8Iterator4nextB1X_(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1y_NtB1y_13RowIdSequence4iter0ENtNtB37_8iterator8Iterator4nextB1A_.exit unwind label %bb.ac ; 2 uses

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1y_NtB1y_13RowIdSequence4iter0ENtNtB37_8iterator8Iterator4nextB1A_.exit: ; preds = %bb.a
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1
  %i.j = trunc nuw i64 %i.h to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1y_NtB1y_13RowIdSequence4iter0ENtNtB37_8iterator8Iterator4nextB1A_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64254)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !64255
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !64256, !noundef !62 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64257)
  br i1 %.not.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !64258, !nonnull !62, !align !67, !noundef !62
  %i.n = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !62, !noalias !64259, !nonnull !62
  invoke void %i.o(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.l)
          to label %.noexc unwind label %bb.ac, !inline_history !64203

.noexc:                                           ; preds = %bb.c
  %.pre.i.i = load i64, ptr %i.d, align 8, !noalias !64255
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre76.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !range !70, !noalias !64255
  %.phi.trans.insert77.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre78.i.i = load i64, ptr %.phi.trans.insert77.i.i, align 8, !noalias !64255
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %.noexc, %bb.b
  %i.p = phi i64 [ %.pre78.i.i, %.noexc ], [ 0, %bb.b ]
  %i.q = phi i64 [ %.pre76.i.i, %.noexc ], [ 1, %bb.b ] ; 2 uses
  %i.r = phi i64 [ %.pre.i.i, %.noexc ], [ 0, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !64255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !64255
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !64256, !noundef !62 ; 2 uses
  %.not55.i.i = icmp eq ptr %i.t, null
  call void @llvm.experimental.noalias.scope.decl(metadata !64260)
  br i1 %.not55.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val4.i65.i.i = load ptr, ptr %i.u, align 8, !alias.scope !64261, !nonnull !62, !align !67, !noundef !62
  %i.v = getelementptr inbounds nuw i8, ptr %.val4.i65.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !62, !noalias !64262, !nonnull !62
  invoke void %i.w(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.t)
          to label %.noexc8 unwind label %bb.ac, !inline_history !64203

.noexc8:                                          ; preds = %bb.d
  %.pre79.i.i = load i64, ptr %i.c, align 8, !noalias !64255
  %.phi.trans.insert80.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre81.i.i = load i64, ptr %.phi.trans.insert80.i.i, align 8, !range !70, !noalias !64255
  %.phi.trans.insert82.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre83.i.i = load i64, ptr %.phi.trans.insert82.i.i, align 8, !noalias !64255
  %i.x = call i64 @llvm.uadd.sat.i64(i64 %i.r, i64 %.pre79.i.i)
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i: ; preds = %.noexc8, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i
  %i.y = phi i64 [ %.pre83.i.i, %.noexc8 ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i ]
  %.fr29 = phi i64 [ %.pre81.i.i, %.noexc8 ], [ 1, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i ] ; 2 uses
  %i.z = phi i64 [ %i.x, %.noexc8 ], [ %i.r, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !64255
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !64256, !noundef !62 ; 2 uses
  %.not56.i.i = icmp eq ptr %i.aa, null
  br i1 %.not56.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val63.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !64256, !nonnull !62, !noundef !62
  %i.ac = icmp eq ptr %.val63.i.i, %i.aa
  %i.ad = trunc nuw i64 %i.q to i1
  %i.ae = trunc nuw i64 %.fr29 to i1
  %op.rdx27 = select i1 %i.ac, i1 %i.ad, i1 false
  %op.rdx28 = select i1 %op.rdx27, i1 %i.ae, i1 false
  br i1 %op.rdx28, label %bb.g, label %bb.j

bb.f:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i
  %i.af = and i64 %.fr29, %i.q
  %or.cond57.not.i.i = icmp eq i64 %i.af, 0
  br i1 %or.cond57.not.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = add i64 %i.y, %i.p
  br label %bb.j

bb.h:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1y_NtB1y_13RowIdSequence4iter0ENtNtB37_8iterator8Iterator4nextB1A_.exit
  store i64 0, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ai, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1L_NtB1L_13RowIdSequence4iter0EEB1N_(ptr noalias noundef align 8 dereferenceable(48) %1)
  br label %bb.i

bb.i:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2D_NtB2D_13RowIdSequence4iter0EE11spec_extendB2F_.exit, %bb.h
  ret void

bb.j:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.sink87.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.g ], [ %.sroa.5, %bb.f ], [ %.sroa.5, %bb.e ]
  %.sink.i.i = phi i64 [ %i.ag, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink.i.i, ptr %.sink87.i.i.sroa.phi, align 8, !alias.scope !64263
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.aj = call i64 @llvm.uadd.sat.i64(i64 %i.z, i64 1) ; 2 uses
  %.sroa.0.0.i = call noundef i64 @llvm.umax.i64(i64 %i.aj, i64 4) ; 2 uses
  %i.ak = shl i64 %.sroa.0.0.i, 3                 ; 3 uses
  %i.al = icmp ugt i64 %i.aj, 2305843009213693951
  %.not.i.i9 = icmp ugt i64 %i.ak, 9223372036854775800
  %or.cond.i.i10 = or i1 %i.al, %.not.i.i9
  br i1 %or.cond.i.i10, label %bb.l, label %bb.k, !prof !63

bb.k:                                             ; preds = %bb.j
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !64264
  %i.am = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ak, i64 noundef range(i64 1, 9) 8) #76, !noalias !64264 ; 4 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.k ], [ 0, %bb.j ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.ak) #80
          to label %.noexc11 unwind label %bb.ac

.noexc11:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  store i64 %i.i, ptr %i.am, align 8
  store i64 %.sroa.0.0.i, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !64265)
  call void @llvm.experimental.noalias.scope.decl(metadata !64266)
  call void @llvm.experimental.noalias.scope.decl(metadata !64267)
  call void @llvm.experimental.noalias.scope.decl(metadata !64268)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.phi.trans.insert77.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.phi.trans.insert80.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.phi.trans.insert82.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i, %bb.m
  %i.at = phi ptr [ %i.bu, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i ], [ %i.am, %bb.m ]
  %i.au = phi i64 [ %i.bw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i ], [ 1, %bb.m ] ; 5 uses
  %i.av = invoke fastcc { i64, i64 } @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENCNvMs1_B1V_NtB1V_13RowIdSequence4iter0EINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENtNtB48_8iterator8Iterator4nextB1X_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1y_NtB1y_13RowIdSequence4iter0ENtNtB37_8iterator8Iterator4nextB1A_.exit.i.i unwind label %bb.v, !noalias !64269 ; 2 uses

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1y_NtB1y_13RowIdSequence4iter0ENtNtB37_8iterator8Iterator4nextB1A_.exit.i.i: ; preds = %bb.n
  %i.aw = extractvalue { i64, i64 } %i.av, 0
  %i.ax = extractvalue { i64, i64 } %i.av, 1
  %i.ay = trunc nuw i64 %i.aw to i1
  br i1 %i.ay, label %bb.o, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2r_NtB2r_13RowIdSequence4iter0EEB2t_.exit.i

bb.o:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1y_NtB1y_13RowIdSequence4iter0ENtNtB37_8iterator8Iterator4nextB1A_.exit.i.i
  %i.az = icmp samesign ult i64 %i.au, 1152921504606846976
  call void @llvm.assume(i1 %i.az)
  %i.ba = load i64, ptr %i.f, align 8, !range !66, !alias.scope !64269, !noundef !62
  %i.bb = icmp eq i64 %i.au, %i.ba
  br i1 %i.bb, label %bb.p, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !64270)
  call void @llvm.experimental.noalias.scope.decl(metadata !64271)
  call void @llvm.experimental.noalias.scope.decl(metadata !64272)
  call void @llvm.experimental.noalias.scope.decl(metadata !64273)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !64274
  %i.bc = load ptr, ptr %i.ao, align 8, !alias.scope !64275, !noundef !62 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  call void @llvm.experimental.noalias.scope.decl(metadata !64276)
  br i1 %.not.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val4.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !64277, !nonnull !62, !align !67, !noundef !62
  %i.bd = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !invariant.load !62, !noalias !64278, !nonnull !62
  invoke void %i.be(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.bc)
          to label %.noexc.i.i unwind label %bb.v, !noalias !64279, !inline_history !64203

.noexc.i.i:                                       ; preds = %bb.q
  %.pre.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !64274
  %.pre76.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !range !70, !noalias !64274
  %.pre78.i.i.i.i = load i64, ptr %.phi.trans.insert77.i.i.i.i, align 8, !noalias !64274
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i: ; preds = %.noexc.i.i, %bb.p
  %i.bf = phi i64 [ %.pre78.i.i.i.i, %.noexc.i.i ], [ 0, %bb.p ]
  %i.bg = phi i64 [ %.pre76.i.i.i.i, %.noexc.i.i ], [ 1, %bb.p ] ; 2 uses
  %i.bh = phi i64 [ %.pre.i.i.i.i, %.noexc.i.i ], [ 0, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !64274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !64274
  %i.bi = load ptr, ptr %i.aq, align 8, !alias.scope !64275, !noundef !62 ; 2 uses
  %.not55.i.i.i.i = icmp eq ptr %i.bi, null
  call void @llvm.experimental.noalias.scope.decl(metadata !64280)
  br i1 %.not55.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i
  %.val4.i65.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !64281, !nonnull !62, !align !67, !noundef !62
  %i.bj = getelementptr inbounds nuw i8, ptr %.val4.i65.i.i.i.i, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !invariant.load !62, !noalias !64282, !nonnull !62
  invoke void %i.bk(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.bi)
          to label %.noexc6.i.i unwind label %bb.v, !noalias !64279, !inline_history !64203

.noexc6.i.i:                                      ; preds = %bb.r
  %.pre79.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !64274
  %.pre81.i.i.i.i = load i64, ptr %.phi.trans.insert80.i.i.i.i, align 8, !range !70, !noalias !64274
  %.pre83.i.i.i.i = load i64, ptr %.phi.trans.insert82.i.i.i.i, align 8, !noalias !64274
  %i.bl = call i64 @llvm.uadd.sat.i64(i64 %i.bh, i64 %.pre79.i.i.i.i)
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i: ; preds = %.noexc6.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i
  %i.bm = phi i64 [ %.pre83.i.i.i.i, %.noexc6.i.i ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i ]
  %.fr30 = phi i64 [ %.pre81.i.i.i.i, %.noexc6.i.i ], [ 1, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i ] ; 2 uses
  %i.bn = phi i64 [ %i.bl, %.noexc6.i.i ], [ %i.bh, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !64274
  %i.bo = load ptr, ptr %i.e, align 8, !alias.scope !64275, !noundef !62 ; 2 uses
  %.not56.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not56.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i
  %.val63.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !64275, !nonnull !62, !noundef !62
  %i.bp = icmp eq ptr %.val63.i.i.i.i, %i.bo
  %i.bq = trunc nuw i64 %i.bg to i1
  %i.br = trunc nuw i64 %.fr30 to i1
  %op.rdx = select i1 %i.bp, i1 %i.bq, i1 false
  %op.rdx26 = select i1 %op.rdx, i1 %i.br, i1 false
  br i1 %op.rdx26, label %bb.u, label %bb.w

bb.t:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE6map_orTjIBw_jEENvYBJ_NtNtB1n_8iterator8Iterator9size_hintECs9KQ7US1M400_11lance_table.exit66.i.i.i.i
  %i.bs = and i64 %.fr30, %i.bg
  %or.cond57.not.i.i.i.i = icmp eq i64 %i.bs, 0
  br i1 %or.cond57.not.i.i.i.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bt = add i64 %i.bm, %i.bf
  br label %bb.w

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge, %bb.o
  %i.bu = phi ptr [ %.pre, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge ], [ %i.at, %bb.o ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.au
  store i64 %i.ax, ptr %i.bv, align 8, !noalias !64279
  %i.bw = add nuw nsw i64 %i.au, 1                ; 2 uses
  store i64 %i.bw, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !64269
  br label %bb.n

bb.v:                                             ; preds = %bb.w, %bb.r, %bb.q, %bb.n
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1L_NtB1L_13RowIdSequence4iter0EEB1N_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e) #81
          to label %.body unwind label %bb.x, !noalias !64269

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sink87.i.i.sroa.phi.i.i = phi ptr [ %.sroa.7.i.i, %bb.u ], [ %.sroa.5.i.i, %bb.t ], [ %.sroa.5.i.i, %bb.s ]
  %.sink.i.i.i.i = phi i64 [ %i.bt, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ]
  store i64 %.sink.i.i.i.i, ptr %.sink87.i.i.sroa.phi.i.i, align 8, !alias.scope !64283, !noalias !64279
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.by = call i64 @llvm.uadd.sat.i64(i64 %i.bn, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.au, i64 noundef %i.by, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge unwind label %bb.v, !noalias !64284

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge: ; preds = %bb.w
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !64269
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !64279
  unreachable

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2r_NtB2r_13RowIdSequence4iter0EEB2t_.exit.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1y_NtB1y_13RowIdSequence4iter0ENtNtB37_8iterator8Iterator4nextB1A_.exit.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1L_NtB1L_13RowIdSequence4iter0EEB1N_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2D_NtB2D_13RowIdSequence4iter0EE11spec_extendB2F_.exit unwind label %bb.y

bb.y:                                             ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2r_NtB2r_13RowIdSequence4iter0EEB2t_.exit.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.v, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.ca, %bb.y ], [ %i.bx, %bb.v ] ; 2 uses
  %.val = load i64, ptr %i.f, align 8             ; 2 uses
  %i.cb = icmp eq i64 %.val, 0
  br i1 %i.cb, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.body
  %.val7 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !62, !noundef !62
  %i.cc = shl nuw i64 %.val, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) 8) #76
  br label %bb.ab

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2D_NtB2D_13RowIdSequence4iter0EE11spec_extendB2F_.exit: ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtB19_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtB8_5boxed3BoxDNtNtNtB17_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B2r_NtB2r_13RowIdSequence4iter0EEB2t_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.aa:                                            ; preds = %bb.ac
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.ab:                                            ; preds = %.body, %bb.z, %bb.ac
  %.pn16 = phi { ptr, i32 } [ %i.ce, %bb.ac ], [ %eh.lpad-body, %bb.z ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn16

bb.ac:                                            ; preds = %bb.l, %bb.d, %bb.c, %bb.a
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtBI_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENCNvMs1_B1L_NtB1L_13RowIdSequence4iter0EEB1N_(ptr noalias noundef align 8 dereferenceable(48) %1) #81
          to label %bb.ab unwind label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define internal { i64, i64 } @_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator3nthCs9KQ7US1M400_11lance_table(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !62, !noundef !62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !62, !align !67, !noundef !62
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !62, !nonnull !62
  %i.f = tail call { i64, i64 } %i.e(ptr noundef nonnull %i.a, i64 noundef %1)
  ret { i64, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { i64, i64 } @_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator4nextCs9KQ7US1M400_11lance_table(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !62, !noundef !62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !62, !align !67, !noundef !62
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !62, !nonnull !62
  %i.f = tail call { i64, i64 } %i.e(ptr noundef nonnull %i.a)
  ret { i64, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_ENtNtBQ_8iterator8Iterator9size_hintCs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !62, !noundef !62
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !62, !align !67, !noundef !62
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !62, !nonnull !62
  tail call void %i.e(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs9KQ7US1M400_11lance_table11transaction5protoNtNtNtNtB6_6format2pb11transaction20DataReplacementGroupINtNtCscI6d9CVNmLh_4core7convert4FromRNtNtB4_9operation20DataReplacementGroupE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load i64, ptr %i.a, align 8, !noundef !62
  tail call void @_RNvXs1_NtNtCs9KQ7US1M400_11lance_table6format8fragmentNtNtB7_2pb8DataFileINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_8DataFileE4from(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.b, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB4_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %0, align 8, !range !80, !noundef !62 ; 3 uses
  %i.c = icmp ne i64 %i.b, -9223372036854775798
  tail call void @llvm.assume(i1 %i.c)
  %i.d = xor i64 %i.b, -9223372036854775808
  %i.e = icmp slt i64 %i.b, 0
  %i.f = select i1 %i.e, i64 %i.d, i64 10
  %i.g = load i64, ptr %1, align 8, !range !80, !noundef !62 ; 33 uses
  %i.h = icmp ne i64 %i.g, -9223372036854775798
  tail call void @llvm.assume(i1 %i.h)
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
  ]

bb.b:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = xor i64 %i.g, -9223372036854775808
  %i.j = icmp slt i64 %i.g, 0
  %i.k = select i1 %i.j, i64 %i.i, i64 10
  switch i64 %i.k, label %bb.b [
    i64 0, label %bb.s
    i64 1, label %_RINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB7_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecNtBZ_16DataOverlayGroupEB9_.exit
    i64 2, label %_RINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB7_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecNtBZ_16DataOverlayGroupEB9_.exit
    i64 3, label %_RINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB7_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecNtBZ_16DataOverlayGroupEB9_.exit
    i64 4, label %_RINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB7_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecNtBZ_16DataOverlayGroupEB9_.exit
    i64 5, label %_RINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB7_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecNtBZ_16DataOverlayGroupEB9_.exit
    i64 7, label %_RINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB7_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecNtBZ_16DataOverlayGroupEB9_.exit
    i64 8, label %_RINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB7_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecNtBZ_16DataOverlayGroupEB9_.exit
    i64 9, label %_RINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB7_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecNtBZ_16DataOverlayGroupEB9_.exit
    i64 10, label %_RINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB7_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecNtBZ_16DataOverlayGroupEB9_.exit
    i64 11, label %_RINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB7_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecNtBZ_16DataOverlayGroupEB9_.exit
    i64 12, label %_RINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB7_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecNtBZ_16DataOverlayGroupEB9_.exit
    i64 13, label %_RINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB7_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecNtBZ_16DataOverlayGroupEB9_.exit
    i64 14, label %_RINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB7_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecNtBZ_16DataOverlayGroupEB9_.exit
    i64 15, label %_RINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB7_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecNtBZ_16DataOverlayGroupEB9_.exit
    i64 6, label %bb.t
  ]

bb.d:                                             ; preds = %bb.a
  %i.l = xor i64 %i.g, -9223372036854775808
  %i.m = icmp slt i64 %i.g, 0
  %i.n = select i1 %i.m, i64 %i.l, i64 10
  switch i64 %i.n, label %bb.b [
    i64 0, label %_RINvNvXNtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB7_9operation9OperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq11compare_vecNtBZ_16DataOverlayGroupEB9_.exit
end_hunk_2
