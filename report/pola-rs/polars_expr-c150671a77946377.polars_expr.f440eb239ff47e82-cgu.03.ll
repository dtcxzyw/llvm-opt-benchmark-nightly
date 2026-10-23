Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.03?download=true
inline.NumInlined: 7491
inline.NumDeleted: 2575
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16B14_EINtNtB6_8no_nulls23RollingAggWindowNoNullsB14_E6updateCskY9G75ZWc4U_11polars_expr:bb.a
  br i1 %i.ac, label %._crit_edge18, label %.lr.ph17, !dbg !178624

._crit_edge18:                                    ; preds = %.lr.ph17, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !178602
  store i64 %1, ptr %i.ad, align 8, !dbg !178630
  store i64 %2, ptr %i.a, align 8, !dbg !178631
  ret void, !dbg !178632
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16B14_EINtNtB6_8no_nulls23RollingAggWindowNoNullsB14_E7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1) unnamed_addr #0 !dbg !178633 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !178638
  %i.b = load i64, ptr %i.a, align 8, !dbg !178638, !alias.scope !178637, !noundef !3817 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !178638
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !178638

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !178639
  %i.e = load i16, ptr %i.d, align 8, !dbg !178639, !alias.scope !178637, !noundef !3817
  %i.f = tail call fastcc i16 @_RINvXNvNtCs2mZqlW55729_12polars_utils7float16s3_1__NtB5_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast7NumCast4fromBN_ECskY9G75ZWc4U_11polars_expr(i16 noundef %i.e) #46, !dbg !178640
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16B12_E7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !178641

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !178642
  %i.h = load i64, ptr %i.g, align 8, !dbg !178642, !alias.scope !178637, !noundef !3817
  %i.i = icmp eq i64 %i.b, %i.h, !dbg !178643
  br i1 %i.i, label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16B12_E7get_sumCskY9G75ZWc4U_11polars_expr.exit, label %bb.d, !dbg !178643

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !178644
  %i.k = load i64, ptr %i.j, align 8, !dbg !178644, !alias.scope !178637, !noundef !3817
  %i.l = icmp eq i64 %i.b, %i.k, !dbg !178645
  %spec.select.i = select i1 %i.l, i16 -1024, i16 32256, !dbg !178645
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16B12_E7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !178645

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16B12_E7get_sumCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.5.0.i = phi i16 [ %i.f, %bb.b ], [ 31744, %bb.c ], [ %spec.select.i, %bb.d ], !dbg !178646
  %i.m = insertvalue { i16, i16 } { i16 1, i16 undef }, i16 %.sroa.5.0.i, 1, !dbg !178647
  ret { i16, i16 } %i.m, !dbg !178648
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dEINtNtB6_8no_nulls23RollingAggWindowNoNullsB14_E6updateCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !178649 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !178709 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !178709, !noundef !3817 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !178710
  br i1 %.not, label %._crit_edge19, label %bb.b, !dbg !178710

._crit_edge19:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !178711
  br label %bb.c, !dbg !178710

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !178712
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false), !dbg !178713, !alias.scope !178678
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !178714
  store i64 %1, ptr %i.d, align 8, !dbg !178714
  store i64 %1, ptr %i.a, align 8, !dbg !178715
  br label %bb.c, !dbg !178716

bb.c:                                             ; preds = %._crit_edge19, %bb.b
  %i.e = phi i64 [ %i.b, %._crit_edge19 ], [ %1, %bb.b ]
  %i.f = phi i64 [ %.pre, %._crit_edge19 ], [ %1, %bb.b ], !dbg !178711 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !178717 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !178717, !noundef !3817 ; 3 uses
  %i.i = icmp ult i64 %1, %i.f, !dbg !178718
  %.not11 = icmp ugt i64 %1, %i.h
  %or.cond = or i1 %.not11, %i.i, !dbg !178718
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !178718, !prof !4246

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !dbg !178717, !nonnull !3817, !align !4617, !noundef !3817 ; 2 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %1, !dbg !178719
  %i.l = icmp samesign eq i64 %i.f, %1, !dbg !178720
  br i1 %i.l, label %._crit_edge, label %.lr.ph.preheader, !dbg !178688

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.f, !dbg !178721
  br label %.lr.ph, !dbg !178688

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %1, i64 noundef %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !178722
  unreachable, !dbg !178722

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.03.014 = phi ptr [ %i.n, %.lr.ph ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 2, !dbg !178723 ; 2 uses
  %i.o = load i16, ptr %.sroa.03.014, align 2, !dbg !178724, !noundef !3817
  tail call fastcc void @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dE3subCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(96) %0, i16 noundef %i.o), !dbg !178725
  %i.p = icmp eq ptr %i.n, %i.k, !dbg !178720
  br i1 %i.p, label %._crit_edge.loopexit, label %.lr.ph, !dbg !178688

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre20 = load i64, ptr %i.g, align 8, !dbg !178726
  %.pre21 = load i64, ptr %i.a, align 8, !dbg !178727
  br label %._crit_edge, !dbg !178726

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.q = phi i64 [ %.pre21, %._crit_edge.loopexit ], [ %i.e, %bb.d ], !dbg !178727 ; 4 uses
  %i.r = phi i64 [ %.pre20, %._crit_edge.loopexit ], [ %i.h, %bb.d ], !dbg !178726 ; 2 uses
  %i.s = icmp ult i64 %2, %i.q, !dbg !178728
  %.not12 = icmp ugt i64 %2, %i.r
  %or.cond13 = or i1 %.not12, %i.s, !dbg !178728
  br i1 %or.cond13, label %bb.g, label %bb.f, !dbg !178728, !prof !4246

bb.f:                                             ; preds = %._crit_edge
  %i.t = load ptr, ptr %0, align 8, !dbg !178726, !nonnull !3817, !align !4617, !noundef !3817 ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %2, !dbg !178729
  %i.v = icmp samesign eq i64 %i.q, %2, !dbg !178730
  br i1 %i.v, label %._crit_edge18, label %.lr.ph17.preheader, !dbg !178731

.lr.ph17.preheader:                               ; preds = %bb.f
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.q, !dbg !178732
  br label %.lr.ph17, !dbg !178731

bb.g:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.q, i64 noundef %2, i64 noundef %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !178733
  unreachable, !dbg !178733

.lr.ph17:                                         ; preds = %.lr.ph17.preheader, %.lr.ph17
  %.sroa.06.015 = phi ptr [ %i.x, %.lr.ph17 ], [ %i.w, %.lr.ph17.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 2, !dbg !178734 ; 2 uses
  %i.y = load i16, ptr %.sroa.06.015, align 2, !dbg !178735, !noundef !3817
  tail call fastcc void @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dE3addCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(96) %0, i16 noundef %i.y), !dbg !178736
  %i.z = icmp eq ptr %i.x, %i.u, !dbg !178730
  br i1 %i.z, label %._crit_edge18, label %.lr.ph17, !dbg !178731

._crit_edge18:                                    ; preds = %.lr.ph17, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !178711
  store i64 %1, ptr %i.aa, align 8, !dbg !178737
  store i64 %2, ptr %i.a, align 8, !dbg !178738
  ret void, !dbg !178739
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowaaEINtNtB6_8no_nulls23RollingAggWindowNoNullsaE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !178740 {
bb.a:
  %.not11.i = icmp ugt i64 %3, %2
  br i1 %.not11.i, label %bb.b, label %._crit_edge.i, !dbg !178765, !prof !4246

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !178766, !noalias !178764
  unreachable, !dbg !178766

._crit_edge.i:                                    ; preds = %bb.a
  %i.a = icmp ult i64 %4, %3, !dbg !178767
  %.not12.i = icmp ugt i64 %4, %2
  %or.cond13.i = or i1 %.not12.i, %i.a, !dbg !178767
  br i1 %or.cond13.i, label %bb.d, label %bb.c, !dbg !178767, !prof !4246

bb.c:                                             ; preds = %._crit_edge.i
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %4, !dbg !178768
  %i.c = icmp samesign eq i64 %3, %4, !dbg !178769
  br i1 %i.c, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowaaEINtNtB6_8no_nulls23RollingAggWindowNoNullsaE6updateCskY9G75ZWc4U_11polars_expr.exit, label %iter.check, !dbg !178770

iter.check:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %3, !dbg !178771 ; 5 uses
  %i.e = sub i64 %4, %3, !dbg !178770             ; 7 uses
  %min.iters.check = icmp ult i64 %i.e, 8, !dbg !178770
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !178770

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check8 = icmp ult i64 %i.e, 32, !dbg !178770
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !178770

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %i.e, 24
  %n.vec = and i64 %i.e, -32                      ; 4 uses
  %i.g = getelementptr i8, ptr %i.d, i64 %n.vec
  br label %vector.body, !dbg !178770

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi9 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.d, i64 %index ; 2 uses
  %i.h = getelementptr i8, ptr %next.gep, i64 16, !dbg !178772
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !dbg !178772, !noalias !178764
  %wide.load10 = load <16 x i8>, ptr %i.h, align 1, !dbg !178772, !noalias !178764
  %i.i = add <16 x i8> %wide.load, %vec.phi, !dbg !178773 ; 2 uses
  %i.j = add <16 x i8> %wide.load10, %vec.phi9, !dbg !178773 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !178770
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !178770, !llvm.loop !178760

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i8> %i.j, %i.i, !dbg !178770
  %i.l = tail call i8 @llvm.vector.reduce.add.v16i8(<16 x i8> %bin.rdx), !dbg !178770 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !178770
  br i1 %cmp.n, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowaaEINtNtB6_8no_nulls23RollingAggWindowNoNullsaE6updateCskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.iter.check, !dbg !178770

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !5309

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.l, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !178774
  %n.vec11 = and i64 %i.e, -8                     ; 3 uses
  %i.m = getelementptr i8, ptr %i.d, i64 %n.vec11
  %i.n = insertelement <8 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi13 = phi <8 x i8> [ %i.n, %vec.epilog.ph ], [ %i.o, %vec.epilog.vector.body ]
  %next.gep14 = getelementptr i8, ptr %i.d, i64 %index12
  %wide.load15 = load <8 x i8>, ptr %next.gep14, align 1, !dbg !178772, !noalias !178764
  %i.o = add <8 x i8> %wide.load15, %vec.phi13, !dbg !178773 ; 2 uses
  %index.next16 = add nuw i64 %index12, 8         ; 2 uses
  %i.p = icmp eq i64 %index.next16, %n.vec11, !dbg !178770
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !178770, !llvm.loop !178762

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.q = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %i.o), !dbg !178770 ; 2 uses
  %cmp.n17 = icmp eq i64 %i.e, %n.vec11, !dbg !178770
  br i1 %cmp.n17, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowaaEINtNtB6_8no_nulls23RollingAggWindowNoNullsaE6updateCskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph.preheader, !dbg !178770

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ 0, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ]
  %.sroa.06.015.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.g, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !178770

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !178775, !noalias !178764
  unreachable, !dbg !178775

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.r = phi i8 [ %i.u, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !178774
  %.sroa.06.015.i = phi ptr [ %i.s, %vec.epilog.scalar.ph ], [ %.sroa.06.015.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 1, !dbg !178774 ; 2 uses
  %i.t = load i8, ptr %.sroa.06.015.i, align 1, !dbg !178772, !noalias !178764, !noundef !3817
  %i.u = add i8 %i.t, %i.r, !dbg !178773          ; 2 uses
  %i.v = icmp eq ptr %i.s, %i.b, !dbg !178769
  br i1 %i.v, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowaaEINtNtB6_8no_nulls23RollingAggWindowNoNullsaE6updateCskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !178770, !llvm.loop !178763

_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowaaEINtNtB6_8no_nulls23RollingAggWindowNoNullsaE6updateCskY9G75ZWc4U_11polars_expr.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %.sroa.16.2 = phi i8 [ 0, %bb.c ], [ %i.q, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.u, %vec.epilog.scalar.ph ], !dbg !178776
  store ptr %1, ptr %0, align 8, !dbg !178777
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !178777
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !178777
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !178777
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !178777
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i8 0, i64 40, i1 false), !dbg !178777
  store i64 %3, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !178777
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !178777
  store i64 %4, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !178777
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !178777
  store i8 %.sroa.16.2, ptr %.sroa.16.0..sroa_idx, align 8, !dbg !178777
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73, !dbg !178777
  store i8 0, ptr %.sroa.21.0..sroa_idx, align 1, !dbg !178777
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 74, !dbg !178777
  store i8 0, ptr %.sroa.22.0..sroa_idx, align 2, !dbg !178777
  ret void, !dbg !178778
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowaaEINtNtB6_8no_nulls23RollingAggWindowNoNullsaE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3148 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !178833 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !178833, !noundef !3817 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !178834
  br i1 %.not, label %._crit_edge22, label %bb.b, !dbg !178834

._crit_edge22:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !178835
  br label %bb.c, !dbg !178834

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !178836
  store i8 0, ptr %i.c, align 8, !dbg !178836, !alias.scope !178807
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 73, !dbg !178837
  store i8 0, ptr %i.d, align 1, !dbg !178837, !alias.scope !178807
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 74, !dbg !178838
  store i8 0, ptr %i.e, align 2, !dbg !178838, !alias.scope !178807
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !178839
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !dbg !178839, !alias.scope !178807
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !178840
  store i64 %1, ptr %i.g, align 8, !dbg !178840
  store i64 %1, ptr %i.a, align 8, !dbg !178841
  br label %bb.c, !dbg !178842

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.h = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 5 uses
  %i.i = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !178835 ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !dbg !178843, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !178843
  %i.l = load i64, ptr %i.k, align 8, !dbg !178843, !noundef !3817 ; 4 uses
  %i.m = icmp ult i64 %1, %i.i, !dbg !178844
  %.not11 = icmp ugt i64 %1, %i.l
  %or.cond = or i1 %.not11, %i.m, !dbg !178844
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !178844, !prof !4246

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %1, !dbg !178845
  %i.o = icmp samesign eq i64 %i.i, %1, !dbg !178846
  br i1 %i.o, label %bb.f, label %iter.check, !dbg !178817

iter.check:                                       ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i, !dbg !178847 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load i8, ptr %i.q, align 8, !alias.scope !178819 ; 3 uses
  %i.r = sub i64 %1, %i.i, !dbg !178817           ; 7 uses
  %min.iters.check = icmp ult i64 %i.r, 8, !dbg !178817
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !178817

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check30 = icmp ult i64 %i.r, 32, !dbg !178817
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph, !dbg !178817

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.s = and i64 %i.r, 24
  %n.vec = and i64 %i.r, -32                      ; 4 uses
  %i.t = getelementptr i8, ptr %i.p, i64 %n.vec
  %i.u = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.promoted, i64 0
  br label %vector.body, !dbg !178817

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %i.u, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi31 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.p, i64 %index ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep, i64 16, !dbg !178848
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !dbg !178848
  %wide.load32 = load <16 x i8>, ptr %i.v, align 1, !dbg !178848
  %i.w = sub <16 x i8> %vec.phi, %wide.load, !dbg !178849 ; 2 uses
  %i.x = sub <16 x i8> %vec.phi31, %wide.load32, !dbg !178849 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec, !dbg !178817
  br i1 %i.y, label %middle.block, label %vector.body, !dbg !178817, !llvm.loop !178795

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i8> %i.x, %i.w, !dbg !178817
  %i.z = tail call i8 @llvm.vector.reduce.add.v16i8(<16 x i8> %bin.rdx), !dbg !178817 ; 3 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec, !dbg !178817
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !178817

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !5309

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.z, %vec.epilog.iter.check ], [ %.promoted, %vector.main.loop.iter.check ], !dbg !178850
  %n.vec33 = and i64 %i.r, -8                     ; 3 uses
  %i.aa = getelementptr i8, ptr %i.p, i64 %n.vec33
  %i.ab = insertelement <8 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi35 = phi <8 x i8> [ %i.ab, %vec.epilog.ph ], [ %i.ac, %vec.epilog.vector.body ]
  %next.gep36 = getelementptr i8, ptr %i.p, i64 %index34
  %wide.load37 = load <8 x i8>, ptr %next.gep36, align 1, !dbg !178848
  %i.ac = sub <8 x i8> %vec.phi35, %wide.load37, !dbg !178849 ; 2 uses
  %index.next38 = add nuw i64 %index34, 8         ; 2 uses
  %i.ad = icmp eq i64 %index.next38, %n.vec33, !dbg !178817
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !178817, !llvm.loop !178796

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ae = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %i.ac), !dbg !178817 ; 2 uses
  %cmp.n39 = icmp eq i64 %i.r, %n.vec33, !dbg !178817
  br i1 %cmp.n39, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !178817

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph80 = phi i8 [ %.promoted, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  %.sroa.03.014.ph = phi ptr [ %i.p, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !178817

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %1, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !178851
  unreachable, !dbg !178851

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.af = phi i8 [ %i.ai, %vec.epilog.scalar.ph ], [ %.ph80, %vec.epilog.scalar.ph.preheader ], !dbg !178850
  %.sroa.03.014 = phi ptr [ %i.ag, %vec.epilog.scalar.ph ], [ %.sroa.03.014.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 1, !dbg !178850 ; 2 uses
  %i.ah = load i8, ptr %.sroa.03.014, align 1, !dbg !178848, !noundef !3817
  %i.ai = sub i8 %i.af, %i.ah, !dbg !178849       ; 2 uses
  %i.aj = icmp eq ptr %i.ag, %i.n, !dbg !178846
  br i1 %i.aj, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !178817, !llvm.loop !178797

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa29 = phi i8 [ %i.ae, %vec.epilog.middle.block ], [ %i.z, %middle.block ], [ %i.ai, %vec.epilog.scalar.ph ], !dbg !178849
  store i8 %.lcssa29, ptr %i.q, align 8, !dbg !178849, !alias.scope !178819
  br label %bb.f, !dbg !178817

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.ak = icmp ult i64 %2, %i.h, !dbg !178852
  %.not12 = icmp ugt i64 %2, %i.l
  %or.cond13 = or i1 %.not12, %i.ak, !dbg !178852
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !178852, !prof !4246

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 %2, !dbg !178853
  %i.am = icmp samesign eq i64 %i.h, %2, !dbg !178854
  br i1 %i.am, label %bb.i, label %iter.check60, !dbg !178855

iter.check60:                                     ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h, !dbg !178856 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted19 = load i8, ptr %i.ao, align 8, !alias.scope !178831 ; 3 uses
  %i.ap = sub i64 %2, %i.h, !dbg !178855          ; 7 uses
  %min.iters.check42 = icmp ult i64 %i.ap, 8, !dbg !178855
  br i1 %min.iters.check42, label %vec.epilog.scalar.ph61.preheader, label %vector.main.loop.iter.check43, !dbg !178855

vector.main.loop.iter.check43:                    ; preds = %iter.check60
  %min.iters.check44 = icmp ult i64 %i.ap, 32, !dbg !178855
  br i1 %min.iters.check44, label %vec.epilog.ph64, label %vector.ph45, !dbg !178855

vector.ph45:                                      ; preds = %vector.main.loop.iter.check43
  %i.aq = and i64 %i.ap, 24
  %n.vec46 = and i64 %i.ap, -32                   ; 4 uses
  %i.ar = getelementptr i8, ptr %i.an, i64 %n.vec46
  %i.as = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.promoted19, i64 0
  br label %vector.body47, !dbg !178855

vector.body47:                                    ; preds = %vector.ph45, %vector.body47
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next54, %vector.body47 ] ; 2 uses
  %vec.phi49.a = phi <16 x i8> [ %i.as, %vector.ph45 ], [ %i.au, %vector.body47 ]
  %vec.phi50 = phi <16 x i8> [ zeroinitializer, %vector.ph45 ], [ %i.av, %vector.body47 ]
  %next.gep51 = getelementptr i8, ptr %i.an, i64 %index48 ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep51, i64 16, !dbg !178857
  %wide.load52.a = load <16 x i8>, ptr %next.gep51, align 1, !dbg !178857
  %wide.load53 = load <16 x i8>, ptr %i.at, align 1, !dbg !178857
  %i.au = add <16 x i8> %vec.phi49.a, %wide.load52.a, !dbg !178858 ; 2 uses
  %i.av = add <16 x i8> %vec.phi50, %wide.load53, !dbg !178858 ; 2 uses
  %index.next54 = add nuw i64 %index48, 32        ; 2 uses
  %i.aw = icmp eq i64 %index.next54, %n.vec46, !dbg !178855
  br i1 %i.aw, label %middle.block55, label %vector.body47, !dbg !178855, !llvm.loop !178804

middle.block55:                                   ; preds = %vector.body47
  %bin.rdx56 = add <16 x i8> %i.av, %i.au, !dbg !178855
  %i.ax = tail call i8 @llvm.vector.reduce.add.v16i8(<16 x i8> %bin.rdx56), !dbg !178855 ; 3 uses
  %cmp.n57 = icmp eq i64 %i.ap, %n.vec46, !dbg !178855
  br i1 %cmp.n57, label %._crit_edge18, label %vec.epilog.iter.check62, !dbg !178855

vec.epilog.iter.check62:                          ; preds = %middle.block55
  %min.epilog.iters.check63 = icmp eq i64 %i.aq, 0
  br i1 %min.epilog.iters.check63, label %vec.epilog.scalar.ph61.preheader, label %vec.epilog.ph64, !prof !5309

vec.epilog.ph64:                                  ; preds = %vector.main.loop.iter.check43, %vec.epilog.iter.check62
  %vec.epilog.resume.val58 = phi i64 [ %n.vec46, %vec.epilog.iter.check62 ], [ 0, %vector.main.loop.iter.check43 ]
  %bc.merge.rdx59 = phi i8 [ %i.ax, %vec.epilog.iter.check62 ], [ %.promoted19, %vector.main.loop.iter.check43 ], !dbg !178859
  %n.vec65 = and i64 %i.ap, -8                    ; 3 uses
  %i.ay = getelementptr i8, ptr %i.an, i64 %n.vec65
  %i.az = insertelement <8 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx59, i64 0
  br label %vec.epilog.vector.body66

vec.epilog.vector.body66:                         ; preds = %vec.epilog.vector.body66, %vec.epilog.ph64
  %index67 = phi i64 [ %vec.epilog.resume.val58, %vec.epilog.ph64 ], [ %index.next71, %vec.epilog.vector.body66 ] ; 2 uses
  %vec.phi68 = phi <8 x i8> [ %i.az, %vec.epilog.ph64 ], [ %i.ba, %vec.epilog.vector.body66 ]
  %next.gep69 = getelementptr i8, ptr %i.an, i64 %index67
  %wide.load70 = load <8 x i8>, ptr %next.gep69, align 1, !dbg !178857
  %i.ba = add <8 x i8> %vec.phi68, %wide.load70, !dbg !178858 ; 2 uses
  %index.next71 = add nuw i64 %index67, 8         ; 2 uses
  %i.bb = icmp eq i64 %index.next71, %n.vec65, !dbg !178855
  br i1 %i.bb, label %vec.epilog.middle.block72, label %vec.epilog.vector.body66, !dbg !178855, !llvm.loop !178805

vec.epilog.middle.block72:                        ; preds = %vec.epilog.vector.body66
  %i.bc = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %i.ba), !dbg !178855 ; 2 uses
  %cmp.n73 = icmp eq i64 %i.ap, %n.vec65, !dbg !178855
  br i1 %cmp.n73, label %._crit_edge18, label %vec.epilog.scalar.ph61.preheader, !dbg !178855

vec.epilog.scalar.ph61.preheader:                 ; preds = %iter.check60, %vec.epilog.iter.check62, %vec.epilog.middle.block72
  %.ph = phi i8 [ %.promoted19, %iter.check60 ], [ %i.ax, %vec.epilog.iter.check62 ], [ %i.bc, %vec.epilog.middle.block72 ]
  %.sroa.06.015.ph = phi ptr [ %i.an, %iter.check60 ], [ %i.ar, %vec.epilog.iter.check62 ], [ %i.ay, %vec.epilog.middle.block72 ]
  br label %vec.epilog.scalar.ph61, !dbg !178855

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %2, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !178860
  unreachable, !dbg !178860

vec.epilog.scalar.ph61:                           ; preds = %vec.epilog.scalar.ph61.preheader, %vec.epilog.scalar.ph61
  %i.bd = phi i8 [ %i.bg, %vec.epilog.scalar.ph61 ], [ %.ph, %vec.epilog.scalar.ph61.preheader ], !dbg !178859
  %.sroa.06.015 = phi ptr [ %i.be, %vec.epilog.scalar.ph61 ], [ %.sroa.06.015.ph, %vec.epilog.scalar.ph61.preheader ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 1, !dbg !178859 ; 2 uses
  %i.bf = load i8, ptr %.sroa.06.015, align 1, !dbg !178857, !noundef !3817
  %i.bg = add i8 %i.bd, %i.bf, !dbg !178858       ; 2 uses
  %i.bh = icmp eq ptr %i.be, %i.al, !dbg !178854
  br i1 %i.bh, label %._crit_edge18, label %vec.epilog.scalar.ph61, !dbg !178855, !llvm.loop !178806

._crit_edge18:                                    ; preds = %vec.epilog.scalar.ph61, %vec.epilog.middle.block72, %middle.block55
  %.lcssa = phi i8 [ %i.bc, %vec.epilog.middle.block72 ], [ %i.ax, %middle.block55 ], [ %i.bg, %vec.epilog.scalar.ph61 ], !dbg !178858
  store i8 %.lcssa, ptr %i.ao, align 8, !dbg !178858, !alias.scope !178831
  br label %bb.i, !dbg !178855

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !178835
  store i64 %1, ptr %i.bi, align 8, !dbg !178861
  store i64 %2, ptr %i.a, align 8, !dbg !178862
  ret void, !dbg !178863
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowaaEINtNtB6_8no_nulls23RollingAggWindowNoNullsaE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !178864 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178868), !dbg !178869
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !178870
  %i.b = load i64, ptr %i.a, align 8, !dbg !178870, !alias.scope !178868, !noundef !3817 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !178870
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !178870

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !178871
  %i.e = load i8, ptr %i.d, align 8, !dbg !178871, !alias.scope !178868, !noundef !3817
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowaaE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !178872

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !178873
  %i.g = load i64, ptr %i.f, align 8, !dbg !178873, !alias.scope !178868, !noundef !3817
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !178874
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !178874

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !178875
  %i.j = load i64, ptr %i.i, align 8, !dbg !178875, !alias.scope !178868, !noundef !3817
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !178876
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !178876

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i8 @_RNvYaNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !178877, !noalias !178868
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowaaE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !178878

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i8 @_RNvYaNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCskY9G75ZWc4U_11polars_expr(), !dbg !178879, !noalias !178868
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowaaE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !178880

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i8 @_RNvYaNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !178881, !noalias !178868
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowaaE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !178880

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowaaE7get_sumCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i8 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !178882
  %i.o = insertvalue { i1, i8 } { i1 true, i8 undef }, i8 %.sroa.5.0.i, 1, !dbg !178883
  ret { i1, i8 } %i.o, !dbg !178884
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowddEINtNtB6_8no_nulls23RollingAggWindowNoNullsdE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 !dbg !178885 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !178891
  store ptr %1, ptr %i.a, align 8, !dbg !178892, !alias.scope !178890
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !178892
  store i64 %2, ptr %i.b, align 8, !dbg !178892, !alias.scope !178890
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !178892
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i8 0, i64 80, i1 false), !dbg !178892
  call void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowddEINtNtB6_8no_nulls23RollingAggWindowNoNullsdE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.a, i64 noundef %3, i64 noundef %4), !dbg !178893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !dbg !178894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !178895
  ret void, !dbg !178896
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowddEINtNtB6_8no_nulls23RollingAggWindowNoNullsdE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !178897 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !178992 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !178992, !noundef !3817 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !178993
  br i1 %.not, label %._crit_edge28, label %bb.b, !dbg !178993

._crit_edge28:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !178994
  br label %bb.c, !dbg !178993

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !178995
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false), !dbg !178996, !alias.scope !178957
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !178997
  store i64 %1, ptr %i.d, align 8, !dbg !178997
  store i64 %1, ptr %i.a, align 8, !dbg !178998
  br label %bb.c, !dbg !178999

bb.c:                                             ; preds = %._crit_edge28, %bb.b
  %i.e = phi i64 [ %i.b, %._crit_edge28 ], [ %1, %bb.b ] ; 4 uses
  %i.f = phi i64 [ %.pre, %._crit_edge28 ], [ %1, %bb.b ], !dbg !178994 ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !dbg !179000, !nonnull !3817, !align !3993, !noundef !3817 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !179000
  %i.i = load i64, ptr %i.h, align 8, !dbg !179000, !noundef !3817 ; 4 uses
  %i.j = icmp ult i64 %1, %i.f, !dbg !179001
  %.not11 = icmp ugt i64 %1, %i.i
  %or.cond = or i1 %.not11, %i.j, !dbg !179001
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !179001, !prof !4246

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %1, !dbg !179002
  %i.l = icmp samesign eq i64 %i.f, %1, !dbg !179003
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !178967

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f, !dbg !179004
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.promoted = load double, ptr %i.n, align 8
  %.promoted15 = load double, ptr %i.o, align 8
  %i.r = load <2 x i64>, ptr %i.p, align 8
  %.promoted18 = load i64, ptr %i.q, align 8
  br label %bb.f, !dbg !178967

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %1, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !179005
  unreachable, !dbg !179005

