inline.NumInlined: 2534
inline.NumDeleted: 536
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !5820), !dbg !5823
  call void @llvm.experimental.noalias.scope.decl(metadata !5824), !dbg !5823
  %i.fz = udiv i64 %.sroa.0.0.lcssa, 544, !dbg !5826
  %i.ga = call i64 @llvm.umin.i64(i64 %i.fz, i64 99), !dbg !5832 ; 4 uses
  %spec.store.select.i = add nuw nsw i64 %i.ga, 1, !dbg !5832 ; 13 uses
  %i.gb = icmp eq i64 %.sroa.0.0.lcssa, 0, !dbg !5834
  br i1 %i.gb, label %bb.f, label %bb.g, !dbg !5834

bb.f:                                             ; preds = %bb.e
  %i.gc = getelementptr inbounds nuw i8, ptr %11, i64 32, !dbg !5835
  store i64 1, ptr %i.gc, align 8, !dbg !5835, !alias.scope !5824, !noalias !5836
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter15SplitByteVectorNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllochECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !5839

bb.g:                                             ; preds = %bb.e
  %i.gd = icmp ult i64 %.sroa.0.0.lcssa, 128, !dbg !5840
  br i1 %i.gd, label %bb.h, label %bb.i, !dbg !5840

bb.h:                                             ; preds = %bb.g
  %.val91.i = load ptr, ptr %11, align 8, !dbg !5841, !alias.scope !5824, !noalias !5836, !nonnull !14, !noundef !14 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %11, i64 8, !dbg !5841 ; 2 uses
  %.val92.i = load i64, ptr %i.ge, align 8, !dbg !5841, !alias.scope !5824, !noalias !5836, !noundef !14 ; 9 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %11, i64 40, !dbg !5847 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !dbg !5847, !alias.scope !5824, !noalias !5836, !noundef !14 ; 6 uses
  %i.gh = add i64 %i.gg, 1, !dbg !5848            ; 7 uses
  %i.gi = icmp ult i64 %.val92.i, %i.gh, !dbg !5851
  br i1 %i.gi, label %bb.ij, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit208.i, !dbg !5851

.thread.i:                                        ; preds = %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i, %bb.o, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter18RefineEntropyCodesNtNtB4_9histogram16HistogramLiteralhECsfISxE4fmY1Y_14polars_parquet.exit.i, %.invoke.i
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih, !dbg !5852

bb.i:                                             ; preds = %bb.g
  %i.gk = invoke { ptr, i64 } @_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramLiteralE10alloc_cellCsfISxE4fmY1Y_14polars_parquet(ptr noalias nonnull readnone poison, i64 noundef %spec.store.select.i)
          to label %.noexc unwind label %bb.c, !dbg !5853 ; 2 uses

.noexc:                                           ; preds = %bb.i
  %i.gl = extractvalue { ptr, i64 } %i.gk, 0, !dbg !5853 ; 14 uses
  %i.gm = extractvalue { ptr, i64 } %i.gk, 1, !dbg !5853 ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gl) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5856), !dbg !5859
  call void @llvm.experimental.noalias.scope.decl(metadata !5861), !dbg !5859
  %i.gn = udiv i64 %.sroa.0.0.lcssa, %spec.store.select.i, !dbg !5863
  %.not.i.i.not.i = icmp ult i64 %i.ga, %i.gm
  br i1 %.not.i.i.not.i, label %bb.j, label %.invoke.i, !dbg !5869, !prof !5881

bb.j:                                             ; preds = %.noexc
  %.idx.i.i.i = mul nuw nsw i64 %spec.store.select.i, 1040, !dbg !5882
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.idx.i.i.i, !dbg !5882
  %xtraiter5532 = and i64 %spec.store.select.i, 7, !dbg !5897 ; 2 uses
  %lcmp.mod5533.not = icmp eq i64 %xtraiter5532, 0, !dbg !5897
  br i1 %lcmp.mod5533.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !dbg !5897

.lr.ph.i.i.i.prol:                                ; preds = %bb.j, %.lr.ph.i.i.i.prol
  %.sroa.02.06.i.i.i.prol = phi ptr [ %i.gp, %.lr.ph.i.i.i.prol ], [ %i.gl, %bb.j ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %bb.j ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.prol, i64 1040, !dbg !5906 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.prol, i64 1032, !dbg !5912
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.06.i.i.i.prol, i8 0, i64 1032, i1 false), !dbg !5919, !alias.scope !5922, !noalias !5925
  store float 3.402000e+38, ptr %i.gq, align 8, !dbg !5912, !alias.scope !5926, !noalias !5925
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !5897 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter5532, !dbg !5897
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !dbg !5897, !llvm.loop !5929

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %bb.j
  %.sroa.02.06.i.i.i.unr = phi ptr [ %i.gl, %bb.j ], [ %i.gp, %.lr.ph.i.i.i.prol ]
  %i.gr = icmp ult i64 %.sroa.0.0.lcssa, 3808, !dbg !5897
  br i1 %i.gr, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i, label %.lr.ph.i.i.i, !dbg !5897

.invoke.i:                                        ; preds = %bb.m, %bb.k, %bb.n, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i, %.noexc
  %i.gs = phi i64 [ 0, %bb.n ], [ 0, %.noexc ], [ %i.jf, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ 0, %bb.m ], [ %spec.select.i.i, %bb.k ]
  %i.gt = phi i64 [ 70, %bb.n ], [ %spec.store.select.i, %.noexc ], [ %i.fy, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ 70, %bb.m ], [ %i.fy, %bb.k ]
  %i.gu = phi i64 [ %i.jh, %bb.n ], [ %i.gm, %.noexc ], [ %i.fy, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.ia, %bb.m ], [ %i.fy, %bb.k ]
  %i.gv = phi ptr [ @289, %bb.n ], [ @286, %.noexc ], [ @63, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ @289, %bb.m ], [ @112, %bb.k ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.gs, i64 noundef %i.gt, i64 noundef range(i64 0, -9223372036854775808) %i.gu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gv) #18
          to label %.cont.i unwind label %.thread.i, !dbg !5930, !noalias !5931

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.sroa.02.06.i.i.i = phi ptr [ %i.hk, %.lr.ph.i.i.i ], [ %.sroa.02.06.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 1040, !dbg !5906
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 1032, !dbg !5912
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.06.i.i.i, i8 0, i64 1032, i1 false), !dbg !5919, !alias.scope !5922, !noalias !5925
  store float 3.402000e+38, ptr %i.gx, align 8, !dbg !5912, !alias.scope !5926, !noalias !5925
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 2080, !dbg !5906
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 2072, !dbg !5912
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.gw, i8 0, i64 1032, i1 false), !dbg !5919, !alias.scope !5922, !noalias !5925
  store float 3.402000e+38, ptr %i.gz, align 8, !dbg !5912, !alias.scope !5926, !noalias !5925
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 3120, !dbg !5906
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 3112, !dbg !5912
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.gy, i8 0, i64 1032, i1 false), !dbg !5919, !alias.scope !5922, !noalias !5925
  store float 3.402000e+38, ptr %i.hb, align 8, !dbg !5912, !alias.scope !5926, !noalias !5925
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 4160, !dbg !5906
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 4152, !dbg !5912
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ha, i8 0, i64 1032, i1 false), !dbg !5919, !alias.scope !5922, !noalias !5925
  store float 3.402000e+38, ptr %i.hd, align 8, !dbg !5912, !alias.scope !5926, !noalias !5925
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 5200, !dbg !5906
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 5192, !dbg !5912
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.hc, i8 0, i64 1032, i1 false), !dbg !5919, !alias.scope !5922, !noalias !5925
  store float 3.402000e+38, ptr %i.hf, align 8, !dbg !5912, !alias.scope !5926, !noalias !5925
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 6240, !dbg !5906
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 6232, !dbg !5912
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.he, i8 0, i64 1032, i1 false), !dbg !5919, !alias.scope !5922, !noalias !5925
  store float 3.402000e+38, ptr %i.hh, align 8, !dbg !5912, !alias.scope !5926, !noalias !5925
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 7280, !dbg !5906
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 7272, !dbg !5912
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.hg, i8 0, i64 1032, i1 false), !dbg !5919, !alias.scope !5922, !noalias !5925
  store float 3.402000e+38, ptr %i.hj, align 8, !dbg !5912, !alias.scope !5926, !noalias !5925
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 8320, !dbg !5906 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 8312, !dbg !5912
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.hi, i8 0, i64 1032, i1 false), !dbg !5919, !alias.scope !5922, !noalias !5925
  store float 3.402000e+38, ptr %i.hl, align 8, !dbg !5912, !alias.scope !5926, !noalias !5925
  %i.hm = icmp eq ptr %i.hk, %i.go, !dbg !5932
  br i1 %i.hm, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i, label %.lr.ph.i.i.i, !dbg !5897

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %i.hn = add i64 %.sroa.0.0.lcssa, -71
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i: ; preds = %.preheader.i.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.010.022.i.i, %i.ga, !dbg !5936
  br i1 %exitcond.not.i.i, label %.lr.ph.i.i.a, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i, !dbg !5945

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i: ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i
  %.sroa.0.023.i.i = phi i32 [ %.sroa.0.1.i.i, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i ], [ 7, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i ] ; 3 uses
  %.sroa.010.022.i.i = phi i64 [ %i.ho, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i ], [ 0, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i ] ; 5 uses
  %i.ho = add nuw nsw i64 %.sroa.010.022.i.i, 1, !dbg !5946
  %i.hp = mul i64 %.sroa.010.022.i.i, %.sroa.0.0.lcssa, !dbg !5952
  %i.hq = udiv i64 %i.hp, %spec.store.select.i, !dbg !5956 ; 2 uses
  %i.hr = icmp eq i64 %.sroa.010.022.i.i, 0, !dbg !5958
  br i1 %i.hr, label %bb.k, label %bb.l, !dbg !5958

bb.k:                                             ; preds = %bb.l, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i
  %.sroa.04.0.i.i = phi i64 [ %i.hq, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i ], [ %i.hy, %bb.l ], !dbg !5960 ; 2 uses
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.023.i.i, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i ], [ %spec.store.select.i.i, %bb.l ], !dbg !5961
  %i.hs = add i64 %.sroa.04.0.i.i, 70, !dbg !5962
  %.not.i.i = icmp ult i64 %i.hs, %.sroa.0.0.lcssa, !dbg !5965
  %spec.select.i.i = select i1 %.not.i.i, i64 %.sroa.04.0.i.i, i64 %i.hn, !dbg !5965 ; 4 uses
  %i.ht = icmp ugt i64 %spec.select.i.i, %i.fy, !dbg !5966
  br i1 %i.ht, label %.invoke.i, label %bb.m, !dbg !5966, !prof !168

bb.l:                                             ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i
  %i.hu = icmp eq i32 %.sroa.0.023.i.i, 0, !dbg !5971
  %i.hv = mul i32 %.sroa.0.023.i.i, 16807, !dbg !5974
  %spec.store.select.i.i = select i1 %i.hu, i32 1, i32 %i.hv, !dbg !5971 ; 2 uses
  %i.hw = zext i32 %spec.store.select.i.i to i64, !dbg !5977
  %i.hx = urem i64 %i.hw, %i.gn, !dbg !5978
  %i.hy = add i64 %i.hx, %i.hq, !dbg !5981
  br label %bb.k, !dbg !5983

bb.m:                                             ; preds = %bb.k
  %i.hz = getelementptr inbounds nuw [1040 x i8], ptr %i.gl, i64 %.sroa.010.022.i.i, !dbg !5984 ; 3 uses
  %i.ia = sub nuw nsw i64 %i.fy, %spec.select.i.i, !dbg !5985 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fx, i64 %spec.select.i.i, !dbg !5986 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5991), !dbg !5994
  call void @llvm.experimental.noalias.scope.decl(metadata !5995), !dbg !5994
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 1024, !dbg !5997 ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !dbg !5997, !alias.scope !6002, !noalias !6005, !noundef !14
  %i.ie = add i64 %i.id, 70, !dbg !6006
  store i64 %i.ie, ptr %i.ic, align 8, !dbg !6009, !alias.scope !6012, !noalias !6005
  %i.if = icmp samesign ugt i64 %i.ia, 69
  br i1 %i.if, label %.preheader.i.i.i, label %.invoke.i, !dbg !6015, !prof !5881

.preheader.i.i.i:                                 ; preds = %bb.m, %.preheader.i.i.i
  %.sroa.02.0.idx8.i.i.i = phi i64 [ %.sroa.02.0.add.i.i.i.1, %.preheader.i.i.i ], [ 0, %bb.m ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ib, i64 %.sroa.02.0.idx8.i.i.i, !dbg !6024
  %i.ig = load i8, ptr %.sroa.02.0.ptr.i.i.i, align 1, !dbg !6034, !alias.scope !6043, !noalias !6046, !noundef !14
  %i.ih = zext i8 %i.ig to i64, !dbg !6047
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.ih, !dbg !6051 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !dbg !6053, !alias.scope !6055, !noalias !6005, !noundef !14
  %i.ik = add i32 %i.ij, 1, !dbg !6056
  store i32 %i.ik, ptr %i.ii, align 4, !dbg !6059, !alias.scope !6055, !noalias !6005
  %i.il = getelementptr inbounds nuw i8, ptr %i.ib, i64 %.sroa.02.0.idx8.i.i.i, !dbg !6024
  %.sroa.02.0.ptr.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.il, i64 1, !dbg !6024
  %i.im = load i8, ptr %.sroa.02.0.ptr.i.i.i.1, align 1, !dbg !6034, !alias.scope !6043, !noalias !6046, !noundef !14
  %i.in = zext i8 %i.im to i64, !dbg !6047
  %.sroa.02.0.add.i.i.i.1 = add nuw nsw i64 %.sroa.02.0.idx8.i.i.i, 2, !dbg !6060 ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.in, !dbg !6051 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !dbg !6053, !alias.scope !6055, !noalias !6005, !noundef !14
  %i.iq = add i32 %i.ip, 1, !dbg !6056
  store i32 %i.iq, ptr %i.io, align 4, !dbg !6059, !alias.scope !6055, !noalias !6005
  %i.ir = icmp eq i64 %.sroa.02.0.add.i.i.i.1, 70, !dbg !6024
  br i1 %i.ir, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i, label %.preheader.i.i.i, !dbg !6063

.lr.ph.i.i.a:                                     ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6064), !dbg !6067
  call void @llvm.experimental.noalias.scope.decl(metadata !6068), !dbg !6067
  %i.is = shl i64 %.sroa.0.0.lcssa, 1, !dbg !6070
  %i.it = udiv i64 %i.is, 70, !dbg !6075
  %i.iu = add nuw nsw i64 %i.it, 99, !dbg !6078
  %i.iv = add nuw nsw i64 %i.iu, %spec.store.select.i, !dbg !6083 ; 2 uses
  %i.iw = urem i64 %i.iv, %spec.store.select.i, !dbg !6086
  %i.ix = sub nuw nsw i64 %i.iv, %i.iw, !dbg !6086
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ei, i64 1024
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ei, i64 1032
  %i.ja = add i64 %.sroa.0.0.lcssa, -69
  %umax.i.i = call i64 @llvm.umax.i64(i64 %i.ix, i64 1)
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i, !dbg !6088

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram21HistogramAddHistogramNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i, %.lr.ph.i.i.a
  %.sroa.03.018.i.i = phi i64 [ 0, %.lr.ph.i.i.a ], [ %i.jb, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram21HistogramAddHistogramNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i ] ; 2 uses
  %.sroa.0.017.i.i = phi i32 [ 7, %.lr.ph.i.i.a ], [ %spec.store.select.i.i.i, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram21HistogramAddHistogramNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei), !dbg !6095, !noalias !6097
  %i.jb = add nuw i64 %.sroa.03.018.i.i, 1, !dbg !6098 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ei, i8 0, i64 1024, i1 false), !dbg !6104, !noalias !6097
  store float 3.402000e+38, ptr %i.iz, align 8, !dbg !6108, !alias.scope !6110, !noalias !6097
  call void @llvm.experimental.noalias.scope.decl(metadata !6113), !dbg !6116
  call void @llvm.experimental.noalias.scope.decl(metadata !6117), !dbg !6116
  %i.jc = mul i32 %.sroa.0.017.i.i, 16807, !dbg !6119
  %i.jd = icmp eq i32 %.sroa.0.017.i.i, 0, !dbg !6127
  %spec.store.select.i.i.i = select i1 %i.jd, i32 1, i32 %i.jc, !dbg !6127 ; 2 uses
  %i.je = zext i32 %spec.store.select.i.i.i to i64, !dbg !6128
  %i.jf = urem i64 %i.je, %i.ja, !dbg !6129       ; 4 uses
  %i.jg = icmp samesign ugt i64 %i.jf, %i.fy, !dbg !6132
  br i1 %i.jg, label %.invoke.i, label %bb.n, !dbg !6132, !prof !168

