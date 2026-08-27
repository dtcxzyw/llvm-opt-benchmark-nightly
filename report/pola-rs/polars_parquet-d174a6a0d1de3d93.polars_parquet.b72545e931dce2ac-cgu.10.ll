Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.10?download=true
inline.NumInlined: 2534
inline.NumDeleted: 536
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock34BrotliBuildMetaBlockGreedyInternalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.jb = trunc nuw i64 %i.ja to i1, !dbg !33275
  %i.jc = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !33276
  %i.jd = load i64, ptr %i.jc, align 8, !dbg !33276, !range !5800, !noalias !33274, !noundef !14 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !33276 ; 2 uses
  br i1 %i.jb, label %bb.ck, label %bb.cl, !dbg !33275, !prof !168

bb.ck:                                            ; preds = %bb.cj
  %i.jf = load i64, ptr %i.je, align 8, !dbg !33277, !noalias !33274
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.jd, i64 %i.jf) #20, !dbg !33278, !noalias !33274
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.jg = load ptr, ptr %i.je, align 8, !dbg !33279, !noalias !33274, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !33280, !noalias !33274
  store i64 %i.jd, ptr %i.d, align 8, !dbg !33281, !alias.scope !33265, !noalias !33168
  %i.jh = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !33281
  store ptr %i.jg, ptr %i.jh, align 8, !dbg !33281, !alias.scope !33265, !noalias !33168
  %i.ji = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !33281
  store i64 %.sroa.04.1.i108, ptr %i.ji, align 8, !dbg !33281, !alias.scope !33265, !noalias !33168
  %i.jj = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecmE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !33282, !noalias !33168 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !33285, !noalias !33168
  %i.jk = extractvalue { ptr, i64 } %i.jj, 0, !dbg !33286 ; 4 uses
  %i.jl = extractvalue { ptr, i64 } %i.jj, 1, !dbg !33286 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jk) ]
  %.not23.i110 = icmp ugt i64 %.val52.i105, %i.jl
  br i1 %.not23.i110, label %bb.cm, label %bb.cn, !dbg !33287, !prof !751

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.val52.i105, i64 noundef %i.jl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @304) #20
          to label %bb.cr unwind label %bb.cs, !dbg !33299, !noalias !33168

bb.cn:                                            ; preds = %bb.cl
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implmECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 4 %i.jk, i64 noundef %.val52.i105, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val51.i104, i64 noundef %.val52.i105, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @302)
          to label %bb.co unwind label %bb.cs, !dbg !33300, !noalias !33168

bb.co:                                            ; preds = %bb.cn
  store ptr %i.jk, ptr %i.ia, align 8, !dbg !33306, !alias.scope !33125, !noalias !33149
  store i64 %i.jl, ptr %i.ib, align 8, !dbg !33306, !alias.scope !33125, !noalias !33149
  br i1 %i.ip, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i111, label %bb.cp, !dbg !33310

bb.cp:                                            ; preds = %bb.co
  %i.jm = shl nuw nsw i64 %.val52.i105, 2, !dbg !33315
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.val51.i104, i64 noundef range(i64 1, 0) %i.jm, i64 noundef 4) #19, !dbg !33318, !noalias !33168
  br label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i111, !dbg !33323

bb.cq:                                            ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram17HistogramDistanceE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #18, !dbg !33257, !noalias !33168
  unreachable, !dbg !33257

bb.cr:                                            ; preds = %bb.cm, %bb.ce
  unreachable

bb.cs:                                            ; preds = %bb.cn, %bb.cm
  %i.jn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jo = icmp eq i64 %i.jl, 0, !dbg !33324
  br i1 %i.jo, label %common.resume, label %bb.ct, !dbg !33324

bb.ct:                                            ; preds = %bb.cs
  %i.jp = shl nuw nsw i64 %i.jl, 2, !dbg !33328
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jk, i64 noundef range(i64 1, 0) %i.jp, i64 noundef 4) #19, !dbg !33331, !noalias !33168
  br label %common.resume, !dbg !33336