bb.f:                                             ; preds = %.lr.ph, %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE3subCskY9G75ZWc4U_11polars_expr.exit
  %i.s = phi i64 [ %.promoted18, %.lr.ph ], [ %i.ak, %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE3subCskY9G75ZWc4U_11polars_expr.exit ] ; 2 uses
  %i.t = phi double [ %.promoted15, %.lr.ph ], [ %i.al, %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE3subCskY9G75ZWc4U_11polars_expr.exit ] ; 3 uses
  %i.u = phi double [ %.promoted, %.lr.ph ], [ %i.am, %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE3subCskY9G75ZWc4U_11polars_expr.exit ] ; 2 uses
  %.sroa.03.014 = phi ptr [ %i.m, %.lr.ph ], [ %i.w, %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE3subCskY9G75ZWc4U_11polars_expr.exit ] ; 2 uses
  %i.v = phi <2 x i64> [ %i.r, %.lr.ph ], [ %i.an, %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE3subCskY9G75ZWc4U_11polars_expr.exit ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 8, !dbg !179006 ; 2 uses
  %i.x = load double, ptr %.sroa.03.014, align 8, !dbg !179007, !noundef !3817 ; 4 uses
  %i.y = tail call double @llvm.fabs.f64(double %i.x), !dbg !179008
  %i.z = fcmp ueq double %i.y, +inf, !dbg !179009
  br i1 %i.z, label %bb.g, label %bb.h, !dbg !179010

bb.g:                                             ; preds = %bb.f
  %i.aa = fcmp ogt double %i.x, 0.000000e+00, !dbg !179011
  %.neg.i = sext i1 %i.aa to i64, !dbg !179012
  %i.ab = insertelement <2 x i64> <i64 -1, i64 poison>, i64 %.neg.i, i64 1, !dbg !179013
  %i.ac = add <2 x i64> %i.v, %i.ab, !dbg !179013 ; 2 uses
  store <2 x i64> %i.ac, ptr %i.p, align 8, !dbg !179013, !alias.scope !178970
  %i.ad = fcmp olt double %i.x, 0.000000e+00, !dbg !179014
  %.neg2.i = sext i1 %i.ad to i64, !dbg !179015
  %i.ae = add i64 %i.s, %.neg2.i, !dbg !179016    ; 2 uses
  store i64 %i.ae, ptr %i.q, align 8, !dbg !179016, !alias.scope !178970
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE3subCskY9G75ZWc4U_11polars_expr.exit, !dbg !179017

bb.h:                                             ; preds = %bb.f
  %i.af = fsub double 0.000000e+00, %i.x, !dbg !179018
  %i.ag = fsub double %i.af, %i.u, !dbg !179019   ; 2 uses
  %i.ah = fadd double %i.t, %i.ag, !dbg !179020   ; 3 uses
  %i.ai = fsub double %i.ah, %i.t, !dbg !179021
  %i.aj = fsub double %i.ai, %i.ag, !dbg !179022  ; 2 uses
  store double %i.aj, ptr %i.n, align 8, !dbg !179023, !alias.scope !178971
  store double %i.ah, ptr %i.o, align 8, !dbg !179024, !alias.scope !178971
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE3subCskY9G75ZWc4U_11polars_expr.exit, !dbg !179017

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE3subCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.g, %bb.h
  %i.ak = phi i64 [ %i.ae, %bb.g ], [ %i.s, %bb.h ]
  %i.al = phi double [ %i.t, %bb.g ], [ %i.ah, %bb.h ]
  %i.am = phi double [ %i.u, %bb.g ], [ %i.aj, %bb.h ]
  %i.an = phi <2 x i64> [ %i.ac, %bb.g ], [ %i.v, %bb.h ]
  %i.ao = icmp eq ptr %i.w, %i.k, !dbg !179003
  br i1 %i.ao, label %._crit_edge, label %bb.f, !dbg !178967

._crit_edge:                                      ; preds = %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE3subCskY9G75ZWc4U_11polars_expr.exit, %bb.d
  %i.ap = icmp ult i64 %2, %i.e, !dbg !179025
  %.not12 = icmp ugt i64 %2, %i.i
  %or.cond13 = or i1 %.not12, %i.ap, !dbg !179025
  br i1 %or.cond13, label %bb.j, label %bb.i, !dbg !179025, !prof !4246

bb.i:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %2, !dbg !179026
  %i.ar = icmp samesign eq i64 %i.e, %2, !dbg !179027
  br i1 %i.ar, label %._crit_edge22, label %.lr.ph21, !dbg !179028

.lr.ph21:                                         ; preds = %bb.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.e, !dbg !179029
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.promoted23 = load double, ptr %i.at, align 8
  %.promoted24 = load double, ptr %i.au, align 8
  %i.ax = load <2 x i64>, ptr %i.av, align 8
  %.promoted27 = load i64, ptr %i.aw, align 8
  br label %bb.k, !dbg !179028

bb.j:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %2, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !179030
  unreachable, !dbg !179030

bb.k:                                             ; preds = %.lr.ph21, %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE3addCskY9G75ZWc4U_11polars_expr.exit
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowffEINtNtB6_8no_nulls23RollingAggWindowNoNullsfE6updateCskY9G75ZWc4U_11polars_expr:bb.a
  %.neg.i = sext i1 %i.ac to i64, !dbg !179357
  %i.ad = insertelement <2 x i64> <i64 -1, i64 poison>, i64 %.neg.i, i64 1, !dbg !179358
  %i.ae = add <2 x i64> %i.x, %i.ad, !dbg !179358 ; 2 uses
  store <2 x i64> %i.ae, ptr %i.r, align 8, !dbg !179358, !alias.scope !179314
  %i.af = fcmp olt float %i.z, 0.000000e+00, !dbg !179359
  %.neg2.i = sext i1 %i.af to i64, !dbg !179360
  %i.ag = add i64 %i.u, %.neg2.i, !dbg !179361    ; 2 uses
  store i64 %i.ag, ptr %i.s, align 8, !dbg !179361, !alias.scope !179314
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE3subCskY9G75ZWc4U_11polars_expr.exit, !dbg !179362

bb.h:                                             ; preds = %bb.f
  %i.ah = fsub float 0.000000e+00, %i.z, !dbg !179363
  %i.ai = fsub float %i.ah, %i.w, !dbg !179364    ; 2 uses
  %i.aj = fadd float %i.v, %i.ai, !dbg !179365    ; 3 uses
  %i.ak = fsub float %i.aj, %i.v, !dbg !179366
  %i.al = fsub float %i.ak, %i.ai, !dbg !179367   ; 2 uses
  store float %i.al, ptr %i.p, align 8, !dbg !179368, !alias.scope !179315
  store float %i.aj, ptr %i.q, align 8, !dbg !179369, !alias.scope !179315
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE3subCskY9G75ZWc4U_11polars_expr.exit, !dbg !179362

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE3subCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.g, %bb.h
  %i.am = phi i64 [ %i.ag, %bb.g ], [ %i.u, %bb.h ]
  %i.an = phi float [ %i.v, %bb.g ], [ %i.aj, %bb.h ]
  %i.ao = phi float [ %i.w, %bb.g ], [ %i.al, %bb.h ]
  %i.ap = phi <2 x i64> [ %i.ae, %bb.g ], [ %i.x, %bb.h ]
  %i.aq = icmp eq ptr %i.y, %i.m, !dbg !179348
  br i1 %i.aq, label %._crit_edge, label %bb.f, !dbg !179311

._crit_edge:                                      ; preds = %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE3subCskY9G75ZWc4U_11polars_expr.exit, %bb.d
  %i.ar = icmp ult i64 %2, %i.g, !dbg !179370
  %.not12 = icmp ugt i64 %2, %i.k
  %or.cond13 = or i1 %.not12, %i.ar, !dbg !179370
  br i1 %or.cond13, label %bb.j, label %bb.i, !dbg !179370, !prof !4246

bb.i:                                             ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %2, !dbg !179371
  %i.at = icmp samesign eq i64 %i.g, %2, !dbg !179372
  br i1 %i.at, label %._crit_edge22, label %.lr.ph21, !dbg !179373

.lr.ph21:                                         ; preds = %bb.i
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g, !dbg !179374
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.promoted23 = load float, ptr %i.av, align 4
  %.promoted24 = load float, ptr %i.aw, align 8
  %i.az = load <2 x i64>, ptr %i.ax, align 8
  %.promoted27 = load i64, ptr %i.ay, align 8
  br label %bb.k, !dbg !179373

bb.j:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %2, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !179375
  unreachable, !dbg !179375

bb.k:                                             ; preds = %.lr.ph21, %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE3addCskY9G75ZWc4U_11polars_expr.exit
  %i.ba = phi i64 [ %.promoted27, %.lr.ph21 ], [ %i.bt, %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE3addCskY9G75ZWc4U_11polars_expr.exit ] ; 2 uses
  %i.bb = phi float [ %.promoted24, %.lr.ph21 ], [ %i.bu, %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE3addCskY9G75ZWc4U_11polars_expr.exit ] ; 3 uses
  %i.bc = phi float [ %.promoted23, %.lr.ph21 ], [ %i.bv, %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE3addCskY9G75ZWc4U_11polars_expr.exit ] ; 2 uses
  %.sroa.06.019 = phi ptr [ %i.au, %.lr.ph21 ], [ %i.be, %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE3addCskY9G75ZWc4U_11polars_expr.exit ] ; 2 uses
  %i.bd = phi <2 x i64> [ %i.az, %.lr.ph21 ], [ %i.bw, %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE3addCskY9G75ZWc4U_11polars_expr.exit ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.06.019, i64 4, !dbg !179376 ; 2 uses
  %i.bf = load float, ptr %.sroa.06.019, align 4, !dbg !179377, !noundef !3817 ; 4 uses
  %i.bg = tail call float @llvm.fabs.f32(float %i.bf), !dbg !179378
  %i.bh = fcmp ueq float %i.bg, +inf, !dbg !179379
  br i1 %i.bh, label %bb.l, label %bb.m, !dbg !179380

bb.l:                                             ; preds = %bb.k
  %i.bi = fcmp ogt float %i.bf, 0.000000e+00, !dbg !179381
  %i.bj = zext i1 %i.bi to i64, !dbg !179382
  %i.bk = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.bj, i64 1, !dbg !179383
  %i.bl = add <2 x i64> %i.bd, %i.bk, !dbg !179383 ; 2 uses
  store <2 x i64> %i.bl, ptr %i.ax, align 8, !dbg !179383, !alias.scope !179334
  %i.bm = fcmp olt float %i.bf, 0.000000e+00, !dbg !179384
  %i.bn = zext i1 %i.bm to i64, !dbg !179385
  %i.bo = add i64 %i.ba, %i.bn, !dbg !179386      ; 2 uses
  store i64 %i.bo, ptr %i.ay, align 8, !dbg !179386, !alias.scope !179334
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE3addCskY9G75ZWc4U_11polars_expr.exit, !dbg !179387

bb.m:                                             ; preds = %bb.k
  %i.bp = fsub float %i.bf, %i.bc, !dbg !179388   ; 2 uses
  %i.bq = fadd float %i.bb, %i.bp, !dbg !179389   ; 3 uses
  %i.br = fsub float %i.bq, %i.bb, !dbg !179390
  %i.bs = fsub float %i.br, %i.bp, !dbg !179391   ; 2 uses
  store float %i.bs, ptr %i.av, align 4, !dbg !179392, !alias.scope !179335
  store float %i.bq, ptr %i.aw, align 8, !dbg !179393, !alias.scope !179335
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE3addCskY9G75ZWc4U_11polars_expr.exit, !dbg !179387

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE3addCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.l, %bb.m
  %i.bt = phi i64 [ %i.bo, %bb.l ], [ %i.ba, %bb.m ]
  %i.bu = phi float [ %i.bb, %bb.l ], [ %i.bq, %bb.m ]
  %i.bv = phi float [ %i.bc, %bb.l ], [ %i.bs, %bb.m ]
  %i.bw = phi <2 x i64> [ %i.bl, %bb.l ], [ %i.bd, %bb.m ]
  %i.bx = icmp eq ptr %i.be, %i.as, !dbg !179372
  br i1 %i.bx, label %._crit_edge22, label %bb.k, !dbg !179373

._crit_edge22:                                    ; preds = %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE3addCskY9G75ZWc4U_11polars_expr.exit, %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !179338
  store i64 %1, ptr %i.by, align 8, !dbg !179394
  store i64 %2, ptr %i.a, align 8, !dbg !179395
  ret void, !dbg !179396
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i32, float } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowffEINtNtB6_8no_nulls23RollingAggWindowNoNullsfE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !179397 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !179402
  %i.b = load i64, ptr %i.a, align 8, !dbg !179402, !alias.scope !179401, !noundef !3817 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !179402
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !179402

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !179403
  %i.e = load float, ptr %i.d, align 8, !dbg !179403, !alias.scope !179401, !noundef !3817
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !179404

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !179405
  %i.g = load i64, ptr %i.f, align 8, !dbg !179405, !alias.scope !179401, !noundef !3817
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !179406
  br i1 %i.h, label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE7get_sumCskY9G75ZWc4U_11polars_expr.exit, label %bb.d, !dbg !179406

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !179407
  %i.j = load i64, ptr %i.i, align 8, !dbg !179407, !alias.scope !179401, !noundef !3817
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !179408
  br i1 %i.k, label %bb.e, label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !179408

bb.e:                                             ; preds = %bb.d
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !179409

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE7get_sumCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.5.0.i = phi float [ %i.e, %bb.b ], [ +inf, %bb.c ], [ -inf, %bb.e ], [ +qnan, %bb.d ], !dbg !179410
  %i.l = insertvalue { i32, float } { i32 1, float undef }, float %.sroa.5.0.i, 1, !dbg !179411
  ret { i32, float } %i.l, !dbg !179412
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowhhEINtNtB6_8no_nulls23RollingAggWindowNoNullshE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !179413 {
bb.a:
  %.not11.i = icmp ugt i64 %3, %2
  br i1 %.not11.i, label %bb.b, label %._crit_edge.i, !dbg !179438, !prof !4246

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !179439, !noalias !179437
  unreachable, !dbg !179439

._crit_edge.i:                                    ; preds = %bb.a
  %i.a = icmp ult i64 %4, %3, !dbg !179440
  %.not12.i = icmp ugt i64 %4, %2
  %or.cond13.i = or i1 %.not12.i, %i.a, !dbg !179440
  br i1 %or.cond13.i, label %bb.d, label %bb.c, !dbg !179440, !prof !4246

bb.c:                                             ; preds = %._crit_edge.i
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %4, !dbg !179441
  %i.c = icmp samesign eq i64 %3, %4, !dbg !179442
  br i1 %i.c, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowhhEINtNtB6_8no_nulls23RollingAggWindowNoNullshE6updateCskY9G75ZWc4U_11polars_expr.exit, label %iter.check, !dbg !179443

iter.check:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %3, !dbg !179444 ; 5 uses
  %i.e = sub i64 %4, %3, !dbg !179443             ; 7 uses
  %min.iters.check = icmp ult i64 %i.e, 8, !dbg !179443
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !179443

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check8 = icmp ult i64 %i.e, 32, !dbg !179443
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !179443

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %i.e, 24
  %n.vec = and i64 %i.e, -32                      ; 4 uses
  %i.g = getelementptr i8, ptr %i.d, i64 %n.vec
  br label %vector.body, !dbg !179443

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi9 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.d, i64 %index ; 2 uses
  %i.h = getelementptr i8, ptr %next.gep, i64 16, !dbg !179445
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !dbg !179445, !noalias !179437
  %wide.load10 = load <16 x i8>, ptr %i.h, align 1, !dbg !179445, !noalias !179437
  %i.i = add <16 x i8> %wide.load, %vec.phi, !dbg !179446 ; 2 uses
  %i.j = add <16 x i8> %wide.load10, %vec.phi9, !dbg !179446 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !179443
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !179443, !llvm.loop !179433

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i8> %i.j, %i.i, !dbg !179443
  %i.l = tail call i8 @llvm.vector.reduce.add.v16i8(<16 x i8> %bin.rdx), !dbg !179443 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !179443
  br i1 %cmp.n, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowhhEINtNtB6_8no_nulls23RollingAggWindowNoNullshE6updateCskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.iter.check, !dbg !179443

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !5309

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.l, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !179447
  %n.vec11 = and i64 %i.e, -8                     ; 3 uses
  %i.m = getelementptr i8, ptr %i.d, i64 %n.vec11
  %i.n = insertelement <8 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi13 = phi <8 x i8> [ %i.n, %vec.epilog.ph ], [ %i.o, %vec.epilog.vector.body ]
  %next.gep14 = getelementptr i8, ptr %i.d, i64 %index12
  %wide.load15 = load <8 x i8>, ptr %next.gep14, align 1, !dbg !179445, !noalias !179437
  %i.o = add <8 x i8> %wide.load15, %vec.phi13, !dbg !179446 ; 2 uses
  %index.next16 = add nuw i64 %index12, 8         ; 2 uses
  %i.p = icmp eq i64 %index.next16, %n.vec11, !dbg !179443
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !179443, !llvm.loop !179435

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.q = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %i.o), !dbg !179443 ; 2 uses
  %cmp.n17 = icmp eq i64 %i.e, %n.vec11, !dbg !179443
  br i1 %cmp.n17, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowhhEINtNtB6_8no_nulls23RollingAggWindowNoNullshE6updateCskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph.preheader, !dbg !179443

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ 0, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ]
  %.sroa.06.015.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.g, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !179443

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !179448, !noalias !179437
  unreachable, !dbg !179448

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.r = phi i8 [ %i.u, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !179447
  %.sroa.06.015.i = phi ptr [ %i.s, %vec.epilog.scalar.ph ], [ %.sroa.06.015.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 1, !dbg !179447 ; 2 uses
  %i.t = load i8, ptr %.sroa.06.015.i, align 1, !dbg !179445, !noalias !179437, !noundef !3817
  %i.u = add i8 %i.t, %i.r, !dbg !179446          ; 2 uses
  %i.v = icmp eq ptr %i.s, %i.b, !dbg !179442
  br i1 %i.v, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowhhEINtNtB6_8no_nulls23RollingAggWindowNoNullshE6updateCskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !179443, !llvm.loop !179436

_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowhhEINtNtB6_8no_nulls23RollingAggWindowNoNullshE6updateCskY9G75ZWc4U_11polars_expr.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %.sroa.16.2 = phi i8 [ 0, %bb.c ], [ %i.q, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.u, %vec.epilog.scalar.ph ], !dbg !179449
  store ptr %1, ptr %0, align 8, !dbg !179450
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !179450
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !179450
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !179450
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !179450
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i8 0, i64 40, i1 false), !dbg !179450
  store i64 %3, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !179450
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !179450
  store i64 %4, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !179450
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !179450
  store i8 %.sroa.16.2, ptr %.sroa.16.0..sroa_idx, align 8, !dbg !179450
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73, !dbg !179450
  store i8 0, ptr %.sroa.21.0..sroa_idx, align 1, !dbg !179450
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 74, !dbg !179450
  store i8 0, ptr %.sroa.22.0..sroa_idx, align 2, !dbg !179450
  ret void, !dbg !179451
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowhhEINtNtB6_8no_nulls23RollingAggWindowNoNullshE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3167 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !179506 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !179506, !noundef !3817 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !179507
  br i1 %.not, label %._crit_edge22, label %bb.b, !dbg !179507

._crit_edge22:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !179508
  br label %bb.c, !dbg !179507

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !179509
  store i8 0, ptr %i.c, align 8, !dbg !179509, !alias.scope !179480
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 73, !dbg !179510
  store i8 0, ptr %i.d, align 1, !dbg !179510, !alias.scope !179480
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 74, !dbg !179511
  store i8 0, ptr %i.e, align 2, !dbg !179511, !alias.scope !179480
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !179512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !dbg !179512, !alias.scope !179480
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !179513
  store i64 %1, ptr %i.g, align 8, !dbg !179513
  store i64 %1, ptr %i.a, align 8, !dbg !179514
  br label %bb.c, !dbg !179515

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.h = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 5 uses
  %i.i = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !179508 ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !dbg !179516, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !179516
  %i.l = load i64, ptr %i.k, align 8, !dbg !179516, !noundef !3817 ; 4 uses
  %i.m = icmp ult i64 %1, %i.i, !dbg !179517
  %.not11 = icmp ugt i64 %1, %i.l
  %or.cond = or i1 %.not11, %i.m, !dbg !179517
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !179517, !prof !4246

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %1, !dbg !179518
  %i.o = icmp samesign eq i64 %i.i, %1, !dbg !179519
  br i1 %i.o, label %bb.f, label %iter.check, !dbg !179490

iter.check:                                       ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i, !dbg !179520 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load i8, ptr %i.q, align 8, !alias.scope !179492 ; 3 uses
  %i.r = sub i64 %1, %i.i, !dbg !179490           ; 7 uses
  %min.iters.check = icmp ult i64 %i.r, 8, !dbg !179490
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !179490

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check30 = icmp ult i64 %i.r, 32, !dbg !179490
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph, !dbg !179490

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.s = and i64 %i.r, 24
  %n.vec = and i64 %i.r, -32                      ; 4 uses
  %i.t = getelementptr i8, ptr %i.p, i64 %n.vec
  %i.u = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.promoted, i64 0
  br label %vector.body, !dbg !179490

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %i.u, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi31 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.p, i64 %index ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep, i64 16, !dbg !179521
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !dbg !179521
  %wide.load32 = load <16 x i8>, ptr %i.v, align 1, !dbg !179521
  %i.w = sub <16 x i8> %vec.phi, %wide.load, !dbg !179522 ; 2 uses
  %i.x = sub <16 x i8> %vec.phi31, %wide.load32, !dbg !179522 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec, !dbg !179490
  br i1 %i.y, label %middle.block, label %vector.body, !dbg !179490, !llvm.loop !179468

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i8> %i.x, %i.w, !dbg !179490
  %i.z = tail call i8 @llvm.vector.reduce.add.v16i8(<16 x i8> %bin.rdx), !dbg !179490 ; 3 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec, !dbg !179490
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !179490

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !5309

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.z, %vec.epilog.iter.check ], [ %.promoted, %vector.main.loop.iter.check ], !dbg !179523
  %n.vec33 = and i64 %i.r, -8                     ; 3 uses
  %i.aa = getelementptr i8, ptr %i.p, i64 %n.vec33
  %i.ab = insertelement <8 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi35 = phi <8 x i8> [ %i.ab, %vec.epilog.ph ], [ %i.ac, %vec.epilog.vector.body ]
  %next.gep36 = getelementptr i8, ptr %i.p, i64 %index34
  %wide.load37 = load <8 x i8>, ptr %next.gep36, align 1, !dbg !179521
  %i.ac = sub <8 x i8> %vec.phi35, %wide.load37, !dbg !179522 ; 2 uses
  %index.next38 = add nuw i64 %index34, 8         ; 2 uses
  %i.ad = icmp eq i64 %index.next38, %n.vec33, !dbg !179490
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !179490, !llvm.loop !179469

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ae = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %i.ac), !dbg !179490 ; 2 uses
  %cmp.n39 = icmp eq i64 %i.r, %n.vec33, !dbg !179490
  br i1 %cmp.n39, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !179490

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph80 = phi i8 [ %.promoted, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  %.sroa.03.014.ph = phi ptr [ %i.p, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !179490

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %1, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !179524
  unreachable, !dbg !179524

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.af = phi i8 [ %i.ai, %vec.epilog.scalar.ph ], [ %.ph80, %vec.epilog.scalar.ph.preheader ], !dbg !179523
  %.sroa.03.014 = phi ptr [ %i.ag, %vec.epilog.scalar.ph ], [ %.sroa.03.014.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 1, !dbg !179523 ; 2 uses
  %i.ah = load i8, ptr %.sroa.03.014, align 1, !dbg !179521, !noundef !3817
  %i.ai = sub i8 %i.af, %i.ah, !dbg !179522       ; 2 uses
  %i.aj = icmp eq ptr %i.ag, %i.n, !dbg !179519
  br i1 %i.aj, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !179490, !llvm.loop !179470

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa29 = phi i8 [ %i.ae, %vec.epilog.middle.block ], [ %i.z, %middle.block ], [ %i.ai, %vec.epilog.scalar.ph ], !dbg !179522
  store i8 %.lcssa29, ptr %i.q, align 8, !dbg !179522, !alias.scope !179492
  br label %bb.f, !dbg !179490

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.ak = icmp ult i64 %2, %i.h, !dbg !179525
  %.not12 = icmp ugt i64 %2, %i.l
  %or.cond13 = or i1 %.not12, %i.ak, !dbg !179525
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !179525, !prof !4246

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 %2, !dbg !179526
  %i.am = icmp samesign eq i64 %i.h, %2, !dbg !179527
  br i1 %i.am, label %bb.i, label %iter.check60, !dbg !179528

iter.check60:                                     ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h, !dbg !179529 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted19 = load i8, ptr %i.ao, align 8, !alias.scope !179504 ; 3 uses
  %i.ap = sub i64 %2, %i.h, !dbg !179528          ; 7 uses
  %min.iters.check42 = icmp ult i64 %i.ap, 8, !dbg !179528
  br i1 %min.iters.check42, label %vec.epilog.scalar.ph61.preheader, label %vector.main.loop.iter.check43, !dbg !179528

vector.main.loop.iter.check43:                    ; preds = %iter.check60
  %min.iters.check44 = icmp ult i64 %i.ap, 32, !dbg !179528
  br i1 %min.iters.check44, label %vec.epilog.ph64, label %vector.ph45, !dbg !179528

vector.ph45:                                      ; preds = %vector.main.loop.iter.check43
  %i.aq = and i64 %i.ap, 24
  %n.vec46 = and i64 %i.ap, -32                   ; 4 uses
  %i.ar = getelementptr i8, ptr %i.an, i64 %n.vec46
  %i.as = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.promoted19, i64 0
  br label %vector.body47, !dbg !179528

vector.body47:                                    ; preds = %vector.ph45, %vector.body47
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next54, %vector.body47 ] ; 2 uses
  %vec.phi49.a = phi <16 x i8> [ %i.as, %vector.ph45 ], [ %i.au, %vector.body47 ]
  %vec.phi50 = phi <16 x i8> [ zeroinitializer, %vector.ph45 ], [ %i.av, %vector.body47 ]
  %next.gep51 = getelementptr i8, ptr %i.an, i64 %index48 ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep51, i64 16, !dbg !179530
  %wide.load52.a = load <16 x i8>, ptr %next.gep51, align 1, !dbg !179530
  %wide.load53 = load <16 x i8>, ptr %i.at, align 1, !dbg !179530
  %i.au = add <16 x i8> %vec.phi49.a, %wide.load52.a, !dbg !179531 ; 2 uses
  %i.av = add <16 x i8> %vec.phi50, %wide.load53, !dbg !179531 ; 2 uses
  %index.next54 = add nuw i64 %index48, 32        ; 2 uses
  %i.aw = icmp eq i64 %index.next54, %n.vec46, !dbg !179528
  br i1 %i.aw, label %middle.block55, label %vector.body47, !dbg !179528, !llvm.loop !179477

middle.block55:                                   ; preds = %vector.body47
  %bin.rdx56 = add <16 x i8> %i.av, %i.au, !dbg !179528
  %i.ax = tail call i8 @llvm.vector.reduce.add.v16i8(<16 x i8> %bin.rdx56), !dbg !179528 ; 3 uses
  %cmp.n57 = icmp eq i64 %i.ap, %n.vec46, !dbg !179528
  br i1 %cmp.n57, label %._crit_edge18, label %vec.epilog.iter.check62, !dbg !179528

vec.epilog.iter.check62:                          ; preds = %middle.block55
  %min.epilog.iters.check63 = icmp eq i64 %i.aq, 0
  br i1 %min.epilog.iters.check63, label %vec.epilog.scalar.ph61.preheader, label %vec.epilog.ph64, !prof !5309

vec.epilog.ph64:                                  ; preds = %vector.main.loop.iter.check43, %vec.epilog.iter.check62
  %vec.epilog.resume.val58 = phi i64 [ %n.vec46, %vec.epilog.iter.check62 ], [ 0, %vector.main.loop.iter.check43 ]
  %bc.merge.rdx59 = phi i8 [ %i.ax, %vec.epilog.iter.check62 ], [ %.promoted19, %vector.main.loop.iter.check43 ], !dbg !179532
  %n.vec65 = and i64 %i.ap, -8                    ; 3 uses
  %i.ay = getelementptr i8, ptr %i.an, i64 %n.vec65
  %i.az = insertelement <8 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx59, i64 0
  br label %vec.epilog.vector.body66

vec.epilog.vector.body66:                         ; preds = %vec.epilog.vector.body66, %vec.epilog.ph64
  %index67 = phi i64 [ %vec.epilog.resume.val58, %vec.epilog.ph64 ], [ %index.next71, %vec.epilog.vector.body66 ] ; 2 uses
  %vec.phi68 = phi <8 x i8> [ %i.az, %vec.epilog.ph64 ], [ %i.ba, %vec.epilog.vector.body66 ]
  %next.gep69 = getelementptr i8, ptr %i.an, i64 %index67
  %wide.load70 = load <8 x i8>, ptr %next.gep69, align 1, !dbg !179530
  %i.ba = add <8 x i8> %vec.phi68, %wide.load70, !dbg !179531 ; 2 uses
  %index.next71 = add nuw i64 %index67, 8         ; 2 uses
  %i.bb = icmp eq i64 %index.next71, %n.vec65, !dbg !179528
  br i1 %i.bb, label %vec.epilog.middle.block72, label %vec.epilog.vector.body66, !dbg !179528, !llvm.loop !179478

vec.epilog.middle.block72:                        ; preds = %vec.epilog.vector.body66
  %i.bc = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %i.ba), !dbg !179528 ; 2 uses
  %cmp.n73 = icmp eq i64 %i.ap, %n.vec65, !dbg !179528
  br i1 %cmp.n73, label %._crit_edge18, label %vec.epilog.scalar.ph61.preheader, !dbg !179528

vec.epilog.scalar.ph61.preheader:                 ; preds = %iter.check60, %vec.epilog.iter.check62, %vec.epilog.middle.block72
  %.ph = phi i8 [ %.promoted19, %iter.check60 ], [ %i.ax, %vec.epilog.iter.check62 ], [ %i.bc, %vec.epilog.middle.block72 ]
  %.sroa.06.015.ph = phi ptr [ %i.an, %iter.check60 ], [ %i.ar, %vec.epilog.iter.check62 ], [ %i.ay, %vec.epilog.middle.block72 ]
  br label %vec.epilog.scalar.ph61, !dbg !179528

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %2, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !179533
  unreachable, !dbg !179533

vec.epilog.scalar.ph61:                           ; preds = %vec.epilog.scalar.ph61.preheader, %vec.epilog.scalar.ph61
  %i.bd = phi i8 [ %i.bg, %vec.epilog.scalar.ph61 ], [ %.ph, %vec.epilog.scalar.ph61.preheader ], !dbg !179532
  %.sroa.06.015 = phi ptr [ %i.be, %vec.epilog.scalar.ph61 ], [ %.sroa.06.015.ph, %vec.epilog.scalar.ph61.preheader ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 1, !dbg !179532 ; 2 uses
  %i.bf = load i8, ptr %.sroa.06.015, align 1, !dbg !179530, !noundef !3817
  %i.bg = add i8 %i.bd, %i.bf, !dbg !179531       ; 2 uses
  %i.bh = icmp eq ptr %i.be, %i.al, !dbg !179527
  br i1 %i.bh, label %._crit_edge18, label %vec.epilog.scalar.ph61, !dbg !179528, !llvm.loop !179479

._crit_edge18:                                    ; preds = %vec.epilog.scalar.ph61, %vec.epilog.middle.block72, %middle.block55
  %.lcssa = phi i8 [ %i.bc, %vec.epilog.middle.block72 ], [ %i.ax, %middle.block55 ], [ %i.bg, %vec.epilog.scalar.ph61 ], !dbg !179531
  store i8 %.lcssa, ptr %i.ao, align 8, !dbg !179531, !alias.scope !179504
  br label %bb.i, !dbg !179528

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !179508
  store i64 %1, ptr %i.bi, align 8, !dbg !179534
  store i64 %2, ptr %i.a, align 8, !dbg !179535
  ret void, !dbg !179536
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowhhEINtNtB6_8no_nulls23RollingAggWindowNoNullshE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !179537 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179541), !dbg !179542
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !179543
  %i.b = load i64, ptr %i.a, align 8, !dbg !179543, !alias.scope !179541, !noundef !3817 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !179543
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !179543

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !179544
  %i.e = load i8, ptr %i.d, align 8, !dbg !179544, !alias.scope !179541, !noundef !3817
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !179545

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !179546
  %i.g = load i64, ptr %i.f, align 8, !dbg !179546, !alias.scope !179541, !noundef !3817
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !179547
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !179547

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !179548
  %i.j = load i64, ptr %i.i, align 8, !dbg !179548, !alias.scope !179541, !noundef !3817
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !179549
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !179549

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i8 @_RNvYhNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !179550, !noalias !179541
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !179551

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i8 @_RNvYhNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCskY9G75ZWc4U_11polars_expr(), !dbg !179552, !noalias !179541
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !179553

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i8 @_RNvYhNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !179554, !noalias !179541
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !179553

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i8 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !179555
  %i.o = insertvalue { i1, i8 } { i1 true, i8 undef }, i8 %.sroa.5.0.i, 1, !dbg !179556
  ret { i1, i8 } %i.o, !dbg !179557
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !179558 {
bb.a:
  %.not11.i = icmp ugt i64 %3, %2
  br i1 %.not11.i, label %bb.b, label %._crit_edge.i, !dbg !179582, !prof !4246

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !179583, !noalias !179581
  unreachable, !dbg !179583

._crit_edge.i:                                    ; preds = %bb.a
  %i.a = icmp ult i64 %4, %3, !dbg !179584
  %.not12.i = icmp ugt i64 %4, %2
  %or.cond13.i = or i1 %.not12.i, %i.a, !dbg !179584
  br i1 %or.cond13.i, label %bb.d, label %bb.c, !dbg !179584, !prof !4246

bb.c:                                             ; preds = %._crit_edge.i
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %4, !dbg !179585
  %i.c = icmp samesign eq i64 %3, %4, !dbg !179586
  br i1 %i.c, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph17.i, !dbg !179587

.lr.ph17.i:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3, !dbg !179588 ; 3 uses
  %i.e = shl i64 %4, 2, !dbg !179587
  %i.f = shl i64 %3, 2, !dbg !179587
  %i.g = add i64 %i.e, -4, !dbg !179587
  %i.h = sub i64 %i.g, %i.f, !dbg !179587         ; 2 uses
  %i.i = lshr exact i64 %i.h, 2, !dbg !179587
  %i.j = add nuw nsw i64 %i.i, 1, !dbg !179587    ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 28, !dbg !179587
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !179587

vector.ph:                                        ; preds = %.lr.ph17.i
  %n.vec = and i64 %i.j, 9223372036854775800      ; 3 uses
  %i.k = shl i64 %n.vec, 2
  %i.l = getelementptr i8, ptr %i.d, i64 %i.k
  br label %vector.body, !dbg !179587

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi8 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %i.m = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.m ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 16, !dbg !179589
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !179589, !noalias !179581
  %wide.load9 = load <4 x i32>, ptr %i.n, align 4, !dbg !179589, !noalias !179581
  %i.o = add <4 x i32> %wide.load, %vec.phi, !dbg !179590 ; 2 uses
  %i.p = add <4 x i32> %wide.load9, %vec.phi8, !dbg !179590 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec, !dbg !179587
  br i1 %i.q, label %middle.block, label %vector.body, !dbg !179587, !llvm.loop !179578

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.p, %i.o, !dbg !179587
  %i.r = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx), !dbg !179587 ; 2 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec, !dbg !179587
  br i1 %cmp.n, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !179587

scalar.ph.preheader:                              ; preds = %.lr.ph17.i, %middle.block
  %.ph = phi i32 [ 0, %.lr.ph17.i ], [ %i.r, %middle.block ]
  %.sroa.06.015.i.ph = phi ptr [ %i.d, %.lr.ph17.i ], [ %i.l, %middle.block ]
  br label %scalar.ph, !dbg !179587

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !179591, !noalias !179581
  unreachable, !dbg !179591

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.s = phi i32 [ %i.v, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !179592
  %.sroa.06.015.i = phi ptr [ %i.t, %scalar.ph ], [ %.sroa.06.015.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 4, !dbg !179592 ; 2 uses
  %i.u = load i32, ptr %.sroa.06.015.i, align 4, !dbg !179589, !noalias !179581, !noundef !3817
  %i.v = add i32 %i.u, %i.s, !dbg !179590         ; 2 uses
  %i.w = icmp eq ptr %i.t, %i.b, !dbg !179586
  br i1 %i.w, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !179587, !llvm.loop !179580

_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph, %middle.block, %bb.c
  %.sroa.16.2 = phi i32 [ 0, %bb.c ], [ %i.r, %middle.block ], [ %i.v, %scalar.ph ], !dbg !179593
  store ptr %1, ptr %0, align 8, !dbg !179594
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !179594
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !179594
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !179594
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !179594
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i8 0, i64 40, i1 false), !dbg !179594
  store i64 %3, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !179594
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !179594
  store i64 %4, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !179594
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !179594
  store i32 %.sroa.16.2, ptr %.sroa.16.0..sroa_idx, align 8, !dbg !179594
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !179594
  store i32 0, ptr %.sroa.21.0..sroa_idx, align 4, !dbg !179594
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !179594
  store i32 0, ptr %.sroa.22.0..sroa_idx, align 8, !dbg !179594
  ret void, !dbg !179595
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3186 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !179648 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !179648, !noundef !3817 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !179649
  br i1 %.not, label %._crit_edge22, label %bb.b, !dbg !179649

._crit_edge22:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !179650
  br label %bb.c, !dbg !179649

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !179651
  store i32 0, ptr %i.c, align 8, !dbg !179651, !alias.scope !179622
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !179652
  store i32 0, ptr %i.d, align 4, !dbg !179652, !alias.scope !179622
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !179653
  store i32 0, ptr %i.e, align 8, !dbg !179653, !alias.scope !179622
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !179654
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !dbg !179654, !alias.scope !179622
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !179655
  store i64 %1, ptr %i.g, align 8, !dbg !179655
  store i64 %1, ptr %i.a, align 8, !dbg !179656
  br label %bb.c, !dbg !179657

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.h = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 5 uses
  %i.i = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !179650 ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !dbg !179658, !nonnull !3817, !align !4085, !noundef !3817 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !179658
  %i.l = load i64, ptr %i.k, align 8, !dbg !179658, !noundef !3817 ; 4 uses
  %i.m = icmp ult i64 %1, %i.i, !dbg !179659
  %.not11 = icmp ugt i64 %1, %i.l
  %or.cond = or i1 %.not11, %i.m, !dbg !179659
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !179659, !prof !4246

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %1, !dbg !179660
  %i.o = icmp samesign eq i64 %i.i, %1, !dbg !179661
  br i1 %i.o, label %bb.f, label %.lr.ph, !dbg !179632
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowooEINtNtB6_8no_nulls23RollingAggWindowNoNullsoE6updateCskY9G75ZWc4U_11polars_expr:bb.a
  store i64 %1, ptr %i.a, align 16, !dbg !180070
  br label %bb.c, !dbg !180071

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.f = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 4 uses
  %i.g = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !180065 ; 4 uses
  %i.h = load ptr, ptr %0, align 16, !dbg !180072, !nonnull !3817, !align !4772, !noundef !3817 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !180072
  %i.j = load i64, ptr %i.i, align 8, !dbg !180072, !noundef !3817 ; 4 uses
  %i.k = icmp ult i64 %1, %i.g, !dbg !180073
  %.not11 = icmp ugt i64 %1, %i.j
  %or.cond = or i1 %.not11, %i.k, !dbg !180073
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !180073, !prof !4246

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %1, !dbg !180074
  %i.m = icmp samesign eq i64 %i.g, %1, !dbg !180075
  br i1 %i.m, label %bb.g, label %.lr.ph, !dbg !180047

.lr.ph:                                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.g, !dbg !180076
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted = load i128, ptr %i.o, align 16, !alias.scope !180049
  br label %bb.f, !dbg !180047

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %1, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !180077
  unreachable, !dbg !180077

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %i.p = phi i128 [ %.promoted, %.lr.ph ], [ %i.s, %bb.f ], !dbg !180078
  %.sroa.03.014 = phi ptr [ %i.n, %.lr.ph ], [ %i.q, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 16, !dbg !180078 ; 2 uses
  %i.r = load i128, ptr %.sroa.03.014, align 16, !dbg !180079, !noundef !3817
  %i.s = sub i128 %i.p, %i.r, !dbg !180080        ; 2 uses
  %i.t = icmp eq ptr %i.q, %i.l, !dbg !180075
  br i1 %i.t, label %._crit_edge, label %bb.f, !dbg !180047

._crit_edge:                                      ; preds = %bb.f
  store i128 %i.s, ptr %i.o, align 16, !dbg !180080, !alias.scope !180049
  br label %bb.g, !dbg !180047

bb.g:                                             ; preds = %._crit_edge, %bb.d
  %i.u = icmp ult i64 %2, %i.f, !dbg !180081
  %.not12 = icmp ugt i64 %2, %i.j
  %or.cond13 = or i1 %.not12, %i.u, !dbg !180081
  br i1 %or.cond13, label %bb.i, label %bb.h, !dbg !180081, !prof !4246

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %2, !dbg !180082
  %i.w = icmp samesign eq i64 %i.f, %2, !dbg !180083
  br i1 %i.w, label %bb.k, label %.lr.ph17, !dbg !180084

.lr.ph17:                                         ; preds = %bb.h
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.f, !dbg !180085
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted19 = load i128, ptr %i.y, align 16, !alias.scope !180061
  br label %bb.j, !dbg !180084

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %2, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !180086
  unreachable, !dbg !180086

bb.j:                                             ; preds = %.lr.ph17, %bb.j
  %i.z = phi i128 [ %.promoted19, %.lr.ph17 ], [ %i.ac, %bb.j ], !dbg !180087
  %.sroa.06.015 = phi ptr [ %i.x, %.lr.ph17 ], [ %i.aa, %bb.j ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 16, !dbg !180087 ; 2 uses
  %i.ab = load i128, ptr %.sroa.06.015, align 16, !dbg !180088, !noundef !3817
  %i.ac = add i128 %i.z, %i.ab, !dbg !180089      ; 2 uses
  %i.ad = icmp eq ptr %i.aa, %i.v, !dbg !180083
  br i1 %i.ad, label %._crit_edge18, label %bb.j, !dbg !180084

._crit_edge18:                                    ; preds = %bb.j
  store i128 %i.ac, ptr %i.y, align 16, !dbg !180089, !alias.scope !180061
  br label %bb.k, !dbg !180084

bb.k:                                             ; preds = %._crit_edge18, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !180065
  store i64 %1, ptr %i.ae, align 8, !dbg !180090
  store i64 %2, ptr %i.a, align 16, !dbg !180091
  ret void, !dbg !180092
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowooEINtNtB6_8no_nulls23RollingAggWindowNoNullsoE7get_aggCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180093 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180098), !dbg !180101
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180099), !dbg !180101
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !180102
  %i.b = load i64, ptr %i.a, align 8, !dbg !180102, !alias.scope !180099, !noundef !3817 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !180102
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !180102

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !180103
  %i.e = load i128, ptr %i.d, align 16, !dbg !180103, !alias.scope !180099, !noundef !3817
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowooE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180104

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !180105
  %i.g = load i64, ptr %i.f, align 16, !dbg !180105, !alias.scope !180099, !noundef !3817
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !180106
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !180106

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !180107
  %i.j = load i64, ptr %i.i, align 8, !dbg !180107, !alias.scope !180099, !noundef !3817
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !180108
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !180108

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i128 @_RNvYoNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180109, !noalias !180100
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowooE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180110

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i128 @_RNvYoNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180111, !noalias !180100
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowooE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180112

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i128 @_RNvYoNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180113, !noalias !180100
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowooE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180112

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowooE7get_sumCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sink.i = phi i128 [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], [ %i.e, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !180114
  store i128 %.sink.i, ptr %i.o, align 16, !dbg !180114, !alias.scope !180098
  store i128 1, ptr %0, align 16, !dbg !180114, !alias.scope !180098
  ret void, !dbg !180115
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowssEINtNtB6_8no_nulls23RollingAggWindowNoNullssE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 4611686018427387904) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180116 {
bb.a:
  %.not11.i = icmp ugt i64 %3, %2
  br i1 %.not11.i, label %bb.b, label %._crit_edge.i, !dbg !180141, !prof !4246

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !180142, !noalias !180140
  unreachable, !dbg !180142

._crit_edge.i:                                    ; preds = %bb.a
  %i.a = icmp ult i64 %4, %3, !dbg !180143
  %.not12.i = icmp ugt i64 %4, %2
  %or.cond13.i = or i1 %.not12.i, %i.a, !dbg !180143
  br i1 %or.cond13.i, label %bb.d, label %bb.c, !dbg !180143, !prof !4246

bb.c:                                             ; preds = %._crit_edge.i
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %4, !dbg !180144
  %i.c = icmp samesign eq i64 %3, %4, !dbg !180145
  br i1 %i.c, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowssEINtNtB6_8no_nulls23RollingAggWindowNoNullssE6updateCskY9G75ZWc4U_11polars_expr.exit, label %iter.check, !dbg !180146

iter.check:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %3, !dbg !180147 ; 5 uses
  %i.e = shl i64 %4, 1, !dbg !180146
  %i.f = add i64 %i.e, -2, !dbg !180146
  %i.g = shl i64 %3, 1, !dbg !180146
  %i.h = sub i64 %i.f, %i.g, !dbg !180146         ; 3 uses
  %i.i = lshr exact i64 %i.h, 1, !dbg !180146
  %i.j = add nuw i64 %i.i, 1, !dbg !180146        ; 5 uses
  %min.iters.check = icmp ult i64 %i.h, 6, !dbg !180146
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !180146

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check8 = icmp ult i64 %i.h, 30, !dbg !180146
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !180146

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.j, 12
  %n.vec = and i64 %i.j, -16                      ; 4 uses
  %i.l = shl i64 %n.vec, 1
  %i.m = getelementptr i8, ptr %i.d, i64 %i.l
  br label %vector.body, !dbg !180146

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi9 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %i.n = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.n ; 2 uses
  %i.o = getelementptr i8, ptr %next.gep, i64 16, !dbg !180148
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !dbg !180148, !noalias !180140
  %wide.load10 = load <8 x i16>, ptr %i.o, align 2, !dbg !180148, !noalias !180140
  %i.p = add <8 x i16> %wide.load, %vec.phi, !dbg !180149 ; 2 uses
  %i.q = add <8 x i16> %wide.load10, %vec.phi9, !dbg !180149 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec, !dbg !180146
  br i1 %i.r, label %middle.block, label %vector.body, !dbg !180146, !llvm.loop !180136

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.q, %i.p, !dbg !180146
  %i.s = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx), !dbg !180146 ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec, !dbg !180146
  br i1 %cmp.n, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowssEINtNtB6_8no_nulls23RollingAggWindowNoNullssE6updateCskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.iter.check, !dbg !180146

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !4441

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.s, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !180150
  %n.vec11 = and i64 %i.j, -4                     ; 3 uses
  %i.t = shl i64 %n.vec11, 1
  %i.u = getelementptr i8, ptr %i.d, i64 %i.t
  %i.v = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi13 = phi <4 x i16> [ %i.v, %vec.epilog.ph ], [ %i.x, %vec.epilog.vector.body ]
  %i.w = shl i64 %index12, 1
  %next.gep14 = getelementptr i8, ptr %i.d, i64 %i.w
  %wide.load15 = load <4 x i16>, ptr %next.gep14, align 2, !dbg !180148, !noalias !180140
  %i.x = add <4 x i16> %wide.load15, %vec.phi13, !dbg !180149 ; 2 uses
  %index.next16 = add nuw i64 %index12, 4         ; 2 uses
  %i.y = icmp eq i64 %index.next16, %n.vec11, !dbg !180146
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !180146, !llvm.loop !180138

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.z = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.x), !dbg !180146 ; 2 uses
  %cmp.n17 = icmp eq i64 %i.j, %n.vec11, !dbg !180146
  br i1 %cmp.n17, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowssEINtNtB6_8no_nulls23RollingAggWindowNoNullssE6updateCskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph.preheader, !dbg !180146

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i16 [ 0, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  %.sroa.06.015.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !180146

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !180151, !noalias !180140
  unreachable, !dbg !180151

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.aa = phi i16 [ %i.ad, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !180150
  %.sroa.06.015.i = phi ptr [ %i.ab, %vec.epilog.scalar.ph ], [ %.sroa.06.015.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 2, !dbg !180150 ; 2 uses
  %i.ac = load i16, ptr %.sroa.06.015.i, align 2, !dbg !180148, !noalias !180140, !noundef !3817
  %i.ad = add i16 %i.ac, %i.aa, !dbg !180149      ; 2 uses
  %i.ae = icmp eq ptr %i.ab, %i.b, !dbg !180145
  br i1 %i.ae, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowssEINtNtB6_8no_nulls23RollingAggWindowNoNullssE6updateCskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !180146, !llvm.loop !180139

_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowssEINtNtB6_8no_nulls23RollingAggWindowNoNullssE6updateCskY9G75ZWc4U_11polars_expr.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %.sroa.16.2 = phi i16 [ 0, %bb.c ], [ %i.z, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %i.ad, %vec.epilog.scalar.ph ], !dbg !180152
  store ptr %1, ptr %0, align 8, !dbg !180153
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !180153
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !180153
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !180153
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !180153
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i8 0, i64 40, i1 false), !dbg !180153
  store i64 %3, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !180153
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !180153
  store i64 %4, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !180153
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180153
  store i16 %.sroa.16.2, ptr %.sroa.16.0..sroa_idx, align 8, !dbg !180153
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 74, !dbg !180153
  store i16 0, ptr %.sroa.21.0..sroa_idx, align 2, !dbg !180153
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !180153
  store i16 0, ptr %.sroa.22.0..sroa_idx, align 4, !dbg !180153
  ret void, !dbg !180154
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowssEINtNtB6_8no_nulls23RollingAggWindowNoNullssE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3262 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !180209 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !180209, !noundef !3817 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !180210
  br i1 %.not, label %._crit_edge22, label %bb.b, !dbg !180210

._crit_edge22:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !180211
  br label %bb.c, !dbg !180210

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180212
  store i16 0, ptr %i.c, align 8, !dbg !180212, !alias.scope !180183
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 74, !dbg !180213
  store i16 0, ptr %i.d, align 2, !dbg !180213, !alias.scope !180183
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !180214
  store i16 0, ptr %i.e, align 4, !dbg !180214, !alias.scope !180183
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !180215
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !dbg !180215, !alias.scope !180183
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !180216
  store i64 %1, ptr %i.g, align 8, !dbg !180216
  store i64 %1, ptr %i.a, align 8, !dbg !180217
  br label %bb.c, !dbg !180218

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.h = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 5 uses
  %i.i = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !180211 ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !dbg !180219, !nonnull !3817, !align !4617, !noundef !3817 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !180219
  %i.l = load i64, ptr %i.k, align 8, !dbg !180219, !noundef !3817 ; 4 uses
  %i.m = icmp ult i64 %1, %i.i, !dbg !180220
  %.not11 = icmp ugt i64 %1, %i.l
  %or.cond = or i1 %.not11, %i.m, !dbg !180220
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !180220, !prof !4246

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %1, !dbg !180221
  %i.o = icmp samesign eq i64 %i.i, %1, !dbg !180222
  br i1 %i.o, label %bb.f, label %iter.check, !dbg !180193

iter.check:                                       ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.i, !dbg !180223 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load i16, ptr %i.q, align 8, !alias.scope !180195 ; 3 uses
  %i.r = shl i64 %1, 1, !dbg !180193
  %i.s = add i64 %i.r, -2, !dbg !180193
  %i.t = shl i64 %i.i, 1, !dbg !180193
  %i.u = sub i64 %i.s, %i.t, !dbg !180193         ; 3 uses
  %i.v = lshr exact i64 %i.u, 1, !dbg !180193
  %i.w = add nuw i64 %i.v, 1, !dbg !180193        ; 5 uses
  %min.iters.check = icmp ult i64 %i.u, 6, !dbg !180193
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !180193

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check30 = icmp ult i64 %i.u, 30, !dbg !180193
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph, !dbg !180193

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %i.w, 12
  %n.vec = and i64 %i.w, -16                      ; 4 uses
  %i.y = shl i64 %n.vec, 1
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y
  %i.aa = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %.promoted, i64 0
  br label %vector.body, !dbg !180193

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.aa, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi31 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %i.ab = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16, !dbg !180224
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !dbg !180224
  %wide.load32 = load <8 x i16>, ptr %i.ac, align 2, !dbg !180224
  %i.ad = sub <8 x i16> %vec.phi, %wide.load, !dbg !180225 ; 2 uses
  %i.ae = sub <8 x i16> %vec.phi31, %wide.load32, !dbg !180225 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec, !dbg !180193
  br i1 %i.af, label %middle.block, label %vector.body, !dbg !180193, !llvm.loop !180171

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.ae, %i.ad, !dbg !180193
  %i.ag = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx), !dbg !180193 ; 3 uses
  %cmp.n = icmp eq i64 %i.w, %n.vec, !dbg !180193
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !180193

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !4441

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.ag, %vec.epilog.iter.check ], [ %.promoted, %vector.main.loop.iter.check ], !dbg !180226
  %n.vec33 = and i64 %i.w, -4                     ; 3 uses
  %i.ah = shl i64 %n.vec33, 1
  %i.ai = getelementptr i8, ptr %i.p, i64 %i.ah
  %i.aj = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi35 = phi <4 x i16> [ %i.aj, %vec.epilog.ph ], [ %i.al, %vec.epilog.vector.body ]
  %i.ak = shl i64 %index34, 1
  %next.gep36 = getelementptr i8, ptr %i.p, i64 %i.ak
  %wide.load37 = load <4 x i16>, ptr %next.gep36, align 2, !dbg !180224
  %i.al = sub <4 x i16> %vec.phi35, %wide.load37, !dbg !180225 ; 2 uses
  %index.next38 = add nuw i64 %index34, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next38, %n.vec33, !dbg !180193
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !180193, !llvm.loop !180172

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.an = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.al), !dbg !180193 ; 2 uses
  %cmp.n39 = icmp eq i64 %i.w, %n.vec33, !dbg !180193
  br i1 %cmp.n39, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !180193

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph80 = phi i16 [ %.promoted, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.sroa.03.014.ph = phi ptr [ %i.p, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !180193

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %1, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !180227
  unreachable, !dbg !180227

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.ao = phi i16 [ %i.ar, %vec.epilog.scalar.ph ], [ %.ph80, %vec.epilog.scalar.ph.preheader ], !dbg !180226
  %.sroa.03.014 = phi ptr [ %i.ap, %vec.epilog.scalar.ph ], [ %.sroa.03.014.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 2, !dbg !180226 ; 2 uses
  %i.aq = load i16, ptr %.sroa.03.014, align 2, !dbg !180224, !noundef !3817
  %i.ar = sub i16 %i.ao, %i.aq, !dbg !180225      ; 2 uses
  %i.as = icmp eq ptr %i.ap, %i.n, !dbg !180222
  br i1 %i.as, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !180193, !llvm.loop !180173

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa29 = phi i16 [ %i.an, %vec.epilog.middle.block ], [ %i.ag, %middle.block ], [ %i.ar, %vec.epilog.scalar.ph ], !dbg !180225
  store i16 %.lcssa29, ptr %i.q, align 8, !dbg !180225, !alias.scope !180195
  br label %bb.f, !dbg !180193

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.at = icmp ult i64 %2, %i.h, !dbg !180228
  %.not12 = icmp ugt i64 %2, %i.l
  %or.cond13 = or i1 %.not12, %i.at, !dbg !180228
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !180228, !prof !4246

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %2, !dbg !180229
  %i.av = icmp samesign eq i64 %i.h, %2, !dbg !180230
  br i1 %i.av, label %bb.i, label %iter.check60, !dbg !180231

iter.check60:                                     ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.h, !dbg !180232 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted19 = load i16, ptr %i.ax, align 8, !alias.scope !180207 ; 3 uses
  %i.ay = shl i64 %2, 1, !dbg !180231
  %i.az = add i64 %i.ay, -2, !dbg !180231
  %i.ba = shl i64 %i.h, 1, !dbg !180231
  %i.bb = sub i64 %i.az, %i.ba, !dbg !180231      ; 3 uses
  %i.bc = lshr exact i64 %i.bb, 1, !dbg !180231
  %i.bd = add nuw i64 %i.bc, 1, !dbg !180231      ; 5 uses
  %min.iters.check42 = icmp ult i64 %i.bb, 6, !dbg !180231
  br i1 %min.iters.check42, label %vec.epilog.scalar.ph61.preheader, label %vector.main.loop.iter.check43, !dbg !180231

vector.main.loop.iter.check43:                    ; preds = %iter.check60
  %min.iters.check44 = icmp ult i64 %i.bb, 30, !dbg !180231
  br i1 %min.iters.check44, label %vec.epilog.ph64, label %vector.ph45, !dbg !180231

vector.ph45:                                      ; preds = %vector.main.loop.iter.check43
  %i.be = and i64 %i.bd, 12
  %n.vec46 = and i64 %i.bd, -16                   ; 4 uses
  %i.bf = shl i64 %n.vec46, 1
  %i.bg = getelementptr i8, ptr %i.aw, i64 %i.bf
  %i.bh = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %.promoted19, i64 0
  br label %vector.body47, !dbg !180231

vector.body47:                                    ; preds = %vector.ph45, %vector.body47
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next54, %vector.body47 ] ; 2 uses
  %vec.phi49.a = phi <8 x i16> [ %i.bh, %vector.ph45 ], [ %i.bk, %vector.body47 ]
  %vec.phi50 = phi <8 x i16> [ zeroinitializer, %vector.ph45 ], [ %i.bl, %vector.body47 ]
  %i.bi = shl i64 %index48, 1
  %next.gep51 = getelementptr i8, ptr %i.aw, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep51, i64 16, !dbg !180233
  %wide.load52.a = load <8 x i16>, ptr %next.gep51, align 2, !dbg !180233
  %wide.load53 = load <8 x i16>, ptr %i.bj, align 2, !dbg !180233
  %i.bk = add <8 x i16> %vec.phi49.a, %wide.load52.a, !dbg !180234 ; 2 uses
  %i.bl = add <8 x i16> %vec.phi50, %wide.load53, !dbg !180234 ; 2 uses
  %index.next54 = add nuw i64 %index48, 16        ; 2 uses
  %i.bm = icmp eq i64 %index.next54, %n.vec46, !dbg !180231
  br i1 %i.bm, label %middle.block55, label %vector.body47, !dbg !180231, !llvm.loop !180180

middle.block55:                                   ; preds = %vector.body47
  %bin.rdx56 = add <8 x i16> %i.bl, %i.bk, !dbg !180231
  %i.bn = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx56), !dbg !180231 ; 3 uses
  %cmp.n57 = icmp eq i64 %i.bd, %n.vec46, !dbg !180231
  br i1 %cmp.n57, label %._crit_edge18, label %vec.epilog.iter.check62, !dbg !180231

vec.epilog.iter.check62:                          ; preds = %middle.block55
  %min.epilog.iters.check63 = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check63, label %vec.epilog.scalar.ph61.preheader, label %vec.epilog.ph64, !prof !4441

vec.epilog.ph64:                                  ; preds = %vector.main.loop.iter.check43, %vec.epilog.iter.check62
  %vec.epilog.resume.val58 = phi i64 [ %n.vec46, %vec.epilog.iter.check62 ], [ 0, %vector.main.loop.iter.check43 ]
  %bc.merge.rdx59 = phi i16 [ %i.bn, %vec.epilog.iter.check62 ], [ %.promoted19, %vector.main.loop.iter.check43 ], !dbg !180235
  %n.vec65 = and i64 %i.bd, -4                    ; 3 uses
  %i.bo = shl i64 %n.vec65, 1
  %i.bp = getelementptr i8, ptr %i.aw, i64 %i.bo
  %i.bq = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx59, i64 0
  br label %vec.epilog.vector.body66

vec.epilog.vector.body66:                         ; preds = %vec.epilog.vector.body66, %vec.epilog.ph64
  %index67 = phi i64 [ %vec.epilog.resume.val58, %vec.epilog.ph64 ], [ %index.next71, %vec.epilog.vector.body66 ] ; 2 uses
  %vec.phi68 = phi <4 x i16> [ %i.bq, %vec.epilog.ph64 ], [ %i.bs, %vec.epilog.vector.body66 ]
  %i.br = shl i64 %index67, 1
  %next.gep69 = getelementptr i8, ptr %i.aw, i64 %i.br
  %wide.load70 = load <4 x i16>, ptr %next.gep69, align 2, !dbg !180233
  %i.bs = add <4 x i16> %vec.phi68, %wide.load70, !dbg !180234 ; 2 uses
  %index.next71 = add nuw i64 %index67, 4         ; 2 uses
  %i.bt = icmp eq i64 %index.next71, %n.vec65, !dbg !180231
  br i1 %i.bt, label %vec.epilog.middle.block72, label %vec.epilog.vector.body66, !dbg !180231, !llvm.loop !180181

vec.epilog.middle.block72:                        ; preds = %vec.epilog.vector.body66
  %i.bu = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.bs), !dbg !180231 ; 2 uses
  %cmp.n73 = icmp eq i64 %i.bd, %n.vec65, !dbg !180231
  br i1 %cmp.n73, label %._crit_edge18, label %vec.epilog.scalar.ph61.preheader, !dbg !180231