bb.n:                                             ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %i.jh = sub nuw nsw i64 %i.fy, %i.jf, !dbg !6137 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.jf, !dbg !6138 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6143), !dbg !6146
  call void @llvm.experimental.noalias.scope.decl(metadata !6147), !dbg !6146
  store i64 70, ptr %i.iy, align 8, !dbg !6149, !alias.scope !6152, !noalias !6155
  %i.jj = icmp samesign ugt i64 %i.jh, 69
  br i1 %i.jj, label %.preheader.i.i.i.i, label %.invoke.i, !dbg !6157, !prof !5881

.preheader.i.i.i.i:                               ; preds = %bb.n, %.preheader.i.i.i.i
  %.sroa.02.0.idx8.i.i.i.i = phi i64 [ %.sroa.02.0.add.i.i.i.i.1, %.preheader.i.i.i.i ], [ 0, %bb.n ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ji, i64 %.sroa.02.0.idx8.i.i.i.i, !dbg !6162
  %i.jk = load i8, ptr %.sroa.02.0.ptr.i.i.i.i, align 1, !dbg !6165, !alias.scope !6167, !noalias !6170, !noundef !14
  %i.jl = zext i8 %i.jk to i64, !dbg !6171
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.jl, !dbg !6173 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !dbg !6174, !alias.scope !6175, !noalias !6155, !noundef !14
  %i.jo = add i32 %i.jn, 1, !dbg !6176
  store i32 %i.jo, ptr %i.jm, align 4, !dbg !6178, !alias.scope !6175, !noalias !6155
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ji, i64 %.sroa.02.0.idx8.i.i.i.i, !dbg !6162
  %.sroa.02.0.ptr.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.jp, i64 1, !dbg !6162
  %i.jq = load i8, ptr %.sroa.02.0.ptr.i.i.i.i.1, align 1, !dbg !6165, !alias.scope !6167, !noalias !6170, !noundef !14
  %i.jr = zext i8 %i.jq to i64, !dbg !6171
  %.sroa.02.0.add.i.i.i.i.1 = add nuw nsw i64 %.sroa.02.0.idx8.i.i.i.i, 2, !dbg !6179 ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.jr, !dbg !6173 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !dbg !6174, !alias.scope !6175, !noalias !6155, !noundef !14
  %i.ju = add i32 %i.jt, 1, !dbg !6176
  store i32 %i.ju, ptr %i.js, align 4, !dbg !6178, !alias.scope !6175, !noalias !6155
  %i.jv = icmp eq i64 %.sroa.02.0.add.i.i.i.i.1, 70, !dbg !6162
  br i1 %i.jv, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter12RandomSampleNtNtB4_9histogram16HistogramLiteralhECsfISxE4fmY1Y_14polars_parquet.exit.i.i, label %.preheader.i.i.i.i, !dbg !6181

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter12RandomSampleNtNtB4_9histogram16HistogramLiteralhECsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %.preheader.i.i.i.i
  %i.jw = urem i64 %.sroa.03.018.i.i, %spec.store.select.i, !dbg !6182
  %i.jx = getelementptr inbounds nuw [1040 x i8], ptr %i.gl, i64 %i.jw, !dbg !6185 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 1024, !dbg !6186 ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8, !dbg !6186, !alias.scope !6190, !noalias !6193, !noundef !14
  %i.ka = add i64 %i.jz, 70, !dbg !6196
  store i64 %i.ka, ptr %i.jy, align 8, !dbg !6198, !alias.scope !6200, !noalias !6203
  br label %vector.body, !dbg !6204

vector.body:                                      ; preds = %vector.body, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter12RandomSampleNtNtB4_9histogram16HistogramLiteralhECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %index = phi i64 [ 0, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter12RandomSampleNtNtB4_9histogram16HistogramLiteralhECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %index.next.1, %vector.body ], !dbg !6214 ; 4 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %index, !dbg !6220 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16, !dbg !6222 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.kb, align 4, !dbg !6222, !alias.scope !6068, !noalias !6203
  %wide.load4524 = load <4 x i32>, ptr %i.kc, align 4, !dbg !6222, !alias.scope !6068, !noalias !6203
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %index, !dbg !6224 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16, !dbg !6224
  %wide.load4525 = load <4 x i32>, ptr %i.kd, align 8, !dbg !6224, !noalias !6097
  %wide.load4526 = load <4 x i32>, ptr %i.ke, align 8, !dbg !6224, !noalias !6097
  %i.kf = add <4 x i32> %wide.load4525, %wide.load, !dbg !6225
  %i.kg = add <4 x i32> %wide.load4526, %wide.load4524, !dbg !6225
  store <4 x i32> %i.kf, ptr %i.kb, align 4, !dbg !6228, !alias.scope !6068, !noalias !6203
  store <4 x i32> %i.kg, ptr %i.kc, align 4, !dbg !6228, !alias.scope !6068, !noalias !6203
  %index.next = or disjoint i64 %index, 8, !dbg !6214 ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %index.next, !dbg !6220 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16, !dbg !6222 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.kh, align 4, !dbg !6222, !alias.scope !6068, !noalias !6203
  %wide.load4524.1 = load <4 x i32>, ptr %i.ki, align 4, !dbg !6222, !alias.scope !6068, !noalias !6203
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %index.next, !dbg !6224 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16, !dbg !6224
  %wide.load4525.1 = load <4 x i32>, ptr %i.kj, align 8, !dbg !6224, !noalias !6097
  %wide.load4526.1 = load <4 x i32>, ptr %i.kk, align 8, !dbg !6224, !noalias !6097
  %i.kl = add <4 x i32> %wide.load4525.1, %wide.load.1, !dbg !6225
  %i.km = add <4 x i32> %wide.load4526.1, %wide.load4524.1, !dbg !6225
  store <4 x i32> %i.kl, ptr %i.kh, align 4, !dbg !6228, !alias.scope !6068, !noalias !6203
  store <4 x i32> %i.km, ptr %i.ki, align 4, !dbg !6228, !alias.scope !6068, !noalias !6203
  %index.next.1 = add nuw nsw i64 %index, 16, !dbg !6214 ; 2 uses
  %i.kn = icmp eq i64 %index.next.1, 256, !dbg !6204
  br i1 %i.kn, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram21HistogramAddHistogramNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i, label %vector.body, !dbg !6204, !llvm.loop !6230

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram21HistogramAddHistogramNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %vector.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !dbg !6233, !noalias !6097
  %exitcond27.not.i.i = icmp eq i64 %i.jb, %umax.i.i, !dbg !6234
  br i1 %exitcond27.not.i.i, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter18RefineEntropyCodesNtNtB4_9histogram16HistogramLiteralhECsfISxE4fmY1Y_14polars_parquet.exit.i, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i, !dbg !6088

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter18RefineEntropyCodesNtNtB4_9histogram16HistogramLiteralhECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram21HistogramAddHistogramNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh), !dbg !6237, !noalias !6241
  call void @llvm.experimental.noalias.scope.decl(metadata !6242), !dbg !6245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg), !dbg !6247, !noalias !6251
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.eg, i64 noundef %.sroa.0.0.lcssa, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc141.i.a unwind label %.thread.i, !dbg !6247, !noalias !5931

.noexc141.i.a:                                    ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter18RefineEntropyCodesNtNtB4_9histogram16HistogramLiteralhECsfISxE4fmY1Y_14polars_parquet.exit.i
  %i.ko = load i64, ptr %i.eg, align 8, !dbg !6247, !range !5797, !noalias !6251, !noundef !14
  %i.kp = trunc nuw i64 %i.ko to i1, !dbg !6252
  %i.kq = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !6253
  %i.kr = load i64, ptr %i.kq, align 8, !dbg !6253, !range !5800, !noalias !6251, !noundef !14 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.eg, i64 16, !dbg !6253 ; 2 uses
  br i1 %i.kp, label %bb.o, label %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i, !dbg !6252, !prof !168

bb.o:                                             ; preds = %.noexc141.i.a
  %i.kt = load i64, ptr %i.ks, align 8, !dbg !6254, !noalias !6251
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.kr, i64 %i.kt) #20
          to label %.noexc142.i.a unwind label %.thread.i, !dbg !6255, !noalias !5931

.noexc142.i.a:                                    ; preds = %bb.o
  unreachable, !dbg !6255

_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %.noexc141.i.a
  %i.ku = load ptr, ptr %i.ks, align 8, !dbg !6256, !noalias !6251, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !dbg !6257, !noalias !6251
  store i64 %i.kr, ptr %i.eh, align 8, !dbg !6258, !alias.scope !6242, !noalias !6241
  %i.kv = getelementptr inbounds nuw i8, ptr %i.eh, i64 8, !dbg !6258
  store ptr %i.ku, ptr %i.kv, align 8, !dbg !6258, !alias.scope !6242, !noalias !6241
  %i.kw = getelementptr inbounds nuw i8, ptr %i.eh, i64 16, !dbg !6258
  store i64 %.sroa.0.0.lcssa, ptr %i.kw, align 8, !dbg !6258, !alias.scope !6242, !noalias !6241
  %i.kx = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.eh)
          to label %bb.p unwind label %.thread.i, !dbg !6259, !noalias !5931 ; 2 uses

bb.p:                                             ; preds = %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !dbg !6262, !noalias !6241
  %i.ky = extractvalue { ptr, i64 } %i.kx, 0, !dbg !6263 ; 14 uses
  %i.kz = extractvalue { ptr, i64 } %i.kx, 1, !dbg !6263 ; 17 uses
  %i.la = add nuw nsw i64 %i.ga, 8, !dbg !6264
  %i.lb = lshr i64 %i.la, 3, !dbg !6268           ; 2 uses
  %i.lc = shl nuw nsw i64 %spec.store.select.i, 8, !dbg !6269 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !dbg !6273, !noalias !6241
  call void @llvm.experimental.noalias.scope.decl(metadata !6278), !dbg !6281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !dbg !6284, !noalias !6292
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ee, i64 noundef %i.lc, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc144.i.a unwind label %bb.r, !dbg !6284, !noalias !5931

.noexc144.i.a:                                    ; preds = %bb.p
  %i.ld = load i64, ptr %i.ee, align 8, !dbg !6284, !range !5797, !noalias !6292, !noundef !14
  %i.le = trunc nuw i64 %i.ld to i1, !dbg !6293
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ee, i64 8, !dbg !6294
  %i.lg = load i64, ptr %i.lf, align 8, !dbg !6294, !range !5800, !noalias !6292, !noundef !14 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ee, i64 16, !dbg !6294 ; 2 uses
  br i1 %i.le, label %bb.q, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i, !dbg !6293, !prof !168

bb.q:                                             ; preds = %.noexc144.i.a
  %i.li = load i64, ptr %i.lh, align 8, !dbg !6295, !noalias !6292
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.lg, i64 %i.li) #20
          to label %.noexc145.i.a unwind label %bb.r, !dbg !6296, !noalias !5931

.noexc145.i.a:                                    ; preds = %bb.q
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %.noexc144.i.a
  %i.lj = load ptr, ptr %i.lh, align 8, !dbg !6298, !noalias !6292, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !dbg !6299, !noalias !6292
  store i64 %i.lg, ptr %i.ef, align 8, !dbg !6300, !alias.scope !6278, !noalias !6241
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ef, i64 8, !dbg !6300
  store ptr %i.lj, ptr %i.lk, align 8, !dbg !6300, !alias.scope !6278, !noalias !6241
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ef, i64 16, !dbg !6300
  store i64 %i.lc, ptr %i.ll, align 8, !dbg !6300, !alias.scope !6278, !noalias !6241
  %i.lm = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecfE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ef)
          to label %bb.s unwind label %bb.r, !dbg !6301, !noalias !5931 ; 2 uses

bb.r:                                             ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i, %bb.q, %bb.p
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxfEECsfISxE4fmY1Y_14polars_parquet.exit.i

bb.s:                                             ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !dbg !6306, !noalias !6241
  %i.lo = extractvalue { ptr, i64 } %i.lm, 0, !dbg !6307 ; 10 uses
  %i.lp = extractvalue { ptr, i64 } %i.lm, 1, !dbg !6307 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !dbg !6308, !noalias !6241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !dbg !6314, !noalias !6241
  invoke void @_RNvXsR_NtCscgRAwXFJnXP_4core5arrayAfj8_NtNtB7_7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.ec)
          to label %.noexc147.i.a unwind label %.thread39.i, !dbg !6315, !noalias !5931

.noexc147.i.a:                                    ; preds = %bb.s
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCsk4ZPsEfLtLH_6brotli3enc6compat8CompatF8NtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ed, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.ec, i64 noundef %i.lb)
          to label %.noexc148.i.a unwind label %.thread39.i, !dbg !6321, !noalias !5931

.noexc148.i.a:                                    ; preds = %.noexc147.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !dbg !6308, !noalias !6241
  %i.lq = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsk4ZPsEfLtLH_6brotli3enc6compat8CompatF8E16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ed)
          to label %bb.t unwind label %.thread39.i, !dbg !6324, !noalias !5931 ; 2 uses

.thread39.i:                                      ; preds = %.noexc148.i.a, %.noexc147.i.a, %bb.s
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc6compat8CompatF8EECsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !6329