bb.cu:                                            ; preds = %bb.ce
  %lpad.thr_comm.split-lp.i113 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jq = icmp eq i64 %i.io, 0, !dbg !33222
  br i1 %i.jq, label %common.resume, label %bb.cv, !dbg !33222

bb.cv:                                            ; preds = %bb.cu, %.thread71.i98
  %lpad.thr_comm.split-lp73.i100 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp72.i99, %.thread71.i98 ], [ %lpad.thr_comm.split-lp.i113, %bb.cu ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.in, i64 noundef range(i64 1, 0) %i.io, i64 noundef 1) #19, !dbg !33337, !noalias !33168
  br label %common.resume, !dbg !33342

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock17InitBlockSplitterNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram17HistogramDistanceE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.is, i64 2184, !dbg !33343
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.is, i8 0, i64 2184, i1 false), !dbg !33346, !noalias !33168
  store float 3.402000e+38, ptr %i.jr, align 8, !dbg !33343, !alias.scope !33348, !noalias !33168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !dbg !33351
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !33351
  store i64 64, ptr %.sroa.5139.0..sroa_idx, align 8, !dbg !33351
  %.sroa.6140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24, !dbg !33351
  store i64 512, ptr %.sroa.6140.0..sroa_idx, align 8, !dbg !33351
  %.sroa.7141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32, !dbg !33351
  store i64 0, ptr %.sroa.7141.0..sroa_idx, align 8, !dbg !33351
  %.sroa.8142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40, !dbg !33351 ; 2 uses
  store i64 512, ptr %.sroa.8142.0..sroa_idx, align 8, !dbg !33351
  %.sroa.9143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48, !dbg !33351 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9143.0..sroa_idx, i8 0, i64 32, i1 false), !dbg !33351
  %.sroa.10144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 80, !dbg !33351
  store float 1.000000e+02, ptr %.sroa.10144.0..sroa_idx, align 8, !dbg !33351
  br i1 %.not, label %._crit_edge246, label %.lr.ph245, !dbg !33352

.lr.ph245:                                        ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock17InitBlockSplitterNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit
  %i.js = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.jt = getelementptr inbounds nuw i8, ptr %14, i64 176 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %14, i64 184 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %14, i64 240 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.jx = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  br label %bb.cw, !dbg !33352

._crit_edge246:                                   ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock17InitBlockSplitterNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit
  %i.jy = load i64, ptr %i.u, align 8, !dbg !33358, !range !5797, !noundef !14
  %i.jz = trunc nuw i64 %i.jy to i1, !dbg !33359
  %i.ka = getelementptr inbounds nuw i8, ptr %14, i64 176, !dbg !32425
  %.val39 = load ptr, ptr %i.ka, align 8, !dbg !32425, !nonnull !14, !noundef !14 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %14, i64 184, !dbg !32425
  %.val40 = load i64, ptr %i.kb, align 8, !dbg !32425, !noundef !14 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %14, i64 240, !dbg !32425 ; 2 uses
  br i1 %i.jz, label %bb.cx, label %bb.cy, !dbg !33359

bb.cw:                                            ; preds = %.lr.ph245, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit
  %.sroa.0.0244 = phi i64 [ %3, %.lr.ph245 ], [ %i.mt, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ] ; 2 uses
  %.sroa.05.0243 = phi i8 [ %5, %.lr.ph245 ], [ %.sroa.05.2, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ] ; 2 uses
  %.sroa.07.0242 = phi i8 [ %6, %.lr.ph245 ], [ %.sroa.07.2, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ] ; 2 uses
  %.sroa.019.0241 = phi i64 [ 0, %.lr.ph245 ], [ %i.kd, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ] ; 3 uses
  %i.kd = add nuw nsw i64 %.sroa.019.0241, 1, !dbg !33360 ; 2 uses
  %exitcond332.not = icmp eq i64 %.sroa.019.0241, %12, !dbg !33366
  br i1 %exitcond332.not, label %bb.dm, label %bb.dh, !dbg !33366