vec.epilog.scalar.ph61.preheader:                 ; preds = %iter.check60, %vec.epilog.iter.check62, %vec.epilog.middle.block72
  %.ph = phi i16 [ %.promoted19, %iter.check60 ], [ %i.bn, %vec.epilog.iter.check62 ], [ %i.bu, %vec.epilog.middle.block72 ]
  %.sroa.06.015.ph = phi ptr [ %i.aw, %iter.check60 ], [ %i.bg, %vec.epilog.iter.check62 ], [ %i.bp, %vec.epilog.middle.block72 ]
  br label %vec.epilog.scalar.ph61, !dbg !180231

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %2, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !180236
  unreachable, !dbg !180236

vec.epilog.scalar.ph61:                           ; preds = %vec.epilog.scalar.ph61.preheader, %vec.epilog.scalar.ph61
  %i.bv = phi i16 [ %i.by, %vec.epilog.scalar.ph61 ], [ %.ph, %vec.epilog.scalar.ph61.preheader ], !dbg !180235
  %.sroa.06.015 = phi ptr [ %i.bw, %vec.epilog.scalar.ph61 ], [ %.sroa.06.015.ph, %vec.epilog.scalar.ph61.preheader ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 2, !dbg !180235 ; 2 uses
  %i.bx = load i16, ptr %.sroa.06.015, align 2, !dbg !180233, !noundef !3817
  %i.by = add i16 %i.bv, %i.bx, !dbg !180234      ; 2 uses
  %i.bz = icmp eq ptr %i.bw, %i.au, !dbg !180230
  br i1 %i.bz, label %._crit_edge18, label %vec.epilog.scalar.ph61, !dbg !180231, !llvm.loop !180182

._crit_edge18:                                    ; preds = %vec.epilog.scalar.ph61, %vec.epilog.middle.block72, %middle.block55
  %.lcssa = phi i16 [ %i.bu, %vec.epilog.middle.block72 ], [ %i.bn, %middle.block55 ], [ %i.by, %vec.epilog.scalar.ph61 ], !dbg !180234
  store i16 %.lcssa, ptr %i.ax, align 8, !dbg !180234, !alias.scope !180207
  br label %bb.i, !dbg !180231

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !180211
  store i64 %1, ptr %i.ca, align 8, !dbg !180237
  store i64 %2, ptr %i.a, align 8, !dbg !180238
  ret void, !dbg !180239
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowssEINtNtB6_8no_nulls23RollingAggWindowNoNullssE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180240 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180244), !dbg !180245
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !180246
  %i.b = load i64, ptr %i.a, align 8, !dbg !180246, !alias.scope !180244, !noundef !3817 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !180246
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !180246

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180247
  %i.e = load i16, ptr %i.d, align 8, !dbg !180247, !alias.scope !180244, !noundef !3817
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowssE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180248

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !180249
  %i.g = load i64, ptr %i.f, align 8, !dbg !180249, !alias.scope !180244, !noundef !3817
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !180250
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !180250

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !180251
  %i.j = load i64, ptr %i.i, align 8, !dbg !180251, !alias.scope !180244, !noundef !3817
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !180252
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !180252

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i16 @_RNvYsNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180253, !noalias !180244
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowssE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180254

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i16 @_RNvYsNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180255, !noalias !180244
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowssE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180256

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i16 @_RNvYsNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180257, !noalias !180244
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowssE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180256

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowssE7get_sumCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i16 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !180258
  %i.o = insertvalue { i16, i16 } { i16 1, i16 undef }, i16 %.sroa.5.0.i, 1, !dbg !180259
  ret { i16, i16 } %i.o, !dbg !180260
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowttEINtNtB6_8no_nulls23RollingAggWindowNoNullstE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 4611686018427387904) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180261 {
bb.a:
  %.not11.i = icmp ugt i64 %3, %2
  br i1 %.not11.i, label %bb.b, label %._crit_edge.i, !dbg !180286, !prof !4246

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !180287, !noalias !180285
  unreachable, !dbg !180287

._crit_edge.i:                                    ; preds = %bb.a
  %i.a = icmp ult i64 %4, %3, !dbg !180288
  %.not12.i = icmp ugt i64 %4, %2
  %or.cond13.i = or i1 %.not12.i, %i.a, !dbg !180288
  br i1 %or.cond13.i, label %bb.d, label %bb.c, !dbg !180288, !prof !4246

bb.c:                                             ; preds = %._crit_edge.i
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %4, !dbg !180289
  %i.c = icmp samesign eq i64 %3, %4, !dbg !180290
  br i1 %i.c, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowttEINtNtB6_8no_nulls23RollingAggWindowNoNullstE6updateCskY9G75ZWc4U_11polars_expr.exit, label %iter.check, !dbg !180291

iter.check:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %3, !dbg !180292 ; 5 uses
  %i.e = shl i64 %4, 1, !dbg !180291
  %i.f = add i64 %i.e, -2, !dbg !180291
  %i.g = shl i64 %3, 1, !dbg !180291
  %i.h = sub i64 %i.f, %i.g, !dbg !180291         ; 3 uses
  %i.i = lshr exact i64 %i.h, 1, !dbg !180291
  %i.j = add nuw i64 %i.i, 1, !dbg !180291        ; 5 uses
  %min.iters.check = icmp ult i64 %i.h, 6, !dbg !180291
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !180291

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check8 = icmp ult i64 %i.h, 30, !dbg !180291
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !180291

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.j, 12
  %n.vec = and i64 %i.j, -16                      ; 4 uses
  %i.l = shl i64 %n.vec, 1
  %i.m = getelementptr i8, ptr %i.d, i64 %i.l
  br label %vector.body, !dbg !180291

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi9 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %i.n = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.n ; 2 uses
  %i.o = getelementptr i8, ptr %next.gep, i64 16, !dbg !180293
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !dbg !180293, !noalias !180285
  %wide.load10 = load <8 x i16>, ptr %i.o, align 2, !dbg !180293, !noalias !180285
  %i.p = add <8 x i16> %wide.load, %vec.phi, !dbg !180294 ; 2 uses
  %i.q = add <8 x i16> %wide.load10, %vec.phi9, !dbg !180294 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec, !dbg !180291
  br i1 %i.r, label %middle.block, label %vector.body, !dbg !180291, !llvm.loop !180281

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.q, %i.p, !dbg !180291
  %i.s = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx), !dbg !180291 ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec, !dbg !180291
  br i1 %cmp.n, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowttEINtNtB6_8no_nulls23RollingAggWindowNoNullstE6updateCskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.iter.check, !dbg !180291

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !4441

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.s, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !180295
  %n.vec11 = and i64 %i.j, -4                     ; 3 uses
  %i.t = shl i64 %n.vec11, 1
  %i.u = getelementptr i8, ptr %i.d, i64 %i.t
  %i.v = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi13 = phi <4 x i16> [ %i.v, %vec.epilog.ph ], [ %i.x, %vec.epilog.vector.body ]
  %i.w = shl i64 %index12, 1
  %next.gep14 = getelementptr i8, ptr %i.d, i64 %i.w
  %wide.load15 = load <4 x i16>, ptr %next.gep14, align 2, !dbg !180293, !noalias !180285
  %i.x = add <4 x i16> %wide.load15, %vec.phi13, !dbg !180294 ; 2 uses
  %index.next16 = add nuw i64 %index12, 4         ; 2 uses
  %i.y = icmp eq i64 %index.next16, %n.vec11, !dbg !180291
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !180291, !llvm.loop !180283

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.z = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.x), !dbg !180291 ; 2 uses
  %cmp.n17 = icmp eq i64 %i.j, %n.vec11, !dbg !180291
  br i1 %cmp.n17, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowttEINtNtB6_8no_nulls23RollingAggWindowNoNullstE6updateCskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph.preheader, !dbg !180291

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i16 [ 0, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  %.sroa.06.015.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !180291

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !180296, !noalias !180285
  unreachable, !dbg !180296

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.aa = phi i16 [ %i.ad, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !180295
  %.sroa.06.015.i = phi ptr [ %i.ab, %vec.epilog.scalar.ph ], [ %.sroa.06.015.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 2, !dbg !180295 ; 2 uses
  %i.ac = load i16, ptr %.sroa.06.015.i, align 2, !dbg !180293, !noalias !180285, !noundef !3817
  %i.ad = add i16 %i.ac, %i.aa, !dbg !180294      ; 2 uses
  %i.ae = icmp eq ptr %i.ab, %i.b, !dbg !180290
  br i1 %i.ae, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowttEINtNtB6_8no_nulls23RollingAggWindowNoNullstE6updateCskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !180291, !llvm.loop !180284

_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowttEINtNtB6_8no_nulls23RollingAggWindowNoNullstE6updateCskY9G75ZWc4U_11polars_expr.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %.sroa.16.2 = phi i16 [ 0, %bb.c ], [ %i.z, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %i.ad, %vec.epilog.scalar.ph ], !dbg !180297
  store ptr %1, ptr %0, align 8, !dbg !180298
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !180298
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !180298
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !180298
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !180298
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i8 0, i64 40, i1 false), !dbg !180298
  store i64 %3, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !180298
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !180298
  store i64 %4, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !180298
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180298
  store i16 %.sroa.16.2, ptr %.sroa.16.0..sroa_idx, align 8, !dbg !180298
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 74, !dbg !180298
  store i16 0, ptr %.sroa.21.0..sroa_idx, align 2, !dbg !180298
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !180298
  store i16 0, ptr %.sroa.22.0..sroa_idx, align 4, !dbg !180298
  ret void, !dbg !180299
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowttEINtNtB6_8no_nulls23RollingAggWindowNoNullstE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3281 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !180354 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !180354, !noundef !3817 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !180355
  br i1 %.not, label %._crit_edge22, label %bb.b, !dbg !180355

._crit_edge22:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !180356
  br label %bb.c, !dbg !180355

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180357
  store i16 0, ptr %i.c, align 8, !dbg !180357, !alias.scope !180328
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 74, !dbg !180358
  store i16 0, ptr %i.d, align 2, !dbg !180358, !alias.scope !180328
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76, !dbg !180359
  store i16 0, ptr %i.e, align 4, !dbg !180359, !alias.scope !180328
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !180360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !dbg !180360, !alias.scope !180328
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !180361
  store i64 %1, ptr %i.g, align 8, !dbg !180361
  store i64 %1, ptr %i.a, align 8, !dbg !180362
  br label %bb.c, !dbg !180363

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.h = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 5 uses
  %i.i = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !180356 ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !dbg !180364, !nonnull !3817, !align !4617, !noundef !3817 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !180364
  %i.l = load i64, ptr %i.k, align 8, !dbg !180364, !noundef !3817 ; 4 uses
  %i.m = icmp ult i64 %1, %i.i, !dbg !180365
  %.not11 = icmp ugt i64 %1, %i.l
  %or.cond = or i1 %.not11, %i.m, !dbg !180365
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !180365, !prof !4246

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %1, !dbg !180366
  %i.o = icmp samesign eq i64 %i.i, %1, !dbg !180367
  br i1 %i.o, label %bb.f, label %iter.check, !dbg !180338

iter.check:                                       ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.i, !dbg !180368 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load i16, ptr %i.q, align 8, !alias.scope !180340 ; 3 uses
  %i.r = shl i64 %1, 1, !dbg !180338
  %i.s = add i64 %i.r, -2, !dbg !180338
  %i.t = shl i64 %i.i, 1, !dbg !180338
  %i.u = sub i64 %i.s, %i.t, !dbg !180338         ; 3 uses
  %i.v = lshr exact i64 %i.u, 1, !dbg !180338
  %i.w = add nuw i64 %i.v, 1, !dbg !180338        ; 5 uses
  %min.iters.check = icmp ult i64 %i.u, 6, !dbg !180338
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !180338

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check30 = icmp ult i64 %i.u, 30, !dbg !180338
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph, !dbg !180338

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %i.w, 12
  %n.vec = and i64 %i.w, -16                      ; 4 uses
  %i.y = shl i64 %n.vec, 1
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y
  %i.aa = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %.promoted, i64 0
  br label %vector.body, !dbg !180338

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.aa, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi31 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %i.ab = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16, !dbg !180369
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !dbg !180369
  %wide.load32 = load <8 x i16>, ptr %i.ac, align 2, !dbg !180369
  %i.ad = sub <8 x i16> %vec.phi, %wide.load, !dbg !180370 ; 2 uses
  %i.ae = sub <8 x i16> %vec.phi31, %wide.load32, !dbg !180370 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec, !dbg !180338
  br i1 %i.af, label %middle.block, label %vector.body, !dbg !180338, !llvm.loop !180316

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.ae, %i.ad, !dbg !180338
  %i.ag = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx), !dbg !180338 ; 3 uses
  %cmp.n = icmp eq i64 %i.w, %n.vec, !dbg !180338
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !180338

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !4441

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.ag, %vec.epilog.iter.check ], [ %.promoted, %vector.main.loop.iter.check ], !dbg !180371
  %n.vec33 = and i64 %i.w, -4                     ; 3 uses
  %i.ah = shl i64 %n.vec33, 1
  %i.ai = getelementptr i8, ptr %i.p, i64 %i.ah
  %i.aj = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi35 = phi <4 x i16> [ %i.aj, %vec.epilog.ph ], [ %i.al, %vec.epilog.vector.body ]
  %i.ak = shl i64 %index34, 1
  %next.gep36 = getelementptr i8, ptr %i.p, i64 %i.ak
  %wide.load37 = load <4 x i16>, ptr %next.gep36, align 2, !dbg !180369
  %i.al = sub <4 x i16> %vec.phi35, %wide.load37, !dbg !180370 ; 2 uses
  %index.next38 = add nuw i64 %index34, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next38, %n.vec33, !dbg !180338
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !180338, !llvm.loop !180317

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.an = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.al), !dbg !180338 ; 2 uses
  %cmp.n39 = icmp eq i64 %i.w, %n.vec33, !dbg !180338
  br i1 %cmp.n39, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !180338

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph80 = phi i16 [ %.promoted, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.sroa.03.014.ph = phi ptr [ %i.p, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !180338

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %1, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !180372
  unreachable, !dbg !180372

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.ao = phi i16 [ %i.ar, %vec.epilog.scalar.ph ], [ %.ph80, %vec.epilog.scalar.ph.preheader ], !dbg !180371
  %.sroa.03.014 = phi ptr [ %i.ap, %vec.epilog.scalar.ph ], [ %.sroa.03.014.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.03.014, i64 2, !dbg !180371 ; 2 uses
  %i.aq = load i16, ptr %.sroa.03.014, align 2, !dbg !180369, !noundef !3817
  %i.ar = sub i16 %i.ao, %i.aq, !dbg !180370      ; 2 uses
  %i.as = icmp eq ptr %i.ap, %i.n, !dbg !180367
  br i1 %i.as, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !180338, !llvm.loop !180318

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa29 = phi i16 [ %i.an, %vec.epilog.middle.block ], [ %i.ag, %middle.block ], [ %i.ar, %vec.epilog.scalar.ph ], !dbg !180370
  store i16 %.lcssa29, ptr %i.q, align 8, !dbg !180370, !alias.scope !180340
  br label %bb.f, !dbg !180338

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.at = icmp ult i64 %2, %i.h, !dbg !180373
  %.not12 = icmp ugt i64 %2, %i.l
  %or.cond13 = or i1 %.not12, %i.at, !dbg !180373
  br i1 %or.cond13, label %bb.h, label %bb.g, !dbg !180373, !prof !4246

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %2, !dbg !180374
  %i.av = icmp samesign eq i64 %i.h, %2, !dbg !180375
  br i1 %i.av, label %bb.i, label %iter.check60, !dbg !180376

iter.check60:                                     ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.h, !dbg !180377 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted19 = load i16, ptr %i.ax, align 8, !alias.scope !180352 ; 3 uses
  %i.ay = shl i64 %2, 1, !dbg !180376
  %i.az = add i64 %i.ay, -2, !dbg !180376
  %i.ba = shl i64 %i.h, 1, !dbg !180376
  %i.bb = sub i64 %i.az, %i.ba, !dbg !180376      ; 3 uses
  %i.bc = lshr exact i64 %i.bb, 1, !dbg !180376
  %i.bd = add nuw i64 %i.bc, 1, !dbg !180376      ; 5 uses
  %min.iters.check42 = icmp ult i64 %i.bb, 6, !dbg !180376
  br i1 %min.iters.check42, label %vec.epilog.scalar.ph61.preheader, label %vector.main.loop.iter.check43, !dbg !180376

vector.main.loop.iter.check43:                    ; preds = %iter.check60
  %min.iters.check44 = icmp ult i64 %i.bb, 30, !dbg !180376
  br i1 %min.iters.check44, label %vec.epilog.ph64, label %vector.ph45, !dbg !180376

vector.ph45:                                      ; preds = %vector.main.loop.iter.check43
  %i.be = and i64 %i.bd, 12
  %n.vec46 = and i64 %i.bd, -16                   ; 4 uses
  %i.bf = shl i64 %n.vec46, 1
  %i.bg = getelementptr i8, ptr %i.aw, i64 %i.bf
  %i.bh = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %.promoted19, i64 0
  br label %vector.body47, !dbg !180376

vector.body47:                                    ; preds = %vector.ph45, %vector.body47
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next54, %vector.body47 ] ; 2 uses
  %vec.phi49.a = phi <8 x i16> [ %i.bh, %vector.ph45 ], [ %i.bk, %vector.body47 ]
  %vec.phi50 = phi <8 x i16> [ zeroinitializer, %vector.ph45 ], [ %i.bl, %vector.body47 ]
  %i.bi = shl i64 %index48, 1
  %next.gep51 = getelementptr i8, ptr %i.aw, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep51, i64 16, !dbg !180378
  %wide.load52.a = load <8 x i16>, ptr %next.gep51, align 2, !dbg !180378
  %wide.load53 = load <8 x i16>, ptr %i.bj, align 2, !dbg !180378
  %i.bk = add <8 x i16> %vec.phi49.a, %wide.load52.a, !dbg !180379 ; 2 uses
  %i.bl = add <8 x i16> %vec.phi50, %wide.load53, !dbg !180379 ; 2 uses
  %index.next54 = add nuw i64 %index48, 16        ; 2 uses
  %i.bm = icmp eq i64 %index.next54, %n.vec46, !dbg !180376
  br i1 %i.bm, label %middle.block55, label %vector.body47, !dbg !180376, !llvm.loop !180325

middle.block55:                                   ; preds = %vector.body47
  %bin.rdx56 = add <8 x i16> %i.bl, %i.bk, !dbg !180376
  %i.bn = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx56), !dbg !180376 ; 3 uses
  %cmp.n57 = icmp eq i64 %i.bd, %n.vec46, !dbg !180376
  br i1 %cmp.n57, label %._crit_edge18, label %vec.epilog.iter.check62, !dbg !180376

vec.epilog.iter.check62:                          ; preds = %middle.block55
  %min.epilog.iters.check63 = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check63, label %vec.epilog.scalar.ph61.preheader, label %vec.epilog.ph64, !prof !4441

vec.epilog.ph64:                                  ; preds = %vector.main.loop.iter.check43, %vec.epilog.iter.check62
  %vec.epilog.resume.val58 = phi i64 [ %n.vec46, %vec.epilog.iter.check62 ], [ 0, %vector.main.loop.iter.check43 ]
  %bc.merge.rdx59 = phi i16 [ %i.bn, %vec.epilog.iter.check62 ], [ %.promoted19, %vector.main.loop.iter.check43 ], !dbg !180380
  %n.vec65 = and i64 %i.bd, -4                    ; 3 uses
  %i.bo = shl i64 %n.vec65, 1
  %i.bp = getelementptr i8, ptr %i.aw, i64 %i.bo
  %i.bq = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx59, i64 0
  br label %vec.epilog.vector.body66

vec.epilog.vector.body66:                         ; preds = %vec.epilog.vector.body66, %vec.epilog.ph64
  %index67 = phi i64 [ %vec.epilog.resume.val58, %vec.epilog.ph64 ], [ %index.next71, %vec.epilog.vector.body66 ] ; 2 uses
  %vec.phi68 = phi <4 x i16> [ %i.bq, %vec.epilog.ph64 ], [ %i.bs, %vec.epilog.vector.body66 ]
  %i.br = shl i64 %index67, 1
  %next.gep69 = getelementptr i8, ptr %i.aw, i64 %i.br
  %wide.load70 = load <4 x i16>, ptr %next.gep69, align 2, !dbg !180378
  %i.bs = add <4 x i16> %vec.phi68, %wide.load70, !dbg !180379 ; 2 uses
  %index.next71 = add nuw i64 %index67, 4         ; 2 uses
  %i.bt = icmp eq i64 %index.next71, %n.vec65, !dbg !180376
  br i1 %i.bt, label %vec.epilog.middle.block72, label %vec.epilog.vector.body66, !dbg !180376, !llvm.loop !180326

vec.epilog.middle.block72:                        ; preds = %vec.epilog.vector.body66
  %i.bu = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.bs), !dbg !180376 ; 2 uses
  %cmp.n73 = icmp eq i64 %i.bd, %n.vec65, !dbg !180376
  br i1 %cmp.n73, label %._crit_edge18, label %vec.epilog.scalar.ph61.preheader, !dbg !180376