bb.t:                                             ; preds = %.noexc148.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !dbg !6330, !noalias !6241
  %i.ls = extractvalue { ptr, i64 } %i.lq, 0, !dbg !6331 ; 22 uses
  %i.lt = extractvalue { ptr, i64 } %i.lq, 1, !dbg !6331 ; 21 uses
  %i.lu = mul i64 %i.lb, %.sroa.0.0.lcssa, !dbg !6332 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !dbg !6335, !noalias !6241
  call void @llvm.experimental.noalias.scope.decl(metadata !6338), !dbg !6341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !dbg !6343, !noalias !6347
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ea, i64 noundef %i.lu, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc151.i.a unwind label %.thread45.i, !dbg !6343, !noalias !5931

.noexc151.i.a:                                    ; preds = %bb.t
  %i.lv = load i64, ptr %i.ea, align 8, !dbg !6343, !range !5797, !noalias !6347, !noundef !14
  %i.lw = trunc nuw i64 %i.lv to i1, !dbg !6348
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ea, i64 8, !dbg !6349
  %i.ly = load i64, ptr %i.lx, align 8, !dbg !6349, !range !5800, !noalias !6347, !noundef !14 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ea, i64 16, !dbg !6349 ; 2 uses
  br i1 %i.lw, label %bb.u, label %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i150.i, !dbg !6348, !prof !168

bb.u:                                             ; preds = %.noexc151.i.a
  %i.ma = load i64, ptr %i.lz, align 8, !dbg !6350, !noalias !6347
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ly, i64 %i.ma) #20
          to label %.noexc152.i.a unwind label %.thread45.i, !dbg !6351, !noalias !5931

.noexc152.i.a:                                    ; preds = %bb.u
  unreachable, !dbg !6351

_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i150.i: ; preds = %.noexc151.i.a
  %i.mb = load ptr, ptr %i.lz, align 8, !dbg !6352, !noalias !6347, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !dbg !6353, !noalias !6347
  store i64 %i.ly, ptr %i.eb, align 8, !dbg !6354, !alias.scope !6338, !noalias !6241
  %i.mc = getelementptr inbounds nuw i8, ptr %i.eb, i64 8, !dbg !6354
  store ptr %i.mb, ptr %i.mc, align 8, !dbg !6354, !alias.scope !6338, !noalias !6241
  %i.md = getelementptr inbounds nuw i8, ptr %i.eb, i64 16, !dbg !6354
  store i64 %i.lu, ptr %i.md, align 8, !dbg !6354, !alias.scope !6338, !noalias !6241
  %i.me = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.eb)
          to label %bb.v unwind label %.thread45.i, !dbg !6355, !noalias !5931 ; 2 uses

.thread45.i:                                      ; preds = %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i150.i, %bb.u, %bb.t
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !6358

bb.v:                                             ; preds = %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i150.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !dbg !6359, !noalias !6241
  %i.mg = extractvalue { ptr, i64 } %i.me, 0, !dbg !6360 ; 8 uses
  %i.mh = extractvalue { ptr, i64 } %i.me, 1, !dbg !6360 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !dbg !6361, !noalias !6241
  call void @llvm.experimental.noalias.scope.decl(metadata !6367), !dbg !6370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !dbg !6373, !noalias !6380
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dy, i64 noundef %spec.store.select.i, i1 noundef zeroext true, i64 noundef 2, i64 noundef 2)
          to label %.noexc155.i.a unwind label %.thread53.i, !dbg !6373, !noalias !5931

.noexc155.i.a:                                    ; preds = %bb.v
  %i.mi = load i64, ptr %i.dy, align 8, !dbg !6373, !range !5797, !noalias !6380, !noundef !14
  %i.mj = trunc nuw i64 %i.mi to i1, !dbg !6381
  %i.mk = getelementptr inbounds nuw i8, ptr %i.dy, i64 8, !dbg !6382
  %i.ml = load i64, ptr %i.mk, align 8, !dbg !6382, !range !5800, !noalias !6380, !noundef !14 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.dy, i64 16, !dbg !6382 ; 2 uses
  br i1 %i.mj, label %bb.w, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i, !dbg !6381, !prof !168

bb.w:                                             ; preds = %.noexc155.i.a
  %i.mn = load i64, ptr %i.mm, align 8, !dbg !6383, !noalias !6380
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ml, i64 %i.mn) #20
          to label %.noexc156.i.a unwind label %.thread53.i, !dbg !6384, !noalias !5931

.noexc156.i.a:                                    ; preds = %bb.w
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %.noexc155.i.a
  %i.mo = load ptr, ptr %i.mm, align 8, !dbg !6386, !noalias !6380, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !dbg !6387, !noalias !6380
  store i64 %i.ml, ptr %i.dz, align 8, !dbg !6388, !alias.scope !6367, !noalias !6241
  %i.mp = getelementptr inbounds nuw i8, ptr %i.dz, i64 8, !dbg !6388
  store ptr %i.mo, ptr %i.mp, align 8, !dbg !6388, !alias.scope !6367, !noalias !6241
  %i.mq = getelementptr inbounds nuw i8, ptr %i.dz, i64 16, !dbg !6388
  store i64 %spec.store.select.i, ptr %i.mq, align 8, !dbg !6388, !alias.scope !6367, !noalias !6241
  %i.mr = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VectE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.dz)
          to label %.split.i unwind label %.thread53.i, !dbg !6389, !noalias !5931 ; 2 uses

.thread53.i:                                      ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i, %bb.w, %bb.v
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxtEECsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !6394

.split.i:                                         ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !dbg !6395, !noalias !6241
  %i.mt = extractvalue { ptr, i64 } %i.mr, 0, !dbg !6396 ; 5 uses
  %i.mu = extractvalue { ptr, i64 } %i.mr, 1, !dbg !6396 ; 5 uses
  %i.mv = icmp slt i32 %.72.val, 12, !dbg !6397
  %..i = select i1 %i.mv, i64 3, i64 10, !dbg !6399
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lo) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ls) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mg) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ky) ]
  %.idx393.i.i = shl nuw nsw i64 %i.lt, 5         ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.bdw = icmp ult i64 %3, 128, !dbg !8825
  br i1 %i.bdw, label %bb.jn, label %bb.jo, !dbg !8825

bb.jn:                                            ; preds = %bb.jm
  %.val91.i338 = load ptr, ptr %12, align 8, !dbg !8826, !alias.scope !8809, !noalias !8821, !nonnull !14, !noundef !14 ; 3 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %12, i64 8, !dbg !8826 ; 2 uses
  %.val92.i339 = load i64, ptr %i.bdx, align 8, !dbg !8826, !alias.scope !8809, !noalias !8821, !noundef !14 ; 9 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %12, i64 40, !dbg !8829 ; 2 uses
  %i.bdz = load i64, ptr %i.bdy, align 8, !dbg !8829, !alias.scope !8809, !noalias !8821, !noundef !14 ; 6 uses
  %i.bea = add i64 %i.bdz, 1, !dbg !8830          ; 7 uses
  %i.beb = icmp ult i64 %.val92.i339, %i.bea, !dbg !8833
  br i1 %i.beb, label %bb.su, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit214.i, !dbg !8833

.thread.i55:                                      ; preds = %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i78, %bb.jw, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter18RefineEntropyCodesNtNtB4_9histogram16HistogramCommandtECsfISxE4fmY1Y_14polars_parquet.exit.i, %.split35.us.i.invoke.i, %.invoke.i54
  %i.bec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ss, !dbg !8834

bb.jo:                                            ; preds = %bb.jm
  %i.bed = invoke fastcc { ptr, i64 } @_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramCommandE10alloc_cellCsfISxE4fmY1Y_14polars_parquet(i64 noundef %spec.store.select.i52)
          to label %.noexc353 unwind label %bb.jk, !dbg !8835 ; 2 uses

.noexc353:                                        ; preds = %bb.jo
  %i.bee = extractvalue { ptr, i64 } %i.bed, 0, !dbg !8835 ; 14 uses
  %i.bef = extractvalue { ptr, i64 } %i.bed, 1, !dbg !8835 ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bee) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !8838), !dbg !8841
  call void @llvm.experimental.noalias.scope.decl(metadata !8843), !dbg !8841
  %i.beg = udiv i64 %3, %spec.store.select.i52, !dbg !8845
  %.not.i.i.not.i53 = icmp ult i64 %i.bdu, %i.bef
  br i1 %.not.i.i.not.i53, label %bb.jp, label %.invoke.i54, !dbg !8851, !prof !5881

bb.jp:                                            ; preds = %.noexc353
  %.idx.i.i.i59 = mul nuw nsw i64 %spec.store.select.i52, 2832, !dbg !8863
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bee, i64 %.idx.i.i.i59, !dbg !8863
  %xtraiter5538 = and i64 %spec.store.select.i52, 7, !dbg !8872 ; 2 uses
  %lcmp.mod5539.not = icmp eq i64 %xtraiter5538, 0, !dbg !8872
  br i1 %lcmp.mod5539.not, label %.lr.ph.i.i.i60.prol.loopexit, label %.lr.ph.i.i.i60.prol, !dbg !8872

.lr.ph.i.i.i60.prol:                              ; preds = %bb.jp, %.lr.ph.i.i.i60.prol
  %.sroa.02.06.i.i.i61.prol = phi ptr [ %i.bei, %.lr.ph.i.i.i60.prol ], [ %i.bee, %bb.jp ] ; 3 uses
  %prol.iter5540 = phi i64 [ %prol.iter5540.next, %.lr.ph.i.i.i60.prol ], [ 0, %bb.jp ]
  %i.bei = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61.prol, i64 2832, !dbg !8879 ; 2 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61.prol, i64 2824, !dbg !8882
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.06.i.i.i61.prol, i8 0, i64 2824, i1 false), !dbg !8889, !alias.scope !8892, !noalias !8895
  store float 3.402000e+38, ptr %i.bej, align 8, !dbg !8882, !alias.scope !8896, !noalias !8895
  %prol.iter5540.next = add i64 %prol.iter5540, 1, !dbg !8872 ; 2 uses
  %prol.iter5540.cmp.not = icmp eq i64 %prol.iter5540.next, %xtraiter5538, !dbg !8872
  br i1 %prol.iter5540.cmp.not, label %.lr.ph.i.i.i60.prol.loopexit, label %.lr.ph.i.i.i60.prol, !dbg !8872, !llvm.loop !8899

.lr.ph.i.i.i60.prol.loopexit:                     ; preds = %.lr.ph.i.i.i60.prol, %bb.jp
  %.sroa.02.06.i.i.i61.unr = phi ptr [ %i.bee, %bb.jp ], [ %i.bei, %.lr.ph.i.i.i60.prol ]
  %i.bek = icmp ult i64 %3, 3710, !dbg !8872
  br i1 %i.bek, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i, label %.lr.ph.i.i.i60, !dbg !8872

.invoke.i54:                                      ; preds = %bb.js, %bb.jq, %bb.ju, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i, %.noexc353
  %i.bel = phi i64 [ 0, %bb.ju ], [ 0, %.noexc353 ], [ %i.bhb, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ 0, %bb.js ], [ %spec.select.i.i66, %bb.jq ]
  %i.bem = phi i64 [ 40, %bb.ju ], [ %spec.store.select.i52, %.noexc353 ], [ %i.bby, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ 40, %bb.js ], [ %i.bby, %bb.jq ]
  %i.ben = phi i64 [ %i.bhd, %bb.ju ], [ %i.bef, %.noexc353 ], [ %i.bby, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.bft, %bb.js ], [ %i.bby, %bb.jq ]
  %i.beo = phi ptr [ @289, %bb.ju ], [ @286, %.noexc353 ], [ @63, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ @289, %bb.js ], [ @112, %bb.jq ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bel, i64 noundef %i.bem, i64 noundef range(i64 0, 4611686018427387904) %i.ben, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.beo) #18
          to label %.cont.i58 unwind label %.thread.i55, !dbg !8900, !noalias !8901

.cont.i58:                                        ; preds = %.invoke.i54
  unreachable

.lr.ph.i.i.i60:                                   ; preds = %.lr.ph.i.i.i60.prol.loopexit, %.lr.ph.i.i.i60
  %.sroa.02.06.i.i.i61 = phi ptr [ %i.bfd, %.lr.ph.i.i.i60 ], [ %.sroa.02.06.i.i.i61.unr, %.lr.ph.i.i.i60.prol.loopexit ] ; 17 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 2832, !dbg !8879
  %i.beq = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 2824, !dbg !8882
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.06.i.i.i61, i8 0, i64 2824, i1 false), !dbg !8889, !alias.scope !8892, !noalias !8895
  store float 3.402000e+38, ptr %i.beq, align 8, !dbg !8882, !alias.scope !8896, !noalias !8895
  %i.ber = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 5664, !dbg !8879
  %i.bes = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 5656, !dbg !8882
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.bep, i8 0, i64 2824, i1 false), !dbg !8889, !alias.scope !8892, !noalias !8895
  store float 3.402000e+38, ptr %i.bes, align 8, !dbg !8882, !alias.scope !8896, !noalias !8895
  %i.bet = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 8496, !dbg !8879
  %i.beu = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 8488, !dbg !8882
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.ber, i8 0, i64 2824, i1 false), !dbg !8889, !alias.scope !8892, !noalias !8895
  store float 3.402000e+38, ptr %i.beu, align 8, !dbg !8882, !alias.scope !8896, !noalias !8895
  %i.bev = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 11328, !dbg !8879
  %i.bew = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 11320, !dbg !8882
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.bet, i8 0, i64 2824, i1 false), !dbg !8889, !alias.scope !8892, !noalias !8895
  store float 3.402000e+38, ptr %i.bew, align 8, !dbg !8882, !alias.scope !8896, !noalias !8895
  %i.bex = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 14160, !dbg !8879
  %i.bey = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 14152, !dbg !8882
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.bev, i8 0, i64 2824, i1 false), !dbg !8889, !alias.scope !8892, !noalias !8895
  store float 3.402000e+38, ptr %i.bey, align 8, !dbg !8882, !alias.scope !8896, !noalias !8895
  %i.bez = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 16992, !dbg !8879
  %i.bfa = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 16984, !dbg !8882
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.bex, i8 0, i64 2824, i1 false), !dbg !8889, !alias.scope !8892, !noalias !8895
  store float 3.402000e+38, ptr %i.bfa, align 8, !dbg !8882, !alias.scope !8896, !noalias !8895
  %i.bfb = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 19824, !dbg !8879
  %i.bfc = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 19816, !dbg !8882
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.bez, i8 0, i64 2824, i1 false), !dbg !8889, !alias.scope !8892, !noalias !8895
  store float 3.402000e+38, ptr %i.bfc, align 8, !dbg !8882, !alias.scope !8896, !noalias !8895
  %i.bfd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 22656, !dbg !8879 ; 2 uses
  %i.bfe = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 22648, !dbg !8882
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.bfb, i8 0, i64 2824, i1 false), !dbg !8889, !alias.scope !8892, !noalias !8895
  store float 3.402000e+38, ptr %i.bfe, align 8, !dbg !8882, !alias.scope !8896, !noalias !8895
  %i.bff = icmp eq ptr %i.bfd, %i.beh, !dbg !8902
  br i1 %i.bff, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i, label %.lr.ph.i.i.i60, !dbg !8872

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i: ; preds = %.lr.ph.i.i.i60, %.lr.ph.i.i.i60.prol.loopexit
  %i.bfg = add i64 %3, -41
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i: ; preds = %bb.jt
  %exitcond.not.i.i71 = icmp eq i64 %.sroa.010.027.i.i, %i.bdu, !dbg !8905
  br i1 %exitcond.not.i.i71, label %.lr.ph.i.i72, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i, !dbg !8914

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i: ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i
  %.sroa.0.028.i.i = phi i32 [ %.sroa.0.1.i.i64, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i ], [ 7, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i ] ; 3 uses
  %.sroa.010.027.i.i = phi i64 [ %i.bfh, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i ], [ 0, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i ] ; 5 uses
  %i.bfh = add nuw nsw i64 %.sroa.010.027.i.i, 1, !dbg !8915
  %i.bfi = mul i64 %.sroa.010.027.i.i, %3, !dbg !8921
  %i.bfj = udiv i64 %i.bfi, %spec.store.select.i52, !dbg !8925 ; 2 uses
  %i.bfk = icmp eq i64 %.sroa.010.027.i.i, 0, !dbg !8927
  br i1 %i.bfk, label %bb.jq, label %bb.jr, !dbg !8927