bb.cx:                                            ; preds = %._crit_edge246
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock31ContextBlockSplitterFinishBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1c_ECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(200) %.sroa.5.0..sroa_idx, ptr noalias noundef nonnull %0, ptr noalias noundef align 8 dereferenceable(48) %14, ptr noalias noundef nonnull align 8 %.val39, i64 noundef %.val40, ptr noalias noundef align 8 dereferenceable(8) %i.kc, i1 noundef zeroext true), !dbg !33368
  br label %bb.cz, !dbg !33368

bb.cy:                                            ; preds = %._crit_edge246
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock24BlockSplitterFinishBlockNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, ptr noalias noundef align 8 dereferenceable(48) %14, ptr noalias noundef nonnull align 8 %.val39, i64 noundef %.val40, ptr noalias noundef align 8 dereferenceable(8) %i.kc, i1 noundef zeroext true), !dbg !33370
  br label %bb.cz, !dbg !33370

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.val43 = load ptr, ptr %i.fv, align 8, !dbg !33372, !nonnull !14, !noundef !14
  %.val44 = load i64, ptr %i.gw, align 8, !dbg !33372, !noundef !14
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock24BlockSplitterFinishBlockNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(88) %i.t, ptr noalias noundef align 8 dereferenceable(48) %i.fu, ptr noalias noundef nonnull align 8 %.val43, i64 noundef %.val44, ptr noalias noundef align 8 dereferenceable(8) %i.fw, i1 noundef zeroext true), !dbg !33373
  %.val47 = load ptr, ptr %i.hu, align 8, !dbg !33374, !nonnull !14, !noundef !14
  %.val48 = load i64, ptr %i.iv, align 8, !dbg !33374, !noundef !14
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock24BlockSplitterFinishBlockNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(88) %i.s, ptr noalias noundef align 8 dereferenceable(48) %i.ht, ptr noalias noundef nonnull align 8 %.val47, i64 noundef %.val48, ptr noalias noundef align 8 dereferenceable(8) %i.hv, i1 noundef zeroext true), !dbg !33375
  %i.ke = icmp ugt i64 %8, 1, !dbg !33376
  br i1 %i.ke, label %bb.da, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock17MapStaticContextsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !33376

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock17MapStaticContextsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %.loopexit.i, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i116, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !33377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !33378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !33379
  ret void, !dbg !33380

bb.da:                                            ; preds = %bb.cz
  call void @llvm.experimental.noalias.scope.decl(metadata !33381), !dbg !33384
  call void @llvm.experimental.noalias.scope.decl(metadata !33385), !dbg !33384
  %i.kf = getelementptr inbounds nuw i8, ptr %14, i64 32, !dbg !33387
  %i.kg = load i64, ptr %i.kf, align 8, !dbg !33387, !alias.scope !33385, !noalias !33381, !noundef !14 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %14, i64 224, !dbg !33390
  %i.ki = shl i64 %i.kg, 6, !dbg !33390           ; 3 uses
  store i64 %i.ki, ptr %i.kh, align 8, !dbg !33390, !alias.scope !33385, !noalias !33381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !33391, !noalias !33395
  call void @llvm.experimental.noalias.scope.decl(metadata !33396), !dbg !33399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !33401, !noalias !33405
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ki, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !33401, !noalias !33405
  %i.kj = load i64, ptr %i.a, align 8, !dbg !33401, !range !5797, !noalias !33405, !noundef !14
  %i.kk = trunc nuw i64 %i.kj to i1, !dbg !33406
  %i.kl = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !33407
  %i.km = load i64, ptr %i.kl, align 8, !dbg !33407, !range !5800, !noalias !33405, !noundef !14 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !33407 ; 2 uses
  br i1 %i.kk, label %bb.db, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE10alloc_cellCsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !33406, !prof !168

bb.db:                                            ; preds = %bb.da
  %i.ko = load i64, ptr %i.kn, align 8, !dbg !33408, !noalias !33405
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.km, i64 %i.ko) #20, !dbg !33409, !noalias !33405
  unreachable