vec.epilog.scalar.ph61.preheader:                 ; preds = %iter.check60, %vec.epilog.iter.check62, %vec.epilog.middle.block72
  %.ph = phi i16 [ %.promoted19, %iter.check60 ], [ %i.bn, %vec.epilog.iter.check62 ], [ %i.bu, %vec.epilog.middle.block72 ]
  %.sroa.06.015.ph = phi ptr [ %i.aw, %iter.check60 ], [ %i.bg, %vec.epilog.iter.check62 ], [ %i.bp, %vec.epilog.middle.block72 ]
  br label %vec.epilog.scalar.ph61, !dbg !180376

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %2, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !180381
  unreachable, !dbg !180381

vec.epilog.scalar.ph61:                           ; preds = %vec.epilog.scalar.ph61.preheader, %vec.epilog.scalar.ph61
  %i.bv = phi i16 [ %i.by, %vec.epilog.scalar.ph61 ], [ %.ph, %vec.epilog.scalar.ph61.preheader ], !dbg !180380
  %.sroa.06.015 = phi ptr [ %i.bw, %vec.epilog.scalar.ph61 ], [ %.sroa.06.015.ph, %vec.epilog.scalar.ph61.preheader ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 2, !dbg !180380 ; 2 uses
  %i.bx = load i16, ptr %.sroa.06.015, align 2, !dbg !180378, !noundef !3817
  %i.by = add i16 %i.bv, %i.bx, !dbg !180379      ; 2 uses
  %i.bz = icmp eq ptr %i.bw, %i.au, !dbg !180375
  br i1 %i.bz, label %._crit_edge18, label %vec.epilog.scalar.ph61, !dbg !180376, !llvm.loop !180327

._crit_edge18:                                    ; preds = %vec.epilog.scalar.ph61, %vec.epilog.middle.block72, %middle.block55
  %.lcssa = phi i16 [ %i.bu, %vec.epilog.middle.block72 ], [ %i.bn, %middle.block55 ], [ %i.by, %vec.epilog.scalar.ph61 ], !dbg !180379
  store i16 %.lcssa, ptr %i.ax, align 8, !dbg !180379, !alias.scope !180352
  br label %bb.i, !dbg !180376

bb.i:                                             ; preds = %._crit_edge18, %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !180356
  store i64 %1, ptr %i.ca, align 8, !dbg !180382
  store i64 %2, ptr %i.a, align 8, !dbg !180383
  ret void, !dbg !180384
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowttEINtNtB6_8no_nulls23RollingAggWindowNoNullstE7get_aggCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180385 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180389), !dbg !180390
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !180391
  %i.b = load i64, ptr %i.a, align 8, !dbg !180391, !alias.scope !180389, !noundef !3817 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !180391
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !180391

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !180392
  %i.e = load i16, ptr %i.d, align 8, !dbg !180392, !alias.scope !180389, !noundef !3817
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180393

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !180394
  %i.g = load i64, ptr %i.f, align 8, !dbg !180394, !alias.scope !180389, !noundef !3817
  %i.h = icmp eq i64 %i.b, %i.g, !dbg !180395
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !180395

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !180396
  %i.j = load i64, ptr %i.i, align 8, !dbg !180396, !alias.scope !180389, !noundef !3817
  %i.k = icmp eq i64 %i.b, %i.j, !dbg !180397
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !180397

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef i16 @_RNvYtNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13pos_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180398, !noalias !180389
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180399

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i16 @_RNvYtNtNtCs2mZqlW55729_12polars_utils5float7IsFloat9nan_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180400, !noalias !180389
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180401

bb.g:                                             ; preds = %bb.d
  %i.n = tail call noundef i16 @_RNvYtNtNtCs2mZqlW55729_12polars_utils5float7IsFloat13neg_inf_valueCskY9G75ZWc4U_11polars_expr(), !dbg !180402, !noalias !180389
  br label %_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCskY9G75ZWc4U_11polars_expr.exit, !dbg !180401

_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i = phi i16 [ %i.e, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.m, %bb.f ], !dbg !180403
  %i.o = insertvalue { i16, i16 } { i16 1, i16 undef }, i16 %.sroa.5.0.i, 1, !dbg !180404
  ret { i16, i16 } %i.o, !dbg !180405
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180406 {
bb.a:
  %.not11.i = icmp ugt i64 %3, %2
  br i1 %.not11.i, label %bb.b, label %._crit_edge.i, !dbg !180430, !prof !4246

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %3, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #45, !dbg !180431, !noalias !180429
  unreachable, !dbg !180431

._crit_edge.i:                                    ; preds = %bb.a
  %i.a = icmp ult i64 %4, %3, !dbg !180432
  %.not12.i = icmp ugt i64 %4, %2
  %or.cond13.i = or i1 %.not12.i, %i.a, !dbg !180432
  br i1 %or.cond13.i, label %bb.d, label %bb.c, !dbg !180432, !prof !4246

bb.c:                                             ; preds = %._crit_edge.i
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %4, !dbg !180433
  %i.c = icmp samesign eq i64 %3, %4, !dbg !180434
  br i1 %i.c, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph17.i, !dbg !180435

.lr.ph17.i:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3, !dbg !180436 ; 3 uses
  %i.e = shl i64 %4, 3, !dbg !180435
  %i.f = shl i64 %3, 3, !dbg !180435
  %i.g = add i64 %i.e, -8, !dbg !180435
  %i.h = sub i64 %i.g, %i.f, !dbg !180435         ; 2 uses
  %i.i = lshr exact i64 %i.h, 3, !dbg !180435
  %i.j = add nuw nsw i64 %i.i, 1, !dbg !180435    ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 24, !dbg !180435
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !180435

vector.ph:                                        ; preds = %.lr.ph17.i
  %n.vec = and i64 %i.j, 4611686018427387900      ; 3 uses
  %i.k = shl i64 %n.vec, 3
  %i.l = getelementptr i8, ptr %i.d, i64 %i.k
  br label %vector.body, !dbg !180435

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi8 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %i.m = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.m ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 16, !dbg !180437
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !dbg !180437, !noalias !180429
  %wide.load9 = load <2 x i64>, ptr %i.n, align 8, !dbg !180437, !noalias !180429
  %i.o = add <2 x i64> %wide.load, %vec.phi, !dbg !180438 ; 2 uses
  %i.p = add <2 x i64> %wide.load9, %vec.phi8, !dbg !180438 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec, !dbg !180435
  br i1 %i.q, label %middle.block, label %vector.body, !dbg !180435, !llvm.loop !180426

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.p, %i.o, !dbg !180435
  %i.r = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx), !dbg !180435 ; 2 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec, !dbg !180435
  br i1 %cmp.n, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !180435

scalar.ph.preheader:                              ; preds = %.lr.ph17.i, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph17.i ], [ %i.r, %middle.block ]
  %.sroa.06.015.i.ph = phi ptr [ %i.d, %.lr.ph17.i ], [ %i.l, %middle.block ]
  br label %scalar.ph, !dbg !180435

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %4, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #45, !dbg !180439, !noalias !180429
  unreachable, !dbg !180439

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.s = phi i64 [ %i.v, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !180440
  %.sroa.06.015.i = phi ptr [ %i.t, %scalar.ph ], [ %.sroa.06.015.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 8, !dbg !180440 ; 2 uses
  %i.u = load i64, ptr %.sroa.06.015.i, align 8, !dbg !180437, !noalias !180429, !noundef !3817
  %i.v = add i64 %i.u, %i.s, !dbg !180438         ; 2 uses
  %i.w = icmp eq ptr %i.t, %i.b, !dbg !180434
  br i1 %i.w, label %_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !180435, !llvm.loop !180428

_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph, %middle.block, %bb.c
  %.sroa.8.2 = phi i64 [ 0, %bb.c ], [ %i.r, %middle.block ], [ %i.v, %scalar.ph ], !dbg !180441
  store ptr %1, ptr %0, align 8, !dbg !180442
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !180442
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !180442
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !180442
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !180442
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !180442
  store i64 %.sroa.8.2, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !180442
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !180442
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.0..sroa_idx, i8 0, i64 48, i1 false), !dbg !180442
  %.sroa.141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !180442
  store i64 %3, ptr %.sroa.141.0..sroa_idx, align 8, !dbg !180442
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !180442
  store i64 %4, ptr %.sroa.17.0..sroa_idx, align 8, !dbg !180442
  ret void, !dbg !180443
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3300 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !180496 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !180496, !noundef !3817 ; 2 uses
  %.not = icmp ult i64 %1, %i.b, !dbg !180497
  br i1 %.not, label %._crit_edge22, label %bb.b, !dbg !180497

._crit_edge22:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !180498
  br label %bb.c, !dbg !180497

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !180499
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false), !dbg !180500, !alias.scope !180470
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !180501
  store i64 %1, ptr %i.d, align 8, !dbg !180501
  store i64 %1, ptr %i.a, align 8, !dbg !180502
  br label %bb.c, !dbg !180503

bb.c:                                             ; preds = %._crit_edge22, %bb.b
  %i.e = phi i64 [ %i.b, %._crit_edge22 ], [ %1, %bb.b ] ; 5 uses
  %i.f = phi i64 [ %.pre, %._crit_edge22 ], [ %1, %bb.b ], !dbg !180498 ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !dbg !180504, !nonnull !3817, !align !3993, !noundef !3817 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !180504
  %i.i = load i64, ptr %i.h, align 8, !dbg !180504, !noundef !3817 ; 4 uses
  %i.j = icmp ult i64 %1, %i.f, !dbg !180505
  %.not11 = icmp ugt i64 %1, %i.i
  %or.cond = or i1 %.not11, %i.j, !dbg !180505
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !180505, !prof !4246

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %1, !dbg !180506
  %i.l = icmp samesign eq i64 %i.f, %1, !dbg !180507
  br i1 %i.l, label %bb.f, label %.lr.ph, !dbg !180480

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f, !dbg !180508 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted = load i64, ptr %i.n, align 8, !alias.scope !180482 ; 2 uses
  %i.o = shl i64 %1, 3, !dbg !180480
  %i.p = shl i64 %i.f, 3, !dbg !180480
  %i.q = add i64 %i.o, -8, !dbg !180480