bb.jq:                                            ; preds = %bb.jr, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i
  %.sroa.04.0.i.i63 = phi i64 [ %i.bfj, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i ], [ %i.bfr, %bb.jr ], !dbg !8929 ; 2 uses
  %.sroa.0.1.i.i64 = phi i32 [ %.sroa.0.028.i.i, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i ], [ %spec.store.select.i.i62, %bb.jr ], !dbg !8930
  %i.bfl = add i64 %.sroa.04.0.i.i63, 40, !dbg !8931
  %.not.i.i65 = icmp ult i64 %i.bfl, %3, !dbg !8934
  %spec.select.i.i66 = select i1 %.not.i.i65, i64 %.sroa.04.0.i.i63, i64 %i.bfg, !dbg !8934 ; 4 uses
  %i.bfm = icmp ugt i64 %spec.select.i.i66, %i.bby, !dbg !8935
  br i1 %i.bfm, label %.invoke.i54, label %bb.js, !dbg !8935, !prof !168

bb.jr:                                            ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i
  %i.bfn = icmp eq i32 %.sroa.0.028.i.i, 0, !dbg !8940
  %i.bfo = mul i32 %.sroa.0.028.i.i, 16807, !dbg !8943
  %spec.store.select.i.i62 = select i1 %i.bfn, i32 1, i32 %i.bfo, !dbg !8940 ; 2 uses
  %i.bfp = zext i32 %spec.store.select.i.i62 to i64, !dbg !8946
  %i.bfq = urem i64 %i.bfp, %i.beg, !dbg !8947
  %i.bfr = add i64 %i.bfq, %i.bfj, !dbg !8950
  br label %bb.jq, !dbg !8952

bb.js:                                            ; preds = %bb.jq
  %i.bfs = getelementptr inbounds nuw [2832 x i8], ptr %i.bee, i64 %.sroa.010.027.i.i, !dbg !8953 ; 3 uses
  %i.bft = sub nuw nsw i64 %i.bby, %spec.select.i.i66, !dbg !8954 ; 2 uses
  %i.bfu = getelementptr inbounds nuw [2 x i8], ptr %i.bbx, i64 %spec.select.i.i66, !dbg !8955 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8960), !dbg !8963
  call void @llvm.experimental.noalias.scope.decl(metadata !8964), !dbg !8963
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfs, i64 2816, !dbg !8966 ; 2 uses
  %i.bfw = load i64, ptr %i.bfv, align 8, !dbg !8966, !alias.scope !8971, !noalias !8974, !noundef !14
  %i.bfx = add i64 %i.bfw, 40, !dbg !8975
  store i64 %i.bfx, ptr %i.bfv, align 8, !dbg !8978, !alias.scope !8981, !noalias !8974
  %i.bfy = icmp samesign ugt i64 %i.bft, 39
  br i1 %i.bfy, label %.preheader.i.i.i67, label %.invoke.i54, !dbg !8984, !prof !5881

.preheader.i.i.i67:                               ; preds = %bb.js, %bb.jt
  %.sroa.02.0.idx8.i.i.i68 = phi i64 [ %.sroa.02.0.add.i.i.i70.1, %bb.jt ], [ 0, %bb.js ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i69 = getelementptr inbounds nuw i8, ptr %i.bfu, i64 %.sroa.02.0.idx8.i.i.i68, !dbg !8993
  %i.bfz = load i16, ptr %.sroa.02.0.ptr.i.i.i69, align 2, !dbg !9002, !alias.scope !9008, !noalias !9011, !noundef !14 ; 2 uses
  %i.bga = zext i16 %i.bfz to i64, !dbg !9012     ; 2 uses
  %i.bgb = icmp ult i16 %i.bfz, 704, !dbg !9016
  br i1 %i.bgb, label %.preheader.i.i.i67.1, label %.split35.us.i.invoke.i, !dbg !9016

.preheader.i.i.i67.1:                             ; preds = %.preheader.i.i.i67
  %i.bgc = getelementptr inbounds nuw [4 x i8], ptr %i.bfs, i64 %i.bga, !dbg !9018 ; 2 uses
  %i.bgd = load i32, ptr %i.bgc, align 4, !dbg !9019, !alias.scope !9021, !noalias !8974, !noundef !14
  %i.bge = add i32 %i.bgd, 1, !dbg !9022
  store i32 %i.bge, ptr %i.bgc, align 4, !dbg !9025, !alias.scope !9021, !noalias !8974
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bfu, i64 %.sroa.02.0.idx8.i.i.i68, !dbg !8993
  %.sroa.02.0.ptr.i.i.i69.1 = getelementptr inbounds nuw i8, ptr %i.bgf, i64 2, !dbg !8993
  %i.bgg = load i16, ptr %.sroa.02.0.ptr.i.i.i69.1, align 2, !dbg !9002, !alias.scope !9008, !noalias !9011, !noundef !14 ; 2 uses
  %i.bgh = zext i16 %i.bgg to i64, !dbg !9012     ; 2 uses
  %i.bgi = icmp ult i16 %i.bgg, 704, !dbg !9016
  br i1 %i.bgi, label %bb.jt, label %.split35.us.i.invoke.i, !dbg !9016

bb.jt:                                            ; preds = %.preheader.i.i.i67.1
  %.sroa.02.0.add.i.i.i70.1 = add nuw nsw i64 %.sroa.02.0.idx8.i.i.i68, 4, !dbg !9026 ; 2 uses
  %i.bgj = getelementptr inbounds nuw [4 x i8], ptr %i.bfs, i64 %i.bgh, !dbg !9018 ; 2 uses
  %i.bgk = load i32, ptr %i.bgj, align 4, !dbg !9019, !alias.scope !9021, !noalias !8974, !noundef !14
  %i.bgl = add i32 %i.bgk, 1, !dbg !9022
  store i32 %i.bgl, ptr %i.bgj, align 4, !dbg !9025, !alias.scope !9021, !noalias !8974
  %i.bgm = icmp eq i64 %.sroa.02.0.add.i.i.i70.1, 80, !dbg !8993
  br i1 %i.bgm, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i, label %.preheader.i.i.i67, !dbg !9029

.split35.us.i.invoke.i:                           ; preds = %.preheader.i.i.i67, %.preheader.i.i.i67.1, %.preheader.i.i.i.i74, %.preheader.i.i.i.i74.1
  %i.bgn = phi i64 [ %i.bho, %.preheader.i.i.i.i74.1 ], [ %i.bhh, %.preheader.i.i.i.i74 ], [ %i.bga, %.preheader.i.i.i67 ], [ %i.bgh, %.preheader.i.i.i67.1 ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bgn, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @288) #18
          to label %.split35.us.i.cont.i unwind label %.thread.i55, !dbg !8900, !noalias !8901

.split35.us.i.cont.i:                             ; preds = %.split35.us.i.invoke.i
  unreachable

.lr.ph.i.i72:                                     ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9030), !dbg !9033
  call void @llvm.experimental.noalias.scope.decl(metadata !9034), !dbg !9033
  %i.bgo = shl i64 %3, 1, !dbg !9036              ; 2 uses
  %i.bgp = udiv i64 %i.bgo, 40, !dbg !9041
  %i.bgq = add nuw nsw i64 %i.bgp, 99, !dbg !9044
  %i.bgr = add nuw nsw i64 %i.bgq, %spec.store.select.i52, !dbg !9049 ; 2 uses
  %i.bgs = urem i64 %i.bgr, %spec.store.select.i52, !dbg !9052
  %i.bgt = sub nuw nsw i64 %i.bgr, %i.bgs, !dbg !9052
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.cn, i64 2816 ; 2 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.cn, i64 2824
  %i.bgw = add i64 %3, -39
  %umax.i.i73 = call i64 @llvm.umax.i64(i64 %i.bgt, i64 1)
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i, !dbg !9054

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram21HistogramAddHistogramNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i, %.lr.ph.i.i72
  %.sroa.03.022.i.i = phi i64 [ 0, %.lr.ph.i.i72 ], [ %i.bgx, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram21HistogramAddHistogramNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i ] ; 2 uses
  %.sroa.0.021.i.i = phi i32 [ 7, %.lr.ph.i.i72 ], [ %spec.store.select.i.i.i73, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram21HistogramAddHistogramNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !dbg !9061, !noalias !9063
  %i.bgx = add nuw i64 %.sroa.03.022.i.i, 1, !dbg !9064 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2816) %i.cn, i8 0, i64 2816, i1 false), !dbg !9070, !noalias !9063
  store float 3.402000e+38, ptr %i.bgv, align 8, !dbg !9074, !alias.scope !9076, !noalias !9063
  call void @llvm.experimental.noalias.scope.decl(metadata !9079), !dbg !9082
  call void @llvm.experimental.noalias.scope.decl(metadata !9083), !dbg !9082
  %i.bgy = mul i32 %.sroa.0.021.i.i, 16807, !dbg !9085
  %i.bgz = icmp eq i32 %.sroa.0.021.i.i, 0, !dbg !9093
  %spec.store.select.i.i.i73 = select i1 %i.bgz, i32 1, i32 %i.bgy, !dbg !9093 ; 2 uses
  %i.bha = zext i32 %spec.store.select.i.i.i73 to i64, !dbg !9094
  %i.bhb = urem i64 %i.bha, %i.bgw, !dbg !9095    ; 4 uses
  %i.bhc = icmp samesign ugt i64 %i.bhb, %i.bby, !dbg !9098
  br i1 %i.bhc, label %.invoke.i54, label %bb.ju, !dbg !9098, !prof !168

bb.ju:                                            ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %i.bhd = sub nuw nsw i64 %i.bby, %i.bhb, !dbg !9103 ; 2 uses
  %i.bhe = getelementptr inbounds nuw [2 x i8], ptr %i.bbx, i64 %i.bhb, !dbg !9104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9109), !dbg !9112
  call void @llvm.experimental.noalias.scope.decl(metadata !9113), !dbg !9112
  store i64 40, ptr %i.bgu, align 8, !dbg !9115, !alias.scope !9118, !noalias !9121
  %i.bhf = icmp samesign ugt i64 %i.bhd, 39
  br i1 %i.bhf, label %.preheader.i.i.i.i74, label %.invoke.i54, !dbg !9123, !prof !5881