_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE10alloc_cellCsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.da
  %i.kp = load ptr, ptr %i.kn, align 8, !dbg !33410, !noalias !33405, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !33411, !noalias !33405
  store i64 %i.km, ptr %i.b, align 8, !dbg !33412, !alias.scope !33396, !noalias !33395
  %i.kq = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !33412
  store ptr %i.kp, ptr %i.kq, align 8, !dbg !33412, !alias.scope !33396, !noalias !33395
  %i.kr = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !33412
  store i64 %i.ki, ptr %i.kr, align 8, !dbg !33412, !alias.scope !33396, !noalias !33395
  %i.ks = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecmE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !33413, !noalias !33395 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !33416, !noalias !33395
  %i.kt = extractvalue { ptr, i64 } %i.ks, 0, !dbg !33417 ; 5 uses
  %i.ku = extractvalue { ptr, i64 } %i.ks, 1, !dbg !33417 ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %14, i64 144, !dbg !33418 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !dbg !33418, !alias.scope !33385, !noalias !33381, !nonnull !14, !align !791, !noundef !14
  %i.kx = getelementptr inbounds nuw i8, ptr %14, i64 152, !dbg !33418 ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8, !dbg !33418, !alias.scope !33385, !noalias !33381, !noundef !14 ; 2 uses
  store ptr %i.kt, ptr %i.kv, align 8, !dbg !33422, !alias.scope !33385, !noalias !33381
  store i64 %i.ku, ptr %i.kx, align 8, !dbg !33422, !alias.scope !33385, !noalias !33381
  %i.kz = icmp eq i64 %i.ky, 0, !dbg !33424
  br i1 %i.kz, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i116, label %bb.dc, !dbg !33424

bb.dc:                                            ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE10alloc_cellCsfISxE4fmY1Y_14polars_parquet.exit.i
  %i.la = shl nuw nsw i64 %i.ky, 2, !dbg !33429
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.kw, i64 noundef range(i64 1, 0) %i.la, i64 noundef 4) #19, !dbg !33432, !noalias !33395
  br label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i116, !dbg !33437

_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i116: ; preds = %bb.dc, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE10alloc_cellCsfISxE4fmY1Y_14polars_parquet.exit.i
  %.not.i117 = icmp eq i64 %i.kg, 0, !dbg !33438
  br i1 %.not.i117, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock17MapStaticContextsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, label %.lr.ph.i, !dbg !33447

.loopexit.i:                                      ; preds = %bb.df
  %exitcond9.not.i = icmp eq i64 %18, %i.kg, !dbg !33438
  br i1 %exitcond9.not.i, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock17MapStaticContextsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, label %.lr.ph.i, !dbg !33447

.lr.ph.i:                                         ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i116, %.loopexit.i
  %.sroa.03.04.i = phi i64 [ %18, %.loopexit.i ], [ 0, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i116 ] ; 5 uses
  %15 = shl i64 %.sroa.03.04.i, 6, !dbg !33448
  %umax = call i64 @llvm.umax.i64(i64 %i.ku, i64 %15), !dbg !33448
  %16 = shl i64 %.sroa.03.04.i, 6, !dbg !33448
  %17 = sub i64 %umax, %16, !dbg !33448
  %.fr = freeze i64 %17, !dbg !33448
  %umin = call i64 @llvm.umin.i64(i64 %.fr, i64 %10), !dbg !33448 ; 2 uses
  %18 = add nuw i64 %.sroa.03.04.i, 1, !dbg !33448 ; 2 uses
  %19 = mul i64 %.sroa.03.04.i, %8, !dbg !33454
  %20 = trunc i64 %19 to i32, !dbg !33458         ; 2 uses
  %21 = shl i64 %.sroa.03.04.i, 6                 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin, 8, !dbg !33459
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !33459