end_hunk_2
begin_hunk_3_@llvm.vector.reduce.add.v4i16
!178561 = distinct !DILexicalBlock(scope: !178554, file: !5009, line: 139, column: 9)
!178562 = distinct !DILexicalBlock(scope: !178550, file: !4034, line: 97, column: 9)
!178563 = distinct !DILexicalBlock(scope: !178562, file: !4034, line: 98, column: 9)
!178564 = distinct !DILexicalBlock(scope: !178540, file: !5009, line: 143, column: 9)
!178565 = distinct !DILexicalBlock(scope: !178555, file: !4038, line: 161, column: 17)
!178566 = distinct !DILexicalBlock(scope: !178565, file: !4038, line: 162, column: 17)
!178567 = distinct !DILexicalBlock(scope: !178558, file: !3883, line: 87, column: 5)
!178568 = distinct !DILexicalBlock(scope: !178564, file: !5009, line: 143, column: 9)
!178569 = !{!178543}
!178570 = !DILocation(line: 139, column: 31, scope: !178540)
!178571 = !DILocation(line: 19, column: 15, scope: !178545, inlinedAt: !178570)
!178572 = !DILocation(line: 437, column: 32, scope: !178546, inlinedAt: !178571)
!178573 = !DILocation(line: 139, column: 20, scope: !178540)
!178574 = !DILocation(line: 26, column: 14, scope: !178548, inlinedAt: !178573)
!178575 = !DILocation(line: 1041, column: 9, scope: !178549, inlinedAt: !178574)
!178576 = !DILocation(line: 102, column: 78, scope: !178552, inlinedAt: !178575)
!178577 = !DILexicalBlockFile(scope: !178554, file: !5009, discriminator: 2)
!178578 = !DILocation(line: 139, column: 20, scope: !178577)
!178579 = !DILocation(line: 180, column: 28, scope: !178557, inlinedAt: !178578)
!178580 = !DILocation(line: 441, column: 24, scope: !178546, inlinedAt: !178571)
!178581 = !DILocation(line: 185, column: 40, scope: !178557, inlinedAt: !178578)
!178582 = !DILexicalBlockFile(scope: !178546, file: !3883, discriminator: 2)
!178583 = !DILexicalBlockFile(scope: !178545, file: !3883, discriminator: 2)
!178584 = !DILocation(line: 143, column: 31, scope: !178540)
!178585 = !DILocation(line: 19, column: 15, scope: !178583, inlinedAt: !178584)
!178586 = !DILocation(line: 437, column: 32, scope: !178582, inlinedAt: !178585)
!178587 = !DILexicalBlockFile(scope: !178563, file: !4034, discriminator: 2)
!178588 = !DILexicalBlockFile(scope: !178549, file: !3887, discriminator: 2)
!178589 = !DILexicalBlockFile(scope: !178548, file: !4034, discriminator: 2)
!178590 = !DILocation(line: 143, column: 20, scope: !178540)
!178591 = !DILocation(line: 26, column: 14, scope: !178589, inlinedAt: !178590)
!178592 = !DILocation(line: 1041, column: 9, scope: !178588, inlinedAt: !178591)
!178593 = !DILocation(line: 102, column: 78, scope: !178587, inlinedAt: !178592)
!178594 = !DILexicalBlockFile(scope: !178566, file: !4038, discriminator: 2)
!178595 = !DILexicalBlockFile(scope: !178564, file: !5009, discriminator: 2)
!178596 = !DILocation(line: 143, column: 20, scope: !178595)
!178597 = !DILocation(line: 180, column: 28, scope: !178594, inlinedAt: !178596)
!178598 = !DILocation(line: 441, column: 24, scope: !178582, inlinedAt: !178585)
!178599 = !DILocation(line: 185, column: 40, scope: !178594, inlinedAt: !178596)
!178600 = !DILocation(line: 133, column: 25, scope: !178540)
!178601 = !DILocation(line: 133, column: 12, scope: !178540)
!178602 = !DILocation(line: 139, column: 32, scope: !178540)
!178603 = !DILocation(line: 43, column: 9, scope: !2487, inlinedAt: !178541)
!178604 = !DILocation(line: 44, column: 9, scope: !2487, inlinedAt: !178541)
!178605 = !DILocation(line: 45, column: 9, scope: !2487, inlinedAt: !178541)
!178606 = !DILocation(line: 46, column: 9, scope: !2487, inlinedAt: !178541)
!178607 = !DILocation(line: 135, column: 13, scope: !178540)
!178608 = !DILocation(line: 136, column: 13, scope: !178540)
!178609 = !DILocation(line: 133, column: 9, scope: !178540)
!178610 = !DILocation(line: 139, column: 21, scope: !178540)
!178611 = !DILocation(line: 977, column: 16, scope: !178544, inlinedAt: !178572)
!178612 = !DILocation(line: 961, column: 18, scope: !178547, inlinedAt: !178576)
!178613 = !DILocation(line: 1717, column: 9, scope: !178553, inlinedAt: !178579)
!178614 = !DILocation(line: 89, column: 24, scope: !178559, inlinedAt: !178580)
!178615 = !DILocation(line: 443, column: 13, scope: !178546, inlinedAt: !178571)
!178616 = !DILocation(line: 659, column: 28, scope: !178560, inlinedAt: !178581)
!178617 = !DILocation(line: 140, column: 22, scope: !178561)
!178618 = !DILocation(line: 140, column: 18, scope: !178561)
!178619 = !DILocation(line: 143, column: 21, scope: !178540)
!178620 = !DILocation(line: 143, column: 32, scope: !178540)
!178621 = !DILocation(line: 977, column: 16, scope: !178544, inlinedAt: !178586)
!178622 = !DILocation(line: 961, column: 18, scope: !178547, inlinedAt: !178593)
!178623 = !DILocation(line: 1717, column: 9, scope: !178553, inlinedAt: !178597)
!178624 = !DILocation(line: 180, column: 28, scope: !178566, inlinedAt: !178596)
!178625 = !DILocation(line: 89, column: 24, scope: !178567, inlinedAt: !178598)
!178626 = !DILocation(line: 443, column: 13, scope: !178546, inlinedAt: !178585)
!178627 = !DILocation(line: 659, column: 28, scope: !178560, inlinedAt: !178599)
!178628 = !DILocation(line: 144, column: 22, scope: !178568)
!178629 = !DILocation(line: 144, column: 18, scope: !178568)
!178630 = !DILocation(line: 147, column: 9, scope: !178540)
!178631 = !DILocation(line: 148, column: 9, scope: !178540)
!178632 = !DILocation(line: 149, column: 6, scope: !178540)
!178633 = distinct !DISubprogram(name: "get_agg<polars_utils::float16::pf16, polars_utils::float16::pf16>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16B14_EINtNtB6_8no_nulls23RollingAggWindowNoNullsB14_E7get_aggCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 151, type: !3818, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178634 = distinct !DILocation(line: 152, column: 14, scope: !178633)
!178635 = distinct !{!178635, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16B12_E7get_sumCskY9G75ZWc4U_11polars_expr"}
!178636 = distinct !{!178636, !178635, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16B12_E7get_sumCskY9G75ZWc4U_11polars_expr: argument 0"}
!178637 = !{!178636}
!178638 = !DILocation(line: 99, column: 12, scope: !2488, inlinedAt: !178634)
!178639 = !DILocation(line: 100, column: 27, scope: !2488, inlinedAt: !178634)
!178640 = !DILocation(line: 100, column: 13, scope: !2488, inlinedAt: !178634)
!178641 = !DILocation(line: 99, column: 9, scope: !2488, inlinedAt: !178634)
!178642 = !DILocation(line: 101, column: 44, scope: !2488, inlinedAt: !178634)
!178643 = !DILocation(line: 101, column: 19, scope: !2488, inlinedAt: !178634)
!178644 = !DILocation(line: 103, column: 44, scope: !2488, inlinedAt: !178634)
!178645 = !DILocation(line: 103, column: 19, scope: !2488, inlinedAt: !178634)
!178646 = !DILocation(line: 0, scope: !2488, inlinedAt: !178634)
!178647 = !DILocation(line: 108, column: 6, scope: !2488, inlinedAt: !178634)
!178648 = !DILocation(line: 153, column: 6, scope: !178633)
!178649 = distinct !DISubprogram(name: "update<polars_utils::float16::pf16, f64>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dEINtNtB6_8no_nulls23RollingAggWindowNoNullsB14_E6updateCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 132, type: !3818, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178650 = distinct !DILocation(line: 134, column: 18, scope: !178649)
!178651 = distinct !{!178651, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dE5resetCskY9G75ZWc4U_11polars_expr"}
!178652 = distinct !{!178652, !178651, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dE5resetCskY9G75ZWc4U_11polars_expr: argument 0"}
!178653 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_sub", scope: !3882, file: !3880, line: 971, type: !3818, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178654 = distinct !DISubprogram(name: "index<polars_utils::float16::pf16, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtB6_3ops5index5IndexINtNtB1q_5range5RangejEE5indexCskY9G75ZWc4U_11polars_expr", scope: !4229, file: !3883, line: 18, type: !3818, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178655 = distinct !DISubprogram(name: "index<polars_utils::float16::pf16>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSNtNtCs2mZqlW55729_12polars_utils7float164pf16E5indexCskY9G75ZWc4U_11polars_expr", scope: !4076, file: !3883, line: 435, type: !3818, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178656 = distinct !DISubprogram(name: "add<polars_utils::float16::pf16>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtCs2mZqlW55729_12polars_utils7float164pf163addCskY9G75ZWc4U_11polars_expr", scope: !4033, file: !4031, line: 927, type: !3818, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178657 = distinct !DISubprogram(name: "into_iter<polars_utils::float16::pf16>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice4iterRSNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCskY9G75ZWc4U_11polars_expr", scope: !4106, file: !4034, line: 25, type: !3818, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178658 = distinct !DISubprogram(name: "iter<polars_utils::float16::pf16>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf164iterCskY9G75ZWc4U_11polars_expr", scope: !3888, file: !3887, line: 1040, type: !3818, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178659 = distinct !DISubprogram(name: "new<polars_utils::float16::pf16>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16E3newCskY9G75ZWc4U_11polars_expr", scope: !4036, file: !4034, line: 96, type: !3818, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178660 = distinct !DILexicalBlock(scope: !178659, file: !4034, line: 97, column: 9)
!178661 = distinct !DILexicalBlock(scope: !178660, file: !4034, line: 98, column: 9)
!178662 = distinct !DISubprogram(name: "eq<polars_utils::float16::pf16>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtB9_3cmp9PartialEq2eqCskY9G75ZWc4U_11polars_expr", scope: !4037, file: !3854, line: 1716, type: !3818, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178663 = distinct !DILexicalBlock(scope: !178649, file: !5009, line: 139, column: 9)
!178664 = distinct !DISubprogram(name: "next<polars_utils::float16::pf16>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr", scope: !4039, file: !4038, line: 157, type: !3818, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178665 = distinct !DILexicalBlock(scope: !178664, file: !4038, line: 161, column: 17)
!178666 = distinct !DILexicalBlock(scope: !178665, file: !4038, line: 162, column: 17)
!178667 = distinct !DISubprogram(name: "get_offset_len_noubcheck<polars_utils::float16::pf16>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr", scope: !3885, file: !3883, line: 82, type: !3818, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178668 = distinct !DILexicalBlock(scope: !178667, file: !3883, line: 87, column: 5)
!178669 = distinct !DISubprogram(name: "add<polars_utils::float16::pf16>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtCs2mZqlW55729_12polars_utils7float164pf16E3addCskY9G75ZWc4U_11polars_expr", scope: !3856, file: !3854, line: 651, type: !3818, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178670 = distinct !DILexicalBlock(scope: !178663, file: !5009, line: 139, column: 9)
!178671 = distinct !DILexicalBlock(scope: !178659, file: !4034, line: 97, column: 9)
!178672 = distinct !DILexicalBlock(scope: !178671, file: !4034, line: 98, column: 9)
!178673 = distinct !DILexicalBlock(scope: !178649, file: !5009, line: 143, column: 9)
!178674 = distinct !DILexicalBlock(scope: !178664, file: !4038, line: 161, column: 17)
!178675 = distinct !DILexicalBlock(scope: !178674, file: !4038, line: 162, column: 17)
!178676 = distinct !DILexicalBlock(scope: !178667, file: !3883, line: 87, column: 5)
!178677 = distinct !DILexicalBlock(scope: !178673, file: !5009, line: 143, column: 9)
!178678 = !{!178652}
!178679 = !DILocation(line: 139, column: 31, scope: !178649)
!178680 = !DILocation(line: 19, column: 15, scope: !178654, inlinedAt: !178679)
!178681 = !DILocation(line: 437, column: 32, scope: !178655, inlinedAt: !178680)
!178682 = !DILocation(line: 139, column: 20, scope: !178649)
!178683 = !DILocation(line: 26, column: 14, scope: !178657, inlinedAt: !178682)
!178684 = !DILocation(line: 1041, column: 9, scope: !178658, inlinedAt: !178683)
!178685 = !DILocation(line: 102, column: 78, scope: !178661, inlinedAt: !178684)
!178686 = !DILexicalBlockFile(scope: !178663, file: !5009, discriminator: 2)
!178687 = !DILocation(line: 139, column: 20, scope: !178686)
!178688 = !DILocation(line: 180, column: 28, scope: !178666, inlinedAt: !178687)
!178689 = !DILocation(line: 441, column: 24, scope: !178655, inlinedAt: !178680)
!178690 = !DILocation(line: 185, column: 40, scope: !178666, inlinedAt: !178687)
!178691 = !DILexicalBlockFile(scope: !178655, file: !3883, discriminator: 2)
!178692 = !DILexicalBlockFile(scope: !178654, file: !3883, discriminator: 2)
!178693 = !DILocation(line: 143, column: 31, scope: !178649)
!178694 = !DILocation(line: 19, column: 15, scope: !178692, inlinedAt: !178693)
!178695 = !DILocation(line: 437, column: 32, scope: !178691, inlinedAt: !178694)
!178696 = !DILexicalBlockFile(scope: !178672, file: !4034, discriminator: 2)
!178697 = !DILexicalBlockFile(scope: !178658, file: !3887, discriminator: 2)
!178698 = !DILexicalBlockFile(scope: !178657, file: !4034, discriminator: 2)
!178699 = !DILocation(line: 143, column: 20, scope: !178649)
!178700 = !DILocation(line: 26, column: 14, scope: !178698, inlinedAt: !178699)
!178701 = !DILocation(line: 1041, column: 9, scope: !178697, inlinedAt: !178700)
!178702 = !DILocation(line: 102, column: 78, scope: !178696, inlinedAt: !178701)
!178703 = !DILexicalBlockFile(scope: !178675, file: !4038, discriminator: 2)
!178704 = !DILexicalBlockFile(scope: !178673, file: !5009, discriminator: 2)
!178705 = !DILocation(line: 143, column: 20, scope: !178704)
!178706 = !DILocation(line: 180, column: 28, scope: !178703, inlinedAt: !178705)
!178707 = !DILocation(line: 441, column: 24, scope: !178691, inlinedAt: !178694)
!178708 = !DILocation(line: 185, column: 40, scope: !178703, inlinedAt: !178705)
!178709 = !DILocation(line: 133, column: 25, scope: !178649)
!178710 = !DILocation(line: 133, column: 12, scope: !178649)
!178711 = !DILocation(line: 139, column: 32, scope: !178649)
!178712 = !DILocation(line: 43, column: 9, scope: !2489, inlinedAt: !178650)
!178713 = !DILocation(line: 44, column: 9, scope: !2489, inlinedAt: !178650)
!178714 = !DILocation(line: 135, column: 13, scope: !178649)
!178715 = !DILocation(line: 136, column: 13, scope: !178649)
!178716 = !DILocation(line: 133, column: 9, scope: !178649)
!178717 = !DILocation(line: 139, column: 21, scope: !178649)
!178718 = !DILocation(line: 977, column: 16, scope: !178653, inlinedAt: !178681)
!178719 = !DILocation(line: 961, column: 18, scope: !178656, inlinedAt: !178685)
!178720 = !DILocation(line: 1717, column: 9, scope: !178662, inlinedAt: !178688)
!178721 = !DILocation(line: 89, column: 24, scope: !178668, inlinedAt: !178689)
!178722 = !DILocation(line: 443, column: 13, scope: !178655, inlinedAt: !178680)
!178723 = !DILocation(line: 659, column: 28, scope: !178669, inlinedAt: !178690)
!178724 = !DILocation(line: 140, column: 22, scope: !178670)
!178725 = !DILocation(line: 140, column: 18, scope: !178670)
!178726 = !DILocation(line: 143, column: 21, scope: !178649)
!178727 = !DILocation(line: 143, column: 32, scope: !178649)
!178728 = !DILocation(line: 977, column: 16, scope: !178653, inlinedAt: !178695)
!178729 = !DILocation(line: 961, column: 18, scope: !178656, inlinedAt: !178702)
!178730 = !DILocation(line: 1717, column: 9, scope: !178662, inlinedAt: !178706)
!178731 = !DILocation(line: 180, column: 28, scope: !178675, inlinedAt: !178705)
!178732 = !DILocation(line: 89, column: 24, scope: !178676, inlinedAt: !178707)
!178733 = !DILocation(line: 443, column: 13, scope: !178655, inlinedAt: !178694)
!178734 = !DILocation(line: 659, column: 28, scope: !178669, inlinedAt: !178708)
!178735 = !DILocation(line: 144, column: 22, scope: !178677)
!178736 = !DILocation(line: 144, column: 18, scope: !178677)
!178737 = !DILocation(line: 147, column: 9, scope: !178649)
!178738 = !DILocation(line: 148, column: 9, scope: !178649)
!178739 = !DILocation(line: 149, column: 6, scope: !178649)
!178740 = distinct !DISubprogram(name: "new<i8, i8>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowaaEINtNtB6_8no_nulls23RollingAggWindowNoNullsaE3newCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 118, type: !3818, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178741 = distinct !DILexicalBlock(scope: !178740, file: !5009, line: 125, column: 9)
!178742 = distinct !DILocation(line: 126, column: 18, scope: !178741)
!178743 = distinct !DILocation(line: 139, column: 31, scope: !3148, inlinedAt: !178742)
!178744 = distinct !DILocation(line: 19, column: 15, scope: !3147, inlinedAt: !178743)
!178745 = distinct !DILocation(line: 437, column: 32, scope: !3146, inlinedAt: !178744)
!178746 = distinct !{!178746, i1 true, !"_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowaaEINtNtB6_8no_nulls23RollingAggWindowNoNullsaE6updateCskY9G75ZWc4U_11polars_expr"}
!178747 = distinct !{!178747, !178746, !"_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowaaEINtNtB6_8no_nulls23RollingAggWindowNoNullsaE6updateCskY9G75ZWc4U_11polars_expr: argument 0"}
!178748 = distinct !DILocation(line: 143, column: 31, scope: !3148, inlinedAt: !178742)
!178749 = distinct !DILocation(line: 19, column: 15, scope: !5303, inlinedAt: !178748)
!178750 = distinct !DILocation(line: 437, column: 32, scope: !5302, inlinedAt: !178749)
!178751 = distinct !DILocation(line: 143, column: 20, scope: !3148, inlinedAt: !178742)
!178752 = distinct !DILocation(line: 26, column: 14, scope: !5306, inlinedAt: !178751)
!178753 = distinct !DILocation(line: 1041, column: 9, scope: !5305, inlinedAt: !178752)
!178754 = distinct !DILocation(line: 102, column: 78, scope: !5304, inlinedAt: !178753)
!178755 = distinct !DILocation(line: 143, column: 20, scope: !5308, inlinedAt: !178742)
!178756 = distinct !DILocation(line: 180, column: 28, scope: !5307, inlinedAt: !178755)
!178757 = distinct !DILocation(line: 441, column: 24, scope: !5302, inlinedAt: !178749)
!178758 = distinct !DILocation(line: 144, column: 18, scope: !3162, inlinedAt: !178742)
!178759 = distinct !DILocation(line: 79, column: 13, scope: !2510, inlinedAt: !178758)
!178760 = distinct !{!178760, !4188, !4189}
!178761 = distinct !DILocation(line: 185, column: 40, scope: !5307, inlinedAt: !178755)
!178762 = distinct !{!178762, !4188, !4189}
!178763 = distinct !{!178763, !4189, !4188}
!178764 = !{!178747}
!178765 = !DILocation(line: 977, column: 16, scope: !3145, inlinedAt: !178745)
!178766 = !DILocation(line: 443, column: 13, scope: !3146, inlinedAt: !178744)
!178767 = !DILocation(line: 977, column: 16, scope: !3145, inlinedAt: !178750)
!178768 = !DILocation(line: 961, column: 18, scope: !3149, inlinedAt: !178754)
!178769 = !DILocation(line: 1717, column: 9, scope: !3155, inlinedAt: !178756)
!178770 = !DILocation(line: 180, column: 28, scope: !3158, inlinedAt: !178755)
!178771 = !DILocation(line: 89, column: 24, scope: !3161, inlinedAt: !178757)
!178772 = !DILocation(line: 144, column: 22, scope: !3162, inlinedAt: !178742)
!178773 = !DILocation(line: 792, column: 51, scope: !2508, inlinedAt: !178759)
!178774 = !DILocation(line: 659, column: 28, scope: !3163, inlinedAt: !178761)
!178775 = !DILocation(line: 443, column: 13, scope: !3146, inlinedAt: !178749)
!178776 = !DILocation(line: 0, scope: !178740)
!178777 = !DILocation(line: 127, column: 9, scope: !178741)
!178778 = !DILocation(line: 128, column: 6, scope: !178740)
!178779 = distinct !DILocation(line: 134, column: 18, scope: !3148)
!178780 = distinct !{!178780, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowaaE5resetCskY9G75ZWc4U_11polars_expr"}
!178781 = distinct !{!178781, !178780, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowaaE5resetCskY9G75ZWc4U_11polars_expr: argument 0"}
!178782 = distinct !DILexicalBlock(scope: !3150, file: !4034, line: 97, column: 9)
!178783 = distinct !DILexicalBlock(scope: !178782, file: !4034, line: 98, column: 9)
!178784 = distinct !DILexicalBlock(scope: !3148, file: !5009, line: 139, column: 9)
!178785 = distinct !DILexicalBlock(scope: !3156, file: !4038, line: 161, column: 17)
!178786 = distinct !DILexicalBlock(scope: !178785, file: !4038, line: 162, column: 17)
!178787 = distinct !DILexicalBlock(scope: !3160, file: !3883, line: 87, column: 5)
!178788 = distinct !{!178788, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowaaE3subCskY9G75ZWc4U_11polars_expr"}
!178789 = distinct !{!178789, !178788, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowaaE3subCskY9G75ZWc4U_11polars_expr: argument 0"}
!178790 = distinct !{!178790, i1 true, !"_RNvXs65_NtNtCscgRAwXFJnXP_4core3ops5arithaNtB6_9SubAssign10sub_assign"}
!178791 = distinct !{!178791, !178790, !"_RNvXs65_NtNtCscgRAwXFJnXP_4core3ops5arithaNtB6_9SubAssign10sub_assign: argument 0"}
!178792 = distinct !DILexicalBlock(scope: !178784, file: !5009, line: 139, column: 9)
!178793 = distinct !DILocation(line: 140, column: 18, scope: !178792)
!178794 = distinct !DILocation(line: 94, column: 13, scope: !2514, inlinedAt: !178793)
!178795 = distinct !{!178795, !4188, !4189}
!178796 = distinct !{!178796, !4188, !4189}
!178797 = distinct !{!178797, !4189, !4188}
!178798 = distinct !{!178798, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowaaE3addCskY9G75ZWc4U_11polars_expr"}
!178799 = distinct !{!178799, !178798, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowaaE3addCskY9G75ZWc4U_11polars_expr: argument 0"}
!178800 = distinct !{!178800, i1 true, !"_RNvXs5z_NtNtCscgRAwXFJnXP_4core3ops5arithaNtB6_9AddAssign10add_assign"}
!178801 = distinct !{!178801, !178800, !"_RNvXs5z_NtNtCscgRAwXFJnXP_4core3ops5arithaNtB6_9AddAssign10add_assign: argument 0"}
!178802 = distinct !DILocation(line: 144, column: 18, scope: !3162)
!178803 = distinct !DILocation(line: 79, column: 13, scope: !2510, inlinedAt: !178802)
!178804 = distinct !{!178804, !4188, !4189}
!178805 = distinct !{!178805, !4188, !4189}
!178806 = distinct !{!178806, !4189, !4188}
!178807 = !{!178781}
!178808 = !DILocation(line: 139, column: 31, scope: !3148)
!178809 = !DILocation(line: 19, column: 15, scope: !3147, inlinedAt: !178808)
!178810 = !DILocation(line: 437, column: 32, scope: !3146, inlinedAt: !178809)
!178811 = !DILocation(line: 139, column: 20, scope: !3148)
!178812 = !DILocation(line: 26, column: 14, scope: !3154, inlinedAt: !178811)
!178813 = !DILocation(line: 1041, column: 9, scope: !3153, inlinedAt: !178812)
!178814 = !DILocation(line: 102, column: 78, scope: !178783, inlinedAt: !178813)
!178815 = !DILexicalBlockFile(scope: !178784, file: !5009, discriminator: 2)
!178816 = !DILocation(line: 139, column: 20, scope: !178815)
!178817 = !DILocation(line: 180, column: 28, scope: !178786, inlinedAt: !178816)
!178818 = !DILocation(line: 441, column: 24, scope: !3146, inlinedAt: !178809)
!178819 = !{!178791, !178789}
!178820 = !DILocation(line: 185, column: 40, scope: !178786, inlinedAt: !178816)
!178821 = !DILocation(line: 143, column: 31, scope: !3148)
!178822 = !DILocation(line: 19, column: 15, scope: !5303, inlinedAt: !178821)
!178823 = !DILocation(line: 437, column: 32, scope: !5302, inlinedAt: !178822)
!178824 = !DILocation(line: 143, column: 20, scope: !3148)
!178825 = !DILocation(line: 26, column: 14, scope: !5306, inlinedAt: !178824)
!178826 = !DILocation(line: 1041, column: 9, scope: !5305, inlinedAt: !178825)
!178827 = !DILocation(line: 102, column: 78, scope: !5304, inlinedAt: !178826)
!178828 = !DILocation(line: 143, column: 20, scope: !5308)
!178829 = !DILocation(line: 180, column: 28, scope: !5307, inlinedAt: !178828)
!178830 = !DILocation(line: 441, column: 24, scope: !5302, inlinedAt: !178822)
!178831 = !{!178801, !178799}
!178832 = !DILocation(line: 185, column: 40, scope: !5307, inlinedAt: !178828)
!178833 = !DILocation(line: 133, column: 25, scope: !3148)
!178834 = !DILocation(line: 133, column: 12, scope: !3148)
!178835 = !DILocation(line: 139, column: 32, scope: !3148)
!178836 = !DILocation(line: 43, column: 9, scope: !2511, inlinedAt: !178779)
!178837 = !DILocation(line: 44, column: 9, scope: !2511, inlinedAt: !178779)
!178838 = !DILocation(line: 45, column: 9, scope: !2511, inlinedAt: !178779)
!178839 = !DILocation(line: 46, column: 9, scope: !2511, inlinedAt: !178779)
!178840 = !DILocation(line: 135, column: 13, scope: !3148)
!178841 = !DILocation(line: 136, column: 13, scope: !3148)
!178842 = !DILocation(line: 133, column: 9, scope: !3148)
!178843 = !DILocation(line: 139, column: 21, scope: !3148)
!178844 = !DILocation(line: 977, column: 16, scope: !3145, inlinedAt: !178810)
!178845 = !DILocation(line: 961, column: 18, scope: !3149, inlinedAt: !178814)
!178846 = !DILocation(line: 1717, column: 9, scope: !3155, inlinedAt: !178817)
!178847 = !DILocation(line: 89, column: 24, scope: !178787, inlinedAt: !178818)
!178848 = !DILocation(line: 140, column: 22, scope: !178792)
!178849 = !DILocation(line: 863, column: 51, scope: !2512, inlinedAt: !178794)
!178850 = !DILocation(line: 659, column: 28, scope: !3163, inlinedAt: !178820)
!178851 = !DILocation(line: 443, column: 13, scope: !3146, inlinedAt: !178809)
!178852 = !DILocation(line: 977, column: 16, scope: !3145, inlinedAt: !178823)
!178853 = !DILocation(line: 961, column: 18, scope: !3149, inlinedAt: !178827)
!178854 = !DILocation(line: 1717, column: 9, scope: !3155, inlinedAt: !178829)
!178855 = !DILocation(line: 180, column: 28, scope: !3158, inlinedAt: !178828)
!178856 = !DILocation(line: 89, column: 24, scope: !3161, inlinedAt: !178830)
!178857 = !DILocation(line: 144, column: 22, scope: !3162)
!178858 = !DILocation(line: 792, column: 51, scope: !2508, inlinedAt: !178803)
!178859 = !DILocation(line: 659, column: 28, scope: !3163, inlinedAt: !178832)
!178860 = !DILocation(line: 443, column: 13, scope: !3146, inlinedAt: !178822)
!178861 = !DILocation(line: 147, column: 9, scope: !3148)
!178862 = !DILocation(line: 148, column: 9, scope: !3148)
!178863 = !DILocation(line: 149, column: 6, scope: !3148)
!178864 = distinct !DISubprogram(name: "get_agg<i8, i8>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowaaEINtNtB6_8no_nulls23RollingAggWindowNoNullsaE7get_aggCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 151, type: !3818, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178865 = distinct !{!178865, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowaaE7get_sumCskY9G75ZWc4U_11polars_expr"}
!178866 = distinct !{!178866, !178865, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowaaE7get_sumCskY9G75ZWc4U_11polars_expr: argument 0"}
!178867 = distinct !DILocation(line: 152, column: 14, scope: !178864)
!178868 = !{!178866}
!178869 = !DILocation(line: 152, column: 14, scope: !178864)
!178870 = !DILocation(line: 99, column: 12, scope: !2515, inlinedAt: !178867)
!178871 = !DILocation(line: 100, column: 27, scope: !2515, inlinedAt: !178867)
!178872 = !DILocation(line: 99, column: 9, scope: !2515, inlinedAt: !178867)
!178873 = !DILocation(line: 101, column: 44, scope: !2515, inlinedAt: !178867)
!178874 = !DILocation(line: 101, column: 19, scope: !2515, inlinedAt: !178867)
!178875 = !DILocation(line: 103, column: 44, scope: !2515, inlinedAt: !178867)
!178876 = !DILocation(line: 103, column: 19, scope: !2515, inlinedAt: !178867)
!178877 = !DILocation(line: 102, column: 18, scope: !2515, inlinedAt: !178867)
!178878 = !DILocation(line: 101, column: 16, scope: !2515, inlinedAt: !178867)
!178879 = !DILocation(line: 106, column: 18, scope: !2515, inlinedAt: !178867)
!178880 = !DILocation(line: 103, column: 16, scope: !2515, inlinedAt: !178867)
!178881 = !DILocation(line: 104, column: 18, scope: !2515, inlinedAt: !178867)
!178882 = !DILocation(line: 0, scope: !2515, inlinedAt: !178867)
!178883 = !DILocation(line: 108, column: 6, scope: !2515, inlinedAt: !178867)
!178884 = !DILocation(line: 153, column: 6, scope: !178864)
!178885 = distinct !DISubprogram(name: "new<f64, f64>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowddEINtNtB6_8no_nulls23RollingAggWindowNoNullsdE3newCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 118, type: !3818, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178886 = distinct !{!178886, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE8new_implCskY9G75ZWc4U_11polars_expr"}
!178887 = distinct !{!178887, !178886, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE8new_implCskY9G75ZWc4U_11polars_expr: argument 0"}
!178888 = distinct !DILocation(line: 125, column: 23, scope: !178885)
!178889 = distinct !DILexicalBlock(scope: !178885, file: !5009, line: 125, column: 9)
!178890 = !{!178887}
!178891 = !DILocation(line: 125, column: 13, scope: !178885)
!178892 = !DILocation(line: 27, column: 9, scope: !2463, inlinedAt: !178888)
!178893 = !DILocation(line: 126, column: 18, scope: !178889)
!178894 = !DILocation(line: 127, column: 9, scope: !178889)
!178895 = !DILocation(line: 128, column: 5, scope: !178885)
!178896 = !DILocation(line: 128, column: 6, scope: !178885)
!178897 = distinct !DISubprogram(name: "update<f64, f64>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowddEINtNtB6_8no_nulls23RollingAggWindowNoNullsdE6updateCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 132, type: !3818, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178898 = distinct !DILocation(line: 134, column: 18, scope: !178897)
!178899 = distinct !{!178899, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE5resetCskY9G75ZWc4U_11polars_expr"}
!178900 = distinct !{!178900, !178899, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE5resetCskY9G75ZWc4U_11polars_expr: argument 0"}
!178901 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_sub", scope: !3882, file: !3880, line: 971, type: !3818, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178902 = distinct !DISubprogram(name: "index<f64, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSdINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCskY9G75ZWc4U_11polars_expr", scope: !4229, file: !3883, line: 18, type: !3818, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178903 = distinct !DISubprogram(name: "index<f64>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSdE5indexCskY9G75ZWc4U_11polars_expr", scope: !4076, file: !3883, line: 435, type: !3818, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178904 = distinct !DISubprogram(name: "add<f64>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOd3addCskY9G75ZWc4U_11polars_expr", scope: !4033, file: !4031, line: 927, type: !3818, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178905 = distinct !DISubprogram(name: "into_iter<f64>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice4iterRSdNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCskY9G75ZWc4U_11polars_expr", scope: !4106, file: !4034, line: 25, type: !3818, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178906 = distinct !DISubprogram(name: "iter<f64>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSd4iterCskY9G75ZWc4U_11polars_expr", scope: !3888, file: !3887, line: 1040, type: !3818, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178907 = distinct !DISubprogram(name: "new<f64>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4IterdE3newCskY9G75ZWc4U_11polars_expr", scope: !4036, file: !4034, line: 96, type: !3818, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178908 = distinct !DILexicalBlock(scope: !178907, file: !4034, line: 97, column: 9)
!178909 = distinct !DILexicalBlock(scope: !178908, file: !4034, line: 98, column: 9)
!178910 = distinct !DISubprogram(name: "eq<f64>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNulldENtNtB9_3cmp9PartialEq2eqCskY9G75ZWc4U_11polars_expr", scope: !4037, file: !3854, line: 1716, type: !3818, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178911 = distinct !DILexicalBlock(scope: !178897, file: !5009, line: 139, column: 9)
!178912 = distinct !DISubprogram(name: "next<f64>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr", scope: !4039, file: !4038, line: 157, type: !3818, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178913 = distinct !DILexicalBlock(scope: !178912, file: !4038, line: 161, column: 17)
!178914 = distinct !DILexicalBlock(scope: !178913, file: !4038, line: 162, column: 17)
!178915 = distinct !DISubprogram(name: "get_offset_len_noubcheck<f64>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckdECskY9G75ZWc4U_11polars_expr", scope: !3885, file: !3883, line: 82, type: !3818, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178916 = distinct !DILexicalBlock(scope: !178915, file: !3883, line: 87, column: 5)
!178917 = distinct !DISubprogram(name: "add<f64>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNulldE3addCskY9G75ZWc4U_11polars_expr", scope: !3856, file: !3854, line: 651, type: !3818, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!178918 = distinct !DILexicalBlock(scope: !178911, file: !5009, line: 139, column: 9)
!178919 = distinct !DILocation(line: 140, column: 18, scope: !178918)
!178920 = distinct !DILocation(line: 85, column: 20, scope: !2529, inlinedAt: !178919)
!178921 = distinct !DILocation(line: 141, column: 17, scope: !2521, inlinedAt: !178920)
!178922 = distinct !DILocation(line: 654, column: 14, scope: !2520, inlinedAt: !178921)
!178923 = distinct !DILocation(line: 89, column: 39, scope: !2529, inlinedAt: !178919)
!178924 = distinct !{!178924, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE3subCskY9G75ZWc4U_11polars_expr"}
!178925 = distinct !{!178925, !178924, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE3subCskY9G75ZWc4U_11polars_expr: argument 0"}
!178926 = distinct !DILocation(line: 90, column: 39, scope: !2529, inlinedAt: !178919)
!178927 = distinct !DILocation(line: 86, column: 22, scope: !2529, inlinedAt: !178919)
!178928 = distinct !DILocation(line: 61, column: 36, scope: !2530, inlinedAt: !178927)
!178929 = distinct !DILocation(line: 62, column: 17, scope: !2531, inlinedAt: !178927)
!178930 = distinct !DILocation(line: 63, column: 23, scope: !2532, inlinedAt: !178927)
!178931 = distinct !DILocation(line: 64, column: 24, scope: !2533, inlinedAt: !178927)
!178932 = distinct !DILocation(line: 64, column: 24, scope: !2533, inlinedAt: !178927)
!178933 = distinct !{!178933, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE16sub_finite_kahanCskY9G75ZWc4U_11polars_expr"}
!178934 = distinct !{!178934, !178933, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE16sub_finite_kahanCskY9G75ZWc4U_11polars_expr: argument 0"}
!178935 = distinct !DILexicalBlock(scope: !178907, file: !4034, line: 97, column: 9)
!178936 = distinct !DILexicalBlock(scope: !178935, file: !4034, line: 98, column: 9)
!178937 = distinct !DILexicalBlock(scope: !178897, file: !5009, line: 143, column: 9)
!178938 = distinct !DILexicalBlock(scope: !178912, file: !4038, line: 161, column: 17)
!178939 = distinct !DILexicalBlock(scope: !178938, file: !4038, line: 162, column: 17)
!178940 = distinct !DILexicalBlock(scope: !178915, file: !3883, line: 87, column: 5)
!178941 = distinct !DILexicalBlock(scope: !178937, file: !5009, line: 143, column: 9)
!178942 = distinct !DILocation(line: 144, column: 18, scope: !178941)
!178943 = distinct !DILocation(line: 70, column: 20, scope: !2522, inlinedAt: !178942)
!178944 = distinct !DILocation(line: 141, column: 17, scope: !2521, inlinedAt: !178943)
!178945 = distinct !DILocation(line: 654, column: 14, scope: !2520, inlinedAt: !178944)
!178946 = distinct !DILocation(line: 74, column: 39, scope: !2522, inlinedAt: !178942)
!178947 = distinct !{!178947, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE3addCskY9G75ZWc4U_11polars_expr"}
!178948 = distinct !{!178948, !178947, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE3addCskY9G75ZWc4U_11polars_expr: argument 0"}
!178949 = distinct !DILocation(line: 75, column: 39, scope: !2522, inlinedAt: !178942)
!178950 = distinct !DILocation(line: 71, column: 22, scope: !2522, inlinedAt: !178942)
!178951 = distinct !DILocation(line: 54, column: 17, scope: !2526, inlinedAt: !178950)
!178952 = distinct !DILocation(line: 55, column: 23, scope: !2527, inlinedAt: !178950)
!178953 = distinct !DILocation(line: 56, column: 24, scope: !2528, inlinedAt: !178950)
!178954 = distinct !DILocation(line: 56, column: 24, scope: !2528, inlinedAt: !178950)
!178955 = distinct !{!178955, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE16add_finite_kahanCskY9G75ZWc4U_11polars_expr"}
!178956 = distinct !{!178956, !178955, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE16add_finite_kahanCskY9G75ZWc4U_11polars_expr: argument 0"}
!178957 = !{!178900}
!178958 = !DILocation(line: 139, column: 31, scope: !178897)
!178959 = !DILocation(line: 19, column: 15, scope: !178902, inlinedAt: !178958)
!178960 = !DILocation(line: 437, column: 32, scope: !178903, inlinedAt: !178959)
!178961 = !DILocation(line: 139, column: 20, scope: !178897)
!178962 = !DILocation(line: 26, column: 14, scope: !178905, inlinedAt: !178961)
!178963 = !DILocation(line: 1041, column: 9, scope: !178906, inlinedAt: !178962)
!178964 = !DILocation(line: 102, column: 78, scope: !178909, inlinedAt: !178963)
!178965 = !DILexicalBlockFile(scope: !178911, file: !5009, discriminator: 2)
!178966 = !DILocation(line: 139, column: 20, scope: !178965)
!178967 = !DILocation(line: 180, column: 28, scope: !178914, inlinedAt: !178966)
!178968 = !DILocation(line: 441, column: 24, scope: !178903, inlinedAt: !178959)
!178969 = !DILocation(line: 185, column: 40, scope: !178914, inlinedAt: !178966)
!178970 = !{!178925}
!178971 = !{!178934, !178925}
!178972 = !DILexicalBlockFile(scope: !178903, file: !3883, discriminator: 2)
!178973 = !DILexicalBlockFile(scope: !178902, file: !3883, discriminator: 2)
!178974 = !DILocation(line: 143, column: 31, scope: !178897)
!178975 = !DILocation(line: 19, column: 15, scope: !178973, inlinedAt: !178974)
!178976 = !DILocation(line: 437, column: 32, scope: !178972, inlinedAt: !178975)
!178977 = !DILexicalBlockFile(scope: !178936, file: !4034, discriminator: 2)
!178978 = !DILexicalBlockFile(scope: !178906, file: !3887, discriminator: 2)
!178979 = !DILexicalBlockFile(scope: !178905, file: !4034, discriminator: 2)
!178980 = !DILocation(line: 143, column: 20, scope: !178897)
!178981 = !DILocation(line: 26, column: 14, scope: !178979, inlinedAt: !178980)
!178982 = !DILocation(line: 1041, column: 9, scope: !178978, inlinedAt: !178981)
!178983 = !DILocation(line: 102, column: 78, scope: !178977, inlinedAt: !178982)
!178984 = !DILexicalBlockFile(scope: !178939, file: !4038, discriminator: 2)
!178985 = !DILexicalBlockFile(scope: !178937, file: !5009, discriminator: 2)
!178986 = !DILocation(line: 143, column: 20, scope: !178985)
!178987 = !DILocation(line: 180, column: 28, scope: !178984, inlinedAt: !178986)
!178988 = !DILocation(line: 441, column: 24, scope: !178972, inlinedAt: !178975)
!178989 = !DILocation(line: 185, column: 40, scope: !178984, inlinedAt: !178986)
!178990 = !{!178948}
!178991 = !{!178956, !178948}
!178992 = !DILocation(line: 133, column: 25, scope: !178897)
!178993 = !DILocation(line: 133, column: 12, scope: !178897)
!178994 = !DILocation(line: 139, column: 32, scope: !178897)
!178995 = !DILocation(line: 43, column: 9, scope: !2518, inlinedAt: !178898)
!178996 = !DILocation(line: 44, column: 9, scope: !2518, inlinedAt: !178898)
!178997 = !DILocation(line: 135, column: 13, scope: !178897)
!178998 = !DILocation(line: 136, column: 13, scope: !178897)
!178999 = !DILocation(line: 133, column: 9, scope: !178897)
!179000 = !DILocation(line: 139, column: 21, scope: !178897)
!179001 = !DILocation(line: 977, column: 16, scope: !178901, inlinedAt: !178960)
!179002 = !DILocation(line: 961, column: 18, scope: !178904, inlinedAt: !178964)
!179003 = !DILocation(line: 1717, column: 9, scope: !178910, inlinedAt: !178967)
!179004 = !DILocation(line: 89, column: 24, scope: !178916, inlinedAt: !178968)
!179005 = !DILocation(line: 443, column: 13, scope: !178903, inlinedAt: !178959)
!179006 = !DILocation(line: 659, column: 28, scope: !178917, inlinedAt: !178969)
!179007 = !DILocation(line: 140, column: 22, scope: !178918)
!179008 = !DILocation(line: 1569, column: 9, scope: !2519, inlinedAt: !178922)
!179009 = !DILocation(line: 654, column: 9, scope: !2520, inlinedAt: !178921)
!179010 = !DILocation(line: 85, column: 16, scope: !2529, inlinedAt: !178919)
!179011 = !DILocation(line: 1921, column: 50, scope: !2523, inlinedAt: !178923)
!179012 = !DILocation(line: 89, column: 39, scope: !2529, inlinedAt: !178919)
!179013 = !DILocation(line: 88, column: 17, scope: !2529, inlinedAt: !178919)
!179014 = !DILocation(line: 1917, column: 50, scope: !2524, inlinedAt: !178926)
!179015 = !DILocation(line: 90, column: 39, scope: !2529, inlinedAt: !178919)
!179016 = !DILocation(line: 90, column: 17, scope: !2529, inlinedAt: !178919)
!179017 = !DILocation(line: 85, column: 13, scope: !2529, inlinedAt: !178919)
!179018 = !DILocation(line: 218, column: 45, scope: !2392, inlinedAt: !178928)
!179019 = !DILocation(line: 218, column: 45, scope: !2392, inlinedAt: !178929)
!179020 = !DILocation(line: 105, column: 45, scope: !735, inlinedAt: !178930)
!179021 = !DILocation(line: 218, column: 45, scope: !2392, inlinedAt: !178931)
!179022 = !DILocation(line: 218, column: 45, scope: !2392, inlinedAt: !178932)
!179023 = !DILocation(line: 64, column: 9, scope: !2533, inlinedAt: !178927)
!179024 = !DILocation(line: 65, column: 9, scope: !2533, inlinedAt: !178927)
!179025 = !DILocation(line: 977, column: 16, scope: !178901, inlinedAt: !178976)
!179026 = !DILocation(line: 961, column: 18, scope: !178904, inlinedAt: !178983)
!179027 = !DILocation(line: 1717, column: 9, scope: !178910, inlinedAt: !178987)
!179028 = !DILocation(line: 180, column: 28, scope: !178939, inlinedAt: !178986)
!179029 = !DILocation(line: 89, column: 24, scope: !178940, inlinedAt: !178988)
!179030 = !DILocation(line: 443, column: 13, scope: !178903, inlinedAt: !178975)
!179031 = !DILocation(line: 659, column: 28, scope: !178917, inlinedAt: !178989)
!179032 = !DILocation(line: 144, column: 22, scope: !178941)
!179033 = !DILocation(line: 1569, column: 9, scope: !2519, inlinedAt: !178945)
!179034 = !DILocation(line: 654, column: 9, scope: !2520, inlinedAt: !178944)
!179035 = !DILocation(line: 70, column: 16, scope: !2522, inlinedAt: !178942)
!179036 = !DILocation(line: 1921, column: 50, scope: !2523, inlinedAt: !178946)
!179037 = !DILocation(line: 74, column: 39, scope: !2522, inlinedAt: !178942)
!179038 = !DILocation(line: 73, column: 17, scope: !2522, inlinedAt: !178942)
!179039 = !DILocation(line: 1917, column: 50, scope: !2524, inlinedAt: !178949)
!179040 = !DILocation(line: 75, column: 39, scope: !2522, inlinedAt: !178942)
!179041 = !DILocation(line: 75, column: 17, scope: !2522, inlinedAt: !178942)
!179042 = !DILocation(line: 70, column: 13, scope: !2522, inlinedAt: !178942)
!179043 = !DILocation(line: 218, column: 45, scope: !2392, inlinedAt: !178951)
!179044 = !DILocation(line: 105, column: 45, scope: !735, inlinedAt: !178952)
!179045 = !DILocation(line: 218, column: 45, scope: !2392, inlinedAt: !178953)
!179046 = !DILocation(line: 218, column: 45, scope: !2392, inlinedAt: !178954)
!179047 = !DILocation(line: 56, column: 9, scope: !2528, inlinedAt: !178950)
!179048 = !DILocation(line: 57, column: 9, scope: !2528, inlinedAt: !178950)
!179049 = !DILocation(line: 147, column: 9, scope: !178897)
!179050 = !DILocation(line: 148, column: 9, scope: !178897)
!179051 = !DILocation(line: 149, column: 6, scope: !178897)
!179052 = distinct !DISubprogram(name: "get_agg<f64, f64>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowddEINtNtB6_8no_nulls23RollingAggWindowNoNullsdE7get_aggCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 151, type: !3818, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!179053 = distinct !DILocation(line: 152, column: 14, scope: !179052)
!179054 = distinct !{!179054, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE7get_sumCskY9G75ZWc4U_11polars_expr"}
!179055 = distinct !{!179055, !179054, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE7get_sumCskY9G75ZWc4U_11polars_expr: argument 0"}
!179056 = !{!179055}
!179057 = !DILocation(line: 99, column: 12, scope: !2464, inlinedAt: !179053)
!179058 = !DILocation(line: 100, column: 27, scope: !2464, inlinedAt: !179053)
!179059 = !DILocation(line: 99, column: 9, scope: !2464, inlinedAt: !179053)
!179060 = !DILocation(line: 101, column: 44, scope: !2464, inlinedAt: !179053)
end_hunk_3
begin_hunk_4_@llvm.vector.reduce.add.v4i16
!179234 = !{!179231}
!179235 = !DILocation(line: 125, column: 13, scope: !179229)
!179236 = !DILocation(line: 27, column: 9, scope: !2553, inlinedAt: !179232)
!179237 = !DILocation(line: 126, column: 18, scope: !179233)
!179238 = !DILocation(line: 127, column: 9, scope: !179233)
!179239 = !DILocation(line: 128, column: 5, scope: !179229)
!179240 = !DILocation(line: 128, column: 6, scope: !179229)
!179241 = distinct !DISubprogram(name: "update<f32, f32>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowffEINtNtB6_8no_nulls23RollingAggWindowNoNullsfE6updateCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 132, type: !3818, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!179242 = distinct !DILocation(line: 134, column: 18, scope: !179241)
!179243 = distinct !{!179243, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE5resetCskY9G75ZWc4U_11polars_expr"}
!179244 = distinct !{!179244, !179243, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE5resetCskY9G75ZWc4U_11polars_expr: argument 0"}
!179245 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_sub", scope: !3882, file: !3880, line: 971, type: !3818, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!179246 = distinct !DISubprogram(name: "index<f32, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSfINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCskY9G75ZWc4U_11polars_expr", scope: !4229, file: !3883, line: 18, type: !3818, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!179247 = distinct !DISubprogram(name: "index<f32>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSfE5indexCskY9G75ZWc4U_11polars_expr", scope: !4076, file: !3883, line: 435, type: !3818, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!179248 = distinct !DISubprogram(name: "add<f32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOf3addCskY9G75ZWc4U_11polars_expr", scope: !4033, file: !4031, line: 927, type: !3818, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!179249 = distinct !DISubprogram(name: "into_iter<f32>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice4iterRSfNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCskY9G75ZWc4U_11polars_expr", scope: !4106, file: !4034, line: 25, type: !3818, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!179250 = distinct !DISubprogram(name: "iter<f32>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSf4iterCskY9G75ZWc4U_11polars_expr", scope: !3888, file: !3887, line: 1040, type: !3818, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!179251 = distinct !DISubprogram(name: "new<f32>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4IterfE3newCskY9G75ZWc4U_11polars_expr", scope: !4036, file: !4034, line: 96, type: !3818, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!179252 = distinct !DILexicalBlock(scope: !179251, file: !4034, line: 97, column: 9)
!179253 = distinct !DILexicalBlock(scope: !179252, file: !4034, line: 98, column: 9)
!179254 = distinct !DISubprogram(name: "eq<f32>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullfENtNtB9_3cmp9PartialEq2eqCskY9G75ZWc4U_11polars_expr", scope: !4037, file: !3854, line: 1716, type: !3818, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!179255 = distinct !DILexicalBlock(scope: !179241, file: !5009, line: 139, column: 9)
!179256 = distinct !DISubprogram(name: "next<f32>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr", scope: !4039, file: !4038, line: 157, type: !3818, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!179257 = distinct !DILexicalBlock(scope: !179256, file: !4038, line: 161, column: 17)
!179258 = distinct !DILexicalBlock(scope: !179257, file: !4038, line: 162, column: 17)
!179259 = distinct !DISubprogram(name: "get_offset_len_noubcheck<f32>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckfECskY9G75ZWc4U_11polars_expr", scope: !3885, file: !3883, line: 82, type: !3818, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!179260 = distinct !DILexicalBlock(scope: !179259, file: !3883, line: 87, column: 5)
!179261 = distinct !DISubprogram(name: "add<f32>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullfE3addCskY9G75ZWc4U_11polars_expr", scope: !3856, file: !3854, line: 651, type: !3818, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!179262 = distinct !DILexicalBlock(scope: !179255, file: !5009, line: 139, column: 9)
!179263 = distinct !DILocation(line: 140, column: 18, scope: !179262)
!179264 = distinct !DILocation(line: 85, column: 20, scope: !2560, inlinedAt: !179263)
!179265 = distinct !DILocation(line: 141, column: 17, scope: !2537, inlinedAt: !179264)
!179266 = distinct !DILocation(line: 655, column: 14, scope: !2536, inlinedAt: !179265)
!179267 = distinct !DILocation(line: 89, column: 39, scope: !2560, inlinedAt: !179263)
!179268 = distinct !{!179268, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE3subCskY9G75ZWc4U_11polars_expr"}
!179269 = distinct !{!179269, !179268, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE3subCskY9G75ZWc4U_11polars_expr: argument 0"}
!179270 = distinct !DILocation(line: 90, column: 39, scope: !2560, inlinedAt: !179263)
!179271 = distinct !DILocation(line: 86, column: 22, scope: !2560, inlinedAt: !179263)
!179272 = distinct !DILocation(line: 61, column: 36, scope: !2561, inlinedAt: !179271)
!179273 = distinct !DILocation(line: 62, column: 17, scope: !2562, inlinedAt: !179271)
!179274 = distinct !DILocation(line: 63, column: 23, scope: !2563, inlinedAt: !179271)
!179275 = distinct !DILocation(line: 64, column: 24, scope: !2564, inlinedAt: !179271)
!179276 = distinct !DILocation(line: 64, column: 24, scope: !2564, inlinedAt: !179271)
!179277 = distinct !{!179277, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE16sub_finite_kahanCskY9G75ZWc4U_11polars_expr"}
!179278 = distinct !{!179278, !179277, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE16sub_finite_kahanCskY9G75ZWc4U_11polars_expr: argument 0"}
!179279 = distinct !DILexicalBlock(scope: !179251, file: !4034, line: 97, column: 9)
!179280 = distinct !DILexicalBlock(scope: !179279, file: !4034, line: 98, column: 9)
!179281 = distinct !DILexicalBlock(scope: !179241, file: !5009, line: 143, column: 9)
!179282 = distinct !DILexicalBlock(scope: !179256, file: !4038, line: 161, column: 17)
!179283 = distinct !DILexicalBlock(scope: !179282, file: !4038, line: 162, column: 17)
!179284 = distinct !DILexicalBlock(scope: !179259, file: !3883, line: 87, column: 5)
!179285 = distinct !DILexicalBlock(scope: !179281, file: !5009, line: 143, column: 9)
!179286 = distinct !DILocation(line: 144, column: 18, scope: !179285)
!179287 = distinct !DILocation(line: 70, column: 20, scope: !2555, inlinedAt: !179286)
!179288 = distinct !DILocation(line: 141, column: 17, scope: !2537, inlinedAt: !179287)
!179289 = distinct !DILocation(line: 655, column: 14, scope: !2536, inlinedAt: !179288)
!179290 = distinct !DILocation(line: 74, column: 39, scope: !2555, inlinedAt: !179286)
!179291 = distinct !{!179291, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE3addCskY9G75ZWc4U_11polars_expr"}
!179292 = distinct !{!179292, !179291, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE3addCskY9G75ZWc4U_11polars_expr: argument 0"}
!179293 = distinct !DILocation(line: 75, column: 39, scope: !2555, inlinedAt: !179286)
!179294 = distinct !DILocation(line: 71, column: 22, scope: !2555, inlinedAt: !179286)
!179295 = distinct !DILocation(line: 54, column: 17, scope: !2557, inlinedAt: !179294)
!179296 = distinct !DILocation(line: 55, column: 23, scope: !2558, inlinedAt: !179294)
!179297 = distinct !DILocation(line: 56, column: 24, scope: !2559, inlinedAt: !179294)
!179298 = distinct !DILocation(line: 56, column: 24, scope: !2559, inlinedAt: !179294)
!179299 = distinct !{!179299, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE16add_finite_kahanCskY9G75ZWc4U_11polars_expr"}
!179300 = distinct !{!179300, !179299, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE16add_finite_kahanCskY9G75ZWc4U_11polars_expr: argument 0"}
!179301 = !{!179244}
!179302 = !DILocation(line: 139, column: 31, scope: !179241)
!179303 = !DILocation(line: 19, column: 15, scope: !179246, inlinedAt: !179302)
!179304 = !DILocation(line: 437, column: 32, scope: !179247, inlinedAt: !179303)
!179305 = !DILocation(line: 139, column: 20, scope: !179241)
!179306 = !DILocation(line: 26, column: 14, scope: !179249, inlinedAt: !179305)
!179307 = !DILocation(line: 1041, column: 9, scope: !179250, inlinedAt: !179306)
!179308 = !DILocation(line: 102, column: 78, scope: !179253, inlinedAt: !179307)
!179309 = !DILexicalBlockFile(scope: !179255, file: !5009, discriminator: 2)
!179310 = !DILocation(line: 139, column: 20, scope: !179309)
!179311 = !DILocation(line: 180, column: 28, scope: !179258, inlinedAt: !179310)
!179312 = !DILocation(line: 441, column: 24, scope: !179247, inlinedAt: !179303)
!179313 = !DILocation(line: 185, column: 40, scope: !179258, inlinedAt: !179310)
!179314 = !{!179269}
!179315 = !{!179278, !179269}
!179316 = !DILexicalBlockFile(scope: !179247, file: !3883, discriminator: 2)
!179317 = !DILexicalBlockFile(scope: !179246, file: !3883, discriminator: 2)
!179318 = !DILocation(line: 143, column: 31, scope: !179241)
!179319 = !DILocation(line: 19, column: 15, scope: !179317, inlinedAt: !179318)
!179320 = !DILocation(line: 437, column: 32, scope: !179316, inlinedAt: !179319)
!179321 = !DILexicalBlockFile(scope: !179280, file: !4034, discriminator: 2)
!179322 = !DILexicalBlockFile(scope: !179250, file: !3887, discriminator: 2)
!179323 = !DILexicalBlockFile(scope: !179249, file: !4034, discriminator: 2)
!179324 = !DILocation(line: 143, column: 20, scope: !179241)
!179325 = !DILocation(line: 26, column: 14, scope: !179323, inlinedAt: !179324)
!179326 = !DILocation(line: 1041, column: 9, scope: !179322, inlinedAt: !179325)
!179327 = !DILocation(line: 102, column: 78, scope: !179321, inlinedAt: !179326)
!179328 = !DILexicalBlockFile(scope: !179283, file: !4038, discriminator: 2)
!179329 = !DILexicalBlockFile(scope: !179281, file: !5009, discriminator: 2)
!179330 = !DILocation(line: 143, column: 20, scope: !179329)
!179331 = !DILocation(line: 180, column: 28, scope: !179328, inlinedAt: !179330)
!179332 = !DILocation(line: 441, column: 24, scope: !179316, inlinedAt: !179319)
!179333 = !DILocation(line: 185, column: 40, scope: !179328, inlinedAt: !179330)
!179334 = !{!179292}
!179335 = !{!179300, !179292}
!179336 = !DILocation(line: 133, column: 25, scope: !179241)
!179337 = !DILocation(line: 133, column: 12, scope: !179241)
!179338 = !DILocation(line: 139, column: 32, scope: !179241)
!179339 = !DILocation(line: 43, column: 9, scope: !2554, inlinedAt: !179242)
!179340 = !DILocation(line: 45, column: 9, scope: !2554, inlinedAt: !179242)
!179341 = !DILocation(line: 46, column: 9, scope: !2554, inlinedAt: !179242)
!179342 = !DILocation(line: 135, column: 13, scope: !179241)
!179343 = !DILocation(line: 136, column: 13, scope: !179241)
!179344 = !DILocation(line: 133, column: 9, scope: !179241)
!179345 = !DILocation(line: 139, column: 21, scope: !179241)
!179346 = !DILocation(line: 977, column: 16, scope: !179245, inlinedAt: !179304)
!179347 = !DILocation(line: 961, column: 18, scope: !179248, inlinedAt: !179308)
!179348 = !DILocation(line: 1717, column: 9, scope: !179254, inlinedAt: !179311)
!179349 = !DILocation(line: 89, column: 24, scope: !179260, inlinedAt: !179312)
!179350 = !DILocation(line: 443, column: 13, scope: !179247, inlinedAt: !179303)
!179351 = !DILocation(line: 659, column: 28, scope: !179261, inlinedAt: !179313)
!179352 = !DILocation(line: 140, column: 22, scope: !179262)
!179353 = !DILocation(line: 1571, column: 9, scope: !2535, inlinedAt: !179266)
!179354 = !DILocation(line: 655, column: 9, scope: !2536, inlinedAt: !179265)
!179355 = !DILocation(line: 85, column: 16, scope: !2560, inlinedAt: !179263)
!179356 = !DILocation(line: 1921, column: 50, scope: !2539, inlinedAt: !179267)
!179357 = !DILocation(line: 89, column: 39, scope: !2560, inlinedAt: !179263)
!179358 = !DILocation(line: 88, column: 17, scope: !2560, inlinedAt: !179263)
!179359 = !DILocation(line: 1917, column: 50, scope: !2540, inlinedAt: !179270)
!179360 = !DILocation(line: 90, column: 39, scope: !2560, inlinedAt: !179263)
!179361 = !DILocation(line: 90, column: 17, scope: !2560, inlinedAt: !179263)
!179362 = !DILocation(line: 85, column: 13, scope: !2560, inlinedAt: !179263)
!179363 = !DILocation(line: 218, column: 45, scope: !2548, inlinedAt: !179272)
!179364 = !DILocation(line: 218, column: 45, scope: !2548, inlinedAt: !179273)
!179365 = !DILocation(line: 105, column: 45, scope: !751, inlinedAt: !179274)
!179366 = !DILocation(line: 218, column: 45, scope: !2548, inlinedAt: !179275)
!179367 = !DILocation(line: 218, column: 45, scope: !2548, inlinedAt: !179276)
!179368 = !DILocation(line: 64, column: 9, scope: !2564, inlinedAt: !179271)
!179369 = !DILocation(line: 65, column: 9, scope: !2564, inlinedAt: !179271)
!179370 = !DILocation(line: 977, column: 16, scope: !179245, inlinedAt: !179320)
!179371 = !DILocation(line: 961, column: 18, scope: !179248, inlinedAt: !179327)
!179372 = !DILocation(line: 1717, column: 9, scope: !179254, inlinedAt: !179331)
!179373 = !DILocation(line: 180, column: 28, scope: !179283, inlinedAt: !179330)
!179374 = !DILocation(line: 89, column: 24, scope: !179284, inlinedAt: !179332)
!179375 = !DILocation(line: 443, column: 13, scope: !179247, inlinedAt: !179319)
!179376 = !DILocation(line: 659, column: 28, scope: !179261, inlinedAt: !179333)
!179377 = !DILocation(line: 144, column: 22, scope: !179285)
!179378 = !DILocation(line: 1571, column: 9, scope: !2535, inlinedAt: !179289)
!179379 = !DILocation(line: 655, column: 9, scope: !2536, inlinedAt: !179288)
!179380 = !DILocation(line: 70, column: 16, scope: !2555, inlinedAt: !179286)
!179381 = !DILocation(line: 1921, column: 50, scope: !2539, inlinedAt: !179290)
!179382 = !DILocation(line: 74, column: 39, scope: !2555, inlinedAt: !179286)
!179383 = !DILocation(line: 73, column: 17, scope: !2555, inlinedAt: !179286)
!179384 = !DILocation(line: 1917, column: 50, scope: !2540, inlinedAt: !179293)
!179385 = !DILocation(line: 75, column: 39, scope: !2555, inlinedAt: !179286)
!179386 = !DILocation(line: 75, column: 17, scope: !2555, inlinedAt: !179286)
!179387 = !DILocation(line: 70, column: 13, scope: !2555, inlinedAt: !179286)
!179388 = !DILocation(line: 218, column: 45, scope: !2548, inlinedAt: !179295)
!179389 = !DILocation(line: 105, column: 45, scope: !751, inlinedAt: !179296)
!179390 = !DILocation(line: 218, column: 45, scope: !2548, inlinedAt: !179297)
!179391 = !DILocation(line: 218, column: 45, scope: !2548, inlinedAt: !179298)
!179392 = !DILocation(line: 56, column: 9, scope: !2559, inlinedAt: !179294)
!179393 = !DILocation(line: 57, column: 9, scope: !2559, inlinedAt: !179294)
!179394 = !DILocation(line: 147, column: 9, scope: !179241)
!179395 = !DILocation(line: 148, column: 9, scope: !179241)
!179396 = !DILocation(line: 149, column: 6, scope: !179241)
!179397 = distinct !DISubprogram(name: "get_agg<f32, f32>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowffEINtNtB6_8no_nulls23RollingAggWindowNoNullsfE7get_aggCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 151, type: !3818, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!179398 = distinct !DILocation(line: 152, column: 14, scope: !179397)
!179399 = distinct !{!179399, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE7get_sumCskY9G75ZWc4U_11polars_expr"}
!179400 = distinct !{!179400, !179399, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowffE7get_sumCskY9G75ZWc4U_11polars_expr: argument 0"}
!179401 = !{!179400}
!179402 = !DILocation(line: 99, column: 12, scope: !2565, inlinedAt: !179398)
!179403 = !DILocation(line: 100, column: 27, scope: !2565, inlinedAt: !179398)
!179404 = !DILocation(line: 99, column: 9, scope: !2565, inlinedAt: !179398)
!179405 = !DILocation(line: 101, column: 44, scope: !2565, inlinedAt: !179398)
!179406 = !DILocation(line: 101, column: 19, scope: !2565, inlinedAt: !179398)
!179407 = !DILocation(line: 103, column: 44, scope: !2565, inlinedAt: !179398)
!179408 = !DILocation(line: 103, column: 19, scope: !2565, inlinedAt: !179398)
!179409 = !DILocation(line: 103, column: 16, scope: !2565, inlinedAt: !179398)
!179410 = !DILocation(line: 0, scope: !2565, inlinedAt: !179398)
!179411 = !DILocation(line: 108, column: 6, scope: !2565, inlinedAt: !179398)
!179412 = !DILocation(line: 153, column: 6, scope: !179397)
!179413 = distinct !DISubprogram(name: "new<u8, u8>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowhhEINtNtB6_8no_nulls23RollingAggWindowNoNullshE3newCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 118, type: !3818, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!179414 = distinct !DILexicalBlock(scope: !179413, file: !5009, line: 125, column: 9)
!179415 = distinct !DILocation(line: 126, column: 18, scope: !179414)
!179416 = distinct !DILocation(line: 139, column: 31, scope: !3167, inlinedAt: !179415)
!179417 = distinct !DILocation(line: 19, column: 15, scope: !3166, inlinedAt: !179416)
!179418 = distinct !DILocation(line: 437, column: 32, scope: !3165, inlinedAt: !179417)
!179419 = distinct !{!179419, i1 true, !"_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowhhEINtNtB6_8no_nulls23RollingAggWindowNoNullshE6updateCskY9G75ZWc4U_11polars_expr"}
!179420 = distinct !{!179420, !179419, !"_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowhhEINtNtB6_8no_nulls23RollingAggWindowNoNullshE6updateCskY9G75ZWc4U_11polars_expr: argument 0"}
!179421 = distinct !DILocation(line: 143, column: 31, scope: !3167, inlinedAt: !179415)
!179422 = distinct !DILocation(line: 19, column: 15, scope: !5311, inlinedAt: !179421)
!179423 = distinct !DILocation(line: 437, column: 32, scope: !5310, inlinedAt: !179422)
!179424 = distinct !DILocation(line: 143, column: 20, scope: !3167, inlinedAt: !179415)
!179425 = distinct !DILocation(line: 26, column: 14, scope: !5314, inlinedAt: !179424)
!179426 = distinct !DILocation(line: 1041, column: 9, scope: !5313, inlinedAt: !179425)
!179427 = distinct !DILocation(line: 102, column: 78, scope: !5312, inlinedAt: !179426)
!179428 = distinct !DILocation(line: 143, column: 20, scope: !5316, inlinedAt: !179415)
!179429 = distinct !DILocation(line: 180, column: 28, scope: !5315, inlinedAt: !179428)
!179430 = distinct !DILocation(line: 441, column: 24, scope: !5310, inlinedAt: !179422)
!179431 = distinct !DILocation(line: 144, column: 18, scope: !3181, inlinedAt: !179415)
!179432 = distinct !DILocation(line: 79, column: 13, scope: !2584, inlinedAt: !179431)
!179433 = distinct !{!179433, !4188, !4189}
!179434 = distinct !DILocation(line: 185, column: 40, scope: !5315, inlinedAt: !179428)
!179435 = distinct !{!179435, !4188, !4189}
!179436 = distinct !{!179436, !4189, !4188}
!179437 = !{!179420}
!179438 = !DILocation(line: 977, column: 16, scope: !3164, inlinedAt: !179418)
!179439 = !DILocation(line: 443, column: 13, scope: !3165, inlinedAt: !179417)
!179440 = !DILocation(line: 977, column: 16, scope: !3164, inlinedAt: !179423)
!179441 = !DILocation(line: 961, column: 18, scope: !3168, inlinedAt: !179427)
!179442 = !DILocation(line: 1717, column: 9, scope: !3174, inlinedAt: !179429)
!179443 = !DILocation(line: 180, column: 28, scope: !3177, inlinedAt: !179428)
!179444 = !DILocation(line: 89, column: 24, scope: !3180, inlinedAt: !179430)
!179445 = !DILocation(line: 144, column: 22, scope: !3181, inlinedAt: !179415)
!179446 = !DILocation(line: 792, column: 51, scope: !2582, inlinedAt: !179432)
!179447 = !DILocation(line: 659, column: 28, scope: !3182, inlinedAt: !179434)
!179448 = !DILocation(line: 443, column: 13, scope: !3165, inlinedAt: !179422)
!179449 = !DILocation(line: 0, scope: !179413)
!179450 = !DILocation(line: 127, column: 9, scope: !179414)
!179451 = !DILocation(line: 128, column: 6, scope: !179413)
!179452 = distinct !DILocation(line: 134, column: 18, scope: !3167)
!179453 = distinct !{!179453, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE5resetCskY9G75ZWc4U_11polars_expr"}
!179454 = distinct !{!179454, !179453, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE5resetCskY9G75ZWc4U_11polars_expr: argument 0"}
!179455 = distinct !DILexicalBlock(scope: !3169, file: !4034, line: 97, column: 9)
!179456 = distinct !DILexicalBlock(scope: !179455, file: !4034, line: 98, column: 9)
!179457 = distinct !DILexicalBlock(scope: !3167, file: !5009, line: 139, column: 9)
!179458 = distinct !DILexicalBlock(scope: !3175, file: !4038, line: 161, column: 17)
!179459 = distinct !DILexicalBlock(scope: !179458, file: !4038, line: 162, column: 17)
!179460 = distinct !DILexicalBlock(scope: !3179, file: !3883, line: 87, column: 5)
!179461 = distinct !{!179461, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE3subCskY9G75ZWc4U_11polars_expr"}
!179462 = distinct !{!179462, !179461, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE3subCskY9G75ZWc4U_11polars_expr: argument 0"}
!179463 = distinct !{!179463, i1 true, !"_RNvXs5Z_NtNtCscgRAwXFJnXP_4core3ops5arithhNtB6_9SubAssign10sub_assign"}
!179464 = distinct !{!179464, !179463, !"_RNvXs5Z_NtNtCscgRAwXFJnXP_4core3ops5arithhNtB6_9SubAssign10sub_assign: argument 0"}
!179465 = distinct !DILexicalBlock(scope: !179457, file: !5009, line: 139, column: 9)
!179466 = distinct !DILocation(line: 140, column: 18, scope: !179465)
!179467 = distinct !DILocation(line: 94, column: 13, scope: !2588, inlinedAt: !179466)
!179468 = distinct !{!179468, !4188, !4189}
!179469 = distinct !{!179469, !4188, !4189}
!179470 = distinct !{!179470, !4189, !4188}
!179471 = distinct !{!179471, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE3addCskY9G75ZWc4U_11polars_expr"}
!179472 = distinct !{!179472, !179471, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE3addCskY9G75ZWc4U_11polars_expr: argument 0"}
!179473 = distinct !{!179473, i1 true, !"_RNvXs5t_NtNtCscgRAwXFJnXP_4core3ops5arithhNtB6_9AddAssign10add_assign"}
!179474 = distinct !{!179474, !179473, !"_RNvXs5t_NtNtCscgRAwXFJnXP_4core3ops5arithhNtB6_9AddAssign10add_assign: argument 0"}
!179475 = distinct !DILocation(line: 144, column: 18, scope: !3181)
!179476 = distinct !DILocation(line: 79, column: 13, scope: !2584, inlinedAt: !179475)
!179477 = distinct !{!179477, !4188, !4189}
!179478 = distinct !{!179478, !4188, !4189}
!179479 = distinct !{!179479, !4189, !4188}
!179480 = !{!179454}
!179481 = !DILocation(line: 139, column: 31, scope: !3167)
!179482 = !DILocation(line: 19, column: 15, scope: !3166, inlinedAt: !179481)
!179483 = !DILocation(line: 437, column: 32, scope: !3165, inlinedAt: !179482)
!179484 = !DILocation(line: 139, column: 20, scope: !3167)
!179485 = !DILocation(line: 26, column: 14, scope: !3173, inlinedAt: !179484)
!179486 = !DILocation(line: 1041, column: 9, scope: !3172, inlinedAt: !179485)
!179487 = !DILocation(line: 102, column: 78, scope: !179456, inlinedAt: !179486)
!179488 = !DILexicalBlockFile(scope: !179457, file: !5009, discriminator: 2)
!179489 = !DILocation(line: 139, column: 20, scope: !179488)
!179490 = !DILocation(line: 180, column: 28, scope: !179459, inlinedAt: !179489)
!179491 = !DILocation(line: 441, column: 24, scope: !3165, inlinedAt: !179482)
!179492 = !{!179464, !179462}
!179493 = !DILocation(line: 185, column: 40, scope: !179459, inlinedAt: !179489)
!179494 = !DILocation(line: 143, column: 31, scope: !3167)
!179495 = !DILocation(line: 19, column: 15, scope: !5311, inlinedAt: !179494)
!179496 = !DILocation(line: 437, column: 32, scope: !5310, inlinedAt: !179495)
!179497 = !DILocation(line: 143, column: 20, scope: !3167)
!179498 = !DILocation(line: 26, column: 14, scope: !5314, inlinedAt: !179497)
!179499 = !DILocation(line: 1041, column: 9, scope: !5313, inlinedAt: !179498)
!179500 = !DILocation(line: 102, column: 78, scope: !5312, inlinedAt: !179499)
!179501 = !DILocation(line: 143, column: 20, scope: !5316)
!179502 = !DILocation(line: 180, column: 28, scope: !5315, inlinedAt: !179501)
!179503 = !DILocation(line: 441, column: 24, scope: !5310, inlinedAt: !179495)
!179504 = !{!179474, !179472}
!179505 = !DILocation(line: 185, column: 40, scope: !5315, inlinedAt: !179501)
!179506 = !DILocation(line: 133, column: 25, scope: !3167)
!179507 = !DILocation(line: 133, column: 12, scope: !3167)
!179508 = !DILocation(line: 139, column: 32, scope: !3167)
!179509 = !DILocation(line: 43, column: 9, scope: !2585, inlinedAt: !179452)
!179510 = !DILocation(line: 44, column: 9, scope: !2585, inlinedAt: !179452)
!179511 = !DILocation(line: 45, column: 9, scope: !2585, inlinedAt: !179452)
!179512 = !DILocation(line: 46, column: 9, scope: !2585, inlinedAt: !179452)
!179513 = !DILocation(line: 135, column: 13, scope: !3167)
!179514 = !DILocation(line: 136, column: 13, scope: !3167)
!179515 = !DILocation(line: 133, column: 9, scope: !3167)
!179516 = !DILocation(line: 139, column: 21, scope: !3167)
!179517 = !DILocation(line: 977, column: 16, scope: !3164, inlinedAt: !179483)
!179518 = !DILocation(line: 961, column: 18, scope: !3168, inlinedAt: !179487)
!179519 = !DILocation(line: 1717, column: 9, scope: !3174, inlinedAt: !179490)
!179520 = !DILocation(line: 89, column: 24, scope: !179460, inlinedAt: !179491)
!179521 = !DILocation(line: 140, column: 22, scope: !179465)
!179522 = !DILocation(line: 863, column: 51, scope: !2586, inlinedAt: !179467)
!179523 = !DILocation(line: 659, column: 28, scope: !3182, inlinedAt: !179493)
!179524 = !DILocation(line: 443, column: 13, scope: !3165, inlinedAt: !179482)
!179525 = !DILocation(line: 977, column: 16, scope: !3164, inlinedAt: !179496)
!179526 = !DILocation(line: 961, column: 18, scope: !3168, inlinedAt: !179500)
!179527 = !DILocation(line: 1717, column: 9, scope: !3174, inlinedAt: !179502)
!179528 = !DILocation(line: 180, column: 28, scope: !3177, inlinedAt: !179501)
!179529 = !DILocation(line: 89, column: 24, scope: !3180, inlinedAt: !179503)
!179530 = !DILocation(line: 144, column: 22, scope: !3181)
!179531 = !DILocation(line: 792, column: 51, scope: !2582, inlinedAt: !179476)
!179532 = !DILocation(line: 659, column: 28, scope: !3182, inlinedAt: !179505)
!179533 = !DILocation(line: 443, column: 13, scope: !3165, inlinedAt: !179495)
!179534 = !DILocation(line: 147, column: 9, scope: !3167)
!179535 = !DILocation(line: 148, column: 9, scope: !3167)
!179536 = !DILocation(line: 149, column: 6, scope: !3167)
!179537 = distinct !DISubprogram(name: "get_agg<u8, u8>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowhhEINtNtB6_8no_nulls23RollingAggWindowNoNullshE7get_aggCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 151, type: !3818, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!179538 = distinct !{!179538, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCskY9G75ZWc4U_11polars_expr"}
!179539 = distinct !{!179539, !179538, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowhhE7get_sumCskY9G75ZWc4U_11polars_expr: argument 0"}
!179540 = distinct !DILocation(line: 152, column: 14, scope: !179537)
!179541 = !{!179539}
!179542 = !DILocation(line: 152, column: 14, scope: !179537)
!179543 = !DILocation(line: 99, column: 12, scope: !2589, inlinedAt: !179540)
!179544 = !DILocation(line: 100, column: 27, scope: !2589, inlinedAt: !179540)
!179545 = !DILocation(line: 99, column: 9, scope: !2589, inlinedAt: !179540)
!179546 = !DILocation(line: 101, column: 44, scope: !2589, inlinedAt: !179540)
!179547 = !DILocation(line: 101, column: 19, scope: !2589, inlinedAt: !179540)
!179548 = !DILocation(line: 103, column: 44, scope: !2589, inlinedAt: !179540)
!179549 = !DILocation(line: 103, column: 19, scope: !2589, inlinedAt: !179540)
!179550 = !DILocation(line: 102, column: 18, scope: !2589, inlinedAt: !179540)
!179551 = !DILocation(line: 101, column: 16, scope: !2589, inlinedAt: !179540)
!179552 = !DILocation(line: 106, column: 18, scope: !2589, inlinedAt: !179540)
!179553 = !DILocation(line: 103, column: 16, scope: !2589, inlinedAt: !179540)
!179554 = !DILocation(line: 104, column: 18, scope: !2589, inlinedAt: !179540)
!179555 = !DILocation(line: 0, scope: !2589, inlinedAt: !179540)
!179556 = !DILocation(line: 108, column: 6, scope: !2589, inlinedAt: !179540)
!179557 = !DILocation(line: 153, column: 6, scope: !179537)
!179558 = distinct !DISubprogram(name: "new<i32, i32>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE3newCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 118, type: !3818, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!179559 = distinct !DILexicalBlock(scope: !179558, file: !5009, line: 125, column: 9)
!179560 = distinct !DILocation(line: 126, column: 18, scope: !179559)
!179561 = distinct !DILocation(line: 139, column: 31, scope: !3186, inlinedAt: !179560)
!179562 = distinct !DILocation(line: 19, column: 15, scope: !3185, inlinedAt: !179561)
!179563 = distinct !DILocation(line: 437, column: 32, scope: !3184, inlinedAt: !179562)
!179564 = distinct !{!179564, i1 true, !"_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCskY9G75ZWc4U_11polars_expr"}
!179565 = distinct !{!179565, !179564, !"_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE6updateCskY9G75ZWc4U_11polars_expr: argument 0"}
!179566 = distinct !DILocation(line: 143, column: 31, scope: !3186, inlinedAt: !179560)
!179567 = distinct !DILocation(line: 19, column: 15, scope: !5318, inlinedAt: !179566)
!179568 = distinct !DILocation(line: 437, column: 32, scope: !5317, inlinedAt: !179567)
!179569 = distinct !DILocation(line: 143, column: 20, scope: !3186, inlinedAt: !179560)
!179570 = distinct !DILocation(line: 26, column: 14, scope: !5321, inlinedAt: !179569)
!179571 = distinct !DILocation(line: 1041, column: 9, scope: !5320, inlinedAt: !179570)
!179572 = distinct !DILocation(line: 102, column: 78, scope: !5319, inlinedAt: !179571)
!179573 = distinct !DILocation(line: 143, column: 20, scope: !5323, inlinedAt: !179560)
!179574 = distinct !DILocation(line: 180, column: 28, scope: !5322, inlinedAt: !179573)
!179575 = distinct !DILocation(line: 441, column: 24, scope: !5317, inlinedAt: !179567)
!179576 = distinct !DILocation(line: 144, column: 18, scope: !3200, inlinedAt: !179560)
!179577 = distinct !DILocation(line: 79, column: 13, scope: !2610, inlinedAt: !179576)
!179578 = distinct !{!179578, !4188, !4189}
!179579 = distinct !DILocation(line: 185, column: 40, scope: !5322, inlinedAt: !179573)
!179580 = distinct !{!179580, !4189, !4188}
!179581 = !{!179565}
!179582 = !DILocation(line: 977, column: 16, scope: !3183, inlinedAt: !179563)
!179583 = !DILocation(line: 443, column: 13, scope: !3184, inlinedAt: !179562)
!179584 = !DILocation(line: 977, column: 16, scope: !3183, inlinedAt: !179568)
!179585 = !DILocation(line: 961, column: 18, scope: !3187, inlinedAt: !179572)
!179586 = !DILocation(line: 1717, column: 9, scope: !3193, inlinedAt: !179574)
!179587 = !DILocation(line: 180, column: 28, scope: !3196, inlinedAt: !179573)
!179588 = !DILocation(line: 89, column: 24, scope: !3199, inlinedAt: !179575)
!179589 = !DILocation(line: 144, column: 22, scope: !3200, inlinedAt: !179560)
!179590 = !DILocation(line: 792, column: 51, scope: !2608, inlinedAt: !179577)
!179591 = !DILocation(line: 443, column: 13, scope: !3184, inlinedAt: !179567)
!179592 = !DILocation(line: 659, column: 28, scope: !3201, inlinedAt: !179579)
!179593 = !DILocation(line: 0, scope: !179558)
!179594 = !DILocation(line: 127, column: 9, scope: !179559)
!179595 = !DILocation(line: 128, column: 6, scope: !179558)
!179596 = distinct !DILocation(line: 134, column: 18, scope: !3186)
!179597 = distinct !{!179597, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE5resetCskY9G75ZWc4U_11polars_expr"}
!179598 = distinct !{!179598, !179597, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE5resetCskY9G75ZWc4U_11polars_expr: argument 0"}
!179599 = distinct !DILexicalBlock(scope: !3188, file: !4034, line: 97, column: 9)
!179600 = distinct !DILexicalBlock(scope: !179599, file: !4034, line: 98, column: 9)
!179601 = distinct !DILexicalBlock(scope: !3186, file: !5009, line: 139, column: 9)
!179602 = distinct !DILexicalBlock(scope: !3194, file: !4038, line: 161, column: 17)
!179603 = distinct !DILexicalBlock(scope: !179602, file: !4038, line: 162, column: 17)
!179604 = distinct !DILexicalBlock(scope: !3198, file: !3883, line: 87, column: 5)
!179605 = distinct !{!179605, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE3subCskY9G75ZWc4U_11polars_expr"}
!179606 = distinct !{!179606, !179605, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE3subCskY9G75ZWc4U_11polars_expr: argument 0"}
!179607 = distinct !{!179607, i1 true, !"_RNvXs67_NtNtCscgRAwXFJnXP_4core3ops5arithlNtB6_9SubAssign10sub_assign"}
!179608 = distinct !{!179608, !179607, !"_RNvXs67_NtNtCscgRAwXFJnXP_4core3ops5arithlNtB6_9SubAssign10sub_assign: argument 0"}
!179609 = distinct !DILexicalBlock(scope: !179601, file: !5009, line: 139, column: 9)
!179610 = distinct !DILocation(line: 140, column: 18, scope: !179609)
!179611 = distinct !DILocation(line: 94, column: 13, scope: !2614, inlinedAt: !179610)
!179612 = distinct !{!179612, !4188, !4189}
!179613 = distinct !{!179613, !4189, !4188}
!179614 = distinct !{!179614, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE3addCskY9G75ZWc4U_11polars_expr"}
!179615 = distinct !{!179615, !179614, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE3addCskY9G75ZWc4U_11polars_expr: argument 0"}
!179616 = distinct !{!179616, i1 true, !"_RNvXs5B_NtNtCscgRAwXFJnXP_4core3ops5arithlNtB6_9AddAssign10add_assign"}
!179617 = distinct !{!179617, !179616, !"_RNvXs5B_NtNtCscgRAwXFJnXP_4core3ops5arithlNtB6_9AddAssign10add_assign: argument 0"}
!179618 = distinct !DILocation(line: 144, column: 18, scope: !3200)
!179619 = distinct !DILocation(line: 79, column: 13, scope: !2610, inlinedAt: !179618)
!179620 = distinct !{!179620, !4188, !4189}
!179621 = distinct !{!179621, !4189, !4188}
!179622 = !{!179598}
!179623 = !DILocation(line: 139, column: 31, scope: !3186)
!179624 = !DILocation(line: 19, column: 15, scope: !3185, inlinedAt: !179623)
!179625 = !DILocation(line: 437, column: 32, scope: !3184, inlinedAt: !179624)
!179626 = !DILocation(line: 139, column: 20, scope: !3186)
!179627 = !DILocation(line: 26, column: 14, scope: !3192, inlinedAt: !179626)
!179628 = !DILocation(line: 1041, column: 9, scope: !3191, inlinedAt: !179627)
!179629 = !DILocation(line: 102, column: 78, scope: !179600, inlinedAt: !179628)
!179630 = !DILexicalBlockFile(scope: !179601, file: !5009, discriminator: 2)
!179631 = !DILocation(line: 139, column: 20, scope: !179630)
!179632 = !DILocation(line: 180, column: 28, scope: !179603, inlinedAt: !179631)
!179633 = !DILocation(line: 441, column: 24, scope: !3184, inlinedAt: !179624)
!179634 = !{!179608, !179606}
!179635 = !DILocation(line: 185, column: 40, scope: !179603, inlinedAt: !179631)
!179636 = !DILocation(line: 143, column: 31, scope: !3186)
!179637 = !DILocation(line: 19, column: 15, scope: !5318, inlinedAt: !179636)
!179638 = !DILocation(line: 437, column: 32, scope: !5317, inlinedAt: !179637)
!179639 = !DILocation(line: 143, column: 20, scope: !3186)
!179640 = !DILocation(line: 26, column: 14, scope: !5321, inlinedAt: !179639)
!179641 = !DILocation(line: 1041, column: 9, scope: !5320, inlinedAt: !179640)
!179642 = !DILocation(line: 102, column: 78, scope: !5319, inlinedAt: !179641)
!179643 = !DILocation(line: 143, column: 20, scope: !5323)
!179644 = !DILocation(line: 180, column: 28, scope: !5322, inlinedAt: !179643)
!179645 = !DILocation(line: 441, column: 24, scope: !5317, inlinedAt: !179637)
!179646 = !{!179617, !179615}
!179647 = !DILocation(line: 185, column: 40, scope: !5322, inlinedAt: !179643)
!179648 = !DILocation(line: 133, column: 25, scope: !3186)
!179649 = !DILocation(line: 133, column: 12, scope: !3186)
!179650 = !DILocation(line: 139, column: 32, scope: !3186)
!179651 = !DILocation(line: 43, column: 9, scope: !2611, inlinedAt: !179596)
!179652 = !DILocation(line: 44, column: 9, scope: !2611, inlinedAt: !179596)
!179653 = !DILocation(line: 45, column: 9, scope: !2611, inlinedAt: !179596)
!179654 = !DILocation(line: 46, column: 9, scope: !2611, inlinedAt: !179596)
!179655 = !DILocation(line: 135, column: 13, scope: !3186)
!179656 = !DILocation(line: 136, column: 13, scope: !3186)
!179657 = !DILocation(line: 133, column: 9, scope: !3186)
!179658 = !DILocation(line: 139, column: 21, scope: !3186)
!179659 = !DILocation(line: 977, column: 16, scope: !3183, inlinedAt: !179625)
!179660 = !DILocation(line: 961, column: 18, scope: !3187, inlinedAt: !179629)
!179661 = !DILocation(line: 1717, column: 9, scope: !3193, inlinedAt: !179632)
!179662 = !DILocation(line: 89, column: 24, scope: !179604, inlinedAt: !179633)
!179663 = !DILocation(line: 140, column: 22, scope: !179609)
!179664 = !DILocation(line: 863, column: 51, scope: !2612, inlinedAt: !179611)
!179665 = !DILocation(line: 443, column: 13, scope: !3184, inlinedAt: !179624)
!179666 = !DILocation(line: 659, column: 28, scope: !3201, inlinedAt: !179635)
!179667 = !DILocation(line: 977, column: 16, scope: !3183, inlinedAt: !179638)
!179668 = !DILocation(line: 961, column: 18, scope: !3187, inlinedAt: !179642)
!179669 = !DILocation(line: 1717, column: 9, scope: !3193, inlinedAt: !179644)
!179670 = !DILocation(line: 180, column: 28, scope: !3196, inlinedAt: !179643)
!179671 = !DILocation(line: 89, column: 24, scope: !3199, inlinedAt: !179645)
!179672 = !DILocation(line: 144, column: 22, scope: !3200)
!179673 = !DILocation(line: 792, column: 51, scope: !2608, inlinedAt: !179619)
!179674 = !DILocation(line: 443, column: 13, scope: !3184, inlinedAt: !179637)
!179675 = !DILocation(line: 659, column: 28, scope: !3201, inlinedAt: !179647)
!179676 = !DILocation(line: 147, column: 9, scope: !3186)
!179677 = !DILocation(line: 148, column: 9, scope: !3186)
!179678 = !DILocation(line: 149, column: 6, scope: !3186)
!179679 = distinct !DISubprogram(name: "get_agg<i32, i32>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowllEINtNtB6_8no_nulls23RollingAggWindowNoNullslE7get_aggCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 151, type: !3818, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!179680 = distinct !{!179680, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE7get_sumCskY9G75ZWc4U_11polars_expr"}
!179681 = distinct !{!179681, !179680, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowllE7get_sumCskY9G75ZWc4U_11polars_expr: argument 0"}
!179682 = distinct !DILocation(line: 152, column: 14, scope: !179679)
!179683 = !{!179681}
!179684 = !DILocation(line: 152, column: 14, scope: !179679)
!179685 = !DILocation(line: 99, column: 12, scope: !2615, inlinedAt: !179682)
!179686 = !DILocation(line: 100, column: 27, scope: !2615, inlinedAt: !179682)
!179687 = !DILocation(line: 99, column: 9, scope: !2615, inlinedAt: !179682)
!179688 = !DILocation(line: 101, column: 44, scope: !2615, inlinedAt: !179682)
!179689 = !DILocation(line: 101, column: 19, scope: !2615, inlinedAt: !179682)
!179690 = !DILocation(line: 103, column: 44, scope: !2615, inlinedAt: !179682)
!179691 = !DILocation(line: 103, column: 19, scope: !2615, inlinedAt: !179682)
!179692 = !DILocation(line: 102, column: 18, scope: !2615, inlinedAt: !179682)
!179693 = !DILocation(line: 101, column: 16, scope: !2615, inlinedAt: !179682)
!179694 = !DILocation(line: 106, column: 18, scope: !2615, inlinedAt: !179682)
!179695 = !DILocation(line: 103, column: 16, scope: !2615, inlinedAt: !179682)
!179696 = !DILocation(line: 104, column: 18, scope: !2615, inlinedAt: !179682)
!179697 = !DILocation(line: 0, scope: !2615, inlinedAt: !179682)
!179698 = !DILocation(line: 108, column: 6, scope: !2615, inlinedAt: !179682)
!179699 = !DILocation(line: 153, column: 6, scope: !179679)
!179700 = distinct !DISubprogram(name: "new<u32, u32>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE3newCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 118, type: !3818, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!179701 = distinct !DILexicalBlock(scope: !179700, file: !5009, line: 125, column: 9)
!179702 = distinct !DILocation(line: 126, column: 18, scope: !179701)
!179703 = distinct !DILocation(line: 139, column: 31, scope: !3205, inlinedAt: !179702)
!179704 = distinct !DILocation(line: 19, column: 15, scope: !3204, inlinedAt: !179703)
!179705 = distinct !DILocation(line: 437, column: 32, scope: !3203, inlinedAt: !179704)
!179706 = distinct !{!179706, i1 true, !"_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE6updateCskY9G75ZWc4U_11polars_expr"}
!179707 = distinct !{!179707, !179706, !"_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowmmEINtNtB6_8no_nulls23RollingAggWindowNoNullsmE6updateCskY9G75ZWc4U_11polars_expr: argument 0"}
!179708 = distinct !DILocation(line: 143, column: 31, scope: !3205, inlinedAt: !179702)
!179709 = distinct !DILocation(line: 19, column: 15, scope: !5325, inlinedAt: !179708)
!179710 = distinct !DILocation(line: 437, column: 32, scope: !5324, inlinedAt: !179709)
!179711 = distinct !DILocation(line: 143, column: 20, scope: !3205, inlinedAt: !179702)
!179712 = distinct !DILocation(line: 26, column: 14, scope: !5328, inlinedAt: !179711)
!179713 = distinct !DILocation(line: 1041, column: 9, scope: !5327, inlinedAt: !179712)
!179714 = distinct !DILocation(line: 102, column: 78, scope: !5326, inlinedAt: !179713)
!179715 = distinct !DILocation(line: 143, column: 20, scope: !5330, inlinedAt: !179702)
!179716 = distinct !DILocation(line: 180, column: 28, scope: !5329, inlinedAt: !179715)
!179717 = distinct !DILocation(line: 441, column: 24, scope: !5324, inlinedAt: !179709)
!179718 = distinct !DILocation(line: 144, column: 18, scope: !3219, inlinedAt: !179702)
!179719 = distinct !DILocation(line: 79, column: 13, scope: !2635, inlinedAt: !179718)
!179720 = distinct !{!179720, !4188, !4189}
!179721 = distinct !DILocation(line: 185, column: 40, scope: !5329, inlinedAt: !179715)
!179722 = distinct !{!179722, !4189, !4188}
!179723 = !{!179707}
!179724 = !DILocation(line: 977, column: 16, scope: !3202, inlinedAt: !179705)
!179725 = !DILocation(line: 443, column: 13, scope: !3203, inlinedAt: !179704)
!179726 = !DILocation(line: 977, column: 16, scope: !3202, inlinedAt: !179710)
!179727 = !DILocation(line: 961, column: 18, scope: !3206, inlinedAt: !179714)
!179728 = !DILocation(line: 1717, column: 9, scope: !3212, inlinedAt: !179716)
!179729 = !DILocation(line: 180, column: 28, scope: !3215, inlinedAt: !179715)
!179730 = !DILocation(line: 89, column: 24, scope: !3218, inlinedAt: !179717)
!179731 = !DILocation(line: 144, column: 22, scope: !3219, inlinedAt: !179702)
!179732 = !DILocation(line: 792, column: 51, scope: !632, inlinedAt: !179719)
!179733 = !DILocation(line: 443, column: 13, scope: !3203, inlinedAt: !179709)
end_hunk_4
begin_hunk_5_@llvm.vector.reduce.add.v4i16
!179937 = !DILocation(line: 961, column: 18, scope: !3225, inlinedAt: !179907)
!179938 = !DILocation(line: 1717, column: 9, scope: !3231, inlinedAt: !179910)
!179939 = !DILocation(line: 89, column: 24, scope: !179886, inlinedAt: !179911)
!179940 = !DILocation(line: 443, column: 13, scope: !3222, inlinedAt: !179902)
!179941 = !DILocation(line: 659, column: 28, scope: !3238, inlinedAt: !179913)
!179942 = !DILocation(line: 140, column: 22, scope: !179891)
!179943 = !DILocation(line: 863, column: 51, scope: !2663, inlinedAt: !179893)
!179944 = !DILocation(line: 977, column: 16, scope: !3221, inlinedAt: !179916)
!179945 = !DILocation(line: 961, column: 18, scope: !3225, inlinedAt: !179920)
!179946 = !DILocation(line: 1717, column: 9, scope: !3231, inlinedAt: !179922)
!179947 = !DILocation(line: 180, column: 28, scope: !3234, inlinedAt: !179921)
!179948 = !DILocation(line: 89, column: 24, scope: !3237, inlinedAt: !179923)
!179949 = !DILocation(line: 443, column: 13, scope: !3222, inlinedAt: !179915)
!179950 = !DILocation(line: 659, column: 28, scope: !3238, inlinedAt: !179925)
!179951 = !DILocation(line: 144, column: 22, scope: !3239)
!179952 = !DILocation(line: 792, column: 51, scope: !2659, inlinedAt: !179899)
!179953 = !DILocation(line: 147, column: 9, scope: !3224)
!179954 = !DILocation(line: 148, column: 9, scope: !3224)
!179955 = !DILocation(line: 149, column: 6, scope: !3224)
!179956 = distinct !DISubprogram(name: "get_agg<i128, i128>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindownnEINtNtB6_8no_nulls23RollingAggWindowNoNullsnE7get_aggCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 151, type: !3818, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!179957 = distinct !{!179957, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindownnE7get_sumCskY9G75ZWc4U_11polars_expr"}
!179958 = distinct !{!179958, !179957, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindownnE7get_sumCskY9G75ZWc4U_11polars_expr: argument 0"}
!179959 = distinct !{!179959, !179957, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindownnE7get_sumCskY9G75ZWc4U_11polars_expr: argument 1"}
!179960 = distinct !DILocation(line: 152, column: 14, scope: !179956)
!179961 = !{!179958}
!179962 = !{!179959}
!179963 = !{!179958, !179959}
!179964 = !DILocation(line: 152, column: 14, scope: !179956)
!179965 = !DILocation(line: 99, column: 12, scope: !2666, inlinedAt: !179960)
!179966 = !DILocation(line: 100, column: 27, scope: !2666, inlinedAt: !179960)
!179967 = !DILocation(line: 99, column: 9, scope: !2666, inlinedAt: !179960)
!179968 = !DILocation(line: 101, column: 44, scope: !2666, inlinedAt: !179960)
!179969 = !DILocation(line: 101, column: 19, scope: !2666, inlinedAt: !179960)
!179970 = !DILocation(line: 103, column: 44, scope: !2666, inlinedAt: !179960)
!179971 = !DILocation(line: 103, column: 19, scope: !2666, inlinedAt: !179960)
!179972 = !DILocation(line: 102, column: 18, scope: !2666, inlinedAt: !179960)
!179973 = !DILocation(line: 101, column: 16, scope: !2666, inlinedAt: !179960)
!179974 = !DILocation(line: 106, column: 18, scope: !2666, inlinedAt: !179960)
!179975 = !DILocation(line: 103, column: 16, scope: !2666, inlinedAt: !179960)
!179976 = !DILocation(line: 104, column: 18, scope: !2666, inlinedAt: !179960)
!179977 = !DILocation(line: 0, scope: !2666, inlinedAt: !179960)
!179978 = !DILocation(line: 153, column: 6, scope: !179956)
!179979 = distinct !DISubprogram(name: "new<u128, u128>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowooEINtNtB6_8no_nulls23RollingAggWindowNoNullsoE3newCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 118, type: !3818, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!179980 = distinct !DILexicalBlock(scope: !179979, file: !5009, line: 125, column: 9)
!179981 = distinct !DILocation(line: 126, column: 18, scope: !179980)
!179982 = distinct !DILocation(line: 139, column: 31, scope: !3243, inlinedAt: !179981)
!179983 = distinct !DILocation(line: 19, column: 15, scope: !3242, inlinedAt: !179982)
!179984 = distinct !DILocation(line: 437, column: 32, scope: !3241, inlinedAt: !179983)
!179985 = distinct !{!179985, i1 true, !"_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowooEINtNtB6_8no_nulls23RollingAggWindowNoNullsoE6updateCskY9G75ZWc4U_11polars_expr"}
!179986 = distinct !{!179986, !179985, !"_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowooEINtNtB6_8no_nulls23RollingAggWindowNoNullsoE6updateCskY9G75ZWc4U_11polars_expr: argument 0"}
!179987 = distinct !DILocation(line: 143, column: 31, scope: !3243, inlinedAt: !179981)
!179988 = distinct !DILocation(line: 19, column: 15, scope: !5339, inlinedAt: !179987)
!179989 = distinct !DILocation(line: 437, column: 32, scope: !5338, inlinedAt: !179988)
!179990 = distinct !DILocation(line: 143, column: 20, scope: !3243, inlinedAt: !179981)
!179991 = distinct !DILocation(line: 26, column: 14, scope: !5342, inlinedAt: !179990)
!179992 = distinct !DILocation(line: 1041, column: 9, scope: !5341, inlinedAt: !179991)
!179993 = distinct !DILocation(line: 102, column: 78, scope: !5340, inlinedAt: !179992)
!179994 = distinct !DILocation(line: 143, column: 20, scope: !5344, inlinedAt: !179981)
!179995 = distinct !DILocation(line: 180, column: 28, scope: !5343, inlinedAt: !179994)
!179996 = distinct !DILocation(line: 441, column: 24, scope: !5338, inlinedAt: !179988)
!179997 = distinct !DILocation(line: 185, column: 40, scope: !5343, inlinedAt: !179994)
!179998 = distinct !DILocation(line: 144, column: 18, scope: !3258, inlinedAt: !179981)
!179999 = distinct !DILocation(line: 79, column: 13, scope: !2687, inlinedAt: !179998)
!180000 = !{!179986}
!180001 = !DILocation(line: 977, column: 16, scope: !3240, inlinedAt: !179984)
!180002 = !DILocation(line: 443, column: 13, scope: !3241, inlinedAt: !179983)
!180003 = !DILocation(line: 977, column: 16, scope: !3240, inlinedAt: !179989)
!180004 = !DILocation(line: 961, column: 18, scope: !3244, inlinedAt: !179993)
!180005 = !DILocation(line: 1717, column: 9, scope: !3250, inlinedAt: !179995)
!180006 = !DILocation(line: 180, column: 28, scope: !3253, inlinedAt: !179994)
!180007 = !DILocation(line: 89, column: 24, scope: !3256, inlinedAt: !179996)
!180008 = !DILocation(line: 443, column: 13, scope: !3241, inlinedAt: !179988)
!180009 = !DILocation(line: 659, column: 28, scope: !3257, inlinedAt: !179997)
!180010 = !DILocation(line: 144, column: 22, scope: !3258, inlinedAt: !179981)
!180011 = !DILocation(line: 792, column: 51, scope: !2685, inlinedAt: !179999)
!180012 = !DILocation(line: 0, scope: !179979)
!180013 = !DILocation(line: 127, column: 9, scope: !179980)
!180014 = !DILocation(line: 128, column: 6, scope: !179979)
!180015 = distinct !DILocation(line: 134, column: 18, scope: !3243)
!180016 = distinct !{!180016, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowooE5resetCskY9G75ZWc4U_11polars_expr"}
!180017 = distinct !{!180017, !180016, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowooE5resetCskY9G75ZWc4U_11polars_expr: argument 0"}
!180018 = distinct !DILexicalBlock(scope: !3245, file: !4034, line: 97, column: 9)
!180019 = distinct !DILexicalBlock(scope: !180018, file: !4034, line: 98, column: 9)
!180020 = distinct !DILexicalBlock(scope: !3243, file: !5009, line: 139, column: 9)
!180021 = distinct !DILexicalBlock(scope: !3251, file: !4038, line: 161, column: 17)
!180022 = distinct !DILexicalBlock(scope: !180021, file: !4038, line: 162, column: 17)
!180023 = distinct !DILexicalBlock(scope: !3255, file: !3883, line: 87, column: 5)
!180024 = distinct !{!180024, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowooE3subCskY9G75ZWc4U_11polars_expr"}
!180025 = distinct !{!180025, !180024, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowooE3subCskY9G75ZWc4U_11polars_expr: argument 0"}
!180026 = distinct !{!180026, i1 true, !"_RNvXs63_NtNtCscgRAwXFJnXP_4core3ops5arithoNtB6_9SubAssign10sub_assign"}
!180027 = distinct !{!180027, !180026, !"_RNvXs63_NtNtCscgRAwXFJnXP_4core3ops5arithoNtB6_9SubAssign10sub_assign: argument 0"}
!180028 = distinct !DILexicalBlock(scope: !180020, file: !5009, line: 139, column: 9)
!180029 = distinct !DILocation(line: 140, column: 18, scope: !180028)
!180030 = distinct !DILocation(line: 94, column: 13, scope: !2691, inlinedAt: !180029)
!180031 = distinct !{!180031, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowooE3addCskY9G75ZWc4U_11polars_expr"}
!180032 = distinct !{!180032, !180031, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowooE3addCskY9G75ZWc4U_11polars_expr: argument 0"}
!180033 = distinct !{!180033, i1 true, !"_RNvXs5x_NtNtCscgRAwXFJnXP_4core3ops5arithoNtB6_9AddAssign10add_assign"}
!180034 = distinct !{!180034, !180033, !"_RNvXs5x_NtNtCscgRAwXFJnXP_4core3ops5arithoNtB6_9AddAssign10add_assign: argument 0"}
!180035 = distinct !DILocation(line: 144, column: 18, scope: !3258)
!180036 = distinct !DILocation(line: 79, column: 13, scope: !2687, inlinedAt: !180035)
!180037 = !{!180017}
!180038 = !DILocation(line: 139, column: 31, scope: !3243)
!180039 = !DILocation(line: 19, column: 15, scope: !3242, inlinedAt: !180038)
!180040 = !DILocation(line: 437, column: 32, scope: !3241, inlinedAt: !180039)
!180041 = !DILocation(line: 139, column: 20, scope: !3243)
!180042 = !DILocation(line: 26, column: 14, scope: !3249, inlinedAt: !180041)
!180043 = !DILocation(line: 1041, column: 9, scope: !3248, inlinedAt: !180042)
!180044 = !DILocation(line: 102, column: 78, scope: !180019, inlinedAt: !180043)
!180045 = !DILexicalBlockFile(scope: !180020, file: !5009, discriminator: 2)
!180046 = !DILocation(line: 139, column: 20, scope: !180045)
!180047 = !DILocation(line: 180, column: 28, scope: !180022, inlinedAt: !180046)
!180048 = !DILocation(line: 441, column: 24, scope: !3241, inlinedAt: !180039)
!180049 = !{!180027, !180025}
!180050 = !DILocation(line: 185, column: 40, scope: !180022, inlinedAt: !180046)
!180051 = !DILocation(line: 143, column: 31, scope: !3243)
!180052 = !DILocation(line: 19, column: 15, scope: !5339, inlinedAt: !180051)
!180053 = !DILocation(line: 437, column: 32, scope: !5338, inlinedAt: !180052)
!180054 = !DILocation(line: 143, column: 20, scope: !3243)
!180055 = !DILocation(line: 26, column: 14, scope: !5342, inlinedAt: !180054)
!180056 = !DILocation(line: 1041, column: 9, scope: !5341, inlinedAt: !180055)
!180057 = !DILocation(line: 102, column: 78, scope: !5340, inlinedAt: !180056)
!180058 = !DILocation(line: 143, column: 20, scope: !5344)
!180059 = !DILocation(line: 180, column: 28, scope: !5343, inlinedAt: !180058)
!180060 = !DILocation(line: 441, column: 24, scope: !5338, inlinedAt: !180052)
!180061 = !{!180034, !180032}
!180062 = !DILocation(line: 185, column: 40, scope: !5343, inlinedAt: !180058)
!180063 = !DILocation(line: 133, column: 25, scope: !3243)
!180064 = !DILocation(line: 133, column: 12, scope: !3243)
!180065 = !DILocation(line: 139, column: 32, scope: !3243)
!180066 = !DILocation(line: 43, column: 9, scope: !2688, inlinedAt: !180015)
!180067 = !DILocation(line: 46, column: 9, scope: !2688, inlinedAt: !180015)
!180068 = !DILocation(line: 44, column: 9, scope: !2688, inlinedAt: !180015)
!180069 = !DILocation(line: 135, column: 13, scope: !3243)
!180070 = !DILocation(line: 136, column: 13, scope: !3243)
!180071 = !DILocation(line: 133, column: 9, scope: !3243)
!180072 = !DILocation(line: 139, column: 21, scope: !3243)
!180073 = !DILocation(line: 977, column: 16, scope: !3240, inlinedAt: !180040)
!180074 = !DILocation(line: 961, column: 18, scope: !3244, inlinedAt: !180044)
!180075 = !DILocation(line: 1717, column: 9, scope: !3250, inlinedAt: !180047)
!180076 = !DILocation(line: 89, column: 24, scope: !180023, inlinedAt: !180048)
!180077 = !DILocation(line: 443, column: 13, scope: !3241, inlinedAt: !180039)
!180078 = !DILocation(line: 659, column: 28, scope: !3257, inlinedAt: !180050)
!180079 = !DILocation(line: 140, column: 22, scope: !180028)
!180080 = !DILocation(line: 863, column: 51, scope: !2689, inlinedAt: !180030)
!180081 = !DILocation(line: 977, column: 16, scope: !3240, inlinedAt: !180053)
!180082 = !DILocation(line: 961, column: 18, scope: !3244, inlinedAt: !180057)
!180083 = !DILocation(line: 1717, column: 9, scope: !3250, inlinedAt: !180059)
!180084 = !DILocation(line: 180, column: 28, scope: !3253, inlinedAt: !180058)
!180085 = !DILocation(line: 89, column: 24, scope: !3256, inlinedAt: !180060)
!180086 = !DILocation(line: 443, column: 13, scope: !3241, inlinedAt: !180052)
!180087 = !DILocation(line: 659, column: 28, scope: !3257, inlinedAt: !180062)
!180088 = !DILocation(line: 144, column: 22, scope: !3258)
!180089 = !DILocation(line: 792, column: 51, scope: !2685, inlinedAt: !180036)
!180090 = !DILocation(line: 147, column: 9, scope: !3243)
!180091 = !DILocation(line: 148, column: 9, scope: !3243)
!180092 = !DILocation(line: 149, column: 6, scope: !3243)
!180093 = distinct !DISubprogram(name: "get_agg<u128, u128>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowooEINtNtB6_8no_nulls23RollingAggWindowNoNullsoE7get_aggCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 151, type: !3818, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!180094 = distinct !{!180094, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowooE7get_sumCskY9G75ZWc4U_11polars_expr"}
!180095 = distinct !{!180095, !180094, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowooE7get_sumCskY9G75ZWc4U_11polars_expr: argument 0"}
!180096 = distinct !{!180096, !180094, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowooE7get_sumCskY9G75ZWc4U_11polars_expr: argument 1"}
!180097 = distinct !DILocation(line: 152, column: 14, scope: !180093)
!180098 = !{!180095}
!180099 = !{!180096}
!180100 = !{!180095, !180096}
!180101 = !DILocation(line: 152, column: 14, scope: !180093)
!180102 = !DILocation(line: 99, column: 12, scope: !2692, inlinedAt: !180097)
!180103 = !DILocation(line: 100, column: 27, scope: !2692, inlinedAt: !180097)
!180104 = !DILocation(line: 99, column: 9, scope: !2692, inlinedAt: !180097)
!180105 = !DILocation(line: 101, column: 44, scope: !2692, inlinedAt: !180097)
!180106 = !DILocation(line: 101, column: 19, scope: !2692, inlinedAt: !180097)
!180107 = !DILocation(line: 103, column: 44, scope: !2692, inlinedAt: !180097)
!180108 = !DILocation(line: 103, column: 19, scope: !2692, inlinedAt: !180097)
!180109 = !DILocation(line: 102, column: 18, scope: !2692, inlinedAt: !180097)
!180110 = !DILocation(line: 101, column: 16, scope: !2692, inlinedAt: !180097)
!180111 = !DILocation(line: 106, column: 18, scope: !2692, inlinedAt: !180097)
!180112 = !DILocation(line: 103, column: 16, scope: !2692, inlinedAt: !180097)
!180113 = !DILocation(line: 104, column: 18, scope: !2692, inlinedAt: !180097)
!180114 = !DILocation(line: 0, scope: !2692, inlinedAt: !180097)
!180115 = !DILocation(line: 153, column: 6, scope: !180093)
!180116 = distinct !DISubprogram(name: "new<i16, i16>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowssEINtNtB6_8no_nulls23RollingAggWindowNoNullssE3newCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 118, type: !3818, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!180117 = distinct !DILexicalBlock(scope: !180116, file: !5009, line: 125, column: 9)
!180118 = distinct !DILocation(line: 126, column: 18, scope: !180117)
!180119 = distinct !DILocation(line: 139, column: 31, scope: !3262, inlinedAt: !180118)
!180120 = distinct !DILocation(line: 19, column: 15, scope: !3261, inlinedAt: !180119)
!180121 = distinct !DILocation(line: 437, column: 32, scope: !3260, inlinedAt: !180120)
!180122 = distinct !{!180122, i1 true, !"_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowssEINtNtB6_8no_nulls23RollingAggWindowNoNullssE6updateCskY9G75ZWc4U_11polars_expr"}
!180123 = distinct !{!180123, !180122, !"_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowssEINtNtB6_8no_nulls23RollingAggWindowNoNullssE6updateCskY9G75ZWc4U_11polars_expr: argument 0"}
!180124 = distinct !DILocation(line: 143, column: 31, scope: !3262, inlinedAt: !180118)
!180125 = distinct !DILocation(line: 19, column: 15, scope: !5346, inlinedAt: !180124)
!180126 = distinct !DILocation(line: 437, column: 32, scope: !5345, inlinedAt: !180125)
!180127 = distinct !DILocation(line: 143, column: 20, scope: !3262, inlinedAt: !180118)
!180128 = distinct !DILocation(line: 26, column: 14, scope: !5349, inlinedAt: !180127)
!180129 = distinct !DILocation(line: 1041, column: 9, scope: !5348, inlinedAt: !180128)
!180130 = distinct !DILocation(line: 102, column: 78, scope: !5347, inlinedAt: !180129)
!180131 = distinct !DILocation(line: 143, column: 20, scope: !5351, inlinedAt: !180118)
!180132 = distinct !DILocation(line: 180, column: 28, scope: !5350, inlinedAt: !180131)
!180133 = distinct !DILocation(line: 441, column: 24, scope: !5345, inlinedAt: !180125)
!180134 = distinct !DILocation(line: 144, column: 18, scope: !3276, inlinedAt: !180118)
!180135 = distinct !DILocation(line: 79, column: 13, scope: !2713, inlinedAt: !180134)
!180136 = distinct !{!180136, !4188, !4189}
!180137 = distinct !DILocation(line: 185, column: 40, scope: !5350, inlinedAt: !180131)
!180138 = distinct !{!180138, !4188, !4189}
!180139 = distinct !{!180139, !4189, !4188}
!180140 = !{!180123}
!180141 = !DILocation(line: 977, column: 16, scope: !3259, inlinedAt: !180121)
!180142 = !DILocation(line: 443, column: 13, scope: !3260, inlinedAt: !180120)
!180143 = !DILocation(line: 977, column: 16, scope: !3259, inlinedAt: !180126)
!180144 = !DILocation(line: 961, column: 18, scope: !3263, inlinedAt: !180130)
!180145 = !DILocation(line: 1717, column: 9, scope: !3269, inlinedAt: !180132)
!180146 = !DILocation(line: 180, column: 28, scope: !3272, inlinedAt: !180131)
!180147 = !DILocation(line: 89, column: 24, scope: !3275, inlinedAt: !180133)
!180148 = !DILocation(line: 144, column: 22, scope: !3276, inlinedAt: !180118)
!180149 = !DILocation(line: 792, column: 51, scope: !2711, inlinedAt: !180135)
!180150 = !DILocation(line: 659, column: 28, scope: !3277, inlinedAt: !180137)
!180151 = !DILocation(line: 443, column: 13, scope: !3260, inlinedAt: !180125)
!180152 = !DILocation(line: 0, scope: !180116)
!180153 = !DILocation(line: 127, column: 9, scope: !180117)
!180154 = !DILocation(line: 128, column: 6, scope: !180116)
!180155 = distinct !DILocation(line: 134, column: 18, scope: !3262)
!180156 = distinct !{!180156, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowssE5resetCskY9G75ZWc4U_11polars_expr"}
!180157 = distinct !{!180157, !180156, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowssE5resetCskY9G75ZWc4U_11polars_expr: argument 0"}
!180158 = distinct !DILexicalBlock(scope: !3264, file: !4034, line: 97, column: 9)
!180159 = distinct !DILexicalBlock(scope: !180158, file: !4034, line: 98, column: 9)
!180160 = distinct !DILexicalBlock(scope: !3262, file: !5009, line: 139, column: 9)
!180161 = distinct !DILexicalBlock(scope: !3270, file: !4038, line: 161, column: 17)
!180162 = distinct !DILexicalBlock(scope: !180161, file: !4038, line: 162, column: 17)
!180163 = distinct !DILexicalBlock(scope: !3274, file: !3883, line: 87, column: 5)
!180164 = distinct !{!180164, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowssE3subCskY9G75ZWc4U_11polars_expr"}
!180165 = distinct !{!180165, !180164, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowssE3subCskY9G75ZWc4U_11polars_expr: argument 0"}
!180166 = distinct !{!180166, i1 true, !"_RNvXs66_NtNtCscgRAwXFJnXP_4core3ops5arithsNtB6_9SubAssign10sub_assign"}
!180167 = distinct !{!180167, !180166, !"_RNvXs66_NtNtCscgRAwXFJnXP_4core3ops5arithsNtB6_9SubAssign10sub_assign: argument 0"}
!180168 = distinct !DILexicalBlock(scope: !180160, file: !5009, line: 139, column: 9)
!180169 = distinct !DILocation(line: 140, column: 18, scope: !180168)
!180170 = distinct !DILocation(line: 94, column: 13, scope: !2717, inlinedAt: !180169)
!180171 = distinct !{!180171, !4188, !4189}
!180172 = distinct !{!180172, !4188, !4189}
!180173 = distinct !{!180173, !4189, !4188}
!180174 = distinct !{!180174, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowssE3addCskY9G75ZWc4U_11polars_expr"}
!180175 = distinct !{!180175, !180174, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowssE3addCskY9G75ZWc4U_11polars_expr: argument 0"}
!180176 = distinct !{!180176, i1 true, !"_RNvXs5A_NtNtCscgRAwXFJnXP_4core3ops5arithsNtB6_9AddAssign10add_assign"}
!180177 = distinct !{!180177, !180176, !"_RNvXs5A_NtNtCscgRAwXFJnXP_4core3ops5arithsNtB6_9AddAssign10add_assign: argument 0"}
!180178 = distinct !DILocation(line: 144, column: 18, scope: !3276)
!180179 = distinct !DILocation(line: 79, column: 13, scope: !2713, inlinedAt: !180178)
!180180 = distinct !{!180180, !4188, !4189}
!180181 = distinct !{!180181, !4188, !4189}
!180182 = distinct !{!180182, !4189, !4188}
!180183 = !{!180157}
!180184 = !DILocation(line: 139, column: 31, scope: !3262)
!180185 = !DILocation(line: 19, column: 15, scope: !3261, inlinedAt: !180184)
!180186 = !DILocation(line: 437, column: 32, scope: !3260, inlinedAt: !180185)
!180187 = !DILocation(line: 139, column: 20, scope: !3262)
!180188 = !DILocation(line: 26, column: 14, scope: !3268, inlinedAt: !180187)
!180189 = !DILocation(line: 1041, column: 9, scope: !3267, inlinedAt: !180188)
!180190 = !DILocation(line: 102, column: 78, scope: !180159, inlinedAt: !180189)
!180191 = !DILexicalBlockFile(scope: !180160, file: !5009, discriminator: 2)
!180192 = !DILocation(line: 139, column: 20, scope: !180191)
!180193 = !DILocation(line: 180, column: 28, scope: !180162, inlinedAt: !180192)
!180194 = !DILocation(line: 441, column: 24, scope: !3260, inlinedAt: !180185)
!180195 = !{!180167, !180165}
!180196 = !DILocation(line: 185, column: 40, scope: !180162, inlinedAt: !180192)
!180197 = !DILocation(line: 143, column: 31, scope: !3262)
!180198 = !DILocation(line: 19, column: 15, scope: !5346, inlinedAt: !180197)
!180199 = !DILocation(line: 437, column: 32, scope: !5345, inlinedAt: !180198)
!180200 = !DILocation(line: 143, column: 20, scope: !3262)
!180201 = !DILocation(line: 26, column: 14, scope: !5349, inlinedAt: !180200)
!180202 = !DILocation(line: 1041, column: 9, scope: !5348, inlinedAt: !180201)
!180203 = !DILocation(line: 102, column: 78, scope: !5347, inlinedAt: !180202)
!180204 = !DILocation(line: 143, column: 20, scope: !5351)
!180205 = !DILocation(line: 180, column: 28, scope: !5350, inlinedAt: !180204)
!180206 = !DILocation(line: 441, column: 24, scope: !5345, inlinedAt: !180198)
!180207 = !{!180177, !180175}
!180208 = !DILocation(line: 185, column: 40, scope: !5350, inlinedAt: !180204)
!180209 = !DILocation(line: 133, column: 25, scope: !3262)
!180210 = !DILocation(line: 133, column: 12, scope: !3262)
!180211 = !DILocation(line: 139, column: 32, scope: !3262)
!180212 = !DILocation(line: 43, column: 9, scope: !2714, inlinedAt: !180155)
!180213 = !DILocation(line: 44, column: 9, scope: !2714, inlinedAt: !180155)
!180214 = !DILocation(line: 45, column: 9, scope: !2714, inlinedAt: !180155)
!180215 = !DILocation(line: 46, column: 9, scope: !2714, inlinedAt: !180155)
!180216 = !DILocation(line: 135, column: 13, scope: !3262)
!180217 = !DILocation(line: 136, column: 13, scope: !3262)
!180218 = !DILocation(line: 133, column: 9, scope: !3262)
!180219 = !DILocation(line: 139, column: 21, scope: !3262)
!180220 = !DILocation(line: 977, column: 16, scope: !3259, inlinedAt: !180186)
!180221 = !DILocation(line: 961, column: 18, scope: !3263, inlinedAt: !180190)
!180222 = !DILocation(line: 1717, column: 9, scope: !3269, inlinedAt: !180193)
!180223 = !DILocation(line: 89, column: 24, scope: !180163, inlinedAt: !180194)
!180224 = !DILocation(line: 140, column: 22, scope: !180168)
!180225 = !DILocation(line: 863, column: 51, scope: !2715, inlinedAt: !180170)
!180226 = !DILocation(line: 659, column: 28, scope: !3277, inlinedAt: !180196)
!180227 = !DILocation(line: 443, column: 13, scope: !3260, inlinedAt: !180185)
!180228 = !DILocation(line: 977, column: 16, scope: !3259, inlinedAt: !180199)
!180229 = !DILocation(line: 961, column: 18, scope: !3263, inlinedAt: !180203)
!180230 = !DILocation(line: 1717, column: 9, scope: !3269, inlinedAt: !180205)
!180231 = !DILocation(line: 180, column: 28, scope: !3272, inlinedAt: !180204)
!180232 = !DILocation(line: 89, column: 24, scope: !3275, inlinedAt: !180206)
!180233 = !DILocation(line: 144, column: 22, scope: !3276)
!180234 = !DILocation(line: 792, column: 51, scope: !2711, inlinedAt: !180179)
!180235 = !DILocation(line: 659, column: 28, scope: !3277, inlinedAt: !180208)
!180236 = !DILocation(line: 443, column: 13, scope: !3260, inlinedAt: !180198)
!180237 = !DILocation(line: 147, column: 9, scope: !3262)
!180238 = !DILocation(line: 148, column: 9, scope: !3262)
!180239 = !DILocation(line: 149, column: 6, scope: !3262)
!180240 = distinct !DISubprogram(name: "get_agg<i16, i16>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowssEINtNtB6_8no_nulls23RollingAggWindowNoNullssE7get_aggCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 151, type: !3818, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!180241 = distinct !{!180241, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowssE7get_sumCskY9G75ZWc4U_11polars_expr"}
!180242 = distinct !{!180242, !180241, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowssE7get_sumCskY9G75ZWc4U_11polars_expr: argument 0"}
!180243 = distinct !DILocation(line: 152, column: 14, scope: !180240)
!180244 = !{!180242}
!180245 = !DILocation(line: 152, column: 14, scope: !180240)
!180246 = !DILocation(line: 99, column: 12, scope: !2718, inlinedAt: !180243)
!180247 = !DILocation(line: 100, column: 27, scope: !2718, inlinedAt: !180243)
!180248 = !DILocation(line: 99, column: 9, scope: !2718, inlinedAt: !180243)
!180249 = !DILocation(line: 101, column: 44, scope: !2718, inlinedAt: !180243)
!180250 = !DILocation(line: 101, column: 19, scope: !2718, inlinedAt: !180243)
!180251 = !DILocation(line: 103, column: 44, scope: !2718, inlinedAt: !180243)
!180252 = !DILocation(line: 103, column: 19, scope: !2718, inlinedAt: !180243)
!180253 = !DILocation(line: 102, column: 18, scope: !2718, inlinedAt: !180243)
!180254 = !DILocation(line: 101, column: 16, scope: !2718, inlinedAt: !180243)
!180255 = !DILocation(line: 106, column: 18, scope: !2718, inlinedAt: !180243)
!180256 = !DILocation(line: 103, column: 16, scope: !2718, inlinedAt: !180243)
!180257 = !DILocation(line: 104, column: 18, scope: !2718, inlinedAt: !180243)
!180258 = !DILocation(line: 0, scope: !2718, inlinedAt: !180243)
!180259 = !DILocation(line: 108, column: 6, scope: !2718, inlinedAt: !180243)
!180260 = !DILocation(line: 153, column: 6, scope: !180240)
!180261 = distinct !DISubprogram(name: "new<u16, u16>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowttEINtNtB6_8no_nulls23RollingAggWindowNoNullstE3newCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 118, type: !3818, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!180262 = distinct !DILexicalBlock(scope: !180261, file: !5009, line: 125, column: 9)
!180263 = distinct !DILocation(line: 126, column: 18, scope: !180262)
!180264 = distinct !DILocation(line: 139, column: 31, scope: !3281, inlinedAt: !180263)
!180265 = distinct !DILocation(line: 19, column: 15, scope: !3280, inlinedAt: !180264)
!180266 = distinct !DILocation(line: 437, column: 32, scope: !3279, inlinedAt: !180265)
!180267 = distinct !{!180267, i1 true, !"_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowttEINtNtB6_8no_nulls23RollingAggWindowNoNullstE6updateCskY9G75ZWc4U_11polars_expr"}
!180268 = distinct !{!180268, !180267, !"_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowttEINtNtB6_8no_nulls23RollingAggWindowNoNullstE6updateCskY9G75ZWc4U_11polars_expr: argument 0"}
!180269 = distinct !DILocation(line: 143, column: 31, scope: !3281, inlinedAt: !180263)
!180270 = distinct !DILocation(line: 19, column: 15, scope: !5353, inlinedAt: !180269)
!180271 = distinct !DILocation(line: 437, column: 32, scope: !5352, inlinedAt: !180270)
!180272 = distinct !DILocation(line: 143, column: 20, scope: !3281, inlinedAt: !180263)
!180273 = distinct !DILocation(line: 26, column: 14, scope: !5356, inlinedAt: !180272)
!180274 = distinct !DILocation(line: 1041, column: 9, scope: !5355, inlinedAt: !180273)
!180275 = distinct !DILocation(line: 102, column: 78, scope: !5354, inlinedAt: !180274)
!180276 = distinct !DILocation(line: 143, column: 20, scope: !5358, inlinedAt: !180263)
!180277 = distinct !DILocation(line: 180, column: 28, scope: !5357, inlinedAt: !180276)
!180278 = distinct !DILocation(line: 441, column: 24, scope: !5352, inlinedAt: !180270)
!180279 = distinct !DILocation(line: 144, column: 18, scope: !3295, inlinedAt: !180263)
!180280 = distinct !DILocation(line: 79, column: 13, scope: !2739, inlinedAt: !180279)
!180281 = distinct !{!180281, !4188, !4189}
!180282 = distinct !DILocation(line: 185, column: 40, scope: !5357, inlinedAt: !180276)
!180283 = distinct !{!180283, !4188, !4189}
!180284 = distinct !{!180284, !4189, !4188}
!180285 = !{!180268}
!180286 = !DILocation(line: 977, column: 16, scope: !3278, inlinedAt: !180266)
!180287 = !DILocation(line: 443, column: 13, scope: !3279, inlinedAt: !180265)
!180288 = !DILocation(line: 977, column: 16, scope: !3278, inlinedAt: !180271)
!180289 = !DILocation(line: 961, column: 18, scope: !3282, inlinedAt: !180275)
!180290 = !DILocation(line: 1717, column: 9, scope: !3288, inlinedAt: !180277)
!180291 = !DILocation(line: 180, column: 28, scope: !3291, inlinedAt: !180276)
!180292 = !DILocation(line: 89, column: 24, scope: !3294, inlinedAt: !180278)
!180293 = !DILocation(line: 144, column: 22, scope: !3295, inlinedAt: !180263)
!180294 = !DILocation(line: 792, column: 51, scope: !2737, inlinedAt: !180280)
!180295 = !DILocation(line: 659, column: 28, scope: !3296, inlinedAt: !180282)
!180296 = !DILocation(line: 443, column: 13, scope: !3279, inlinedAt: !180270)
!180297 = !DILocation(line: 0, scope: !180261)
!180298 = !DILocation(line: 127, column: 9, scope: !180262)
!180299 = !DILocation(line: 128, column: 6, scope: !180261)
!180300 = distinct !DILocation(line: 134, column: 18, scope: !3281)
!180301 = distinct !{!180301, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE5resetCskY9G75ZWc4U_11polars_expr"}
!180302 = distinct !{!180302, !180301, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE5resetCskY9G75ZWc4U_11polars_expr: argument 0"}
!180303 = distinct !DILexicalBlock(scope: !3283, file: !4034, line: 97, column: 9)
!180304 = distinct !DILexicalBlock(scope: !180303, file: !4034, line: 98, column: 9)
!180305 = distinct !DILexicalBlock(scope: !3281, file: !5009, line: 139, column: 9)
!180306 = distinct !DILexicalBlock(scope: !3289, file: !4038, line: 161, column: 17)
!180307 = distinct !DILexicalBlock(scope: !180306, file: !4038, line: 162, column: 17)
!180308 = distinct !DILexicalBlock(scope: !3293, file: !3883, line: 87, column: 5)
!180309 = distinct !{!180309, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE3subCskY9G75ZWc4U_11polars_expr"}
!180310 = distinct !{!180310, !180309, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE3subCskY9G75ZWc4U_11polars_expr: argument 0"}
!180311 = distinct !{!180311, i1 true, !"_RNvXs60_NtNtCscgRAwXFJnXP_4core3ops5arithtNtB6_9SubAssign10sub_assign"}
!180312 = distinct !{!180312, !180311, !"_RNvXs60_NtNtCscgRAwXFJnXP_4core3ops5arithtNtB6_9SubAssign10sub_assign: argument 0"}
!180313 = distinct !DILexicalBlock(scope: !180305, file: !5009, line: 139, column: 9)
!180314 = distinct !DILocation(line: 140, column: 18, scope: !180313)
!180315 = distinct !DILocation(line: 94, column: 13, scope: !2743, inlinedAt: !180314)
!180316 = distinct !{!180316, !4188, !4189}
!180317 = distinct !{!180317, !4188, !4189}
!180318 = distinct !{!180318, !4189, !4188}
!180319 = distinct !{!180319, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE3addCskY9G75ZWc4U_11polars_expr"}
!180320 = distinct !{!180320, !180319, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE3addCskY9G75ZWc4U_11polars_expr: argument 0"}
!180321 = distinct !{!180321, i1 true, !"_RNvXs5u_NtNtCscgRAwXFJnXP_4core3ops5arithtNtB6_9AddAssign10add_assign"}
!180322 = distinct !{!180322, !180321, !"_RNvXs5u_NtNtCscgRAwXFJnXP_4core3ops5arithtNtB6_9AddAssign10add_assign: argument 0"}
!180323 = distinct !DILocation(line: 144, column: 18, scope: !3295)
!180324 = distinct !DILocation(line: 79, column: 13, scope: !2739, inlinedAt: !180323)
!180325 = distinct !{!180325, !4188, !4189}
!180326 = distinct !{!180326, !4188, !4189}
!180327 = distinct !{!180327, !4189, !4188}
!180328 = !{!180302}
!180329 = !DILocation(line: 139, column: 31, scope: !3281)
!180330 = !DILocation(line: 19, column: 15, scope: !3280, inlinedAt: !180329)
!180331 = !DILocation(line: 437, column: 32, scope: !3279, inlinedAt: !180330)
!180332 = !DILocation(line: 139, column: 20, scope: !3281)
!180333 = !DILocation(line: 26, column: 14, scope: !3287, inlinedAt: !180332)
!180334 = !DILocation(line: 1041, column: 9, scope: !3286, inlinedAt: !180333)
!180335 = !DILocation(line: 102, column: 78, scope: !180304, inlinedAt: !180334)
!180336 = !DILexicalBlockFile(scope: !180305, file: !5009, discriminator: 2)
!180337 = !DILocation(line: 139, column: 20, scope: !180336)
!180338 = !DILocation(line: 180, column: 28, scope: !180307, inlinedAt: !180337)
!180339 = !DILocation(line: 441, column: 24, scope: !3279, inlinedAt: !180330)
!180340 = !{!180312, !180310}
!180341 = !DILocation(line: 185, column: 40, scope: !180307, inlinedAt: !180337)
!180342 = !DILocation(line: 143, column: 31, scope: !3281)
!180343 = !DILocation(line: 19, column: 15, scope: !5353, inlinedAt: !180342)
!180344 = !DILocation(line: 437, column: 32, scope: !5352, inlinedAt: !180343)
!180345 = !DILocation(line: 143, column: 20, scope: !3281)
!180346 = !DILocation(line: 26, column: 14, scope: !5356, inlinedAt: !180345)
!180347 = !DILocation(line: 1041, column: 9, scope: !5355, inlinedAt: !180346)
!180348 = !DILocation(line: 102, column: 78, scope: !5354, inlinedAt: !180347)
!180349 = !DILocation(line: 143, column: 20, scope: !5358)
!180350 = !DILocation(line: 180, column: 28, scope: !5357, inlinedAt: !180349)
!180351 = !DILocation(line: 441, column: 24, scope: !5352, inlinedAt: !180343)
!180352 = !{!180322, !180320}
!180353 = !DILocation(line: 185, column: 40, scope: !5357, inlinedAt: !180349)
!180354 = !DILocation(line: 133, column: 25, scope: !3281)
!180355 = !DILocation(line: 133, column: 12, scope: !3281)
!180356 = !DILocation(line: 139, column: 32, scope: !3281)
!180357 = !DILocation(line: 43, column: 9, scope: !2740, inlinedAt: !180300)
!180358 = !DILocation(line: 44, column: 9, scope: !2740, inlinedAt: !180300)
!180359 = !DILocation(line: 45, column: 9, scope: !2740, inlinedAt: !180300)
!180360 = !DILocation(line: 46, column: 9, scope: !2740, inlinedAt: !180300)
!180361 = !DILocation(line: 135, column: 13, scope: !3281)
!180362 = !DILocation(line: 136, column: 13, scope: !3281)
!180363 = !DILocation(line: 133, column: 9, scope: !3281)
!180364 = !DILocation(line: 139, column: 21, scope: !3281)
!180365 = !DILocation(line: 977, column: 16, scope: !3278, inlinedAt: !180331)
!180366 = !DILocation(line: 961, column: 18, scope: !3282, inlinedAt: !180335)
!180367 = !DILocation(line: 1717, column: 9, scope: !3288, inlinedAt: !180338)
!180368 = !DILocation(line: 89, column: 24, scope: !180308, inlinedAt: !180339)
!180369 = !DILocation(line: 140, column: 22, scope: !180313)
!180370 = !DILocation(line: 863, column: 51, scope: !2741, inlinedAt: !180315)
!180371 = !DILocation(line: 659, column: 28, scope: !3296, inlinedAt: !180341)
!180372 = !DILocation(line: 443, column: 13, scope: !3279, inlinedAt: !180330)
!180373 = !DILocation(line: 977, column: 16, scope: !3278, inlinedAt: !180344)
!180374 = !DILocation(line: 961, column: 18, scope: !3282, inlinedAt: !180348)
!180375 = !DILocation(line: 1717, column: 9, scope: !3288, inlinedAt: !180350)
!180376 = !DILocation(line: 180, column: 28, scope: !3291, inlinedAt: !180349)
!180377 = !DILocation(line: 89, column: 24, scope: !3294, inlinedAt: !180351)
!180378 = !DILocation(line: 144, column: 22, scope: !3295)
!180379 = !DILocation(line: 792, column: 51, scope: !2737, inlinedAt: !180324)
!180380 = !DILocation(line: 659, column: 28, scope: !3296, inlinedAt: !180353)
!180381 = !DILocation(line: 443, column: 13, scope: !3279, inlinedAt: !180343)
!180382 = !DILocation(line: 147, column: 9, scope: !3281)
!180383 = !DILocation(line: 148, column: 9, scope: !3281)
!180384 = !DILocation(line: 149, column: 6, scope: !3281)
!180385 = distinct !DISubprogram(name: "get_agg<u16, u16>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowttEINtNtB6_8no_nulls23RollingAggWindowNoNullstE7get_aggCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 151, type: !3818, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!180386 = distinct !{!180386, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCskY9G75ZWc4U_11polars_expr"}
!180387 = distinct !{!180387, !180386, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowttE7get_sumCskY9G75ZWc4U_11polars_expr: argument 0"}
!180388 = distinct !DILocation(line: 152, column: 14, scope: !180385)
!180389 = !{!180387}
!180390 = !DILocation(line: 152, column: 14, scope: !180385)
!180391 = !DILocation(line: 99, column: 12, scope: !2744, inlinedAt: !180388)
!180392 = !DILocation(line: 100, column: 27, scope: !2744, inlinedAt: !180388)
!180393 = !DILocation(line: 99, column: 9, scope: !2744, inlinedAt: !180388)
!180394 = !DILocation(line: 101, column: 44, scope: !2744, inlinedAt: !180388)
!180395 = !DILocation(line: 101, column: 19, scope: !2744, inlinedAt: !180388)
!180396 = !DILocation(line: 103, column: 44, scope: !2744, inlinedAt: !180388)
!180397 = !DILocation(line: 103, column: 19, scope: !2744, inlinedAt: !180388)
!180398 = !DILocation(line: 102, column: 18, scope: !2744, inlinedAt: !180388)
!180399 = !DILocation(line: 101, column: 16, scope: !2744, inlinedAt: !180388)
!180400 = !DILocation(line: 106, column: 18, scope: !2744, inlinedAt: !180388)
!180401 = !DILocation(line: 103, column: 16, scope: !2744, inlinedAt: !180388)
!180402 = !DILocation(line: 104, column: 18, scope: !2744, inlinedAt: !180388)
!180403 = !DILocation(line: 0, scope: !2744, inlinedAt: !180388)
!180404 = !DILocation(line: 108, column: 6, scope: !2744, inlinedAt: !180388)
!180405 = !DILocation(line: 153, column: 6, scope: !180385)
!180406 = distinct !DISubprogram(name: "new<i64, i64>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE3newCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 118, type: !3818, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!180407 = distinct !DILexicalBlock(scope: !180406, file: !5009, line: 125, column: 9)
!180408 = distinct !DILocation(line: 126, column: 18, scope: !180407)
!180409 = distinct !DILocation(line: 139, column: 31, scope: !3300, inlinedAt: !180408)
!180410 = distinct !DILocation(line: 19, column: 15, scope: !3299, inlinedAt: !180409)
!180411 = distinct !DILocation(line: 437, column: 32, scope: !3298, inlinedAt: !180410)
!180412 = distinct !{!180412, i1 true, !"_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCskY9G75ZWc4U_11polars_expr"}
!180413 = distinct !{!180413, !180412, !"_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE6updateCskY9G75ZWc4U_11polars_expr: argument 0"}
!180414 = distinct !DILocation(line: 143, column: 31, scope: !3300, inlinedAt: !180408)
!180415 = distinct !DILocation(line: 19, column: 15, scope: !5360, inlinedAt: !180414)
!180416 = distinct !DILocation(line: 437, column: 32, scope: !5359, inlinedAt: !180415)
!180417 = distinct !DILocation(line: 143, column: 20, scope: !3300, inlinedAt: !180408)
!180418 = distinct !DILocation(line: 26, column: 14, scope: !5363, inlinedAt: !180417)
!180419 = distinct !DILocation(line: 1041, column: 9, scope: !5362, inlinedAt: !180418)
!180420 = distinct !DILocation(line: 102, column: 78, scope: !5361, inlinedAt: !180419)
!180421 = distinct !DILocation(line: 143, column: 20, scope: !5365, inlinedAt: !180408)
!180422 = distinct !DILocation(line: 180, column: 28, scope: !5364, inlinedAt: !180421)
!180423 = distinct !DILocation(line: 441, column: 24, scope: !5359, inlinedAt: !180415)
!180424 = distinct !DILocation(line: 144, column: 18, scope: !3314, inlinedAt: !180408)
!180425 = distinct !DILocation(line: 79, column: 13, scope: !2765, inlinedAt: !180424)
!180426 = distinct !{!180426, !4188, !4189}
!180427 = distinct !DILocation(line: 185, column: 40, scope: !5364, inlinedAt: !180421)
!180428 = distinct !{!180428, !4189, !4188}
!180429 = !{!180413}
!180430 = !DILocation(line: 977, column: 16, scope: !3297, inlinedAt: !180411)
!180431 = !DILocation(line: 443, column: 13, scope: !3298, inlinedAt: !180410)
!180432 = !DILocation(line: 977, column: 16, scope: !3297, inlinedAt: !180416)
!180433 = !DILocation(line: 961, column: 18, scope: !3301, inlinedAt: !180420)
!180434 = !DILocation(line: 1717, column: 9, scope: !3307, inlinedAt: !180422)
!180435 = !DILocation(line: 180, column: 28, scope: !3310, inlinedAt: !180421)
!180436 = !DILocation(line: 89, column: 24, scope: !3313, inlinedAt: !180423)
!180437 = !DILocation(line: 144, column: 22, scope: !3314, inlinedAt: !180408)
!180438 = !DILocation(line: 792, column: 51, scope: !2763, inlinedAt: !180425)
!180439 = !DILocation(line: 443, column: 13, scope: !3298, inlinedAt: !180415)
!180440 = !DILocation(line: 659, column: 28, scope: !3315, inlinedAt: !180427)
!180441 = !DILocation(line: 0, scope: !180406)
!180442 = !DILocation(line: 127, column: 9, scope: !180407)
!180443 = !DILocation(line: 128, column: 6, scope: !180406)
!180444 = distinct !DILocation(line: 134, column: 18, scope: !3300)
!180445 = distinct !{!180445, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE5resetCskY9G75ZWc4U_11polars_expr"}
!180446 = distinct !{!180446, !180445, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE5resetCskY9G75ZWc4U_11polars_expr: argument 0"}
!180447 = distinct !DILexicalBlock(scope: !3302, file: !4034, line: 97, column: 9)
!180448 = distinct !DILexicalBlock(scope: !180447, file: !4034, line: 98, column: 9)
!180449 = distinct !DILexicalBlock(scope: !3300, file: !5009, line: 139, column: 9)
!180450 = distinct !DILexicalBlock(scope: !3308, file: !4038, line: 161, column: 17)
!180451 = distinct !DILexicalBlock(scope: !180450, file: !4038, line: 162, column: 17)
!180452 = distinct !DILexicalBlock(scope: !3312, file: !3883, line: 87, column: 5)
!180453 = distinct !{!180453, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE3subCskY9G75ZWc4U_11polars_expr"}
!180454 = distinct !{!180454, !180453, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE3subCskY9G75ZWc4U_11polars_expr: argument 0"}
!180455 = distinct !{!180455, i1 true, !"_RNvXs68_NtNtCscgRAwXFJnXP_4core3ops5arithxNtB6_9SubAssign10sub_assign"}
!180456 = distinct !{!180456, !180455, !"_RNvXs68_NtNtCscgRAwXFJnXP_4core3ops5arithxNtB6_9SubAssign10sub_assign: argument 0"}
!180457 = distinct !DILexicalBlock(scope: !180449, file: !5009, line: 139, column: 9)
!180458 = distinct !DILocation(line: 140, column: 18, scope: !180457)
!180459 = distinct !DILocation(line: 94, column: 13, scope: !2769, inlinedAt: !180458)
!180460 = distinct !{!180460, !4188, !4189}
!180461 = distinct !{!180461, !4189, !4188}
!180462 = distinct !{!180462, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE3addCskY9G75ZWc4U_11polars_expr"}
!180463 = distinct !{!180463, !180462, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE3addCskY9G75ZWc4U_11polars_expr: argument 0"}
!180464 = distinct !{!180464, i1 true, !"_RNvXs5C_NtNtCscgRAwXFJnXP_4core3ops5arithxNtB6_9AddAssign10add_assign"}
!180465 = distinct !{!180465, !180464, !"_RNvXs5C_NtNtCscgRAwXFJnXP_4core3ops5arithxNtB6_9AddAssign10add_assign: argument 0"}
!180466 = distinct !DILocation(line: 144, column: 18, scope: !3314)
!180467 = distinct !DILocation(line: 79, column: 13, scope: !2765, inlinedAt: !180466)
!180468 = distinct !{!180468, !4188, !4189}
!180469 = distinct !{!180469, !4189, !4188}
!180470 = !{!180446}
!180471 = !DILocation(line: 139, column: 31, scope: !3300)
!180472 = !DILocation(line: 19, column: 15, scope: !3299, inlinedAt: !180471)
!180473 = !DILocation(line: 437, column: 32, scope: !3298, inlinedAt: !180472)
!180474 = !DILocation(line: 139, column: 20, scope: !3300)
!180475 = !DILocation(line: 26, column: 14, scope: !3306, inlinedAt: !180474)
!180476 = !DILocation(line: 1041, column: 9, scope: !3305, inlinedAt: !180475)
!180477 = !DILocation(line: 102, column: 78, scope: !180448, inlinedAt: !180476)
!180478 = !DILexicalBlockFile(scope: !180449, file: !5009, discriminator: 2)
!180479 = !DILocation(line: 139, column: 20, scope: !180478)
!180480 = !DILocation(line: 180, column: 28, scope: !180451, inlinedAt: !180479)
!180481 = !DILocation(line: 441, column: 24, scope: !3298, inlinedAt: !180472)
!180482 = !{!180456, !180454}
!180483 = !DILocation(line: 185, column: 40, scope: !180451, inlinedAt: !180479)
!180484 = !DILocation(line: 143, column: 31, scope: !3300)
!180485 = !DILocation(line: 19, column: 15, scope: !5360, inlinedAt: !180484)
!180486 = !DILocation(line: 437, column: 32, scope: !5359, inlinedAt: !180485)
!180487 = !DILocation(line: 143, column: 20, scope: !3300)
!180488 = !DILocation(line: 26, column: 14, scope: !5363, inlinedAt: !180487)
!180489 = !DILocation(line: 1041, column: 9, scope: !5362, inlinedAt: !180488)
!180490 = !DILocation(line: 102, column: 78, scope: !5361, inlinedAt: !180489)
!180491 = !DILocation(line: 143, column: 20, scope: !5365)
!180492 = !DILocation(line: 180, column: 28, scope: !5364, inlinedAt: !180491)
!180493 = !DILocation(line: 441, column: 24, scope: !5359, inlinedAt: !180485)
!180494 = !{!180465, !180463}
!180495 = !DILocation(line: 185, column: 40, scope: !5364, inlinedAt: !180491)
!180496 = !DILocation(line: 133, column: 25, scope: !3300)
!180497 = !DILocation(line: 133, column: 12, scope: !3300)
!180498 = !DILocation(line: 139, column: 32, scope: !3300)
!180499 = !DILocation(line: 43, column: 9, scope: !2766, inlinedAt: !180444)
!180500 = !DILocation(line: 44, column: 9, scope: !2766, inlinedAt: !180444)
!180501 = !DILocation(line: 135, column: 13, scope: !3300)
!180502 = !DILocation(line: 136, column: 13, scope: !3300)
!180503 = !DILocation(line: 133, column: 9, scope: !3300)
!180504 = !DILocation(line: 139, column: 21, scope: !3300)
!180505 = !DILocation(line: 977, column: 16, scope: !3297, inlinedAt: !180473)
!180506 = !DILocation(line: 961, column: 18, scope: !3301, inlinedAt: !180477)
!180507 = !DILocation(line: 1717, column: 9, scope: !3307, inlinedAt: !180480)
!180508 = !DILocation(line: 89, column: 24, scope: !180452, inlinedAt: !180481)
!180509 = !DILocation(line: 140, column: 22, scope: !180457)
!180510 = !DILocation(line: 863, column: 51, scope: !2767, inlinedAt: !180459)
!180511 = !DILocation(line: 443, column: 13, scope: !3298, inlinedAt: !180472)
!180512 = !DILocation(line: 659, column: 28, scope: !3315, inlinedAt: !180483)
!180513 = !DILocation(line: 977, column: 16, scope: !3297, inlinedAt: !180486)
!180514 = !DILocation(line: 961, column: 18, scope: !3301, inlinedAt: !180490)
!180515 = !DILocation(line: 1717, column: 9, scope: !3307, inlinedAt: !180492)
!180516 = !DILocation(line: 180, column: 28, scope: !3310, inlinedAt: !180491)
!180517 = !DILocation(line: 89, column: 24, scope: !3313, inlinedAt: !180493)
!180518 = !DILocation(line: 144, column: 22, scope: !3314)
!180519 = !DILocation(line: 792, column: 51, scope: !2763, inlinedAt: !180467)
!180520 = !DILocation(line: 443, column: 13, scope: !3298, inlinedAt: !180485)
!180521 = !DILocation(line: 659, column: 28, scope: !3315, inlinedAt: !180495)
!180522 = !DILocation(line: 147, column: 9, scope: !3300)
!180523 = !DILocation(line: 148, column: 9, scope: !3300)
!180524 = !DILocation(line: 149, column: 6, scope: !3300)
!180525 = distinct !DISubprogram(name: "get_agg<i64, i64>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowxxEINtNtB6_8no_nulls23RollingAggWindowNoNullsxE7get_aggCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 151, type: !3818, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!180526 = distinct !{!180526, i1 true, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE7get_sumCskY9G75ZWc4U_11polars_expr"}
!180527 = distinct !{!180527, !180526, !"_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowxxE7get_sumCskY9G75ZWc4U_11polars_expr: argument 0"}
!180528 = distinct !DILocation(line: 152, column: 14, scope: !180525)
!180529 = !{!180527}
!180530 = !DILocation(line: 152, column: 14, scope: !180525)
!180531 = !DILocation(line: 99, column: 12, scope: !2770, inlinedAt: !180528)
!180532 = !DILocation(line: 100, column: 27, scope: !2770, inlinedAt: !180528)
!180533 = !DILocation(line: 99, column: 9, scope: !2770, inlinedAt: !180528)
!180534 = !DILocation(line: 101, column: 44, scope: !2770, inlinedAt: !180528)
!180535 = !DILocation(line: 101, column: 19, scope: !2770, inlinedAt: !180528)
!180536 = !DILocation(line: 103, column: 44, scope: !2770, inlinedAt: !180528)
!180537 = !DILocation(line: 103, column: 19, scope: !2770, inlinedAt: !180528)
!180538 = !DILocation(line: 102, column: 18, scope: !2770, inlinedAt: !180528)
!180539 = !DILocation(line: 101, column: 16, scope: !2770, inlinedAt: !180528)
!180540 = !DILocation(line: 106, column: 18, scope: !2770, inlinedAt: !180528)
!180541 = !DILocation(line: 103, column: 16, scope: !2770, inlinedAt: !180528)
!180542 = !DILocation(line: 104, column: 18, scope: !2770, inlinedAt: !180528)
!180543 = !DILocation(line: 0, scope: !2770, inlinedAt: !180528)
!180544 = !DILocation(line: 108, column: 6, scope: !2770, inlinedAt: !180528)
!180545 = !DILocation(line: 153, column: 6, scope: !180525)
!180546 = distinct !DISubprogram(name: "new<u64, u64>", linkageName: "_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE3newCskY9G75ZWc4U_11polars_expr", scope: !5080, file: !5009, line: 118, type: !3818, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!180547 = distinct !DILexicalBlock(scope: !180546, file: !5009, line: 125, column: 9)
!180548 = distinct !DILocation(line: 126, column: 18, scope: !180547)
!180549 = distinct !DILocation(line: 139, column: 31, scope: !3319, inlinedAt: !180548)
!180550 = distinct !DILocation(line: 19, column: 15, scope: !3318, inlinedAt: !180549)
!180551 = distinct !DILocation(line: 437, column: 32, scope: !3317, inlinedAt: !180550)
!180552 = distinct !{!180552, i1 true, !"_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE6updateCskY9G75ZWc4U_11polars_expr"}
!180553 = distinct !{!180553, !180552, !"_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB4_9SumWindowyyEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE6updateCskY9G75ZWc4U_11polars_expr: argument 0"}
!180554 = distinct !DILocation(line: 143, column: 31, scope: !3319, inlinedAt: !180548)
!180555 = distinct !DILocation(line: 19, column: 15, scope: !5367, inlinedAt: !180554)
!180556 = distinct !DILocation(line: 437, column: 32, scope: !5366, inlinedAt: !180555)
!180557 = distinct !DILocation(line: 143, column: 20, scope: !3319, inlinedAt: !180548)
!180558 = distinct !DILocation(line: 26, column: 14, scope: !5370, inlinedAt: !180557)
!180559 = distinct !DILocation(line: 1041, column: 9, scope: !5369, inlinedAt: !180558)
!180560 = distinct !DILocation(line: 102, column: 78, scope: !5368, inlinedAt: !180559)
!180561 = distinct !DILocation(line: 143, column: 20, scope: !5372, inlinedAt: !180548)
!180562 = distinct !DILocation(line: 180, column: 28, scope: !5371, inlinedAt: !180561)
!180563 = distinct !DILocation(line: 441, column: 24, scope: !5366, inlinedAt: !180555)
!180564 = distinct !DILocation(line: 144, column: 18, scope: !3333, inlinedAt: !180548)
!180565 = distinct !DILocation(line: 79, column: 13, scope: !2791, inlinedAt: !180564)
!180566 = distinct !{!180566, !4188, !4189}
!180567 = distinct !DILocation(line: 185, column: 40, scope: !5371, inlinedAt: !180561)
!180568 = distinct !{!180568, !4189, !4188}
!180569 = !{!180553}
!180570 = !DILocation(line: 977, column: 16, scope: !3316, inlinedAt: !180551)
!180571 = !DILocation(line: 443, column: 13, scope: !3317, inlinedAt: !180550)
!180572 = !DILocation(line: 977, column: 16, scope: !3316, inlinedAt: !180556)
!180573 = !DILocation(line: 961, column: 18, scope: !3320, inlinedAt: !180560)
!180574 = !DILocation(line: 1717, column: 9, scope: !3326, inlinedAt: !180562)
!180575 = !DILocation(line: 180, column: 28, scope: !3329, inlinedAt: !180561)
!180576 = !DILocation(line: 89, column: 24, scope: !3332, inlinedAt: !180563)
!180577 = !DILocation(line: 144, column: 22, scope: !3333, inlinedAt: !180548)
!180578 = !DILocation(line: 792, column: 51, scope: !2789, inlinedAt: !180565)
!180579 = !DILocation(line: 443, column: 13, scope: !3317, inlinedAt: !180555)
!180580 = !DILocation(line: 659, column: 28, scope: !3334, inlinedAt: !180567)
!180581 = !DILocation(line: 0, scope: !180546)
end_hunk_5