.preheader.i.i.i.i74:                             ; preds = %bb.ju, %bb.jv
  %.sroa.02.0.idx8.i.i.i.i75 = phi i64 [ %.sroa.02.0.add.i.i.i.i77.1, %bb.jv ], [ 0, %bb.ju ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i.i76 = getelementptr inbounds nuw i8, ptr %i.bhe, i64 %.sroa.02.0.idx8.i.i.i.i75, !dbg !9128
  %i.bhg = load i16, ptr %.sroa.02.0.ptr.i.i.i.i76, align 2, !dbg !9131, !alias.scope !9133, !noalias !9136, !noundef !14 ; 2 uses
  %i.bhh = zext i16 %i.bhg to i64, !dbg !9137     ; 2 uses
  %i.bhi = icmp ult i16 %i.bhg, 704, !dbg !9139
  br i1 %i.bhi, label %.preheader.i.i.i.i74.1, label %.split35.us.i.invoke.i, !dbg !9139

.preheader.i.i.i.i74.1:                           ; preds = %.preheader.i.i.i.i74
  %i.bhj = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.bhh, !dbg !9140 ; 2 uses
  %i.bhk = load i32, ptr %i.bhj, align 4, !dbg !9141, !alias.scope !9142, !noalias !9121, !noundef !14
  %i.bhl = add i32 %i.bhk, 1, !dbg !9143
  store i32 %i.bhl, ptr %i.bhj, align 4, !dbg !9145, !alias.scope !9142, !noalias !9121
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhe, i64 %.sroa.02.0.idx8.i.i.i.i75, !dbg !9128
  %.sroa.02.0.ptr.i.i.i.i76.1 = getelementptr inbounds nuw i8, ptr %i.bhm, i64 2, !dbg !9128
  %i.bhn = load i16, ptr %.sroa.02.0.ptr.i.i.i.i76.1, align 2, !dbg !9131, !alias.scope !9133, !noalias !9136, !noundef !14 ; 2 uses
  %i.bho = zext i16 %i.bhn to i64, !dbg !9137     ; 2 uses
  %i.bhp = icmp ult i16 %i.bhn, 704, !dbg !9139
  br i1 %i.bhp, label %bb.jv, label %.split35.us.i.invoke.i, !dbg !9139

bb.jv:                                            ; preds = %.preheader.i.i.i.i74.1
  %.sroa.02.0.add.i.i.i.i77.1 = add nuw nsw i64 %.sroa.02.0.idx8.i.i.i.i75, 4, !dbg !9146 ; 2 uses
  %i.bhq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.bho, !dbg !9140 ; 2 uses
  %i.bhr = load i32, ptr %i.bhq, align 4, !dbg !9141, !alias.scope !9142, !noalias !9121, !noundef !14
  %i.bhs = add i32 %i.bhr, 1, !dbg !9143
  store i32 %i.bhs, ptr %i.bhq, align 4, !dbg !9145, !alias.scope !9142, !noalias !9121
  %i.bht = icmp eq i64 %.sroa.02.0.add.i.i.i.i77.1, 80, !dbg !9128
  br i1 %i.bht, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter12RandomSampleNtNtB4_9histogram16HistogramCommandtECsfISxE4fmY1Y_14polars_parquet.exit.i.i, label %.preheader.i.i.i.i74, !dbg !9148

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter12RandomSampleNtNtB4_9histogram16HistogramCommandtECsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %bb.jv
  %i.bhu = urem i64 %.sroa.03.022.i.i, %spec.store.select.i52, !dbg !9149
  %i.bhv = getelementptr inbounds nuw [2832 x i8], ptr %i.bee, i64 %i.bhu, !dbg !9152 ; 3 uses
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhv, i64 2816, !dbg !9153 ; 2 uses
  %i.bhx = load i64, ptr %i.bhw, align 8, !dbg !9153, !alias.scope !9157, !noalias !9160, !noundef !14
  %i.bhy = load i64, ptr %i.bgu, align 8, !dbg !9163, !alias.scope !9166, !noalias !9063, !noundef !14
  %i.bhz = add i64 %i.bhy, %i.bhx, !dbg !9169
  store i64 %i.bhz, ptr %i.bhw, align 8, !dbg !9170, !alias.scope !9172, !noalias !9175
  br label %vector.body4601, !dbg !9176

vector.body4601:                                  ; preds = %vector.body4601, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter12RandomSampleNtNtB4_9histogram16HistogramCommandtECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %index4602 = phi i64 [ 0, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter12RandomSampleNtNtB4_9histogram16HistogramCommandtECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %index.next4607.1, %vector.body4601 ], !dbg !9186 ; 4 uses
  %i.bia = getelementptr inbounds nuw [4 x i8], ptr %i.bhv, i64 %index4602, !dbg !9192 ; 3 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bia, i64 16, !dbg !9194 ; 2 uses
  %wide.load4603 = load <4 x i32>, ptr %i.bia, align 4, !dbg !9194, !alias.scope !9034, !noalias !9175
  %wide.load4604 = load <4 x i32>, ptr %i.bib, align 4, !dbg !9194, !alias.scope !9034, !noalias !9175
  %i.bic = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index4602, !dbg !9196 ; 2 uses
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bic, i64 16, !dbg !9196
  %wide.load4605 = load <4 x i32>, ptr %i.bic, align 8, !dbg !9196, !noalias !9063
  %wide.load4606 = load <4 x i32>, ptr %i.bid, align 8, !dbg !9196, !noalias !9063
  %i.bie = add <4 x i32> %wide.load4605, %wide.load4603, !dbg !9197
  %i.bif = add <4 x i32> %wide.load4606, %wide.load4604, !dbg !9197
  store <4 x i32> %i.bie, ptr %i.bia, align 4, !dbg !9200, !alias.scope !9034, !noalias !9175
  store <4 x i32> %i.bif, ptr %i.bib, align 4, !dbg !9200, !alias.scope !9034, !noalias !9175
  %index.next4607 = or disjoint i64 %index4602, 8, !dbg !9186 ; 2 uses
  %i.big = getelementptr inbounds nuw [4 x i8], ptr %i.bhv, i64 %index.next4607, !dbg !9192 ; 3 uses
  %i.bih = getelementptr inbounds nuw i8, ptr %i.big, i64 16, !dbg !9194 ; 2 uses
  %wide.load4603.1 = load <4 x i32>, ptr %i.big, align 4, !dbg !9194, !alias.scope !9034, !noalias !9175
  %wide.load4604.1 = load <4 x i32>, ptr %i.bih, align 4, !dbg !9194, !alias.scope !9034, !noalias !9175
  %i.bii = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index.next4607, !dbg !9196 ; 2 uses
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bii, i64 16, !dbg !9196
  %wide.load4605.1 = load <4 x i32>, ptr %i.bii, align 8, !dbg !9196, !noalias !9063
  %wide.load4606.1 = load <4 x i32>, ptr %i.bij, align 8, !dbg !9196, !noalias !9063
  %i.bik = add <4 x i32> %wide.load4605.1, %wide.load4603.1, !dbg !9197
  %i.bil = add <4 x i32> %wide.load4606.1, %wide.load4604.1, !dbg !9197
  store <4 x i32> %i.bik, ptr %i.big, align 4, !dbg !9200, !alias.scope !9034, !noalias !9175
  store <4 x i32> %i.bil, ptr %i.bih, align 4, !dbg !9200, !alias.scope !9034, !noalias !9175
  %index.next4607.1 = add nuw nsw i64 %index4602, 16, !dbg !9186 ; 2 uses
  %i.bim = icmp eq i64 %index.next4607.1, 704, !dbg !9176
  br i1 %i.bim, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram21HistogramAddHistogramNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i, label %vector.body4601, !dbg !9176, !llvm.loop !9202

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram21HistogramAddHistogramNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %vector.body4601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !dbg !9203, !noalias !9063
  %exitcond35.not.i.i = icmp eq i64 %i.bgx, %umax.i.i73, !dbg !9204
  br i1 %exitcond35.not.i.i, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter18RefineEntropyCodesNtNtB4_9histogram16HistogramCommandtECsfISxE4fmY1Y_14polars_parquet.exit.i, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i, !dbg !9054

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter18RefineEntropyCodesNtNtB4_9histogram16HistogramCommandtECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram21HistogramAddHistogramNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !dbg !9207, !noalias !9211
  call void @llvm.experimental.noalias.scope.decl(metadata !9212), !dbg !9215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !dbg !9217, !noalias !9221
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cl, i64 noundef %3, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc143.i unwind label %.thread.i55, !dbg !9217, !noalias !8901

.noexc143.i:                                      ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter18RefineEntropyCodesNtNtB4_9histogram16HistogramCommandtECsfISxE4fmY1Y_14polars_parquet.exit.i
  %i.bin = load i64, ptr %i.cl, align 8, !dbg !9217, !range !5797, !noalias !9221, !noundef !14
  %i.bio = trunc nuw i64 %i.bin to i1, !dbg !9222
  %i.bip = getelementptr inbounds nuw i8, ptr %i.cl, i64 8, !dbg !9223
  %i.biq = load i64, ptr %i.bip, align 8, !dbg !9223, !range !5800, !noalias !9221, !noundef !14 ; 2 uses
  %i.bir = getelementptr inbounds nuw i8, ptr %i.cl, i64 16, !dbg !9223 ; 2 uses
  br i1 %i.bio, label %bb.jw, label %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i78, !dbg !9222, !prof !168

bb.jw:                                            ; preds = %.noexc143.i
  %i.bis = load i64, ptr %i.bir, align 8, !dbg !9224, !noalias !9221
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.biq, i64 %i.bis) #20
          to label %.noexc144.i337 unwind label %.thread.i55, !dbg !9225, !noalias !8901

.noexc144.i337:                                   ; preds = %bb.jw
  unreachable, !dbg !9225

_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i78: ; preds = %.noexc143.i
  %i.bit = load ptr, ptr %i.bir, align 8, !dbg !9226, !noalias !9221, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !dbg !9227, !noalias !9221
  store i64 %i.biq, ptr %i.cm, align 8, !dbg !9228, !alias.scope !9212, !noalias !9211
  %i.biu = getelementptr inbounds nuw i8, ptr %i.cm, i64 8, !dbg !9228
  store ptr %i.bit, ptr %i.biu, align 8, !dbg !9228, !alias.scope !9212, !noalias !9211
  %i.biv = getelementptr inbounds nuw i8, ptr %i.cm, i64 16, !dbg !9228
  store i64 %3, ptr %i.biv, align 8, !dbg !9228, !alias.scope !9212, !noalias !9211
  %i.biw = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.cm)
          to label %bb.jx unwind label %.thread.i55, !dbg !9229, !noalias !8901 ; 2 uses

bb.jx:                                            ; preds = %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !dbg !9232, !noalias !9211
  %i.bix = extractvalue { ptr, i64 } %i.biw, 0, !dbg !9233 ; 14 uses
  %i.biy = extractvalue { ptr, i64 } %i.biw, 1, !dbg !9233 ; 17 uses
  %i.biz = add nuw nsw i64 %i.bdu, 8, !dbg !9234
  %i.bja = lshr i64 %i.biz, 3, !dbg !9238         ; 2 uses
  %i.bjb = mul nuw nsw i64 %spec.store.select.i52, 704, !dbg !9239 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !dbg !9243, !noalias !9211
  call void @llvm.experimental.noalias.scope.decl(metadata !9247), !dbg !9250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !dbg !9252, !noalias !9256
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cj, i64 noundef %i.bjb, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc146.i unwind label %bb.jz, !dbg !9252, !noalias !8901

.noexc146.i:                                      ; preds = %bb.jx
  %i.bjc = load i64, ptr %i.cj, align 8, !dbg !9252, !range !5797, !noalias !9256, !noundef !14
  %i.bjd = trunc nuw i64 %i.bjc to i1, !dbg !9257
  %i.bje = getelementptr inbounds nuw i8, ptr %i.cj, i64 8, !dbg !9258
  %i.bjf = load i64, ptr %i.bje, align 8, !dbg !9258, !range !5800, !noalias !9256, !noundef !14 ; 2 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.cj, i64 16, !dbg !9258 ; 2 uses
  br i1 %i.bjd, label %bb.jy, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i82, !dbg !9257, !prof !168

bb.jy:                                            ; preds = %.noexc146.i
  %i.bjh = load i64, ptr %i.bjg, align 8, !dbg !9259, !noalias !9256
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bjf, i64 %i.bjh) #20
          to label %.noexc147.i336 unwind label %bb.jz, !dbg !9260, !noalias !8901

.noexc147.i336:                                   ; preds = %bb.jy
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i82: ; preds = %.noexc146.i
  %i.bji = load ptr, ptr %i.bjg, align 8, !dbg !9261, !noalias !9256, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !dbg !9262, !noalias !9256
  store i64 %i.bjf, ptr %i.ck, align 8, !dbg !9263, !alias.scope !9247, !noalias !9211
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.ck, i64 8, !dbg !9263
  store ptr %i.bji, ptr %i.bjj, align 8, !dbg !9263, !alias.scope !9247, !noalias !9211
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.ck, i64 16, !dbg !9263
  store i64 %i.bjb, ptr %i.bjk, align 8, !dbg !9263, !alias.scope !9247, !noalias !9211
  %i.bjl = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecfE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ck)
          to label %bb.ka unwind label %bb.jz, !dbg !9264, !noalias !8901 ; 2 uses

bb.jz:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i82, %bb.jy, %bb.jx
  %i.bjm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxfEECsfISxE4fmY1Y_14polars_parquet.exit.i79

bb.ka:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !dbg !9267, !noalias !9211
  %i.bjn = extractvalue { ptr, i64 } %i.bjl, 0, !dbg !9268 ; 10 uses
  %i.bjo = extractvalue { ptr, i64 } %i.bjl, 1, !dbg !9268 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !dbg !9269, !noalias !9211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !dbg !9274, !noalias !9211
  invoke void @_RNvXsR_NtCscgRAwXFJnXP_4core5arrayAfj8_NtNtB7_7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.ch)
          to label %.noexc149.i.a unwind label %.thread39.i83, !dbg !9275, !noalias !8901

.noexc149.i.a:                                    ; preds = %bb.ka
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCsk4ZPsEfLtLH_6brotli3enc6compat8CompatF8NtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ci, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.ch, i64 noundef %i.bja)
          to label %.noexc150.i unwind label %.thread39.i83, !dbg !9277, !noalias !8901

.noexc150.i:                                      ; preds = %.noexc149.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !dbg !9269, !noalias !9211
  %i.bjp = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsk4ZPsEfLtLH_6brotli3enc6compat8CompatF8E16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ci)
          to label %bb.kb unwind label %.thread39.i83, !dbg !9279, !noalias !8901 ; 2 uses

.thread39.i83:                                    ; preds = %.noexc150.i, %.noexc149.i.a, %bb.ka
  %i.bjq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc6compat8CompatF8EECsfISxE4fmY1Y_14polars_parquet.exit.i84, !dbg !9282

bb.kb:                                            ; preds = %.noexc150.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !dbg !9283, !noalias !9211
  %i.bjr = extractvalue { ptr, i64 } %i.bjp, 0, !dbg !9284 ; 22 uses
  %i.bjs = extractvalue { ptr, i64 } %i.bjp, 1, !dbg !9284 ; 21 uses
  %i.bjt = mul i64 %i.bja, %3, !dbg !9285         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !dbg !9288, !noalias !9211
  call void @llvm.experimental.noalias.scope.decl(metadata !9291), !dbg !9294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !dbg !9296, !noalias !9300
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cf, i64 noundef %i.bjt, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc153.i.a unwind label %.thread45.i86, !dbg !9296, !noalias !8901

.noexc153.i.a:                                    ; preds = %bb.kb
  %i.bju = load i64, ptr %i.cf, align 8, !dbg !9296, !range !5797, !noalias !9300, !noundef !14
  %i.bjv = trunc nuw i64 %i.bju to i1, !dbg !9301
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.cf, i64 8, !dbg !9302
  %i.bjx = load i64, ptr %i.bjw, align 8, !dbg !9302, !range !5800, !noalias !9300, !noundef !14 ; 2 uses
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.cf, i64 16, !dbg !9302 ; 2 uses
  br i1 %i.bjv, label %bb.kc, label %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i152.i, !dbg !9301, !prof !168

bb.kc:                                            ; preds = %.noexc153.i.a
  %i.bjz = load i64, ptr %i.bjy, align 8, !dbg !9303, !noalias !9300
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bjx, i64 %i.bjz) #20
          to label %.noexc154.i unwind label %.thread45.i86, !dbg !9304, !noalias !8901

.noexc154.i:                                      ; preds = %bb.kc
  unreachable, !dbg !9304

_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i152.i: ; preds = %.noexc153.i.a
  %i.bka = load ptr, ptr %i.bjy, align 8, !dbg !9305, !noalias !9300, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !dbg !9306, !noalias !9300
  store i64 %i.bjx, ptr %i.cg, align 8, !dbg !9307, !alias.scope !9291, !noalias !9211
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !9307
  store ptr %i.bka, ptr %i.bkb, align 8, !dbg !9307, !alias.scope !9291, !noalias !9211
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.cg, i64 16, !dbg !9307
  store i64 %i.bjt, ptr %i.bkc, align 8, !dbg !9307, !alias.scope !9291, !noalias !9211
  %i.bkd = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.cg)
          to label %bb.kd unwind label %.thread45.i86, !dbg !9308, !noalias !8901 ; 2 uses

.thread45.i86:                                    ; preds = %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i152.i, %bb.kc, %bb.kb
  %i.bke = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i87, !dbg !9311

bb.kd:                                            ; preds = %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i152.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !dbg !9312, !noalias !9211
  %i.bkf = extractvalue { ptr, i64 } %i.bkd, 0, !dbg !9313 ; 8 uses
  %i.bkg = extractvalue { ptr, i64 } %i.bkd, 1, !dbg !9313 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !dbg !9314, !noalias !9211
  call void @llvm.experimental.noalias.scope.decl(metadata !9319), !dbg !9322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !dbg !9324, !noalias !9328
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cd, i64 noundef %spec.store.select.i52, i1 noundef zeroext true, i64 noundef 2, i64 noundef 2)
          to label %.noexc157.i.a unwind label %.thread53.i89, !dbg !9324, !noalias !8901