vector.ph:                                        ; preds = %.lr.ph.i
  %umin542 = call i64 @llvm.umin.i64(i64 %umin, i64 63), !dbg !33448
  %i.lb = add nuw nsw i64 %umin542, 1, !dbg !33448 ; 2 uses
  %i.lc = and i64 %i.lb, 7                        ; 2 uses
  %i.ld = icmp eq i64 %i.lc, 0
  %i.le = select i1 %i.ld, i64 8, i64 %i.lc
  %n.vec = sub nsw i64 %i.lb, %i.le               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kt) ]
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %20, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.kt, i64 %21, !dbg !33459
  br label %vector.body, !dbg !33459

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !33466 ; 3 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %index, !dbg !33472 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16, !dbg !33472
  %wide.load = load <4 x i32>, ptr %i.lf, align 4, !dbg !33472, !alias.scope !33381, !noalias !33385
  %wide.load543 = load <4 x i32>, ptr %i.lg, align 4, !dbg !33472, !alias.scope !33381, !noalias !33385
  %i.lh = add <4 x i32> %wide.load, %broadcast.splat, !dbg !33474
  %i.li = add <4 x i32> %wide.load543, %broadcast.splat, !dbg !33474
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index, !dbg !33477 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %gep, i64 16, !dbg !33477
  store <4 x i32> %i.lh, ptr %gep, align 4, !dbg !33477, !noalias !33395
  store <4 x i32> %i.li, ptr %i.lj, align 4, !dbg !33477, !noalias !33395
  %index.next = add nuw i64 %index, 8, !dbg !33466 ; 2 uses
  %i.lk = icmp eq i64 %index.next, %n.vec, !dbg !33459
  br i1 %i.lk, label %scalar.ph.preheader, label %vector.body, !dbg !33459, !llvm.loop !33478

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i
  %.sroa.05.03.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph, !dbg !33472

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.df
  %.sroa.05.03.i = phi i64 [ %i.ll, %bb.df ], [ %.sroa.05.03.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ll = add nuw nsw i64 %.sroa.05.03.i, 1, !dbg !33466 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.05.03.i, %10, !dbg !33472
  br i1 %exitcond.not.i, label %bb.de, label %bb.dd, !dbg !33472

bb.dd:                                            ; preds = %scalar.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kt) ]
  %i.lm = add nuw nsw i64 %.sroa.05.03.i, %21, !dbg !33479 ; 3 uses
  %i.ln = icmp ult i64 %i.lm, %i.ku, !dbg !33477
  br i1 %i.ln, label %bb.df, label %bb.dg, !dbg !33477

bb.de:                                            ; preds = %scalar.ph
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @306) #18, !dbg !33472, !noalias !33395
  unreachable, !dbg !33472

bb.df:                                            ; preds = %bb.dd
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %.sroa.05.03.i, !dbg !33472
  %i.lp = load i32, ptr %i.lo, align 4, !dbg !33472, !alias.scope !33381, !noalias !33385, !noundef !14
  %i.lq = add i32 %i.lp, %20, !dbg !33474
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.lm, !dbg !33477
  store i32 %i.lq, ptr %i.lr, align 4, !dbg !33477, !noalias !33395
  %exitcond8.not.i = icmp eq i64 %i.ll, 64, !dbg !33482
  br i1 %exitcond8.not.i, label %.loopexit.i, label %scalar.ph, !dbg !33459, !llvm.loop !33485

bb.dg:                                            ; preds = %bb.dd
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.lm, i64 noundef %i.ku, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #18, !dbg !33477, !noalias !33395
  unreachable, !dbg !33477

bb.dh:                                            ; preds = %bb.cw
  %i.ls = getelementptr inbounds nuw [16 x i8], ptr %11, i64 %.sroa.019.0241, !dbg !33366 ; 4 uses
  %i.lt = load i32, ptr %i.ls, align 4, !dbg !33366, !noundef !14 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 4, !dbg !33366
  %i.lv = load i32, ptr %i.lu, align 4, !dbg !33366, !noundef !14
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 12, !dbg !33366
  %i.lx = load i16, ptr %i.lw, align 4, !dbg !33366, !noundef !14 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ls, i64 14, !dbg !33366
  %i.lz = load i16, ptr %i.ly, align 2, !dbg !33366, !noundef !14
  %.val41 = load ptr, ptr %i.fv, align 8, !dbg !33486, !nonnull !14, !noundef !14 ; 2 uses
  %.val42 = load i64, ptr %i.gw, align 8, !dbg !33486, !noundef !14 ; 3 uses
  %i.ma = zext i16 %i.lx to i64, !dbg !33489      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33490), !dbg !33493
  call void @llvm.experimental.noalias.scope.decl(metadata !33494), !dbg !33493
  %i.mb = load i64, ptr %i.js, align 8, !dbg !33496, !alias.scope !33490, !noalias !33499, !noundef !14 ; 3 uses
  %i.mc = icmp ult i64 %i.mb, %.val42, !dbg !33502
  br i1 %i.mc, label %bb.di, label %bb.dk, !dbg !33502

bb.di:                                            ; preds = %bb.dh
  call void @llvm.experimental.noalias.scope.decl(metadata !33503), !dbg !33506
  %i.md = icmp ult i16 %i.lx, 704, !dbg !33507
  br i1 %i.md, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i, label %bb.dj, !dbg !33507

bb.dj:                                            ; preds = %bb.di
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 65536) %i.ma, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @287) #18, !dbg !33507, !noalias !33509
  unreachable, !dbg !33507

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.di
  %i.me = getelementptr inbounds nuw [2832 x i8], ptr %.val41, i64 %i.mb, !dbg !33510 ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.ma, !dbg !33511 ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 4, !dbg !33512, !alias.scope !33513, !noalias !33514, !noundef !14
  %i.mh = add i32 %i.mg, 1, !dbg !33515
  store i32 %i.mh, ptr %i.mf, align 4, !dbg !33517, !alias.scope !33513, !noalias !33514
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 2816, !dbg !33518 ; 2 uses
  %i.mj = load i64, ptr %i.mi, align 8, !dbg !33518, !alias.scope !33520, !noalias !33514, !noundef !14
  %i.mk = add i64 %i.mj, 1, !dbg !33523
  store i64 %i.mk, ptr %i.mi, align 8, !dbg !33525, !alias.scope !33527, !noalias !33514
  %i.ml = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !33530, !alias.scope !33490, !noalias !33499, !noundef !14
  %i.mm = add i64 %i.ml, 1, !dbg !33531           ; 2 uses
  store i64 %i.mm, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !33534, !alias.scope !33490, !noalias !33499
  %i.mn = load i64, ptr %.sroa.8135.0..sroa_idx, align 8, !dbg !33535, !alias.scope !33490, !noalias !33499, !noundef !14
  %i.mo = icmp eq i64 %i.mm, %i.mn, !dbg !33536
  br i1 %i.mo, label %bb.dl, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !33536

bb.dk:                                            ; preds = %bb.dh
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.mb, i64 noundef range(i64 0, 3256840408493919) %.val42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @310) #18, !dbg !33502, !noalias !33537
  unreachable, !dbg !33502

bb.dl:                                            ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock24BlockSplitterFinishBlockNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.fu, ptr noalias noundef nonnull align 8 %.val41, i64 noundef range(i64 0, 3256840408493919) %.val42, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fw, i1 noundef zeroext false), !dbg !33538
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !33538

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i, %bb.dl
  %i.mp = icmp eq i32 %i.lt, 0, !dbg !33539
  br i1 %i.mp, label %._crit_edge237, label %.lr.ph236.preheader, !dbg !33539

.lr.ph236.preheader:                              ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit
  %i.mq = zext i32 %i.lt to i64, !dbg !33540
  br label %.lr.ph236, !dbg !33541

bb.dm:                                            ; preds = %bb.cw
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %12, i64 noundef %12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @365) #18, !dbg !33366
  unreachable, !dbg !33366

._crit_edge237:                                   ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit
  %.sroa.07.1.lcssa = phi i8 [ %.sroa.07.0242, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ], [ %.sroa.05.1234, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ]
  %.sroa.05.1.lcssa = phi i8 [ %.sroa.05.0243, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ], [ %i.nz, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ]
  %.sroa.0.1.lcssa = phi i64 [ %.sroa.0.0244, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ], [ %i.pk, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ]
  %i.mr = and i32 %i.lv, 33554431, !dbg !33542    ; 2 uses
  %i.ms = zext nneg i32 %i.mr to i64, !dbg !33545
  %i.mt = add i64 %.sroa.0.1.lcssa, %i.ms, !dbg !33546 ; 3 uses
  %i.mu = icmp eq i32 %i.mr, 0, !dbg !33548
  br i1 %i.mu, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.dn, !dbg !33548