.noexc157.i.a:                                    ; preds = %bb.kd
  %i.bkh = load i64, ptr %i.cd, align 8, !dbg !9324, !range !5797, !noalias !9328, !noundef !14
  %i.bki = trunc nuw i64 %i.bkh to i1, !dbg !9329
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.cd, i64 8, !dbg !9330
  %i.bkk = load i64, ptr %i.bkj, align 8, !dbg !9330, !range !5800, !noalias !9328, !noundef !14 ; 2 uses
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.cd, i64 16, !dbg !9330 ; 2 uses
  br i1 %i.bki, label %bb.ke, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i92, !dbg !9329, !prof !168

bb.ke:                                            ; preds = %.noexc157.i.a
  %i.bkm = load i64, ptr %i.bkl, align 8, !dbg !9331, !noalias !9328
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bkk, i64 %i.bkm) #20
          to label %.noexc158.i unwind label %.thread53.i89, !dbg !9332, !noalias !8901

.noexc158.i:                                      ; preds = %bb.ke
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i92: ; preds = %.noexc157.i.a
  %i.bkn = load ptr, ptr %i.bkl, align 8, !dbg !9333, !noalias !9328, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !dbg !9334, !noalias !9328
  store i64 %i.bkk, ptr %i.ce, align 8, !dbg !9335, !alias.scope !9319, !noalias !9211
  %i.bko = getelementptr inbounds nuw i8, ptr %i.ce, i64 8, !dbg !9335
  store ptr %i.bkn, ptr %i.bko, align 8, !dbg !9335, !alias.scope !9319, !noalias !9211
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.ce, i64 16, !dbg !9335
  store i64 %spec.store.select.i52, ptr %i.bkp, align 8, !dbg !9335, !alias.scope !9319, !noalias !9211
  %i.bkq = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VectE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ce)
          to label %.split.i93 unwind label %.thread53.i89, !dbg !9336, !noalias !8901 ; 2 uses

.thread53.i89:                                    ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i92, %bb.ke, %bb.kd
  %i.bkr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxtEECsfISxE4fmY1Y_14polars_parquet.exit.i90, !dbg !9339

.split.i93:                                       ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !dbg !9340, !noalias !9211
  %i.bks = extractvalue { ptr, i64 } %i.bkq, 0, !dbg !9341 ; 5 uses
  %i.bkt = extractvalue { ptr, i64 } %i.bkq, 1, !dbg !9341 ; 5 uses
  %i.bku = icmp slt i32 %.72.val, 12, !dbg !9342
  %..i94 = select i1 %i.bku, i64 3, i64 10, !dbg !9344
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bjn) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bjr) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bkf) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bix) ]
  %.idx393.i.i95 = shl nuw nsw i64 %i.bjs, 5      ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.daj = icmp ult i64 %.sroa.04.1, 128, !dbg !11698
  br i1 %i.daj, label %bb.ty, label %bb.tz, !dbg !11698

bb.ty:                                            ; preds = %bb.tx
  %.val91.i880 = load ptr, ptr %13, align 8, !dbg !11699, !alias.scope !11687, !noalias !11694, !nonnull !14, !noundef !14 ; 3 uses
  %i.dak = getelementptr inbounds nuw i8, ptr %13, i64 8, !dbg !11699 ; 2 uses
  %.val92.i881 = load i64, ptr %i.dak, align 8, !dbg !11699, !alias.scope !11687, !noalias !11694, !noundef !14 ; 9 uses
  %i.dal = getelementptr inbounds nuw i8, ptr %13, i64 40, !dbg !11702 ; 2 uses
  %i.dam = load i64, ptr %i.dal, align 8, !dbg !11702, !alias.scope !11687, !noalias !11694, !noundef !14 ; 6 uses
  %i.dan = add i64 %i.dam, 1, !dbg !11703         ; 7 uses
  %i.dao = icmp ult i64 %.val92.i881, %i.dan, !dbg !11706
  br i1 %i.dao, label %bb.adf, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit214.i882, !dbg !11706

.thread.i369:                                     ; preds = %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i402, %bb.uh, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter18RefineEntropyCodesNtNtB4_9histogram17HistogramDistancetECsfISxE4fmY1Y_14polars_parquet.exit.i, %.split35.us.i.invoke.i386, %.invoke.i368
  %i.dap = landingpad { ptr, i32 }
          cleanup
  br label %bb.add, !dbg !11707

bb.tz:                                            ; preds = %bb.tx
  %i.daq = invoke { ptr, i64 } @_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram17HistogramDistanceE10alloc_cellCsfISxE4fmY1Y_14polars_parquet(ptr noalias nonnull readnone poison, i64 noundef %spec.store.select.i366)
          to label %.noexc896 unwind label %bb.tv, !dbg !11708 ; 2 uses

.noexc896:                                        ; preds = %bb.tz
  %i.dar = extractvalue { ptr, i64 } %i.daq, 0, !dbg !11708 ; 14 uses
  %i.das = extractvalue { ptr, i64 } %i.daq, 1, !dbg !11708 ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dar) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !11711), !dbg !11714
  call void @llvm.experimental.noalias.scope.decl(metadata !11716), !dbg !11714
  %i.dat = udiv i64 %.sroa.04.1, %spec.store.select.i366, !dbg !11718
  %.not.i.i.not.i367 = icmp ult i64 %i.dag, %i.das
  br i1 %.not.i.i.not.i367, label %bb.ua, label %.invoke.i368, !dbg !11724, !prof !5881

bb.ua:                                            ; preds = %.noexc896
  %.idx.i.i.i373 = mul nuw nsw i64 %spec.store.select.i366, 2192, !dbg !11736
  %i.dau = getelementptr inbounds nuw i8, ptr %i.dar, i64 %.idx.i.i.i373, !dbg !11736
  %xtraiter5545 = and i64 %spec.store.select.i366, 7, !dbg !11745 ; 2 uses
  %lcmp.mod5546.not = icmp eq i64 %xtraiter5545, 0, !dbg !11745
  br i1 %lcmp.mod5546.not, label %.lr.ph.i.i.i374.prol.loopexit, label %.lr.ph.i.i.i374.prol, !dbg !11745

.lr.ph.i.i.i374.prol:                             ; preds = %bb.ua, %.lr.ph.i.i.i374.prol
  %.sroa.02.06.i.i.i375.prol = phi ptr [ %i.dav, %.lr.ph.i.i.i374.prol ], [ %i.dar, %bb.ua ] ; 3 uses
  %prol.iter5547 = phi i64 [ %prol.iter5547.next, %.lr.ph.i.i.i374.prol ], [ 0, %bb.ua ]
  %i.dav = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i375.prol, i64 2192, !dbg !11752 ; 2 uses
  %i.daw = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i375.prol, i64 2184, !dbg !11755
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %.sroa.02.06.i.i.i375.prol, i8 0, i64 2184, i1 false), !dbg !11762, !alias.scope !11765, !noalias !11768
  store float 3.402000e+38, ptr %i.daw, align 8, !dbg !11755, !alias.scope !11769, !noalias !11768
  %prol.iter5547.next = add i64 %prol.iter5547, 1, !dbg !11745 ; 2 uses
  %prol.iter5547.cmp.not = icmp eq i64 %prol.iter5547.next, %xtraiter5545, !dbg !11745
  br i1 %prol.iter5547.cmp.not, label %.lr.ph.i.i.i374.prol.loopexit, label %.lr.ph.i.i.i374.prol, !dbg !11745, !llvm.loop !11772

.lr.ph.i.i.i374.prol.loopexit:                    ; preds = %.lr.ph.i.i.i374.prol, %bb.ua
  %.sroa.02.06.i.i.i375.unr = phi ptr [ %i.dar, %bb.ua ], [ %i.dav, %.lr.ph.i.i.i374.prol ]
  %i.dax = icmp ult i64 %.sroa.04.1, 3808, !dbg !11745
  br i1 %i.dax, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i, label %.lr.ph.i.i.i374, !dbg !11745

.invoke.i368:                                     ; preds = %bb.ud, %bb.ub, %bb.uf, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i, %.noexc896
  %i.day = phi i64 [ 0, %bb.uf ], [ 0, %.noexc896 ], [ %i.ddo, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ 0, %bb.ud ], [ %spec.select.i.i382, %bb.ub ]
  %i.daz = phi i64 [ 40, %bb.uf ], [ %spec.store.select.i366, %.noexc896 ], [ %i.dac, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ 40, %bb.ud ], [ %i.dac, %bb.ub ]
  %i.dba = phi i64 [ %i.ddq, %bb.uf ], [ %i.das, %.noexc896 ], [ %i.dac, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.dcg, %bb.ud ], [ %i.dac, %bb.ub ]
  %i.dbb = phi ptr [ @289, %bb.uf ], [ @286, %.noexc896 ], [ @63, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ @289, %bb.ud ], [ @112, %bb.ub ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.day, i64 noundef %i.daz, i64 noundef range(i64 0, 4611686018427387904) %i.dba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dbb) #18
          to label %.cont.i372 unwind label %.thread.i369, !dbg !11773, !noalias !11774

.cont.i372:                                       ; preds = %.invoke.i368
  unreachable

.lr.ph.i.i.i374:                                  ; preds = %.lr.ph.i.i.i374.prol.loopexit, %.lr.ph.i.i.i374
  %.sroa.02.06.i.i.i375 = phi ptr [ %i.dbq, %.lr.ph.i.i.i374 ], [ %.sroa.02.06.i.i.i375.unr, %.lr.ph.i.i.i374.prol.loopexit ] ; 17 uses
  %i.dbc = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i375, i64 2192, !dbg !11752
  %i.dbd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i375, i64 2184, !dbg !11755
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %.sroa.02.06.i.i.i375, i8 0, i64 2184, i1 false), !dbg !11762, !alias.scope !11765, !noalias !11768
  store float 3.402000e+38, ptr %i.dbd, align 8, !dbg !11755, !alias.scope !11769, !noalias !11768
  %i.dbe = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i375, i64 4384, !dbg !11752
  %i.dbf = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i375, i64 4376, !dbg !11755
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.dbc, i8 0, i64 2184, i1 false), !dbg !11762, !alias.scope !11765, !noalias !11768
  store float 3.402000e+38, ptr %i.dbf, align 8, !dbg !11755, !alias.scope !11769, !noalias !11768
  %i.dbg = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i375, i64 6576, !dbg !11752
  %i.dbh = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i375, i64 6568, !dbg !11755
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.dbe, i8 0, i64 2184, i1 false), !dbg !11762, !alias.scope !11765, !noalias !11768
  store float 3.402000e+38, ptr %i.dbh, align 8, !dbg !11755, !alias.scope !11769, !noalias !11768
  %i.dbi = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i375, i64 8768, !dbg !11752
  %i.dbj = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i375, i64 8760, !dbg !11755
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.dbg, i8 0, i64 2184, i1 false), !dbg !11762, !alias.scope !11765, !noalias !11768
  store float 3.402000e+38, ptr %i.dbj, align 8, !dbg !11755, !alias.scope !11769, !noalias !11768
  %i.dbk = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i375, i64 10960, !dbg !11752
  %i.dbl = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i375, i64 10952, !dbg !11755
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.dbi, i8 0, i64 2184, i1 false), !dbg !11762, !alias.scope !11765, !noalias !11768
  store float 3.402000e+38, ptr %i.dbl, align 8, !dbg !11755, !alias.scope !11769, !noalias !11768
  %i.dbm = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i375, i64 13152, !dbg !11752
  %i.dbn = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i375, i64 13144, !dbg !11755
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.dbk, i8 0, i64 2184, i1 false), !dbg !11762, !alias.scope !11765, !noalias !11768
  store float 3.402000e+38, ptr %i.dbn, align 8, !dbg !11755, !alias.scope !11769, !noalias !11768
  %i.dbo = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i375, i64 15344, !dbg !11752
  %i.dbp = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i375, i64 15336, !dbg !11755
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.dbm, i8 0, i64 2184, i1 false), !dbg !11762, !alias.scope !11765, !noalias !11768
  store float 3.402000e+38, ptr %i.dbp, align 8, !dbg !11755, !alias.scope !11769, !noalias !11768
  %i.dbq = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i375, i64 17536, !dbg !11752 ; 2 uses
  %i.dbr = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i375, i64 17528, !dbg !11755
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.dbo, i8 0, i64 2184, i1 false), !dbg !11762, !alias.scope !11765, !noalias !11768
  store float 3.402000e+38, ptr %i.dbr, align 8, !dbg !11755, !alias.scope !11769, !noalias !11768
  %i.dbs = icmp eq ptr %i.dbq, %i.dau, !dbg !11775
  br i1 %i.dbs, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i, label %.lr.ph.i.i.i374, !dbg !11745

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i: ; preds = %.lr.ph.i.i.i374, %.lr.ph.i.i.i374.prol.loopexit
  %i.dbt = add i64 %.sroa.04.1, -41
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i: ; preds = %bb.ue
  %exitcond.not.i.i389 = icmp eq i64 %.sroa.010.027.i.i377, %i.dag, !dbg !11778
  br i1 %exitcond.not.i.i389, label %.lr.ph.i.i390, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i, !dbg !11787

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i: ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i
  %.sroa.0.028.i.i376 = phi i32 [ %.sroa.0.1.i.i380, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i ], [ 7, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i ] ; 3 uses
  %.sroa.010.027.i.i377 = phi i64 [ %i.dbu, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i ], [ 0, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i ] ; 5 uses
  %i.dbu = add nuw nsw i64 %.sroa.010.027.i.i377, 1, !dbg !11788
  %i.dbv = mul i64 %.sroa.010.027.i.i377, %.sroa.04.1, !dbg !11794
  %i.dbw = udiv i64 %i.dbv, %spec.store.select.i366, !dbg !11798 ; 2 uses
  %i.dbx = icmp eq i64 %.sroa.010.027.i.i377, 0, !dbg !11800
  br i1 %i.dbx, label %bb.ub, label %bb.uc, !dbg !11800

bb.ub:                                            ; preds = %bb.uc, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i
  %.sroa.04.0.i.i379 = phi i64 [ %i.dbw, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i ], [ %i.dce, %bb.uc ], !dbg !11802 ; 2 uses
  %.sroa.0.1.i.i380 = phi i32 [ %.sroa.0.028.i.i376, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i ], [ %spec.store.select.i.i378, %bb.uc ], !dbg !11803
  %i.dby = add i64 %.sroa.04.0.i.i379, 40, !dbg !11804
  %.not.i.i381 = icmp ult i64 %i.dby, %.sroa.04.1, !dbg !11807
  %spec.select.i.i382 = select i1 %.not.i.i381, i64 %.sroa.04.0.i.i379, i64 %i.dbt, !dbg !11807 ; 4 uses
  %i.dbz = icmp ugt i64 %spec.select.i.i382, %i.dac, !dbg !11808
  br i1 %i.dbz, label %.invoke.i368, label %bb.ud, !dbg !11808, !prof !168

bb.uc:                                            ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i
  %i.dca = icmp eq i32 %.sroa.0.028.i.i376, 0, !dbg !11813
  %i.dcb = mul i32 %.sroa.0.028.i.i376, 16807, !dbg !11816
  %spec.store.select.i.i378 = select i1 %i.dca, i32 1, i32 %i.dcb, !dbg !11813 ; 2 uses
  %i.dcc = zext i32 %spec.store.select.i.i378 to i64, !dbg !11819
  %i.dcd = urem i64 %i.dcc, %i.dat, !dbg !11820
  %i.dce = add i64 %i.dcd, %i.dbw, !dbg !11823
  br label %bb.ub, !dbg !11825

bb.ud:                                            ; preds = %bb.ub
  %i.dcf = getelementptr inbounds nuw [2192 x i8], ptr %i.dar, i64 %.sroa.010.027.i.i377, !dbg !11826 ; 3 uses
  %i.dcg = sub nuw nsw i64 %i.dac, %spec.select.i.i382, !dbg !11827 ; 2 uses
  %i.dch = getelementptr inbounds nuw [2 x i8], ptr %i.dab, i64 %spec.select.i.i382, !dbg !11828 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11833), !dbg !11836
  call void @llvm.experimental.noalias.scope.decl(metadata !11837), !dbg !11836
  %i.dci = getelementptr inbounds nuw i8, ptr %i.dcf, i64 2176, !dbg !11839 ; 2 uses
  %i.dcj = load i64, ptr %i.dci, align 8, !dbg !11839, !alias.scope !11844, !noalias !11847, !noundef !14
  %i.dck = add i64 %i.dcj, 40, !dbg !11848
  store i64 %i.dck, ptr %i.dci, align 8, !dbg !11851, !alias.scope !11854, !noalias !11847
  %i.dcl = icmp samesign ugt i64 %i.dcg, 39
  br i1 %i.dcl, label %.preheader.i.i.i383, label %.invoke.i368, !dbg !11857, !prof !5881

.preheader.i.i.i383:                              ; preds = %bb.ud, %bb.ue
  %.sroa.02.0.idx8.i.i.i384 = phi i64 [ %.sroa.02.0.add.i.i.i388.1, %bb.ue ], [ 0, %bb.ud ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i385 = getelementptr inbounds nuw i8, ptr %i.dch, i64 %.sroa.02.0.idx8.i.i.i384, !dbg !11866
  %i.dcm = load i16, ptr %.sroa.02.0.ptr.i.i.i385, align 2, !dbg !11875, !alias.scope !11879, !noalias !11882, !noundef !14 ; 2 uses
  %i.dcn = zext i16 %i.dcm to i64, !dbg !11883    ; 2 uses
  %i.dco = icmp ult i16 %i.dcm, 544, !dbg !11885
  br i1 %i.dco, label %.preheader.i.i.i383.1, label %.split35.us.i.invoke.i386, !dbg !11885

.preheader.i.i.i383.1:                            ; preds = %.preheader.i.i.i383
  %i.dcp = getelementptr inbounds nuw [4 x i8], ptr %i.dcf, i64 %i.dcn, !dbg !11887 ; 2 uses
  %i.dcq = load i32, ptr %i.dcp, align 4, !dbg !11888, !alias.scope !11890, !noalias !11847, !noundef !14
  %i.dcr = add i32 %i.dcq, 1, !dbg !11891
  store i32 %i.dcr, ptr %i.dcp, align 4, !dbg !11894, !alias.scope !11890, !noalias !11847
  %i.dcs = getelementptr inbounds nuw i8, ptr %i.dch, i64 %.sroa.02.0.idx8.i.i.i384, !dbg !11866
  %.sroa.02.0.ptr.i.i.i385.1 = getelementptr inbounds nuw i8, ptr %i.dcs, i64 2, !dbg !11866
  %i.dct = load i16, ptr %.sroa.02.0.ptr.i.i.i385.1, align 2, !dbg !11875, !alias.scope !11879, !noalias !11882, !noundef !14 ; 2 uses
  %i.dcu = zext i16 %i.dct to i64, !dbg !11883    ; 2 uses
  %i.dcv = icmp ult i16 %i.dct, 544, !dbg !11885
  br i1 %i.dcv, label %bb.ue, label %.split35.us.i.invoke.i386, !dbg !11885

bb.ue:                                            ; preds = %.preheader.i.i.i383.1
  %.sroa.02.0.add.i.i.i388.1 = add nuw nsw i64 %.sroa.02.0.idx8.i.i.i384, 4, !dbg !11895 ; 2 uses
  %i.dcw = getelementptr inbounds nuw [4 x i8], ptr %i.dcf, i64 %i.dcu, !dbg !11887 ; 2 uses
  %i.dcx = load i32, ptr %i.dcw, align 4, !dbg !11888, !alias.scope !11890, !noalias !11847, !noundef !14
  %i.dcy = add i32 %i.dcx, 1, !dbg !11891
  store i32 %i.dcy, ptr %i.dcw, align 4, !dbg !11894, !alias.scope !11890, !noalias !11847
  %i.dcz = icmp eq i64 %.sroa.02.0.add.i.i.i388.1, 80, !dbg !11866
  br i1 %i.dcz, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i, label %.preheader.i.i.i383, !dbg !11898

.split35.us.i.invoke.i386:                        ; preds = %.preheader.i.i.i383, %.preheader.i.i.i383.1, %.preheader.i.i.i.i394, %.preheader.i.i.i.i394.1
  %i.dda = phi i64 [ %i.deb, %.preheader.i.i.i.i394.1 ], [ %i.ddu, %.preheader.i.i.i.i394 ], [ %i.dcn, %.preheader.i.i.i383 ], [ %i.dcu, %.preheader.i.i.i383.1 ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dda, i64 noundef 544, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @288) #18
          to label %.split35.us.i.cont.i387 unwind label %.thread.i369, !dbg !11773, !noalias !11774

.split35.us.i.cont.i387:                          ; preds = %.split35.us.i.invoke.i386
  unreachable

.lr.ph.i.i390:                                    ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11899), !dbg !11902
  call void @llvm.experimental.noalias.scope.decl(metadata !11903), !dbg !11902
  %i.ddb = shl i64 %.sroa.04.1, 1, !dbg !11905    ; 2 uses
  %i.ddc = udiv i64 %i.ddb, 40, !dbg !11910
  %i.ddd = add nuw nsw i64 %i.ddc, 99, !dbg !11913
  %i.dde = add nuw nsw i64 %i.ddd, %spec.store.select.i366, !dbg !11918 ; 2 uses
  %i.ddf = urem i64 %i.dde, %spec.store.select.i366, !dbg !11921
  %i.ddg = sub nuw nsw i64 %i.dde, %i.ddf, !dbg !11921
  %i.ddh = getelementptr inbounds nuw i8, ptr %i.as, i64 2184
  %i.ddi = getelementptr inbounds nuw i8, ptr %i.as, i64 2176 ; 2 uses
  %i.ddj = add i64 %.sroa.04.1, -39
  %umax.i.i391 = call i64 @llvm.umax.i64(i64 %i.ddg, i64 1)
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i, !dbg !11923

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram21HistogramAddHistogramNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i, %.lr.ph.i.i390
  %.sroa.03.022.i.i391 = phi i64 [ 0, %.lr.ph.i.i390 ], [ %i.ddk, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram21HistogramAddHistogramNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i ] ; 2 uses
  %.sroa.0.021.i.i392 = phi i32 [ 7, %.lr.ph.i.i390 ], [ %spec.store.select.i.i.i393, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram21HistogramAddHistogramNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !11930, !noalias !11932
  %i.ddk = add nuw i64 %.sroa.03.022.i.i391, 1, !dbg !11933 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2176) %i.as, i8 0, i64 2176, i1 false), !dbg !11939, !noalias !11932
  store float 3.402000e+38, ptr %i.ddh, align 8, !dbg !11943, !alias.scope !11945, !noalias !11932
  call void @llvm.experimental.noalias.scope.decl(metadata !11948), !dbg !11951
  call void @llvm.experimental.noalias.scope.decl(metadata !11952), !dbg !11951
  %i.ddl = mul i32 %.sroa.0.021.i.i392, 16807, !dbg !11954
  %i.ddm = icmp eq i32 %.sroa.0.021.i.i392, 0, !dbg !11962
  %spec.store.select.i.i.i393 = select i1 %i.ddm, i32 1, i32 %i.ddl, !dbg !11962 ; 2 uses
  %i.ddn = zext i32 %spec.store.select.i.i.i393 to i64, !dbg !11963
  %i.ddo = urem i64 %i.ddn, %i.ddj, !dbg !11964   ; 4 uses
  %i.ddp = icmp samesign ugt i64 %i.ddo, %i.dac, !dbg !11967
  br i1 %i.ddp, label %.invoke.i368, label %bb.uf, !dbg !11967, !prof !168

bb.uf:                                            ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %i.ddq = sub nuw nsw i64 %i.dac, %i.ddo, !dbg !11972 ; 2 uses
  %i.ddr = getelementptr inbounds nuw [2 x i8], ptr %i.dab, i64 %i.ddo, !dbg !11973 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11978), !dbg !11981
  call void @llvm.experimental.noalias.scope.decl(metadata !11982), !dbg !11981
  store i64 40, ptr %i.ddi, align 8, !dbg !11984, !alias.scope !11987, !noalias !11990
  %i.dds = icmp samesign ugt i64 %i.ddq, 39
  br i1 %i.dds, label %.preheader.i.i.i.i394, label %.invoke.i368, !dbg !11992, !prof !5881

.preheader.i.i.i.i394:                            ; preds = %bb.uf, %bb.ug
  %.sroa.02.0.idx8.i.i.i.i395 = phi i64 [ %.sroa.02.0.add.i.i.i.i397.1, %bb.ug ], [ 0, %bb.uf ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i.i396 = getelementptr inbounds nuw i8, ptr %i.ddr, i64 %.sroa.02.0.idx8.i.i.i.i395, !dbg !11997
  %i.ddt = load i16, ptr %.sroa.02.0.ptr.i.i.i.i396, align 2, !dbg !12000, !alias.scope !12002, !noalias !12005, !noundef !14 ; 2 uses
  %i.ddu = zext i16 %i.ddt to i64, !dbg !12006    ; 2 uses
  %i.ddv = icmp ult i16 %i.ddt, 544, !dbg !12008
  br i1 %i.ddv, label %.preheader.i.i.i.i394.1, label %.split35.us.i.invoke.i386, !dbg !12008

.preheader.i.i.i.i394.1:                          ; preds = %.preheader.i.i.i.i394
  %i.ddw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ddu, !dbg !12009 ; 2 uses
  %i.ddx = load i32, ptr %i.ddw, align 4, !dbg !12010, !alias.scope !12011, !noalias !11990, !noundef !14
  %i.ddy = add i32 %i.ddx, 1, !dbg !12012
  store i32 %i.ddy, ptr %i.ddw, align 4, !dbg !12014, !alias.scope !12011, !noalias !11990
  %i.ddz = getelementptr inbounds nuw i8, ptr %i.ddr, i64 %.sroa.02.0.idx8.i.i.i.i395, !dbg !11997
  %.sroa.02.0.ptr.i.i.i.i396.1 = getelementptr inbounds nuw i8, ptr %i.ddz, i64 2, !dbg !11997
  %i.dea = load i16, ptr %.sroa.02.0.ptr.i.i.i.i396.1, align 2, !dbg !12000, !alias.scope !12002, !noalias !12005, !noundef !14 ; 2 uses
  %i.deb = zext i16 %i.dea to i64, !dbg !12006    ; 2 uses
  %i.dec = icmp ult i16 %i.dea, 544, !dbg !12008
  br i1 %i.dec, label %bb.ug, label %.split35.us.i.invoke.i386, !dbg !12008

bb.ug:                                            ; preds = %.preheader.i.i.i.i394.1
  %.sroa.02.0.add.i.i.i.i397.1 = add nuw nsw i64 %.sroa.02.0.idx8.i.i.i.i395, 4, !dbg !12015 ; 2 uses
  %i.ded = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.deb, !dbg !12009 ; 2 uses
  %i.dee = load i32, ptr %i.ded, align 4, !dbg !12010, !alias.scope !12011, !noalias !11990, !noundef !14
  %i.def = add i32 %i.dee, 1, !dbg !12012
  store i32 %i.def, ptr %i.ded, align 4, !dbg !12014, !alias.scope !12011, !noalias !11990
  %i.deg = icmp eq i64 %.sroa.02.0.add.i.i.i.i397.1, 80, !dbg !11997
  br i1 %i.deg, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter12RandomSampleNtNtB4_9histogram17HistogramDistancetECsfISxE4fmY1Y_14polars_parquet.exit.i.i, label %.preheader.i.i.i.i394, !dbg !12017

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter12RandomSampleNtNtB4_9histogram17HistogramDistancetECsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %bb.ug
  %i.deh = urem i64 %.sroa.03.022.i.i391, %spec.store.select.i366, !dbg !12018
  %i.dei = getelementptr inbounds nuw [2192 x i8], ptr %i.dar, i64 %i.deh, !dbg !12021 ; 3 uses
  %i.dej = getelementptr inbounds nuw i8, ptr %i.dei, i64 2176, !dbg !12022 ; 2 uses
  %i.dek = load i64, ptr %i.dej, align 8, !dbg !12022, !alias.scope !12026, !noalias !12029, !noundef !14
  %i.del = load i64, ptr %i.ddi, align 8, !dbg !12032, !alias.scope !12035, !noalias !11932, !noundef !14
  %i.dem = add i64 %i.del, %i.dek, !dbg !12038
  store i64 %i.dem, ptr %i.dej, align 8, !dbg !12039, !alias.scope !12041, !noalias !12044
  br label %vector.body4685, !dbg !12045

vector.body4685:                                  ; preds = %vector.body4685, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter12RandomSampleNtNtB4_9histogram17HistogramDistancetECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %index4686 = phi i64 [ 0, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter12RandomSampleNtNtB4_9histogram17HistogramDistancetECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %index.next4691.1, %vector.body4685 ], !dbg !12055 ; 4 uses
  %i.den = getelementptr inbounds nuw [4 x i8], ptr %i.dei, i64 %index4686, !dbg !12061 ; 3 uses
  %i.deo = getelementptr inbounds nuw i8, ptr %i.den, i64 16, !dbg !12063 ; 2 uses
  %wide.load4687 = load <4 x i32>, ptr %i.den, align 4, !dbg !12063, !alias.scope !11903, !noalias !12044
  %wide.load4688 = load <4 x i32>, ptr %i.deo, align 4, !dbg !12063, !alias.scope !11903, !noalias !12044
  %i.dep = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index4686, !dbg !12065 ; 2 uses
  %i.deq = getelementptr inbounds nuw i8, ptr %i.dep, i64 16, !dbg !12065
  %wide.load4689 = load <4 x i32>, ptr %i.dep, align 8, !dbg !12065, !noalias !11932
  %wide.load4690 = load <4 x i32>, ptr %i.deq, align 8, !dbg !12065, !noalias !11932
  %i.der = add <4 x i32> %wide.load4689, %wide.load4687, !dbg !12066
  %i.des = add <4 x i32> %wide.load4690, %wide.load4688, !dbg !12066
  store <4 x i32> %i.der, ptr %i.den, align 4, !dbg !12069, !alias.scope !11903, !noalias !12044
  store <4 x i32> %i.des, ptr %i.deo, align 4, !dbg !12069, !alias.scope !11903, !noalias !12044
  %index.next4691 = or disjoint i64 %index4686, 8, !dbg !12055 ; 2 uses
  %i.det = getelementptr inbounds nuw [4 x i8], ptr %i.dei, i64 %index.next4691, !dbg !12061 ; 3 uses
  %i.deu = getelementptr inbounds nuw i8, ptr %i.det, i64 16, !dbg !12063 ; 2 uses
  %wide.load4687.1 = load <4 x i32>, ptr %i.det, align 4, !dbg !12063, !alias.scope !11903, !noalias !12044
  %wide.load4688.1 = load <4 x i32>, ptr %i.deu, align 4, !dbg !12063, !alias.scope !11903, !noalias !12044
  %i.dev = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index.next4691, !dbg !12065 ; 2 uses
  %i.dew = getelementptr inbounds nuw i8, ptr %i.dev, i64 16, !dbg !12065
  %wide.load4689.1 = load <4 x i32>, ptr %i.dev, align 8, !dbg !12065, !noalias !11932
  %wide.load4690.1 = load <4 x i32>, ptr %i.dew, align 8, !dbg !12065, !noalias !11932
  %i.dex = add <4 x i32> %wide.load4689.1, %wide.load4687.1, !dbg !12066
  %i.dey = add <4 x i32> %wide.load4690.1, %wide.load4688.1, !dbg !12066
  store <4 x i32> %i.dex, ptr %i.det, align 4, !dbg !12069, !alias.scope !11903, !noalias !12044
  store <4 x i32> %i.dey, ptr %i.deu, align 4, !dbg !12069, !alias.scope !11903, !noalias !12044
  %index.next4691.1 = add nuw nsw i64 %index4686, 16, !dbg !12055 ; 2 uses
  %i.dez = icmp eq i64 %index.next4691.1, 544, !dbg !12045
  br i1 %i.dez, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram21HistogramAddHistogramNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i, label %vector.body4685, !dbg !12045, !llvm.loop !12071

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram21HistogramAddHistogramNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %vector.body4685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !12072, !noalias !11932
  %exitcond35.not.i.i400 = icmp eq i64 %i.ddk, %umax.i.i391, !dbg !12073
  br i1 %exitcond35.not.i.i400, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter18RefineEntropyCodesNtNtB4_9histogram17HistogramDistancetECsfISxE4fmY1Y_14polars_parquet.exit.i, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i, !dbg !11923

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter18RefineEntropyCodesNtNtB4_9histogram17HistogramDistancetECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram21HistogramAddHistogramNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !12076, !noalias !12080
  call void @llvm.experimental.noalias.scope.decl(metadata !12081), !dbg !12084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !12086, !noalias !12090
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, i64 noundef %.sroa.04.1, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc143.i401 unwind label %.thread.i369, !dbg !12086, !noalias !11774

.noexc143.i401:                                   ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter18RefineEntropyCodesNtNtB4_9histogram17HistogramDistancetECsfISxE4fmY1Y_14polars_parquet.exit.i
  %i.dfa = load i64, ptr %i.aq, align 8, !dbg !12086, !range !5797, !noalias !12090, !noundef !14
  %i.dfb = trunc nuw i64 %i.dfa to i1, !dbg !12091
  %i.dfc = getelementptr inbounds nuw i8, ptr %i.aq, i64 8, !dbg !12092
  %i.dfd = load i64, ptr %i.dfc, align 8, !dbg !12092, !range !5800, !noalias !12090, !noundef !14 ; 2 uses
  %i.dfe = getelementptr inbounds nuw i8, ptr %i.aq, i64 16, !dbg !12092 ; 2 uses
  br i1 %i.dfb, label %bb.uh, label %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i402, !dbg !12091, !prof !168

bb.uh:                                            ; preds = %.noexc143.i401
  %i.dff = load i64, ptr %i.dfe, align 8, !dbg !12093, !noalias !12090
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dfd, i64 %i.dff) #20
          to label %.noexc144.i879 unwind label %.thread.i369, !dbg !12094, !noalias !11774