.lr.ph236:                                        ; preds = %.lr.ph236.preheader, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit
  %.sroa.0.1235 = phi i64 [ %i.pk, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ], [ %.sroa.0.0244, %.lr.ph236.preheader ] ; 2 uses
  %.sroa.05.1234 = phi i8 [ %i.nz, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ], [ %.sroa.05.0243, %.lr.ph236.preheader ] ; 6 uses
  %.sroa.07.1233 = phi i8 [ %.sroa.05.1234, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ], [ %.sroa.07.0242, %.lr.ph236.preheader ] ; 2 uses
  %.sroa.015.0232 = phi i64 [ %i.pl, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ], [ %i.mq, %.lr.ph236.preheader ]
  %i.mv = and i64 %.sroa.0.1235, %4, !dbg !33549  ; 3 uses
  %i.mw = icmp samesign ult i64 %i.mv, %2, !dbg !33541
  br i1 %i.mw, label %bb.dx, label %bb.dy, !dbg !33541

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.dw, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i, %bb.dq, %._crit_edge237
  %.sroa.07.2 = phi i8 [ %.sroa.07.1.lcssa, %._crit_edge237 ], [ %i.nb, %bb.dq ], [ %i.nb, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i ], [ %i.nb, %bb.dw ]
  %.sroa.05.2 = phi i8 [ %.sroa.05.1.lcssa, %._crit_edge237 ], [ %i.ng, %bb.dq ], [ %i.ng, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i ], [ %i.ng, %bb.dw ]
  %exitcond333.not = icmp eq i64 %i.kd, %13, !dbg !33550
  br i1 %exitcond333.not, label %._crit_edge246, label %bb.cw, !dbg !33352

bb.dn:                                            ; preds = %._crit_edge237
  %i.mx = add i64 %i.mt, 4294967294, !dbg !33553
  %i.my = and i64 %i.mx, %4, !dbg !33556          ; 3 uses
  %i.mz = icmp samesign ult i64 %i.my, %2, !dbg !33557
  br i1 %i.mz, label %bb.do, label %bb.dp, !dbg !33557

bb.do:                                            ; preds = %bb.dn
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 %i.my, !dbg !33557
  %i.nb = load i8, ptr %i.na, align 1, !dbg !33557, !noundef !14 ; 3 uses
  %i.nc = add i64 %i.mt, 4294967295, !dbg !33558
  %i.nd = and i64 %i.nc, %4, !dbg !33560          ; 3 uses
  %i.ne = icmp samesign ult i64 %i.nd, %2, !dbg !33561
  br i1 %i.ne, label %bb.dq, label %bb.dr, !dbg !33561

bb.dp:                                            ; preds = %bb.dn
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.my, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @366) #18, !dbg !33557
  unreachable, !dbg !33557

bb.dq:                                            ; preds = %bb.do
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 %i.nd, !dbg !33561
  %i.ng = load i8, ptr %i.nf, align 1, !dbg !33561, !noundef !14 ; 3 uses
  %i.nh = icmp ugt i16 %i.lx, 127, !dbg !33562
  br i1 %i.nh, label %bb.ds, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !33562

bb.dr:                                            ; preds = %bb.do
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.nd, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @367) #18, !dbg !33561
  unreachable, !dbg !33561

bb.ds:                                            ; preds = %bb.dq
  %.val45 = load ptr, ptr %i.hu, align 8, !dbg !33563, !nonnull !14, !noundef !14 ; 2 uses
  %.val46 = load i64, ptr %i.iv, align 8, !dbg !33563, !noundef !14 ; 3 uses
  %i.ni = and i16 %i.lz, 1023, !dbg !33564        ; 2 uses
  %i.nj = zext nneg i16 %i.ni to i64, !dbg !33564 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33565), !dbg !33568
  call void @llvm.experimental.noalias.scope.decl(metadata !33569), !dbg !33568
  %i.nk = load i64, ptr %i.jx, align 8, !dbg !33571, !alias.scope !33565, !noalias !33574, !noundef !14 ; 3 uses
  %i.nl = icmp ult i64 %i.nk, %.val46, !dbg !33577
  br i1 %i.nl, label %bb.dt, label %bb.dv, !dbg !33577

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.experimental.noalias.scope.decl(metadata !33578), !dbg !33581
  %i.nm = icmp samesign ult i16 %i.ni, 544, !dbg !33582
  br i1 %i.nm, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i, label %bb.du, !dbg !33582