.noexc144.i879:                                   ; preds = %bb.uh
  unreachable, !dbg !12094

_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i402: ; preds = %.noexc143.i401
  %i.dfg = load ptr, ptr %i.dfe, align 8, !dbg !12095, !noalias !12090, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !12096, !noalias !12090
  store i64 %i.dfd, ptr %i.ar, align 8, !dbg !12097, !alias.scope !12081, !noalias !12080
  %i.dfh = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !12097
  store ptr %i.dfg, ptr %i.dfh, align 8, !dbg !12097, !alias.scope !12081, !noalias !12080
  %i.dfi = getelementptr inbounds nuw i8, ptr %i.ar, i64 16, !dbg !12097
  store i64 %.sroa.04.1, ptr %i.dfi, align 8, !dbg !12097, !alias.scope !12081, !noalias !12080
  %i.dfj = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ar)
          to label %bb.ui unwind label %.thread.i369, !dbg !12098, !noalias !11774 ; 2 uses

bb.ui:                                            ; preds = %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !12101, !noalias !12080
  %i.dfk = extractvalue { ptr, i64 } %i.dfj, 0, !dbg !12102 ; 14 uses
  %i.dfl = extractvalue { ptr, i64 } %i.dfj, 1, !dbg !12102 ; 17 uses
  %i.dfm = add nuw nsw i64 %i.dag, 8, !dbg !12103
  %i.dfn = lshr i64 %i.dfm, 3, !dbg !12107        ; 2 uses
  %i.dfo = mul nuw nsw i64 %spec.store.select.i366, 544, !dbg !12108 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !12112, !noalias !12080
  call void @llvm.experimental.noalias.scope.decl(metadata !12116), !dbg !12119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !12121, !noalias !12125
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, i64 noundef %i.dfo, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc146.i407 unwind label %bb.uk, !dbg !12121, !noalias !11774

.noexc146.i407:                                   ; preds = %bb.ui
  %i.dfp = load i64, ptr %i.ao, align 8, !dbg !12121, !range !5797, !noalias !12125, !noundef !14
  %i.dfq = trunc nuw i64 %i.dfp to i1, !dbg !12126
  %i.dfr = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !12127
  %i.dfs = load i64, ptr %i.dfr, align 8, !dbg !12127, !range !5800, !noalias !12125, !noundef !14 ; 2 uses
  %i.dft = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !12127 ; 2 uses
  br i1 %i.dfq, label %bb.uj, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i408, !dbg !12126, !prof !168

bb.uj:                                            ; preds = %.noexc146.i407
  %i.dfu = load i64, ptr %i.dft, align 8, !dbg !12128, !noalias !12125
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dfs, i64 %i.dfu) #20
          to label %.noexc147.i878 unwind label %bb.uk, !dbg !12129, !noalias !11774

.noexc147.i878:                                   ; preds = %bb.uj
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i408: ; preds = %.noexc146.i407
  %i.dfv = load ptr, ptr %i.dft, align 8, !dbg !12130, !noalias !12125, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !12131, !noalias !12125
  store i64 %i.dfs, ptr %i.ap, align 8, !dbg !12132, !alias.scope !12116, !noalias !12080
  %i.dfw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8, !dbg !12132
  store ptr %i.dfv, ptr %i.dfw, align 8, !dbg !12132, !alias.scope !12116, !noalias !12080
  %i.dfx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16, !dbg !12132
  store i64 %i.dfo, ptr %i.dfx, align 8, !dbg !12132, !alias.scope !12116, !noalias !12080
  %i.dfy = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecfE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ap)
          to label %bb.ul unwind label %bb.uk, !dbg !12133, !noalias !11774 ; 2 uses

bb.uk:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i408, %bb.uj, %bb.ui
  %i.dfz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxfEECsfISxE4fmY1Y_14polars_parquet.exit.i403

bb.ul:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !12136, !noalias !12080
  %i.dga = extractvalue { ptr, i64 } %i.dfy, 0, !dbg !12137 ; 10 uses
  %i.dgb = extractvalue { ptr, i64 } %i.dfy, 1, !dbg !12137 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !12138, !noalias !12080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !12143, !noalias !12080
  invoke void @_RNvXsR_NtCscgRAwXFJnXP_4core5arrayAfj8_NtNtB7_7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.am)
          to label %.noexc149.i412 unwind label %.thread39.i409, !dbg !12144, !noalias !11774

.noexc149.i412:                                   ; preds = %bb.ul
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCsk4ZPsEfLtLH_6brotli3enc6compat8CompatF8NtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.am, i64 noundef %i.dfn)
          to label %.noexc150.i413 unwind label %.thread39.i409, !dbg !12146, !noalias !11774

.noexc150.i413:                                   ; preds = %.noexc149.i412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !12138, !noalias !12080
  %i.dgc = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsk4ZPsEfLtLH_6brotli3enc6compat8CompatF8E16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.an)
          to label %bb.um unwind label %.thread39.i409, !dbg !12148, !noalias !11774 ; 2 uses

.thread39.i409:                                   ; preds = %.noexc150.i413, %.noexc149.i412, %bb.ul
  %i.dgd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc6compat8CompatF8EECsfISxE4fmY1Y_14polars_parquet.exit.i410, !dbg !12151

bb.um:                                            ; preds = %.noexc150.i413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !12152, !noalias !12080
  %i.dge = extractvalue { ptr, i64 } %i.dgc, 0, !dbg !12153 ; 22 uses
  %i.dgf = extractvalue { ptr, i64 } %i.dgc, 1, !dbg !12153 ; 21 uses
  %i.dgg = mul i64 %i.dfn, %.sroa.04.1, !dbg !12154 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !12157, !noalias !12080
  call void @llvm.experimental.noalias.scope.decl(metadata !12160), !dbg !12163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !12165, !noalias !12169
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, i64 noundef %i.dgg, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc153.i417 unwind label %.thread45.i414, !dbg !12165, !noalias !11774

.noexc153.i417:                                   ; preds = %bb.um
  %i.dgh = load i64, ptr %i.ak, align 8, !dbg !12165, !range !5797, !noalias !12169, !noundef !14
  %i.dgi = trunc nuw i64 %i.dgh to i1, !dbg !12170
  %i.dgj = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !12171
  %i.dgk = load i64, ptr %i.dgj, align 8, !dbg !12171, !range !5800, !noalias !12169, !noundef !14 ; 2 uses
  %i.dgl = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !12171 ; 2 uses
  br i1 %i.dgi, label %bb.un, label %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i152.i418, !dbg !12170, !prof !168

bb.un:                                            ; preds = %.noexc153.i417
  %i.dgm = load i64, ptr %i.dgl, align 8, !dbg !12172, !noalias !12169
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dgk, i64 %i.dgm) #20
          to label %.noexc154.i877 unwind label %.thread45.i414, !dbg !12173, !noalias !11774

.noexc154.i877:                                   ; preds = %bb.un
  unreachable, !dbg !12173

_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i152.i418: ; preds = %.noexc153.i417
  %i.dgn = load ptr, ptr %i.dgl, align 8, !dbg !12174, !noalias !12169, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !12175, !noalias !12169
  store i64 %i.dgk, ptr %i.al, align 8, !dbg !12176, !alias.scope !12160, !noalias !12080
  %i.dgo = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !12176
  store ptr %i.dgn, ptr %i.dgo, align 8, !dbg !12176, !alias.scope !12160, !noalias !12080
  %i.dgp = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !12176
  store i64 %i.dgg, ptr %i.dgp, align 8, !dbg !12176, !alias.scope !12160, !noalias !12080
  %i.dgq = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.al)
          to label %bb.uo unwind label %.thread45.i414, !dbg !12177, !noalias !11774 ; 2 uses

.thread45.i414:                                   ; preds = %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i152.i418, %bb.un, %bb.um
  %i.dgr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i415, !dbg !12180

bb.uo:                                            ; preds = %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i152.i418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !12181, !noalias !12080
  %i.dgs = extractvalue { ptr, i64 } %i.dgq, 0, !dbg !12182 ; 8 uses
  %i.dgt = extractvalue { ptr, i64 } %i.dgq, 1, !dbg !12182 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !12183, !noalias !12080
  call void @llvm.experimental.noalias.scope.decl(metadata !12188), !dbg !12191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !12193, !noalias !12197
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, i64 noundef %spec.store.select.i366, i1 noundef zeroext true, i64 noundef 2, i64 noundef 2)
          to label %.noexc157.i422 unwind label %.thread53.i419, !dbg !12193, !noalias !11774

.noexc157.i422:                                   ; preds = %bb.uo
  %i.dgu = load i64, ptr %i.ai, align 8, !dbg !12193, !range !5797, !noalias !12197, !noundef !14
  %i.dgv = trunc nuw i64 %i.dgu to i1, !dbg !12198
  %i.dgw = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !12199
  %i.dgx = load i64, ptr %i.dgw, align 8, !dbg !12199, !range !5800, !noalias !12197, !noundef !14 ; 2 uses
  %i.dgy = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !12199 ; 2 uses
  br i1 %i.dgv, label %bb.up, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i423, !dbg !12198, !prof !168

bb.up:                                            ; preds = %.noexc157.i422
  %i.dgz = load i64, ptr %i.dgy, align 8, !dbg !12200, !noalias !12197
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dgx, i64 %i.dgz) #20
          to label %.noexc158.i876 unwind label %.thread53.i419, !dbg !12201, !noalias !11774

.noexc158.i876:                                   ; preds = %bb.up
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i423: ; preds = %.noexc157.i422
  %i.dha = load ptr, ptr %i.dgy, align 8, !dbg !12202, !noalias !12197, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !12203, !noalias !12197
  store i64 %i.dgx, ptr %i.aj, align 8, !dbg !12204, !alias.scope !12188, !noalias !12080
  %i.dhb = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !12204
  store ptr %i.dha, ptr %i.dhb, align 8, !dbg !12204, !alias.scope !12188, !noalias !12080
  %i.dhc = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !12204
  store i64 %spec.store.select.i366, ptr %i.dhc, align 8, !dbg !12204, !alias.scope !12188, !noalias !12080
  %i.dhd = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VectE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aj)
          to label %.split.i424 unwind label %.thread53.i419, !dbg !12205, !noalias !11774 ; 2 uses

.thread53.i419:                                   ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i423, %bb.up, %bb.uo
  %i.dhe = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxtEECsfISxE4fmY1Y_14polars_parquet.exit.i420, !dbg !12208

.split.i424:                                      ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !12209, !noalias !12080
  %i.dhf = extractvalue { ptr, i64 } %i.dhd, 0, !dbg !12210 ; 5 uses
  %i.dhg = extractvalue { ptr, i64 } %i.dhd, 1, !dbg !12210 ; 5 uses
  %i.dhh = icmp slt i32 %.72.val, 12, !dbg !12211
  %..i425 = select i1 %i.dhh, i64 3, i64 10, !dbg !12213
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dga) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dge) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dgs) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dfk) ]
  %.idx393.i.i426 = shl nuw nsw i64 %i.dgf, 5     ; 2 uses
end_hunk_2