bb.du:                                            ; preds = %bb.dt
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 1024) %i.nj, i64 noundef 544, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @287) #18, !dbg !33582, !noalias !33584
  unreachable, !dbg !33582

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.dt
  %i.nn = getelementptr inbounds nuw [2192 x i8], ptr %.val45, i64 %i.nk, !dbg !33585 ; 2 uses
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.nj, !dbg !33586 ; 2 uses
  %i.np = load i32, ptr %i.no, align 4, !dbg !33587, !alias.scope !33588, !noalias !33589, !noundef !14
  %i.nq = add i32 %i.np, 1, !dbg !33590
  store i32 %i.nq, ptr %i.no, align 4, !dbg !33592, !alias.scope !33588, !noalias !33589
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 2176, !dbg !33593 ; 2 uses
  %i.ns = load i64, ptr %i.nr, align 8, !dbg !33593, !alias.scope !33595, !noalias !33589, !noundef !14
  %i.nt = add i64 %i.ns, 1, !dbg !33598
  store i64 %i.nt, ptr %i.nr, align 8, !dbg !33600, !alias.scope !33602, !noalias !33589
  %i.nu = load i64, ptr %.sroa.9143.0..sroa_idx, align 8, !dbg !33605, !alias.scope !33565, !noalias !33574, !noundef !14
  %i.nv = add i64 %i.nu, 1, !dbg !33606           ; 2 uses
  store i64 %i.nv, ptr %.sroa.9143.0..sroa_idx, align 8, !dbg !33609, !alias.scope !33565, !noalias !33574
  %i.nw = load i64, ptr %.sroa.8142.0..sroa_idx, align 8, !dbg !33610, !alias.scope !33565, !noalias !33574, !noundef !14
  %i.nx = icmp eq i64 %i.nv, %i.nw, !dbg !33611
  br i1 %i.nx, label %bb.dw, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !33611

bb.dv:                                            ; preds = %bb.ds
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.nk, i64 noundef range(i64 0, 4207742717543238) %.val46, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @310) #18, !dbg !33577, !noalias !33612
  unreachable, !dbg !33577

bb.dw:                                            ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock24BlockSplitterFinishBlockNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ht, ptr noalias noundef nonnull align 8 %.val45, i64 noundef range(i64 0, 4207742717543238) %.val46, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hv, i1 noundef zeroext false), !dbg !33613
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !33613

bb.dx:                                            ; preds = %.lr.ph236
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 %i.mv, !dbg !33541
  %i.nz = load i8, ptr %i.ny, align 1, !dbg !33541, !noundef !14 ; 4 uses
  %i.oa = load i64, ptr %i.u, align 8, !dbg !33614, !range !5797, !noundef !14
  %i.ob = trunc nuw i64 %i.oa to i1, !dbg !33616
  br i1 %i.ob, label %bb.dz, label %bb.ee, !dbg !33616

bb.dy:                                            ; preds = %.lr.ph236
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.mv, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @368) #18, !dbg !33541
  unreachable, !dbg !33541

bb.dz:                                            ; preds = %bb.dx
  switch i8 %7, label %default.unreachable [
    i8 0, label %bb.ea
    i8 1, label %bb.eb
    i8 2, label %bb.ec
    i8 3, label %bb.ed
  ], !dbg !33617

default.unreachable:                              ; preds = %bb.dz
  unreachable

bb.ea:                                            ; preds = %bb.dz
  %i.oc = and i8 %.sroa.05.1234, 63, !dbg !33620
  br label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram7Context.exit, !dbg !33621

bb.eb:                                            ; preds = %bb.dz
  %i.od = lshr i8 %.sroa.05.1234, 2, !dbg !33622
  br label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram7Context.exit, !dbg !33623
end_hunk_0
