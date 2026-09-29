Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.10?download=true
inline.NumInlined: 2534
inline.NumDeleted: 536
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !dbg !12765, !noalias !11321
  store i64 %i.aze, ptr %i.ct, align 8, !dbg !12766, !alias.scope !11320, !noalias !11135
  %i.azi = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !12766
  store ptr %i.azh, ptr %i.azi, align 8, !dbg !12766, !alias.scope !11320, !noalias !11135
  %i.azj = getelementptr inbounds nuw i8, ptr %i.ct, i64 16, !dbg !12766
  store i64 %.sroa.014.1.i, ptr %i.azj, align 8, !dbg !12766, !alias.scope !11320, !noalias !11135
  %i.azk = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ct)
          to label %.noexc45 unwind label %bb.c, !dbg !12767 ; 2 uses

.noexc45:                                         ; preds = %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !dbg !12768, !noalias !11135
  %i.azl = extractvalue { ptr, i64 } %i.azk, 0, !dbg !12769 ; 6 uses
  %i.azm = extractvalue { ptr, i64 } %i.azk, 1, !dbg !12769 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.azl) ]
  %.not.i = icmp ugt i64 %.val92.i, %i.azm
  br i1 %.not.i, label %bb.ip, label %bb.iq, !dbg !12770, !prof !727

bb.ip:                                            ; preds = %.noexc45
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.val92.i, i64 noundef %i.azm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #20
          to label %bb.je unwind label %bb.jh, !dbg !12771, !noalias !11102

bb.iq:                                            ; preds = %.noexc45
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %i.azl, i64 noundef %.val92.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val91.i, i64 noundef %.val92.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102)
          to label %bb.ir unwind label %bb.jh, !dbg !12772, !noalias !11102

bb.ir:                                            ; preds = %bb.iq
  store ptr %i.azl, ptr %11, align 8, !dbg !12773, !alias.scope !11092, !noalias !11093
  store i64 %i.azm, ptr %i.ge, align 8, !dbg !12773, !alias.scope !11092, !noalias !11093
  br i1 %i.ayv, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit206.i, label %bb.is, !dbg !12774

bb.is:                                            ; preds = %bb.ir
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val91.i, i64 noundef range(i64 1, 0) %.val92.i, i64 noundef 1) #19, !dbg !12775, !noalias !11102
  br label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit206.i, !dbg !12776

bb.it:                                            ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit206.i
  %i.azn = icmp eq i64 %.val114.i, 0, !dbg !12777 ; 2 uses
  %spec.select79.i = select i1 %i.azn, i64 %i.gh, i64 %.val114.i, !dbg !12777
  br label %bb.iu, !dbg !12778

_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.jb, %bb.ja, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit206.i
  %.val115.i = phi ptr [ %i.bae, %bb.ja ], [ %i.bae, %bb.jb ], [ %.val113.i, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit206.i ]
  %.val116.i = phi i64 [ %i.baf, %bb.ja ], [ %i.baf, %bb.jb ], [ %.val114.i, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit206.i ] ; 2 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %11, i64 32, !dbg !12779
  store i64 1, ptr %i.azo, align 8, !dbg !12779, !alias.scope !11092, !noalias !11093
  %i.azp = icmp ult i64 %i.gg, %.val62.i, !dbg !12780
  br i1 %i.azp, label %bb.jc, label %.invoke, !dbg !12780

bb.iu:                                            ; preds = %bb.iu, %bb.it
  %.sroa.017.1.i = phi i64 [ %spec.select79.i, %bb.it ], [ %i.azr, %bb.iu ], !dbg !12754 ; 4 uses
  %i.azq = icmp ult i64 %.sroa.017.1.i, %i.gh, !dbg !12781
  %i.azr = shl i64 %.sroa.017.1.i, 1, !dbg !12782
  br i1 %i.azq, label %bb.iu, label %bb.iv, !dbg !12781

bb.iv:                                            ; preds = %bb.iu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !dbg !12783, !noalias !11135
  call void @llvm.experimental.noalias.scope.decl(metadata !11322), !dbg !12784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !dbg !12785, !noalias !11323
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cq, i64 noundef %.sroa.017.1.i, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc46 unwind label %bb.c, !dbg !12785

.noexc46:                                         ; preds = %bb.iv
  %i.azs = load i64, ptr %i.cq, align 8, !dbg !12785, !range !789, !noalias !11323, !noundef !664
  %i.azt = trunc nuw i64 %i.azs to i1, !dbg !12786
  %i.azu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !12787
  %i.azv = load i64, ptr %i.azu, align 8, !dbg !12787, !range !790, !noalias !11323, !noundef !664 ; 2 uses
  %i.azw = getelementptr inbounds nuw i8, ptr %i.cq, i64 16, !dbg !12787 ; 2 uses
  br i1 %i.azt, label %bb.iw, label %bb.ix, !dbg !12786, !prof !712

bb.iw:                                            ; preds = %.noexc46
  %i.azx = load i64, ptr %i.azw, align 8, !dbg !12788, !noalias !11323
  br label %.invoke3515, !dbg !12789

.invoke3515:                                      ; preds = %bb.in, %bb.iw
  %i.azy = phi i64 [ %i.azv, %bb.iw ], [ %i.aze, %bb.in ]
  %i.azz = phi i64 [ %i.azx, %bb.iw ], [ %i.azg, %bb.in ]
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.azy, i64 %i.azz) #20
          to label %.cont3516 unwind label %bb.c, !dbg !12754

.cont3516:                                        ; preds = %.invoke3515
  unreachable

bb.ix:                                            ; preds = %.noexc46
  %i.baa = load ptr, ptr %i.azw, align 8, !dbg !12790, !noalias !11323, !nonnull !664, !noundef !664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !dbg !12791, !noalias !11323
  store i64 %i.azv, ptr %i.cr, align 8, !dbg !12792, !alias.scope !11322, !noalias !11135
  %i.bab = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !12792
  store ptr %i.baa, ptr %i.bab, align 8, !dbg !12792, !alias.scope !11322, !noalias !11135
  %i.bac = getelementptr inbounds nuw i8, ptr %i.cr, i64 16, !dbg !12792
  store i64 %.sroa.017.1.i, ptr %i.bac, align 8, !dbg !12792, !alias.scope !11322, !noalias !11135
  %i.bad = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecmE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.cr)
          to label %.noexc48 unwind label %bb.c, !dbg !12793 ; 2 uses

.noexc48:                                         ; preds = %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !dbg !12794, !noalias !11135
  %i.bae = extractvalue { ptr, i64 } %i.bad, 0, !dbg !12795 ; 6 uses
  %i.baf = extractvalue { ptr, i64 } %i.bad, 1, !dbg !12795 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bae) ]
  %.not58.i = icmp ugt i64 %.val114.i, %i.baf
  br i1 %.not58.i, label %bb.iy, label %bb.iz, !dbg !12796, !prof !727

bb.iy:                                            ; preds = %.noexc48
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.val114.i, i64 noundef %i.baf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #20
          to label %bb.je unwind label %bb.jf, !dbg !12797, !noalias !11102

bb.iz:                                            ; preds = %.noexc48
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implmECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 4 %i.bae, i64 noundef %.val114.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val113.i, i64 noundef %.val114.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103)
          to label %bb.ja unwind label %bb.jf, !dbg !12798, !noalias !11102

bb.ja:                                            ; preds = %bb.iz
  store ptr %i.bae, ptr %i.ayw, align 8, !dbg !12799, !alias.scope !11092, !noalias !11093
  store i64 %i.baf, ptr %i.ayx, align 8, !dbg !12799, !alias.scope !11092, !noalias !11093
  br i1 %i.azn, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i, label %bb.jb, !dbg !12800

bb.jb:                                            ; preds = %bb.ja
  %i.bag = shl nuw nsw i64 %.val114.i, 2, !dbg !12801
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.val113.i, i64 noundef range(i64 1, 0) %i.bag, i64 noundef 4) #19, !dbg !12802, !noalias !11102
  br label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !12803

bb.jc:                                            ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i
  %i.bah = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.gg, !dbg !12780
  store i8 0, ptr %i.bah, align 1, !dbg !12780, !noalias !11102
  %i.bai = icmp ult i64 %i.gg, %.val116.i, !dbg !12804
  br i1 %i.bai, label %bb.jd, label %.invoke, !dbg !12804

bb.jd:                                            ; preds = %bb.jc
  %i.baj = getelementptr inbounds nuw [4 x i8], ptr %.val115.i, i64 %i.gg, !dbg !12804
  %i.bak = trunc nuw nsw i64 %.sroa.0.0.lcssa to i32, !dbg !12804
  store i32 %i.bak, ptr %i.baj, align 4, !dbg !12804, !noalias !11102
  store i64 %i.gh, ptr %i.gf, align 8, !dbg !12805, !alias.scope !11092, !noalias !11093
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter15SplitByteVectorNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllochECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !12806

.invoke:                                          ; preds = %bb.jc, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i
  %i.bal = phi i64 [ %.val62.i, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i ], [ %.val116.i, %bb.jc ]
  %i.bam = phi ptr [ @104, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i ], [ @105, %bb.jc ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gg, i64 noundef %i.bal, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bam) #18
          to label %.cont unwind label %bb.c, !dbg !12754

.cont:                                            ; preds = %.invoke
  unreachable

bb.je:                                            ; preds = %bb.iy, %bb.ip
  unreachable

bb.jf:                                            ; preds = %bb.iz, %bb.iy
  %i.ban = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bao = icmp eq i64 %i.baf, 0, !dbg !12807
  br i1 %i.bao, label %.body, label %bb.jg, !dbg !12807

bb.jg:                                            ; preds = %bb.jf
  %i.bap = shl nuw nsw i64 %i.baf, 2, !dbg !12808
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bae, i64 noundef range(i64 1, 0) %i.bap, i64 noundef 4) #19, !dbg !12809, !noalias !11102
  br label %.body, !dbg !12810

bb.jh:                                            ; preds = %bb.iq, %bb.ip
  %i.baq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bar = icmp eq i64 %i.azm, 0, !dbg !12811
  br i1 %i.bar, label %.body, label %bb.ji, !dbg !12811

bb.ji:                                            ; preds = %bb.jh
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.azl, i64 noundef range(i64 1, 0) %i.azm, i64 noundef 1) #19, !dbg !12812, !noalias !11102
  br label %.body, !dbg !12813

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter15SplitByteVectorNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllochECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.jd, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter13ClusterBlocksNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllochECsfISxE4fmY1Y_14polars_parquet.exit.i, %bb.f
  %i.bas = icmp eq i64 %i.fy, 0, !dbg !12814
  br i1 %i.bas, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.jj, !dbg !12814

bb.jj:                                            ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter15SplitByteVectorNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllochECsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fx, i64 noundef range(i64 1, 0) %i.fy, i64 noundef 1) #19, !dbg !12815
  br label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !12816

_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.jj, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter15SplitByteVectorNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllochECsfISxE4fmY1Y_14polars_parquet.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !dbg !12817
  call void @llvm.experimental.noalias.scope.decl(metadata !11330), !dbg !12818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !dbg !12819, !noalias !11330
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.co, i64 noundef %3, i1 noundef zeroext true, i64 noundef 2, i64 noundef 2), !dbg !12819, !noalias !11330
  %i.bat = load i64, ptr %i.co, align 8, !dbg !12819, !range !789, !noalias !11330, !noundef !664
  %i.bau = trunc nuw i64 %i.bat to i1, !dbg !12820
  %i.bav = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !12821
  %i.baw = load i64, ptr %i.bav, align 8, !dbg !12821, !range !790, !noalias !11330, !noundef !664 ; 2 uses
  %i.bax = getelementptr inbounds nuw i8, ptr %i.co, i64 16, !dbg !12821 ; 2 uses
  br i1 %i.bau, label %bb.jk, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatortE10alloc_cellCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !12820, !prof !712

bb.jk:                                            ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit
  %i.bay = load i64, ptr %i.bax, align 8, !dbg !12822, !noalias !11330
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.baw, i64 %i.bay) #20, !dbg !12823, !noalias !11330
  unreachable

_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatortE10alloc_cellCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit
  %i.baz = load ptr, ptr %i.bax, align 8, !dbg !12824, !noalias !11330, !nonnull !664, !noundef !664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !dbg !12825, !noalias !11330
  store i64 %i.baw, ptr %i.cp, align 8, !dbg !12826, !alias.scope !11330
  %i.bba = getelementptr inbounds nuw i8, ptr %i.cp, i64 8, !dbg !12826
  store ptr %i.baz, ptr %i.bba, align 8, !dbg !12826, !alias.scope !11330
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.cp, i64 16, !dbg !12826
  store i64 %3, ptr %i.bbb, align 8, !dbg !12826, !alias.scope !11330
  %i.bbc = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VectE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.cp), !dbg !12827 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !dbg !12828
  %i.bbd = extractvalue { ptr, i64 } %i.bbc, 0, !dbg !12829 ; 17 uses
  %i.bbe = extractvalue { ptr, i64 } %i.bbc, 1, !dbg !12829 ; 26 uses
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %2, i64 %3), !dbg !12830 ; 4 uses
  %.not1029 = icmp eq i64 %.sroa.0.0.i, 0, !dbg !12831
  br i1 %.not1029, label %._crit_edge1023, label %.lr.ph1022, !dbg !12832

.lr.ph1022:                                       ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatortE10alloc_cellCsfISxE4fmY1Y_14polars_parquet.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bbd) ]
  %i.bbf = add nsw i64 %.sroa.0.0.i, -1, !dbg !12832
  %i.bbg = call i64 @llvm.umin.i64(i64 %i.bbe, i64 %i.bbf), !dbg !12832
  %i.bbh = add i64 %i.bbg, 1, !dbg !12832         ; 3 uses
  %min.iters.check4590 = icmp ult i64 %i.bbh, 25, !dbg !12832
  br i1 %min.iters.check4590, label %scalar.ph4589.preheader, label %vector.memcheck4583, !dbg !12832

scalar.ph4589.preheader:                          ; preds = %vector.body4593, %vector.memcheck4583, %.lr.ph1022
  %.sroa.014.01021.ph = phi i64 [ 0, %vector.memcheck4583 ], [ 0, %.lr.ph1022 ], [ %n.vec4592, %vector.body4593 ]
  br label %scalar.ph4589, !dbg !12833

vector.memcheck4583:                              ; preds = %.lr.ph1022
  %14 = add nsw i64 %.sroa.0.0.i, -1, !dbg !12832
  %umin = call i64 @llvm.umin.i64(i64 %i.bbe, i64 %14), !dbg !12832 ; 2 uses
  %i.bbi = shl i64 %umin, 1, !dbg !12832
  %i.bbj = getelementptr i8, ptr %i.bbd, i64 %i.bbi, !dbg !12832
  %scevgep = getelementptr i8, ptr %i.bbj, i64 2, !dbg !12832
  %scevgep4584 = getelementptr i8, ptr %1, i64 12, !dbg !12832
  %i.bbk = shl i64 %umin, 4, !dbg !12832
  %i.bbl = getelementptr i8, ptr %1, i64 %i.bbk, !dbg !12832
  %scevgep4585 = getelementptr i8, ptr %i.bbl, i64 14, !dbg !12832
  %bound04586 = icmp ult ptr %i.bbd, %scevgep4585, !dbg !12832
  %bound14587 = icmp ult ptr %scevgep4584, %scevgep, !dbg !12832
  %found.conflict4588 = and i1 %bound04586, %bound14587, !dbg !12832
  br i1 %found.conflict4588, label %scalar.ph4589.preheader, label %vector.ph4591, !dbg !12834

vector.ph4591:                                    ; preds = %vector.memcheck4583
  %i.bbm = and i64 %i.bbh, 7                      ; 2 uses
  %i.bbn = icmp eq i64 %i.bbm, 0
  %i.bbo = select i1 %i.bbn, i64 8, i64 %i.bbm
  %n.vec4592 = sub i64 %i.bbh, %i.bbo             ; 2 uses
  br label %vector.body4593, !dbg !12834

vector.body4593:                                  ; preds = %vector.body4593, %vector.ph4591
  %index4594 = phi i64 [ 0, %vector.ph4591 ], [ %index.next4595, %vector.body4593 ], !dbg !12834 ; 10 uses
  %i.bbp = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index4594, !dbg !12835
  %i.bbq = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index4594, !dbg !12835
  %i.bbr = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index4594, !dbg !12835
  %i.bbs = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index4594, !dbg !12835
  %i.bbt = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index4594, !dbg !12835
  %i.bbu = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index4594, !dbg !12835
  %i.bbv = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index4594, !dbg !12835
  %i.bbw = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index4594, !dbg !12835
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbp, i64 12, !dbg !12835
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbq, i64 28, !dbg !12835
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bbr, i64 44, !dbg !12835
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbs, i64 60, !dbg !12835
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bbt, i64 76, !dbg !12835
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bbu, i64 92, !dbg !12835
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bbv, i64 108, !dbg !12835
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bbw, i64 124, !dbg !12835
  %i.bcf = load i16, ptr %i.bbx, align 4, !dbg !12835, !alias.scope !11342, !noundef !664
  %i.bcg = load i16, ptr %i.bby, align 4, !dbg !12835, !alias.scope !11342, !noundef !664
  %i.bch = load i16, ptr %i.bbz, align 4, !dbg !12835, !alias.scope !11342, !noundef !664
  %i.bci = load i16, ptr %i.bca, align 4, !dbg !12835, !alias.scope !11342, !noundef !664
  %i.bcj = load i16, ptr %i.bcb, align 4, !dbg !12835, !alias.scope !11342, !noundef !664
  %i.bck = load i16, ptr %i.bcc, align 4, !dbg !12835, !alias.scope !11342, !noundef !664
  %i.bcl = load i16, ptr %i.bcd, align 4, !dbg !12835, !alias.scope !11342, !noundef !664
  %i.bcm = load i16, ptr %i.bce, align 4, !dbg !12835, !alias.scope !11342, !noundef !664
  %i.bcn = insertelement <8 x i16> poison, i16 %i.bcf, i64 0
  %i.bco = insertelement <8 x i16> %i.bcn, i16 %i.bcg, i64 1
  %i.bcp = insertelement <8 x i16> %i.bco, i16 %i.bch, i64 2
  %i.bcq = insertelement <8 x i16> %i.bcp, i16 %i.bci, i64 3
  %i.bcr = insertelement <8 x i16> %i.bcq, i16 %i.bcj, i64 4
  %i.bcs = insertelement <8 x i16> %i.bcr, i16 %i.bck, i64 5
  %i.bct = insertelement <8 x i16> %i.bcs, i16 %i.bcl, i64 6
  %i.bcu = insertelement <8 x i16> %i.bct, i16 %i.bcm, i64 7
  %i.bcv = getelementptr inbounds nuw [2 x i8], ptr %i.bbd, i64 %index4594, !dbg !12833
  store <8 x i16> %i.bcu, ptr %i.bcv, align 2, !dbg !12833, !alias.scope !11343, !noalias !11342
  %index.next4595 = add nuw i64 %index4594, 8, !dbg !12834 ; 2 uses
  %i.bcw = icmp eq i64 %index.next4595, %n.vec4592, !dbg !12832
  br i1 %i.bcw, label %scalar.ph4589.preheader, label %vector.body4593, !dbg !12832, !llvm.loop !7918

bb.jl:                                            ; preds = %.invoke3519, %.invoke3517, %bb.tj, %bb.th, %bb.ta, %bb.sy, %bb.jp, %bb.aeq
  %i.bcx = landingpad { ptr, i32 }
          cleanup
  br label %.body352, !dbg !12836

._crit_edge1023:                                  ; preds = %bb.aep, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatortE10alloc_cellCsfISxE4fmY1Y_14polars_parquet.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bbd) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !11344), !dbg !12837
  call void @llvm.experimental.noalias.scope.decl(metadata !11345), !dbg !12837
  %i.bcy = udiv i64 %3, 530, !dbg !12838
  %i.bcz = call i64 @llvm.umin.i64(i64 %i.bcy, i64 49), !dbg !12839 ; 4 uses
  %spec.store.select.i52 = add nuw nsw i64 %i.bcz, 1, !dbg !12839 ; 13 uses
  br i1 %.not, label %bb.jm, label %bb.jn, !dbg !12840

bb.jm:                                            ; preds = %._crit_edge1023
  %i.bda = getelementptr inbounds nuw i8, ptr %12, i64 32, !dbg !12841
  store i64 1, ptr %i.bda, align 8, !dbg !12841, !alias.scope !11345, !noalias !11346
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter15SplitByteVectorNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAlloctECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !12842

bb.jn:                                            ; preds = %._crit_edge1023
  %i.bdb = icmp ult i64 %3, 128, !dbg !12843
  br i1 %i.bdb, label %bb.jo, label %bb.jp, !dbg !12843

bb.jo:                                            ; preds = %bb.jn
  %.val91.i336 = load ptr, ptr %12, align 8, !dbg !12844, !alias.scope !11345, !noalias !11346, !nonnull !664, !noundef !664 ; 3 uses
  %i.bdc = getelementptr inbounds nuw i8, ptr %12, i64 8, !dbg !12844 ; 2 uses
  %.val92.i337 = load i64, ptr %i.bdc, align 8, !dbg !12844, !alias.scope !11345, !noalias !11346, !noundef !664 ; 9 uses
  %i.bdd = getelementptr inbounds nuw i8, ptr %12, i64 40, !dbg !12845 ; 2 uses
  %i.bde = load i64, ptr %i.bdd, align 8, !dbg !12845, !alias.scope !11345, !noalias !11346, !noundef !664 ; 6 uses
  %i.bdf = add i64 %i.bde, 1, !dbg !12846         ; 7 uses
  %i.bdg = icmp ult i64 %.val92.i337, %i.bdf, !dbg !12847
  br i1 %i.bdg, label %bb.sw, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit212.i, !dbg !12847

.thread.i55:                                      ; preds = %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i78, %bb.jx, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter18RefineEntropyCodesNtNtB4_9histogram16HistogramCommandtECsfISxE4fmY1Y_14polars_parquet.exit.i, %.split35.us.i.invoke.i, %.invoke.i54
  %i.bdh = landingpad { ptr, i32 }
          cleanup
  br label %bb.su, !dbg !12848

bb.jp:                                            ; preds = %bb.jn
  %i.bdi = invoke fastcc { ptr, i64 } @_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramCommandE10alloc_cellCsfISxE4fmY1Y_14polars_parquet(i64 noundef %spec.store.select.i52)
          to label %.noexc351 unwind label %bb.jl, !dbg !12849 ; 2 uses

.noexc351:                                        ; preds = %bb.jp
  %i.bdj = extractvalue { ptr, i64 } %i.bdi, 0, !dbg !12849 ; 13 uses
  %i.bdk = extractvalue { ptr, i64 } %i.bdi, 1, !dbg !12849 ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bdj) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !11347), !dbg !12850
  call void @llvm.experimental.noalias.scope.decl(metadata !11348), !dbg !12850
  %i.bdl = udiv i64 %3, %spec.store.select.i52, !dbg !12851
  %.not.i.i.not.i53 = icmp ult i64 %i.bcz, %i.bdk
  br i1 %.not.i.i.not.i53, label %bb.jq, label %.invoke.i54, !dbg !12852, !prof !794

bb.jq:                                            ; preds = %.noexc351
  %.idx.i.i.i59 = mul nuw nsw i64 %spec.store.select.i52, 2832, !dbg !12853
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdj, i64 %.idx.i.i.i59, !dbg !12853
  %xtraiter5529 = and i64 %spec.store.select.i52, 7, !dbg !12854 ; 2 uses
  %lcmp.mod5530.not = icmp eq i64 %xtraiter5529, 0, !dbg !12854
  br i1 %lcmp.mod5530.not, label %.lr.ph.i.i.i60.prol.loopexit, label %.lr.ph.i.i.i60.prol, !dbg !12854

.lr.ph.i.i.i60.prol:                              ; preds = %bb.jq, %.lr.ph.i.i.i60.prol
  %.sroa.02.06.i.i.i61.prol = phi ptr [ %i.bdn, %.lr.ph.i.i.i60.prol ], [ %i.bdj, %bb.jq ] ; 3 uses
  %prol.iter5531 = phi i64 [ %prol.iter5531.next, %.lr.ph.i.i.i60.prol ], [ 0, %bb.jq ]
  %i.bdn = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61.prol, i64 2832, !dbg !12855 ; 2 uses
  %i.bdo = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61.prol, i64 2824, !dbg !12856
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.06.i.i.i61.prol, i8 0, i64 2824, i1 false), !dbg !12857, !alias.scope !11350, !noalias !11351
  store float 3.402000e+38, ptr %i.bdo, align 8, !dbg !12856, !alias.scope !11352, !noalias !11351
  %prol.iter5531.next = add i64 %prol.iter5531, 1, !dbg !12854 ; 2 uses
  %prol.iter5531.cmp.not = icmp eq i64 %prol.iter5531.next, %xtraiter5529, !dbg !12854
  br i1 %prol.iter5531.cmp.not, label %.lr.ph.i.i.i60.prol.loopexit, label %.lr.ph.i.i.i60.prol, !dbg !12854, !llvm.loop !7979

.lr.ph.i.i.i60.prol.loopexit:                     ; preds = %.lr.ph.i.i.i60.prol, %bb.jq
  %.sroa.02.06.i.i.i61.unr = phi ptr [ %i.bdj, %bb.jq ], [ %i.bdn, %.lr.ph.i.i.i60.prol ]
  %i.bdp = icmp ult i64 %3, 3710, !dbg !12854
  br i1 %i.bdp, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i, label %.lr.ph.i.i.i60, !dbg !12854

.invoke.i54:                                      ; preds = %bb.jt, %bb.jr, %bb.jv, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i, %.noexc351
  %i.bdq = phi i64 [ 0, %bb.jv ], [ 0, %.noexc351 ], [ %i.bgg, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ 0, %bb.jt ], [ %spec.select.i.i66, %bb.jr ]
  %i.bdr = phi i64 [ 40, %bb.jv ], [ %spec.store.select.i52, %.noexc351 ], [ %i.bbe, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ 40, %bb.jt ], [ %i.bbe, %bb.jr ]
  %i.bds = phi i64 [ %i.bgi, %bb.jv ], [ %i.bdk, %.noexc351 ], [ %i.bbe, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.bey, %bb.jt ], [ %i.bbe, %bb.jr ]
  %i.bdt = phi ptr [ @289, %bb.jv ], [ @286, %.noexc351 ], [ @63, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram14HistogramClearNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ @289, %bb.jt ], [ @112, %bb.jr ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bdq, i64 noundef %i.bdr, i64 noundef range(i64 0, 4611686018427387904) %i.bds, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bdt) #18
          to label %.cont.i58 unwind label %.thread.i55, !dbg !12858, !noalias !11353

.cont.i58:                                        ; preds = %.invoke.i54
  unreachable

.lr.ph.i.i.i60:                                   ; preds = %.lr.ph.i.i.i60.prol.loopexit, %.lr.ph.i.i.i60
  %.sroa.02.06.i.i.i61 = phi ptr [ %i.bei, %.lr.ph.i.i.i60 ], [ %.sroa.02.06.i.i.i61.unr, %.lr.ph.i.i.i60.prol.loopexit ] ; 17 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 2832, !dbg !12855
  %i.bdv = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 2824, !dbg !12856
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.06.i.i.i61, i8 0, i64 2824, i1 false), !dbg !12857, !alias.scope !11350, !noalias !11351
  store float 3.402000e+38, ptr %i.bdv, align 8, !dbg !12856, !alias.scope !11352, !noalias !11351
  %i.bdw = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 5664, !dbg !12855
  %i.bdx = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 5656, !dbg !12856
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bdu, i8 0, i64 2824, i1 false), !dbg !12857, !alias.scope !11350, !noalias !11351
  store float 3.402000e+38, ptr %i.bdx, align 8, !dbg !12856, !alias.scope !11352, !noalias !11351
  %i.bdy = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 8496, !dbg !12855
  %i.bdz = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 8488, !dbg !12856
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bdw, i8 0, i64 2824, i1 false), !dbg !12857, !alias.scope !11350, !noalias !11351
  store float 3.402000e+38, ptr %i.bdz, align 8, !dbg !12856, !alias.scope !11352, !noalias !11351
  %i.bea = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 11328, !dbg !12855
  %i.beb = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 11320, !dbg !12856
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bdy, i8 0, i64 2824, i1 false), !dbg !12857, !alias.scope !11350, !noalias !11351
  store float 3.402000e+38, ptr %i.beb, align 8, !dbg !12856, !alias.scope !11352, !noalias !11351
  %i.bec = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 14160, !dbg !12855
  %i.bed = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 14152, !dbg !12856
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bea, i8 0, i64 2824, i1 false), !dbg !12857, !alias.scope !11350, !noalias !11351
  store float 3.402000e+38, ptr %i.bed, align 8, !dbg !12856, !alias.scope !11352, !noalias !11351
  %i.bee = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 16992, !dbg !12855
  %i.bef = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 16984, !dbg !12856
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bec, i8 0, i64 2824, i1 false), !dbg !12857, !alias.scope !11350, !noalias !11351
  store float 3.402000e+38, ptr %i.bef, align 8, !dbg !12856, !alias.scope !11352, !noalias !11351
  %i.beg = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 19824, !dbg !12855
  %i.beh = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 19816, !dbg !12856
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bee, i8 0, i64 2824, i1 false), !dbg !12857, !alias.scope !11350, !noalias !11351
  store float 3.402000e+38, ptr %i.beh, align 8, !dbg !12856, !alias.scope !11352, !noalias !11351
  %i.bei = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 22656, !dbg !12855 ; 2 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i61, i64 22648, !dbg !12856
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.beg, i8 0, i64 2824, i1 false), !dbg !12857, !alias.scope !11350, !noalias !11351
  store float 3.402000e+38, ptr %i.bej, align 8, !dbg !12856, !alias.scope !11352, !noalias !11351
  %i.bek = icmp eq ptr %i.bei, %i.bdm, !dbg !12859
  br i1 %i.bek, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i, label %.lr.ph.i.i.i60, !dbg !12854

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i: ; preds = %.lr.ph.i.i.i60, %.lr.ph.i.i.i60.prol.loopexit
  %i.bel = add i64 %3, -41
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i: ; preds = %bb.ju
  %exitcond.not.i.i71 = icmp eq i64 %.sroa.010.027.i.i, %i.bcz, !dbg !12860
  br i1 %exitcond.not.i.i71, label %.split.i72, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i, !dbg !12861

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i: ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i
  %.sroa.0.028.i.i = phi i32 [ %.sroa.0.1.i.i64, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i ], [ 7, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i ] ; 3 uses
  %.sroa.010.027.i.i = phi i64 [ %i.bem, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i.i ], [ 0, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.i.i ] ; 5 uses
  %i.bem = add nuw nsw i64 %.sroa.010.027.i.i, 1, !dbg !12862
  %i.ben = mul i64 %.sroa.010.027.i.i, %3, !dbg !12863
  %i.beo = udiv i64 %i.ben, %spec.store.select.i52, !dbg !12864 ; 2 uses
  %i.bep = icmp eq i64 %.sroa.010.027.i.i, 0, !dbg !12865
  br i1 %i.bep, label %bb.jr, label %bb.js, !dbg !12865

bb.jr:                                            ; preds = %bb.js, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i
  %.sroa.04.0.i.i63 = phi i64 [ %i.beo, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i ], [ %i.bew, %bb.js ], !dbg !12866 ; 2 uses
  %.sroa.0.1.i.i64 = phi i32 [ %.sroa.0.028.i.i, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.preheader.split.split.i.i ], [ %spec.store.select.i.i62, %bb.js ], !dbg !12867
  %i.beq = add i64 %.sroa.04.0.i.i63, 40, !dbg !12868
  %.not.i.i65 = icmp ult i64 %i.beq, %3, !dbg !12869
  %spec.select.i.i66 = select i1 %.not.i.i65, i64 %.sroa.04.0.i.i63, i64 %i.bel, !dbg !12869 ; 4 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12LogMetaBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocNCNvMs2_NtB4_6writerINtB25_24CompressorWriterCustomIoNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorINtNtCsjPfRcqrlXv6_19brotli_decompressor11io_wrappers12IntoIoWriterQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEINtNtB16_10heap_alloc7WrapBoxhEB12_E14flush_or_close0ECsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 14 uses
  %i.o = alloca [376 x i8], align 8               ; 5 uses
  %i.p = alloca [192 x i8], align 8               ; 5 uses
  %i.q = alloca [920 x i8], align 8               ; 5 uses
  %i.r = alloca [1656 x i8], align 8              ; 27 uses
  %i.s = alloca [48 x i8], align 8                ; 2 uses
  %i.t = alloca [48 x i8], align 8                ; 4 uses
  %i.u = alloca [296 x i8], align 8               ; 14 uses
  %i.v = alloca [48 x i8], align 8                ; 4 uses
  %i.w = alloca [920 x i8], align 8               ; 18 uses
  %i.x = alloca [240 x i8], align 8               ; 9 uses
  %i.y = alloca [376 x i8], align 8               ; 4 uses
  %i.z = alloca [192 x i8], align 8               ; 4 uses
  %i.aa = alloca [376 x i8], align 8              ; 4 uses
  %i.ab = alloca [192 x i8], align 8              ; 4 uses
  %i.ac = alloca [376 x i8], align 8              ; 9 uses
  %i.ad = alloca [192 x i8], align 8              ; 7 uses
  %i.ae = alloca [48 x i8], align 8               ; 11 uses
  %i.af = alloca [4 x i8], align 4                ; 2 uses
  %i.ag = alloca [4 x i8], align 4                ; 2 uses
  %i.ah = alloca [4 x i8], align 4                ; 2 uses
  %i.ai = alloca [24592 x i8], align 1            ; 10 uses
  %i.aj = alloca [16384 x i8], align 1            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !15207
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16384) %i.aj, i8 0, i64 16384, i1 false), !dbg !15208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !15209
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24592) %i.ai, i8 0, i64 24592, i1 false), !dbg !15210
  %i.ak = load ptr, ptr %9, align 8, !dbg !15211, !nonnull !664, !noundef !664 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8, !dbg !15211
  %i.am = load i64, ptr %i.al, align 8, !dbg !15211, !noundef !664 ; 3 uses
  %i.an = icmp samesign eq i64 %i.am, 0, !dbg !15212
  br i1 %i.an, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.b, !dbg !15213

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 1, !dbg !15214
  %i.ap = icmp samesign eq i64 %i.am, 1, !dbg !15215
  br i1 %i.ap, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit, label %.preheader75, !dbg !15216

.preheader75:                                     ; preds = %bb.b
  %i.aq = add i64 %i.am, -2
  br label %bb.c, !dbg !15217

bb.c:                                             ; preds = %.preheader75, %bb.c
  %.sroa.04.0.i.i = phi i64 [ %i.au, %bb.c ], [ 0, %.preheader75 ], !dbg !15218 ; 3 uses
  %.sroa.02.0.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %bb.c ], [ %i.ak, %.preheader75 ], !dbg !15219 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.04.0.i.i, !dbg !15220 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !15138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !15138
  store ptr %.sroa.02.0.i.i, ptr %i.m, align 8, !noalias !15139
  store ptr %i.ar, ptr %i.l, align 8, !noalias !15139
  %i.as = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNvYRhNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRBR_B1q_EE9call_onceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !dbg !15221
  %i.at = icmp sgt i8 %i.as, 0, !dbg !15222
  %.sroa.0.0.i.i.i.i = select i1 %i.at, ptr %.sroa.02.0.i.i, ptr %i.ar, !dbg !15221 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !15223, !noalias !15138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !15223, !noalias !15138
  %i.au = add nuw i64 %.sroa.04.0.i.i, 1, !dbg !15224
  %i.av = icmp eq i64 %.sroa.04.0.i.i, %i.aq, !dbg !15217
  br i1 %i.av, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.c, !dbg !15217

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.ak, %bb.b ], [ %.sroa.0.0.i.i.i.i, %bb.c ], !dbg !15225 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i, null, !dbg !15226
  %. = select i1 %.not, ptr @116, ptr %.sroa.0.0.i, !dbg !15227
  %i.aw = load i8, ptr %., align 1, !dbg !15228, !noundef !664
  %i.ax = zext i8 %i.aw to i32, !dbg !15228
  %i.ay = add nuw nsw i32 %i.ax, 1, !dbg !15228   ; 2 uses
  store i32 %i.ay, ptr %i.ah, align 4, !dbg !15228
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 32, !dbg !15229 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !dbg !15230, !noundef !664
  %i.bb = icmp eq i32 %i.ay, %i.ba, !dbg !15230
  br i1 %i.bb, label %bb.e, label %bb.d, !dbg !15230, !prof !724

bb.d:                                             ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedmmECsh8eZTKRCwoO_3std(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ah, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.az, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #18, !dbg !15231
  unreachable, !dbg !15231

bb.e:                                             ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 56, !dbg !15232
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !15232, !nonnull !664, !noundef !664 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 64, !dbg !15232
  %i.bf = load i64, ptr %i.be, align 8, !dbg !15232, !noundef !664 ; 3 uses
  %i.bg = icmp samesign eq i64 %i.bf, 0, !dbg !15233
  br i1 %i.bg, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit155, label %bb.f, !dbg !15234

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 1, !dbg !15235
  %i.bi = icmp samesign eq i64 %i.bf, 1, !dbg !15236
  br i1 %i.bi, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit155, label %.preheader74, !dbg !15237

.preheader74:                                     ; preds = %bb.f
  %i.bj = add i64 %i.bf, -2
  br label %bb.g, !dbg !15238

bb.g:                                             ; preds = %.preheader74, %bb.g
  %.sroa.04.0.i.i151 = phi i64 [ %i.bn, %bb.g ], [ 0, %.preheader74 ], !dbg !15239 ; 3 uses
  %.sroa.02.0.i.i152 = phi ptr [ %.sroa.0.0.i.i.i.i153, %bb.g ], [ %i.bd, %.preheader74 ], !dbg !15240 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.04.0.i.i151, !dbg !15241 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !15146
  store ptr %.sroa.02.0.i.i152, ptr %i.k, align 8, !noalias !15147
  store ptr %i.bk, ptr %i.j, align 8, !noalias !15147
  %i.bl = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNvYRhNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRBR_B1q_EE9call_onceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j), !dbg !15242
  %i.bm = icmp sgt i8 %i.bl, 0, !dbg !15243
  %.sroa.0.0.i.i.i.i153 = select i1 %i.bm, ptr %.sroa.02.0.i.i152, ptr %i.bk, !dbg !15242 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !15244, !noalias !15146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !15244, !noalias !15146
  %i.bn = add nuw i64 %.sroa.04.0.i.i151, 1, !dbg !15245
  %i.bo = icmp eq i64 %.sroa.04.0.i.i151, %i.bj, !dbg !15238
  br i1 %i.bo, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit155, label %bb.g, !dbg !15238

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit155: ; preds = %bb.g, %bb.e, %bb.f
  %.sroa.0.0.i154 = phi ptr [ null, %bb.e ], [ %i.bd, %bb.f ], [ %.sroa.0.0.i.i.i.i153, %bb.g ], !dbg !15246 ; 2 uses
  %.not115 = icmp eq ptr %.sroa.0.0.i154, null, !dbg !15247
  %.127 = select i1 %.not115, ptr @116, ptr %.sroa.0.0.i154, !dbg !15248
  %i.bp = load i8, ptr %.127, align 1, !dbg !15249, !noundef !664
  %i.bq = zext i8 %i.bp to i32, !dbg !15249
  %i.br = add nuw nsw i32 %i.bq, 1, !dbg !15249   ; 2 uses
  store i32 %i.br, ptr %i.ag, align 4, !dbg !15249
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 88, !dbg !15250 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !dbg !15251, !noundef !664
  %i.bu = icmp eq i32 %i.br, %i.bt, !dbg !15251
  br i1 %i.bu, label %bb.i, label %bb.h, !dbg !15251, !prof !724

bb.h:                                             ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit155
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedmmECsh8eZTKRCwoO_3std(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ag, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bs, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #18, !dbg !15252
  unreachable, !dbg !15252

bb.i:                                             ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit155
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 96, !dbg !15253
  %i.bw = load ptr, ptr %i.bv, align 8, !dbg !15253, !nonnull !664, !noundef !664 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 104, !dbg !15253
  %i.by = load i64, ptr %i.bx, align 8, !dbg !15253, !noundef !664 ; 3 uses
  %i.bz = icmp samesign eq i64 %i.by, 0, !dbg !15254
  br i1 %i.bz, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit160, label %bb.j, !dbg !15255

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 1, !dbg !15256
  %i.cb = icmp samesign eq i64 %i.by, 1, !dbg !15257
  br i1 %i.cb, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit160, label %.preheader, !dbg !15258

.preheader:                                       ; preds = %bb.j
  %i.cc = add i64 %i.by, -2
  br label %bb.k, !dbg !15259

bb.k:                                             ; preds = %.preheader, %bb.k
  %.sroa.04.0.i.i156 = phi i64 [ %i.cg, %bb.k ], [ 0, %.preheader ], !dbg !15260 ; 3 uses
  %.sroa.02.0.i.i157 = phi ptr [ %.sroa.0.0.i.i.i.i158, %bb.k ], [ %i.bw, %.preheader ], !dbg !15261 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.04.0.i.i156, !dbg !15262 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15154
  store ptr %.sroa.02.0.i.i157, ptr %i.i, align 8, !noalias !15155
  store ptr %i.cd, ptr %i.h, align 8, !noalias !15155
  %i.ce = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNvYRhNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRBR_B1q_EE9call_onceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h), !dbg !15263
  %i.cf = icmp sgt i8 %i.ce, 0, !dbg !15264
  %.sroa.0.0.i.i.i.i158 = select i1 %i.cf, ptr %.sroa.02.0.i.i157, ptr %i.cd, !dbg !15263 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !15265, !noalias !15154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15265, !noalias !15154
  %i.cg = add nuw i64 %.sroa.04.0.i.i156, 1, !dbg !15266
  %i.ch = icmp eq i64 %.sroa.04.0.i.i156, %i.cc, !dbg !15259
  br i1 %i.ch, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit160, label %bb.k, !dbg !15259

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit160: ; preds = %bb.k, %bb.i, %bb.j
  %.sroa.0.0.i159 = phi ptr [ null, %bb.i ], [ %i.bw, %bb.j ], [ %.sroa.0.0.i.i.i.i158, %bb.k ], !dbg !15267 ; 2 uses
  %.not116 = icmp eq ptr %.sroa.0.0.i159, null, !dbg !15268
  %.128 = select i1 %.not116, ptr @116, ptr %.sroa.0.0.i159, !dbg !15269
  %i.ci = load i8, ptr %.128, align 1, !dbg !15270, !noundef !664
  %i.cj = zext i8 %i.ci to i32, !dbg !15270
  %i.ck = add nuw nsw i32 %i.cj, 1, !dbg !15270   ; 2 uses
  store i32 %i.ck, ptr %i.af, align 4, !dbg !15270
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 128, !dbg !15271 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !dbg !15272, !noundef !664
  %i.cn = icmp eq i32 %i.ck, %i.cm, !dbg !15272
  br i1 %i.cn, label %bb.m, label %bb.l, !dbg !15272, !prof !724

bb.l:                                             ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit160
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedmmECsh8eZTKRCwoO_3std(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.af, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.cl, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #18, !dbg !15273
  unreachable, !dbg !15273

bb.m:                                             ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit160
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 48, !dbg !15274
  %i.cp = load i64, ptr %i.co, align 8, !dbg !15274, !noundef !664 ; 5 uses
  %i.cq = icmp ult i64 %i.cp, 16385, !dbg !15274
  br i1 %i.cq, label %bb.n, label %.loopexit73, !dbg !15274

.loopexit73:                                      ; preds = %.lr.ph.preheader, %middle.block, %bb.n, %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 144, !dbg !15275
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !15275, !noundef !664 ; 4 uses
  %i.ct = icmp ult i64 %i.cs, 16385, !dbg !15275
  br i1 %i.ct, label %bb.r, label %.loopexit, !dbg !15275

bb.n:                                             ; preds = %bb.m
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 40, !dbg !15274
  %i.cv = load ptr, ptr %i.cu, align 8, !dbg !15274, !nonnull !664, !align !741, !noundef !664 ; 6 uses
  %.idx = shl nuw nsw i64 %i.cp, 2, !dbg !15276   ; 3 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 %.idx, !dbg !15276 ; 2 uses
  %i.cx = icmp eq i64 %i.cp, 0, !dbg !15277
  br i1 %i.cx, label %.loopexit73, label %.lr.ph.preheader.preheader, !dbg !15278

.lr.ph.preheader.preheader:                       ; preds = %bb.n
  %i.cy = add nsw i64 %.idx, -4, !dbg !15278      ; 2 uses
  %i.cz = lshr exact i64 %i.cy, 2, !dbg !15278
  %i.da = add nuw nsw i64 %i.cz, 1, !dbg !15278   ; 2 uses
  %min.iters.check = icmp ult i64 %i.cy, 60, !dbg !15278
  br i1 %min.iters.check, label %.lr.ph.preheader.preheader133, label %vector.memcheck, !dbg !15278

vector.memcheck:                                  ; preds = %.lr.ph.preheader.preheader
  %12 = add nsw i64 %.idx, -4, !dbg !15278
  %i.db = lshr exact i64 %12, 2, !dbg !15278
  %i.dc = getelementptr i8, ptr %i.aj, i64 %i.db, !dbg !15278
  %scevgep = getelementptr i8, ptr %i.dc, i64 1, !dbg !15278
  %bound0 = icmp ult ptr %i.aj, %i.cw, !dbg !15278
  %bound1 = icmp ult ptr %i.cv, %scevgep, !dbg !15278
  %found.conflict = and i1 %bound0, %bound1, !dbg !15278
  br i1 %found.conflict, label %.lr.ph.preheader.preheader133, label %vector.ph, !dbg !15279

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.da, 9223372036854775800     ; 4 uses
  %i.dd = shl i64 %n.vec, 2
  %i.de = getelementptr i8, ptr %i.cv, i64 %i.dd
  br label %vector.body, !dbg !15279

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !15279 ; 3 uses
  %i.df = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cv, i64 %i.df ; 2 uses
  %i.dg = getelementptr i8, ptr %next.gep, i64 16, !dbg !15280
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !15280, !alias.scope !15164
  %wide.load110 = load <4 x i32>, ptr %i.dg, align 4, !dbg !15280, !alias.scope !15164
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index, !dbg !15281 ; 2 uses
  %i.di = trunc <4 x i32> %wide.load to <4 x i8>, !dbg !15281
  %i.dj = trunc <4 x i32> %wide.load110 to <4 x i8>, !dbg !15281
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 4, !dbg !15281
  store <4 x i8> %i.di, ptr %i.dh, align 1, !dbg !15281, !alias.scope !15165, !noalias !15164
  store <4 x i8> %i.dj, ptr %i.dk, align 1, !dbg !15281, !alias.scope !15165, !noalias !15164
  %index.next = add nuw i64 %index, 8, !dbg !15279 ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec, !dbg !15278
  br i1 %i.dl, label %middle.block, label %vector.body, !dbg !15278, !llvm.loop !14957

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec, !dbg !15278
  br i1 %cmp.n, label %.loopexit73, label %.lr.ph.preheader.preheader133, !dbg !15278

.lr.ph.preheader.preheader133:                    ; preds = %vector.memcheck, %.lr.ph.preheader.preheader, %middle.block
  %.sroa.0.078.ph = phi ptr [ %i.cv, %vector.memcheck ], [ %i.cv, %.lr.ph.preheader.preheader ], [ %i.de, %middle.block ]
  %.sroa.7.077.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.preheader, !dbg !15278

.loopexit:                                        ; preds = %.lr.ph81.preheader, %middle.block128, %bb.r, %.loopexit73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !15282
  %.not.i = icmp ugt i64 %i.cp, 16384, !dbg !15283
  br i1 %.not.i, label %bb.o, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !15283, !prof !712

bb.o:                                             ; preds = %.loopexit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #18, !dbg !15284, !noalias !15166
  unreachable, !dbg !15284

_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %.loopexit
  %i.dm = add i64 %i.cs, 8208, !dbg !15285        ; 5 uses
  %.not.i162 = icmp ugt i64 %i.dm, 24592, !dbg !15286
  br i1 %.not.i162, label %bb.p, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit166, !dbg !15286, !prof !712

bb.p:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #18, !dbg !15287, !noalias !15167
  unreachable, !dbg !15287

_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit166: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit
  store ptr %i.aj, ptr %i.ae, align 8, !dbg !15288
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !15288
  store i64 %i.cp, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !15288
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !15288
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !15288
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ae, i64 24, !dbg !15288 ; 3 uses
  store ptr %i.ai, ptr %i.dn, align 8, !dbg !15288
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32, !dbg !15288 ; 3 uses
  store i64 %i.dm, ptr %.sroa.428.0..sroa_idx, align 8, !dbg !15288
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40, !dbg !15288
  store i64 0, ptr %.sroa.529.0..sroa_idx, align 8, !dbg !15288
  %i.do = icmp samesign ugt i64 %i.dm, 8195, !dbg !15289
  br i1 %i.do, label %_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE21get_mixing_values_mutCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.q, !dbg !15289, !prof !724

bb.q:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit166
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef 8196, i64 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @435) #18, !dbg !15290
  unreachable, !dbg !15290

_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE21get_mixing_values_mutCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit166
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ai, i64 4, !dbg !15291
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %i.dp, i8 4, i64 8192, i1 false), !dbg !15292
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 8, !dbg !15293
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !15293
  call fastcc void @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE24set_stride_context_speedCsfISxE4fmY1Y_14polars_parquet(ptr nonnull %i.ai, i64 %i.dm, i64 noundef %i.dr) #23, !dbg !15294
  %i.ds = load i64, ptr %10, align 8, !dbg !15295 ; 2 uses
  %.val143 = load ptr, ptr %i.dn, align 8, !dbg !15296, !nonnull !664, !noundef !664
  %.val144 = load i64, ptr %.sroa.428.0..sroa_idx, align 8, !dbg !15296, !noundef !664
  call fastcc void @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE21set_context_map_speedCsfISxE4fmY1Y_14polars_parquet(ptr nonnull %.val143, i64 %.val144, i64 noundef %i.ds) #23, !dbg !15296
  %.val147 = load ptr, ptr %i.dn, align 8, !dbg !15297, !nonnull !664, !noundef !664
  %.val148 = load i64, ptr %.sroa.428.0..sroa_idx, align 8, !dbg !15297, !noundef !664
  call fastcc void @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE33set_combined_stride_context_speedCsfISxE4fmY1Y_14polars_parquet(ptr nonnull %.val147, i64 %.val148, i64 noundef %i.ds) #23, !dbg !15297
  %.not119 = icmp eq i8 %11, 4, !dbg !15298
  %.129 = select i1 %.not119, i8 0, i8 %11, !dbg !15299
  call void @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE27set_literal_prediction_modeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae, i8 noundef %.129), !dbg !15300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !15301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !15302
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 92, !dbg !15303
  %i.du = load i8, ptr %i.dt, align 4, !dbg !15303, !noundef !664 ; 3 uses
  %.off = add i8 %i.du, -1, !dbg !15303
  %switch = icmp ult i8 %.off, 2, !dbg !15303
  br i1 %switch, label %bb.s, label %bb.t, !dbg !15303

bb.r:                                             ; preds = %.loopexit73
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 136, !dbg !15275
  %i.dw = load ptr, ptr %i.dv, align 8, !dbg !15275, !nonnull !664, !align !741, !noundef !664 ; 6 uses
  %.idx83 = shl nuw nsw i64 %i.cs, 2, !dbg !15304 ; 3 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 %.idx83, !dbg !15304 ; 2 uses
  %i.dy = icmp eq i64 %i.cs, 0, !dbg !15305
  br i1 %i.dy, label %.loopexit, label %.lr.ph81.preheader.preheader, !dbg !15306

.lr.ph81.preheader.preheader:                     ; preds = %bb.r
  %i.dz = add nsw i64 %.idx83, -4, !dbg !15306    ; 2 uses
  %i.ea = lshr exact i64 %i.dz, 2, !dbg !15306
  %i.eb = add nuw nsw i64 %i.ea, 1, !dbg !15306   ; 2 uses
  %min.iters.check119 = icmp ult i64 %i.dz, 60, !dbg !15306
  br i1 %min.iters.check119, label %.lr.ph81.preheader.preheader132, label %vector.memcheck112, !dbg !15306

vector.memcheck112:                               ; preds = %.lr.ph81.preheader.preheader
  %scevgep113 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8208, !dbg !15306
  %13 = add nsw i64 %.idx83, -4, !dbg !15306
  %i.ec = lshr exact i64 %13, 2, !dbg !15306
  %i.ed = getelementptr i8, ptr %i.ai, i64 %i.ec, !dbg !15306
  %scevgep114 = getelementptr i8, ptr %i.ed, i64 8209, !dbg !15306
  %bound0115 = icmp ult ptr %scevgep113, %i.dx, !dbg !15306
  %bound1116 = icmp ult ptr %i.dw, %scevgep114, !dbg !15306
  %found.conflict117 = and i1 %bound0115, %bound1116, !dbg !15306
  br i1 %found.conflict117, label %.lr.ph81.preheader.preheader132, label %vector.ph120, !dbg !15307

vector.ph120:                                     ; preds = %vector.memcheck112
  %n.vec121 = and i64 %i.eb, 9223372036854775800  ; 4 uses
  %i.ee = shl i64 %n.vec121, 2
  %i.ef = getelementptr i8, ptr %i.dw, i64 %i.ee
  br label %vector.body122, !dbg !15307

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body122 ], !dbg !15307 ; 3 uses
  %i.eg = shl i64 %index123, 2
  %next.gep124 = getelementptr i8, ptr %i.dw, i64 %i.eg ; 2 uses
  %i.eh = getelementptr i8, ptr %next.gep124, i64 16, !dbg !15308
  %wide.load125 = load <4 x i32>, ptr %next.gep124, align 4, !dbg !15308, !alias.scope !15174
  %wide.load126 = load <4 x i32>, ptr %i.eh, align 4, !dbg !15308, !alias.scope !15174
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index123, !dbg !15309 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8208, !dbg !15309
  %i.ek = trunc <4 x i32> %wide.load125 to <4 x i8>, !dbg !15309
  %i.el = trunc <4 x i32> %wide.load126 to <4 x i8>, !dbg !15309
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 8212, !dbg !15309
  store <4 x i8> %i.ek, ptr %i.ej, align 1, !dbg !15309, !alias.scope !15175, !noalias !15174
  store <4 x i8> %i.el, ptr %i.em, align 1, !dbg !15309, !alias.scope !15175, !noalias !15174
  %index.next127 = add nuw i64 %index123, 8, !dbg !15307 ; 2 uses
  %i.en = icmp eq i64 %index.next127, %n.vec121, !dbg !15306
  br i1 %i.en, label %middle.block128, label %vector.body122, !dbg !15306, !llvm.loop !14989

middle.block128:                                  ; preds = %vector.body122
  %cmp.n129 = icmp eq i64 %i.eb, %n.vec121, !dbg !15306
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph81.preheader.preheader132, !dbg !15306

.lr.ph81.preheader.preheader132:                  ; preds = %vector.memcheck112, %.lr.ph81.preheader.preheader, %middle.block128
  %.sroa.01.080.ph = phi ptr [ %i.dw, %vector.memcheck112 ], [ %i.dw, %.lr.ph81.preheader.preheader ], [ %i.ef, %middle.block128 ]
  %.sroa.73.079.ph = phi i64 [ 0, %vector.memcheck112 ], [ 0, %.lr.ph81.preheader.preheader ], [ %n.vec121, %middle.block128 ]
  br label %.lr.ph81.preheader, !dbg !15306

bb.s:                                             ; preds = %_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE21get_mixing_values_mutCsfISxE4fmY1Y_14polars_parquet.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !15310
  call void @_RNvMs2_NtNtCsk4ZPsEfLtLH_6brotli3enc11find_strideINtB5_12EntropyTallyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.ab, ptr noalias noundef nonnull %0, i1 noundef zeroext false, i8 undef), !dbg !15310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ad, ptr noundef nonnull align 8 dereferenceable(192) %i.ab, i64 192, i1 false), !dbg !15311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !15312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !15313
  invoke void @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc11find_strideINtB5_14EntropyPyramidNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([376 x i8]) align 8 captures(none) dereferenceable(376) %i.aa, ptr noalias noundef nonnull %0)
          to label %bb.v unwind label %.thread43.thread70, !dbg !15313

bb.t:                                             ; preds = %_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE21get_mixing_values_mutCsfISxE4fmY1Y_14polars_parquet.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !15314
  call void @_RNvMs2_NtNtCsk4ZPsEfLtLH_6brotli3enc11find_strideINtB5_12EntropyTallyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE20disabled_placeholderCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.z, ptr noalias noundef nonnull %0), !dbg !15314
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ad, ptr noundef nonnull align 8 dereferenceable(192) %i.z, i64 192, i1 false), !dbg !15315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !15316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !15317
  invoke void @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc11find_strideINtB5_14EntropyPyramidNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE20disabled_placeholderCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([376 x i8]) align 8 captures(none) dereferenceable(376) %i.y, ptr noalias noundef nonnull %0)
          to label %bb.x unwind label %.thread43.thread70, !dbg !15317

bb.u:                                             ; preds = %bb.v, %bb.w
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread, !dbg !15318

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.ac, ptr noundef nonnull align 8 dereferenceable(376) %i.aa, i64 376, i1 false), !dbg !15319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !15320
  invoke void @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc11find_strideINtB5_14EntropyPyramidNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE8populateCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(376) %i.ac, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(192) %i.ad)
          to label %bb.w unwind label %bb.u, !dbg !15321

bb.w:                                             ; preds = %bb.v, %bb.x
  store ptr %3, ptr %i.n, align 8, !dbg !15322
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !15322
  store i64 %4, ptr %.sroa.450.0..sroa_idx, align 8, !dbg !15322
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !15322
  store i64 0, ptr %.sroa.551.0..sroa_idx, align 8, !dbg !15322
  %i.eo = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !15322
  store ptr %5, ptr %i.eo, align 8, !dbg !15322
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !15322
  store i64 %6, ptr %.sroa.453.0..sroa_idx, align 8, !dbg !15322
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40, !dbg !15322
  store i64 %4, ptr %.sroa.554.0..sroa_idx, align 8, !dbg !15322
  %i.ep = invoke { ptr, i64 } @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14combined_alloc13alloc_defaulthNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet()
          to label %bb.y unwind label %bb.u, !dbg !15323 ; 2 uses

bb.x:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.ac, ptr noundef nonnull align 8 dereferenceable(376) %i.y, i64 376, i1 false), !dbg !15324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !15325
  br label %bb.w, !dbg !15326

bb.y:                                             ; preds = %bb.w
  %i.eq = extractvalue { ptr, i64 } %i.ep, 0, !dbg !15323 ; 6 uses
  %i.er = extractvalue { ptr, i64 } %i.ep, 1, !dbg !15323 ; 6 uses
  %i.es = icmp ugt i8 %i.du, 2, !dbg !15327
  br i1 %i.es, label %bb.aa, label %bb.z, !dbg !15327

bb.z:                                             ; preds = %bb.aj, %bb.y
  %.sroa.9.0 = phi i64 [ %i.fb, %bb.aj ], [ %i.er, %bb.y ], !dbg !15328 ; 6 uses
  %.sroa.010.0 = phi ptr [ %i.fa, %bb.aj ], [ %i.eq, %bb.y ], !dbg !15328 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !15329
  %i.et = invoke noundef i64 @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc11find_strideINtB5_14EntropyPyramidNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE23stride_last_level_rangeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %i.ac)
          to label %bb.ak unwind label %bb.ab, !dbg !15330

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !15331
  invoke fastcc void @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 captures(none) dereferenceable(240) %i.x, ptr noalias noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %10)
          to label %bb.ac unwind label %bb.ab, !dbg !15332

bb.ab:                                            ; preds = %bb.ak, %bb.ai, %bb.aa, %bb.z
  %.sroa.9.2 = phi i64 [ %.sroa.9.0, %bb.ak ], [ %.sroa.9.0, %bb.z ], [ %i.fb, %bb.ai ], [ %i.er, %bb.aa ], !dbg !15328
  %.sroa.010.2 = phi ptr [ %.sroa.010.0, %bb.ak ], [ %.sroa.010.0, %bb.z ], [ %i.fa, %bb.ai ], [ %i.eq, %bb.aa ], !dbg !15328
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.ac:                                            ; preds = %bb.aa
  %i.ev = load i64, ptr %8, align 8, !dbg !15333, !noundef !664
  invoke fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream21process_command_queueINtNtB4_11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(240) %i.x, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %7, i64 noundef %i.ev, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %10, i8 noundef %11)
          to label %bb.ae unwind label %bb.ad, !dbg !15334

bb.ad:                                            ; preds = %bb.ac, %bb.ah, %bb.ae
  %.sroa.9.3 = phi i64 [ %i.fb, %bb.ah ], [ %i.er, %bb.ae ], [ %i.er, %bb.ac ], !dbg !15328
  %.sroa.010.3 = phi ptr [ %i.fa, %bb.ah ], [ %i.eq, %bb.ae ], [ %i.eq, %bb.ac ], !dbg !15328
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(240) %i.x) #21
          to label %bb.bt unwind label %bb.br, !dbg !15335

bb.ae:                                            ; preds = %bb.ac
  %i.ex = getelementptr inbounds nuw i8, ptr %i.x, i64 216, !dbg !15336
  %.val149 = load i64, ptr %i.ex, align 8, !dbg !15336, !noundef !664
  %i.ey = getelementptr inbounds nuw i8, ptr %i.x, i64 48, !dbg !15337
  %.val150 = load ptr, ptr %i.ey, align 8, !dbg !15337, !nonnull !664, !noundef !664
  %i.ez = invoke { ptr, i64 } @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14combined_alloc8allocatehNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %.val150, i64 noundef %.val149)
          to label %bb.af unwind label %bb.ad, !dbg !15338 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.fa = extractvalue { ptr, i64 } %i.ez, 0, !dbg !15338 ; 5 uses
  %i.fb = extractvalue { ptr, i64 } %i.ez, 1, !dbg !15338 ; 4 uses
  %i.fc = icmp eq i64 %i.er, 0, !dbg !15339
  br i1 %i.fc, label %bb.ah, label %bb.ag, !dbg !15339

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eq) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eq, i64 noundef range(i64 1, 0) %i.er, i64 noundef 1) #19, !dbg !15340
  br label %bb.ah, !dbg !15341

bb.ah:                                            ; preds = %bb.af, %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fa) ]
  invoke fastcc void @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE13choose_strideCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.x, ptr noalias noundef nonnull %i.fa, i64 noundef %i.fb)
          to label %bb.ai unwind label %bb.ad, !dbg !15342

bb.ai:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(240) %i.x)
          to label %bb.aj unwind label %bb.ab, !dbg !15335

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !15335
  br label %bb.z, !dbg !15343

bb.ak:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !15344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 48, i1 false), !dbg !15344
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 94, !dbg !15345
  %i.fe = load i8, ptr %i.fd, align 2, !dbg !15345, !noundef !664 ; 2 uses
  invoke fastcc void @_RNvMNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropyINtB2_17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 captures(none) dereferenceable(920) %i.w, ptr noalias noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %i.n, i64 noundef %i.et, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %i.v, i8 noundef %i.fe)
          to label %bb.al unwind label %bb.ab, !dbg !15346

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !15347
  %i.ff = icmp eq i8 %i.fe, 0, !dbg !15348
  br i1 %i.ff, label %bb.am, label %bb.an, !dbg !15348

bb.am:                                            ; preds = %bb.ax, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !15349
  %i.fg = invoke noundef i64 @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc11find_strideINtB5_14EntropyPyramidNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE23stride_last_level_rangeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %i.ac)
          to label %bb.ay unwind label %.thread98, !dbg !15350

bb.an:                                            ; preds = %bb.al
  %i.fh = load i64, ptr %8, align 8, !dbg !15351, !noundef !664
  invoke fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream21process_command_queueINtNtB4_19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(920) %i.w, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %7, i64 noundef %i.fh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %10, i8 noundef %11)
          to label %bb.ap unwind label %.thread98, !dbg !15352

.thread102:                                       ; preds = %bb.bh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i
  %.pn121.ph = phi { ptr, i32 } [ %i.hd, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i ], [ %i.hz, %bb.bh ]
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc10prior_eval9PriorEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(296) %i.u) #21, !dbg !15353
  br label %.thread43.thread65, !dbg !15354

.thread107:                                       ; preds = %bb.ba, %bb.bb, %bb.bc
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc10prior_eval9PriorEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(296) %i.u) #21, !dbg !15353
  br label %bb.bs, !dbg !15354

bb.ao:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuuE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit
  %lpad.thr_comm.split-lp106 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc10prior_eval9PriorEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(296) %i.u) #21, !dbg !15353
  br label %.thread43.thread65, !dbg !15354

.thread98:                                        ; preds = %bb.an, %bb.am, %bb.ay, %bb.av, %bb.aw, %bb.ax, %bb.ap, %.noexc170, %bb.aq, %.noexc182, %bb.ar, %.noexc195, %bb.as, %.noexc202, %bb.at, %.noexc208, %bb.au, %.noexc215
end_hunk_1
begin_hunk_2_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12LogMetaBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocNCNvXs4_NtB4_6writerINtB25_24CompressorWriterCustomIoNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorINtNtCsjPfRcqrlXv6_19brotli_decompressor11io_wrappers12IntoIoWriterQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEINtNtB16_10heap_alloc7WrapBoxhEB12_EINtB3u_11CustomWriteB2O_E5write0ECsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 14 uses
  %i.o = alloca [376 x i8], align 8               ; 5 uses
  %i.p = alloca [192 x i8], align 8               ; 5 uses
  %i.q = alloca [920 x i8], align 8               ; 5 uses
  %i.r = alloca [1656 x i8], align 8              ; 27 uses
  %i.s = alloca [48 x i8], align 8                ; 2 uses
  %i.t = alloca [48 x i8], align 8                ; 4 uses
  %i.u = alloca [296 x i8], align 8               ; 14 uses
  %i.v = alloca [48 x i8], align 8                ; 4 uses
  %i.w = alloca [920 x i8], align 8               ; 18 uses
  %i.x = alloca [240 x i8], align 8               ; 9 uses
  %i.y = alloca [376 x i8], align 8               ; 4 uses
  %i.z = alloca [192 x i8], align 8               ; 4 uses
  %i.aa = alloca [376 x i8], align 8              ; 4 uses
  %i.ab = alloca [192 x i8], align 8              ; 4 uses
  %i.ac = alloca [376 x i8], align 8              ; 9 uses
  %i.ad = alloca [192 x i8], align 8              ; 7 uses
  %i.ae = alloca [48 x i8], align 8               ; 11 uses
  %i.af = alloca [4 x i8], align 4                ; 2 uses
  %i.ag = alloca [4 x i8], align 4                ; 2 uses
  %i.ah = alloca [4 x i8], align 4                ; 2 uses
  %i.ai = alloca [24592 x i8], align 1            ; 10 uses
  %i.aj = alloca [16384 x i8], align 1            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !15813
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16384) %i.aj, i8 0, i64 16384, i1 false), !dbg !15814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !15815
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24592) %i.ai, i8 0, i64 24592, i1 false), !dbg !15816
  %i.ak = load ptr, ptr %9, align 8, !dbg !15817, !nonnull !664, !noundef !664 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8, !dbg !15817
  %i.am = load i64, ptr %i.al, align 8, !dbg !15817, !noundef !664 ; 3 uses
  %i.an = icmp samesign eq i64 %i.am, 0, !dbg !15818
  br i1 %i.an, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.b, !dbg !15819

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 1, !dbg !15820
  %i.ap = icmp samesign eq i64 %i.am, 1, !dbg !15821
  br i1 %i.ap, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit, label %.preheader75, !dbg !15822

.preheader75:                                     ; preds = %bb.b
  %i.aq = add i64 %i.am, -2
  br label %bb.c, !dbg !15823

bb.c:                                             ; preds = %.preheader75, %bb.c
  %.sroa.04.0.i.i = phi i64 [ %i.au, %bb.c ], [ 0, %.preheader75 ], !dbg !15824 ; 3 uses
  %.sroa.02.0.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %bb.c ], [ %i.ak, %.preheader75 ], !dbg !15825 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.04.0.i.i, !dbg !15826 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !15744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !15744
  store ptr %.sroa.02.0.i.i, ptr %i.m, align 8, !noalias !15745
  store ptr %i.ar, ptr %i.l, align 8, !noalias !15745
  %i.as = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNvYRhNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRBR_B1q_EE9call_onceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !dbg !15827
  %i.at = icmp sgt i8 %i.as, 0, !dbg !15828
  %.sroa.0.0.i.i.i.i = select i1 %i.at, ptr %.sroa.02.0.i.i, ptr %i.ar, !dbg !15827 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !15829, !noalias !15744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !15829, !noalias !15744
  %i.au = add nuw i64 %.sroa.04.0.i.i, 1, !dbg !15830
  %i.av = icmp eq i64 %.sroa.04.0.i.i, %i.aq, !dbg !15823
  br i1 %i.av, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.c, !dbg !15823

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.ak, %bb.b ], [ %.sroa.0.0.i.i.i.i, %bb.c ], !dbg !15831 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i, null, !dbg !15832
  %. = select i1 %.not, ptr @116, ptr %.sroa.0.0.i, !dbg !15833
  %i.aw = load i8, ptr %., align 1, !dbg !15834, !noundef !664
  %i.ax = zext i8 %i.aw to i32, !dbg !15834
  %i.ay = add nuw nsw i32 %i.ax, 1, !dbg !15834   ; 2 uses
  store i32 %i.ay, ptr %i.ah, align 4, !dbg !15834
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 32, !dbg !15835 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !dbg !15836, !noundef !664
  %i.bb = icmp eq i32 %i.ay, %i.ba, !dbg !15836
  br i1 %i.bb, label %bb.e, label %bb.d, !dbg !15836, !prof !724

bb.d:                                             ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedmmECsh8eZTKRCwoO_3std(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ah, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.az, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #18, !dbg !15837
  unreachable, !dbg !15837

bb.e:                                             ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 56, !dbg !15838
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !15838, !nonnull !664, !noundef !664 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 64, !dbg !15838
  %i.bf = load i64, ptr %i.be, align 8, !dbg !15838, !noundef !664 ; 3 uses
  %i.bg = icmp samesign eq i64 %i.bf, 0, !dbg !15839
  br i1 %i.bg, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit155, label %bb.f, !dbg !15840

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 1, !dbg !15841
  %i.bi = icmp samesign eq i64 %i.bf, 1, !dbg !15842
  br i1 %i.bi, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit155, label %.preheader74, !dbg !15843

.preheader74:                                     ; preds = %bb.f
  %i.bj = add i64 %i.bf, -2
  br label %bb.g, !dbg !15844

bb.g:                                             ; preds = %.preheader74, %bb.g
  %.sroa.04.0.i.i151 = phi i64 [ %i.bn, %bb.g ], [ 0, %.preheader74 ], !dbg !15845 ; 3 uses
  %.sroa.02.0.i.i152 = phi ptr [ %.sroa.0.0.i.i.i.i153, %bb.g ], [ %i.bd, %.preheader74 ], !dbg !15846 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.04.0.i.i151, !dbg !15847 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !15752
  store ptr %.sroa.02.0.i.i152, ptr %i.k, align 8, !noalias !15753
  store ptr %i.bk, ptr %i.j, align 8, !noalias !15753
  %i.bl = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNvYRhNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRBR_B1q_EE9call_onceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j), !dbg !15848
  %i.bm = icmp sgt i8 %i.bl, 0, !dbg !15849
  %.sroa.0.0.i.i.i.i153 = select i1 %i.bm, ptr %.sroa.02.0.i.i152, ptr %i.bk, !dbg !15848 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !15850, !noalias !15752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !15850, !noalias !15752
  %i.bn = add nuw i64 %.sroa.04.0.i.i151, 1, !dbg !15851
  %i.bo = icmp eq i64 %.sroa.04.0.i.i151, %i.bj, !dbg !15844
  br i1 %i.bo, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit155, label %bb.g, !dbg !15844

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit155: ; preds = %bb.g, %bb.e, %bb.f
  %.sroa.0.0.i154 = phi ptr [ null, %bb.e ], [ %i.bd, %bb.f ], [ %.sroa.0.0.i.i.i.i153, %bb.g ], !dbg !15852 ; 2 uses
  %.not115 = icmp eq ptr %.sroa.0.0.i154, null, !dbg !15853
  %.127 = select i1 %.not115, ptr @116, ptr %.sroa.0.0.i154, !dbg !15854
  %i.bp = load i8, ptr %.127, align 1, !dbg !15855, !noundef !664
  %i.bq = zext i8 %i.bp to i32, !dbg !15855
  %i.br = add nuw nsw i32 %i.bq, 1, !dbg !15855   ; 2 uses
  store i32 %i.br, ptr %i.ag, align 4, !dbg !15855
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 88, !dbg !15856 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !dbg !15857, !noundef !664
  %i.bu = icmp eq i32 %i.br, %i.bt, !dbg !15857
  br i1 %i.bu, label %bb.i, label %bb.h, !dbg !15857, !prof !724

bb.h:                                             ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit155
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedmmECsh8eZTKRCwoO_3std(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ag, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bs, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #18, !dbg !15858
  unreachable, !dbg !15858

bb.i:                                             ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit155
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 96, !dbg !15859
  %i.bw = load ptr, ptr %i.bv, align 8, !dbg !15859, !nonnull !664, !noundef !664 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 104, !dbg !15859
  %i.by = load i64, ptr %i.bx, align 8, !dbg !15859, !noundef !664 ; 3 uses
  %i.bz = icmp samesign eq i64 %i.by, 0, !dbg !15860
  br i1 %i.bz, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit160, label %bb.j, !dbg !15861

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 1, !dbg !15862
  %i.cb = icmp samesign eq i64 %i.by, 1, !dbg !15863
  br i1 %i.cb, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit160, label %.preheader, !dbg !15864

.preheader:                                       ; preds = %bb.j
  %i.cc = add i64 %i.by, -2
  br label %bb.k, !dbg !15865

bb.k:                                             ; preds = %.preheader, %bb.k
  %.sroa.04.0.i.i156 = phi i64 [ %i.cg, %bb.k ], [ 0, %.preheader ], !dbg !15866 ; 3 uses
  %.sroa.02.0.i.i157 = phi ptr [ %.sroa.0.0.i.i.i.i158, %bb.k ], [ %i.bw, %.preheader ], !dbg !15867 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.04.0.i.i156, !dbg !15868 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15760
  store ptr %.sroa.02.0.i.i157, ptr %i.i, align 8, !noalias !15761
  store ptr %i.cd, ptr %i.h, align 8, !noalias !15761
  %i.ce = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNvYRhNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRBR_B1q_EE9call_onceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h), !dbg !15869
  %i.cf = icmp sgt i8 %i.ce, 0, !dbg !15870
  %.sroa.0.0.i.i.i.i158 = select i1 %i.cf, ptr %.sroa.02.0.i.i157, ptr %i.cd, !dbg !15869 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !15871, !noalias !15760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15871, !noalias !15760
  %i.cg = add nuw i64 %.sroa.04.0.i.i156, 1, !dbg !15872
  %i.ch = icmp eq i64 %.sroa.04.0.i.i156, %i.cc, !dbg !15865
  br i1 %i.ch, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit160, label %bb.k, !dbg !15865

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit160: ; preds = %bb.k, %bb.i, %bb.j
  %.sroa.0.0.i159 = phi ptr [ null, %bb.i ], [ %i.bw, %bb.j ], [ %.sroa.0.0.i.i.i.i158, %bb.k ], !dbg !15873 ; 2 uses
  %.not116 = icmp eq ptr %.sroa.0.0.i159, null, !dbg !15874
  %.128 = select i1 %.not116, ptr @116, ptr %.sroa.0.0.i159, !dbg !15875
  %i.ci = load i8, ptr %.128, align 1, !dbg !15876, !noundef !664
  %i.cj = zext i8 %i.ci to i32, !dbg !15876
  %i.ck = add nuw nsw i32 %i.cj, 1, !dbg !15876   ; 2 uses
  store i32 %i.ck, ptr %i.af, align 4, !dbg !15876
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 128, !dbg !15877 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !dbg !15878, !noundef !664
  %i.cn = icmp eq i32 %i.ck, %i.cm, !dbg !15878
  br i1 %i.cn, label %bb.m, label %bb.l, !dbg !15878, !prof !724

bb.l:                                             ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit160
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedmmECsh8eZTKRCwoO_3std(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.af, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.cl, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #18, !dbg !15879
  unreachable, !dbg !15879

bb.m:                                             ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRhNvYB1T_NtNtBa_3cmp3Ord3cmpE0ECsfISxE4fmY1Y_14polars_parquet.exit160
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 48, !dbg !15880
  %i.cp = load i64, ptr %i.co, align 8, !dbg !15880, !noundef !664 ; 5 uses
  %i.cq = icmp ult i64 %i.cp, 16385, !dbg !15880
  br i1 %i.cq, label %bb.n, label %.loopexit73, !dbg !15880

.loopexit73:                                      ; preds = %.lr.ph.preheader, %middle.block, %bb.n, %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 144, !dbg !15881
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !15881, !noundef !664 ; 4 uses
  %i.ct = icmp ult i64 %i.cs, 16385, !dbg !15881
  br i1 %i.ct, label %bb.r, label %.loopexit, !dbg !15881

bb.n:                                             ; preds = %bb.m
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 40, !dbg !15880
  %i.cv = load ptr, ptr %i.cu, align 8, !dbg !15880, !nonnull !664, !align !741, !noundef !664 ; 6 uses
  %.idx = shl nuw nsw i64 %i.cp, 2, !dbg !15882   ; 3 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 %.idx, !dbg !15882 ; 2 uses
  %i.cx = icmp eq i64 %i.cp, 0, !dbg !15883
  br i1 %i.cx, label %.loopexit73, label %.lr.ph.preheader.preheader, !dbg !15884

.lr.ph.preheader.preheader:                       ; preds = %bb.n
  %i.cy = add nsw i64 %.idx, -4, !dbg !15884      ; 2 uses
  %i.cz = lshr exact i64 %i.cy, 2, !dbg !15884
  %i.da = add nuw nsw i64 %i.cz, 1, !dbg !15884   ; 2 uses
  %min.iters.check = icmp ult i64 %i.cy, 60, !dbg !15884
  br i1 %min.iters.check, label %.lr.ph.preheader.preheader133, label %vector.memcheck, !dbg !15884

vector.memcheck:                                  ; preds = %.lr.ph.preheader.preheader
  %12 = add nsw i64 %.idx, -4, !dbg !15884
  %i.db = lshr exact i64 %12, 2, !dbg !15884
  %i.dc = getelementptr i8, ptr %i.aj, i64 %i.db, !dbg !15884
  %scevgep = getelementptr i8, ptr %i.dc, i64 1, !dbg !15884
  %bound0 = icmp ult ptr %i.aj, %i.cw, !dbg !15884
  %bound1 = icmp ult ptr %i.cv, %scevgep, !dbg !15884
  %found.conflict = and i1 %bound0, %bound1, !dbg !15884
  br i1 %found.conflict, label %.lr.ph.preheader.preheader133, label %vector.ph, !dbg !15885

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.da, 9223372036854775800     ; 4 uses
  %i.dd = shl i64 %n.vec, 2
  %i.de = getelementptr i8, ptr %i.cv, i64 %i.dd
  br label %vector.body, !dbg !15885

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !15885 ; 3 uses
  %i.df = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cv, i64 %i.df ; 2 uses
  %i.dg = getelementptr i8, ptr %next.gep, i64 16, !dbg !15886
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !15886, !alias.scope !15770
  %wide.load110 = load <4 x i32>, ptr %i.dg, align 4, !dbg !15886, !alias.scope !15770
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index, !dbg !15887 ; 2 uses
  %i.di = trunc <4 x i32> %wide.load to <4 x i8>, !dbg !15887
  %i.dj = trunc <4 x i32> %wide.load110 to <4 x i8>, !dbg !15887
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 4, !dbg !15887
  store <4 x i8> %i.di, ptr %i.dh, align 1, !dbg !15887, !alias.scope !15771, !noalias !15770
  store <4 x i8> %i.dj, ptr %i.dk, align 1, !dbg !15887, !alias.scope !15771, !noalias !15770
  %index.next = add nuw i64 %index, 8, !dbg !15885 ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec, !dbg !15884
  br i1 %i.dl, label %middle.block, label %vector.body, !dbg !15884, !llvm.loop !15563

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec, !dbg !15884
  br i1 %cmp.n, label %.loopexit73, label %.lr.ph.preheader.preheader133, !dbg !15884

.lr.ph.preheader.preheader133:                    ; preds = %vector.memcheck, %.lr.ph.preheader.preheader, %middle.block
  %.sroa.0.078.ph = phi ptr [ %i.cv, %vector.memcheck ], [ %i.cv, %.lr.ph.preheader.preheader ], [ %i.de, %middle.block ]
  %.sroa.7.077.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.preheader, !dbg !15884

.loopexit:                                        ; preds = %.lr.ph81.preheader, %middle.block128, %bb.r, %.loopexit73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !15888
  %.not.i = icmp ugt i64 %i.cp, 16384, !dbg !15889
  br i1 %.not.i, label %bb.o, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !15889, !prof !712

bb.o:                                             ; preds = %.loopexit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #18, !dbg !15890, !noalias !15772
  unreachable, !dbg !15890

_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %.loopexit
  %i.dm = add i64 %i.cs, 8208, !dbg !15891        ; 5 uses
  %.not.i162 = icmp ugt i64 %i.dm, 24592, !dbg !15892
  br i1 %.not.i162, label %bb.p, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit166, !dbg !15892, !prof !712

bb.p:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #18, !dbg !15893, !noalias !15773
  unreachable, !dbg !15893

_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit166: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit
  store ptr %i.aj, ptr %i.ae, align 8, !dbg !15894
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !15894
  store i64 %i.cp, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !15894
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !15894
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !15894
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ae, i64 24, !dbg !15894 ; 3 uses
  store ptr %i.ai, ptr %i.dn, align 8, !dbg !15894
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32, !dbg !15894 ; 3 uses
  store i64 %i.dm, ptr %.sroa.428.0..sroa_idx, align 8, !dbg !15894
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40, !dbg !15894
  store i64 0, ptr %.sroa.529.0..sroa_idx, align 8, !dbg !15894
  %i.do = icmp samesign ugt i64 %i.dm, 8195, !dbg !15895
  br i1 %i.do, label %_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE21get_mixing_values_mutCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.q, !dbg !15895, !prof !724

bb.q:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit166
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef 8196, i64 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @435) #18, !dbg !15896
  unreachable, !dbg !15896

_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE21get_mixing_values_mutCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit166
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ai, i64 4, !dbg !15897
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %i.dp, i8 4, i64 8192, i1 false), !dbg !15898
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 8, !dbg !15899
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !15899
  call fastcc void @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE24set_stride_context_speedCsfISxE4fmY1Y_14polars_parquet(ptr nonnull %i.ai, i64 %i.dm, i64 noundef %i.dr) #23, !dbg !15900
  %i.ds = load i64, ptr %10, align 8, !dbg !15901 ; 2 uses
  %.val143 = load ptr, ptr %i.dn, align 8, !dbg !15902, !nonnull !664, !noundef !664
  %.val144 = load i64, ptr %.sroa.428.0..sroa_idx, align 8, !dbg !15902, !noundef !664
  call fastcc void @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE21set_context_map_speedCsfISxE4fmY1Y_14polars_parquet(ptr nonnull %.val143, i64 %.val144, i64 noundef %i.ds) #23, !dbg !15902
  %.val147 = load ptr, ptr %i.dn, align 8, !dbg !15903, !nonnull !664, !noundef !664
  %.val148 = load i64, ptr %.sroa.428.0..sroa_idx, align 8, !dbg !15903, !noundef !664
  call fastcc void @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE33set_combined_stride_context_speedCsfISxE4fmY1Y_14polars_parquet(ptr nonnull %.val147, i64 %.val148, i64 noundef %i.ds) #23, !dbg !15903
  %.not119 = icmp eq i8 %11, 4, !dbg !15904
  %.129 = select i1 %.not119, i8 0, i8 %11, !dbg !15905
  call void @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE27set_literal_prediction_modeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae, i8 noundef %.129), !dbg !15906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !15907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !15908
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 92, !dbg !15909
  %i.du = load i8, ptr %i.dt, align 4, !dbg !15909, !noundef !664 ; 3 uses
  %.off = add i8 %i.du, -1, !dbg !15909
  %switch = icmp ult i8 %.off, 2, !dbg !15909
  br i1 %switch, label %bb.s, label %bb.t, !dbg !15909

bb.r:                                             ; preds = %.loopexit73
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 136, !dbg !15881
  %i.dw = load ptr, ptr %i.dv, align 8, !dbg !15881, !nonnull !664, !align !741, !noundef !664 ; 6 uses
  %.idx83 = shl nuw nsw i64 %i.cs, 2, !dbg !15910 ; 3 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 %.idx83, !dbg !15910 ; 2 uses
  %i.dy = icmp eq i64 %i.cs, 0, !dbg !15911
  br i1 %i.dy, label %.loopexit, label %.lr.ph81.preheader.preheader, !dbg !15912

.lr.ph81.preheader.preheader:                     ; preds = %bb.r
  %i.dz = add nsw i64 %.idx83, -4, !dbg !15912    ; 2 uses
  %i.ea = lshr exact i64 %i.dz, 2, !dbg !15912
  %i.eb = add nuw nsw i64 %i.ea, 1, !dbg !15912   ; 2 uses
  %min.iters.check119 = icmp ult i64 %i.dz, 60, !dbg !15912
  br i1 %min.iters.check119, label %.lr.ph81.preheader.preheader132, label %vector.memcheck112, !dbg !15912

vector.memcheck112:                               ; preds = %.lr.ph81.preheader.preheader
  %scevgep113 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8208, !dbg !15912
  %13 = add nsw i64 %.idx83, -4, !dbg !15912
  %i.ec = lshr exact i64 %13, 2, !dbg !15912
  %i.ed = getelementptr i8, ptr %i.ai, i64 %i.ec, !dbg !15912
  %scevgep114 = getelementptr i8, ptr %i.ed, i64 8209, !dbg !15912
  %bound0115 = icmp ult ptr %scevgep113, %i.dx, !dbg !15912
  %bound1116 = icmp ult ptr %i.dw, %scevgep114, !dbg !15912
  %found.conflict117 = and i1 %bound0115, %bound1116, !dbg !15912
  br i1 %found.conflict117, label %.lr.ph81.preheader.preheader132, label %vector.ph120, !dbg !15913

vector.ph120:                                     ; preds = %vector.memcheck112
  %n.vec121 = and i64 %i.eb, 9223372036854775800  ; 4 uses
  %i.ee = shl i64 %n.vec121, 2
  %i.ef = getelementptr i8, ptr %i.dw, i64 %i.ee
  br label %vector.body122, !dbg !15913

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body122 ], !dbg !15913 ; 3 uses
  %i.eg = shl i64 %index123, 2
  %next.gep124 = getelementptr i8, ptr %i.dw, i64 %i.eg ; 2 uses
  %i.eh = getelementptr i8, ptr %next.gep124, i64 16, !dbg !15914
  %wide.load125 = load <4 x i32>, ptr %next.gep124, align 4, !dbg !15914, !alias.scope !15780
  %wide.load126 = load <4 x i32>, ptr %i.eh, align 4, !dbg !15914, !alias.scope !15780
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index123, !dbg !15915 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8208, !dbg !15915
  %i.ek = trunc <4 x i32> %wide.load125 to <4 x i8>, !dbg !15915
  %i.el = trunc <4 x i32> %wide.load126 to <4 x i8>, !dbg !15915
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 8212, !dbg !15915
  store <4 x i8> %i.ek, ptr %i.ej, align 1, !dbg !15915, !alias.scope !15781, !noalias !15780
  store <4 x i8> %i.el, ptr %i.em, align 1, !dbg !15915, !alias.scope !15781, !noalias !15780
  %index.next127 = add nuw i64 %index123, 8, !dbg !15913 ; 2 uses
  %i.en = icmp eq i64 %index.next127, %n.vec121, !dbg !15912
  br i1 %i.en, label %middle.block128, label %vector.body122, !dbg !15912, !llvm.loop !15595

middle.block128:                                  ; preds = %vector.body122
  %cmp.n129 = icmp eq i64 %i.eb, %n.vec121, !dbg !15912
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph81.preheader.preheader132, !dbg !15912

.lr.ph81.preheader.preheader132:                  ; preds = %vector.memcheck112, %.lr.ph81.preheader.preheader, %middle.block128
  %.sroa.01.080.ph = phi ptr [ %i.dw, %vector.memcheck112 ], [ %i.dw, %.lr.ph81.preheader.preheader ], [ %i.ef, %middle.block128 ]
  %.sroa.73.079.ph = phi i64 [ 0, %vector.memcheck112 ], [ 0, %.lr.ph81.preheader.preheader ], [ %n.vec121, %middle.block128 ]
  br label %.lr.ph81.preheader, !dbg !15912

bb.s:                                             ; preds = %_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE21get_mixing_values_mutCsfISxE4fmY1Y_14polars_parquet.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !15916
  call void @_RNvMs2_NtNtCsk4ZPsEfLtLH_6brotli3enc11find_strideINtB5_12EntropyTallyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.ab, ptr noalias noundef nonnull %0, i1 noundef zeroext false, i8 undef), !dbg !15916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ad, ptr noundef nonnull align 8 dereferenceable(192) %i.ab, i64 192, i1 false), !dbg !15917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !15918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !15919
  invoke void @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc11find_strideINtB5_14EntropyPyramidNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([376 x i8]) align 8 captures(none) dereferenceable(376) %i.aa, ptr noalias noundef nonnull %0)
          to label %bb.v unwind label %.thread43.thread70, !dbg !15919

bb.t:                                             ; preds = %_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE21get_mixing_values_mutCsfISxE4fmY1Y_14polars_parquet.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !15920
  call void @_RNvMs2_NtNtCsk4ZPsEfLtLH_6brotli3enc11find_strideINtB5_12EntropyTallyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE20disabled_placeholderCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.z, ptr noalias noundef nonnull %0), !dbg !15920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ad, ptr noundef nonnull align 8 dereferenceable(192) %i.z, i64 192, i1 false), !dbg !15921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !15922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !15923
  invoke void @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc11find_strideINtB5_14EntropyPyramidNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE20disabled_placeholderCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([376 x i8]) align 8 captures(none) dereferenceable(376) %i.y, ptr noalias noundef nonnull %0)
          to label %bb.x unwind label %.thread43.thread70, !dbg !15923

bb.u:                                             ; preds = %bb.v, %bb.w
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread, !dbg !15924

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.ac, ptr noundef nonnull align 8 dereferenceable(376) %i.aa, i64 376, i1 false), !dbg !15925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !15926
  invoke void @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc11find_strideINtB5_14EntropyPyramidNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE8populateCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(376) %i.ac, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(192) %i.ad)
          to label %bb.w unwind label %bb.u, !dbg !15927

bb.w:                                             ; preds = %bb.v, %bb.x
  store ptr %3, ptr %i.n, align 8, !dbg !15928
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !15928
  store i64 %4, ptr %.sroa.450.0..sroa_idx, align 8, !dbg !15928
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !15928
  store i64 0, ptr %.sroa.551.0..sroa_idx, align 8, !dbg !15928
  %i.eo = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !15928
  store ptr %5, ptr %i.eo, align 8, !dbg !15928
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !15928
  store i64 %6, ptr %.sroa.453.0..sroa_idx, align 8, !dbg !15928
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40, !dbg !15928
  store i64 %4, ptr %.sroa.554.0..sroa_idx, align 8, !dbg !15928
  %i.ep = invoke { ptr, i64 } @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14combined_alloc13alloc_defaulthNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet()
          to label %bb.y unwind label %bb.u, !dbg !15929 ; 2 uses

bb.x:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.ac, ptr noundef nonnull align 8 dereferenceable(376) %i.y, i64 376, i1 false), !dbg !15930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !15931
  br label %bb.w, !dbg !15932

bb.y:                                             ; preds = %bb.w
  %i.eq = extractvalue { ptr, i64 } %i.ep, 0, !dbg !15929 ; 6 uses
  %i.er = extractvalue { ptr, i64 } %i.ep, 1, !dbg !15929 ; 6 uses
  %i.es = icmp ugt i8 %i.du, 2, !dbg !15933
  br i1 %i.es, label %bb.aa, label %bb.z, !dbg !15933

bb.z:                                             ; preds = %bb.aj, %bb.y
  %.sroa.9.0 = phi i64 [ %i.fb, %bb.aj ], [ %i.er, %bb.y ], !dbg !15934 ; 6 uses
  %.sroa.010.0 = phi ptr [ %i.fa, %bb.aj ], [ %i.eq, %bb.y ], !dbg !15934 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !15935
  %i.et = invoke noundef i64 @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc11find_strideINtB5_14EntropyPyramidNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE23stride_last_level_rangeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %i.ac)
          to label %bb.ak unwind label %bb.ab, !dbg !15936

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !15937
  invoke fastcc void @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 captures(none) dereferenceable(240) %i.x, ptr noalias noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %10)
          to label %bb.ac unwind label %bb.ab, !dbg !15938

bb.ab:                                            ; preds = %bb.ak, %bb.ai, %bb.aa, %bb.z
  %.sroa.9.2 = phi i64 [ %.sroa.9.0, %bb.ak ], [ %.sroa.9.0, %bb.z ], [ %i.fb, %bb.ai ], [ %i.er, %bb.aa ], !dbg !15934
  %.sroa.010.2 = phi ptr [ %.sroa.010.0, %bb.ak ], [ %.sroa.010.0, %bb.z ], [ %i.fa, %bb.ai ], [ %i.eq, %bb.aa ], !dbg !15934
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.ac:                                            ; preds = %bb.aa
  %i.ev = load i64, ptr %8, align 8, !dbg !15939, !noundef !664
  invoke fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream21process_command_queueINtNtB4_11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(240) %i.x, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %7, i64 noundef %i.ev, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %10, i8 noundef %11)
          to label %bb.ae unwind label %bb.ad, !dbg !15940

bb.ad:                                            ; preds = %bb.ac, %bb.ah, %bb.ae
  %.sroa.9.3 = phi i64 [ %i.fb, %bb.ah ], [ %i.er, %bb.ae ], [ %i.er, %bb.ac ], !dbg !15934
  %.sroa.010.3 = phi ptr [ %i.fa, %bb.ah ], [ %i.eq, %bb.ae ], [ %i.eq, %bb.ac ], !dbg !15934
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(240) %i.x) #21
          to label %bb.bt unwind label %bb.br, !dbg !15941

bb.ae:                                            ; preds = %bb.ac
  %i.ex = getelementptr inbounds nuw i8, ptr %i.x, i64 216, !dbg !15942
  %.val149 = load i64, ptr %i.ex, align 8, !dbg !15942, !noundef !664
  %i.ey = getelementptr inbounds nuw i8, ptr %i.x, i64 48, !dbg !15943
  %.val150 = load ptr, ptr %i.ey, align 8, !dbg !15943, !nonnull !664, !noundef !664
  %i.ez = invoke { ptr, i64 } @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14combined_alloc8allocatehNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %.val150, i64 noundef %.val149)
          to label %bb.af unwind label %bb.ad, !dbg !15944 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.fa = extractvalue { ptr, i64 } %i.ez, 0, !dbg !15944 ; 5 uses
  %i.fb = extractvalue { ptr, i64 } %i.ez, 1, !dbg !15944 ; 4 uses
  %i.fc = icmp eq i64 %i.er, 0, !dbg !15945
  br i1 %i.fc, label %bb.ah, label %bb.ag, !dbg !15945

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eq) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eq, i64 noundef range(i64 1, 0) %i.er, i64 noundef 1) #19, !dbg !15946
  br label %bb.ah, !dbg !15947

bb.ah:                                            ; preds = %bb.af, %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fa) ]
  invoke fastcc void @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE13choose_strideCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.x, ptr noalias noundef nonnull %i.fa, i64 noundef %i.fb)
          to label %bb.ai unwind label %bb.ad, !dbg !15948

bb.ai:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(240) %i.x)
          to label %bb.aj unwind label %bb.ab, !dbg !15941

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !15941
  br label %bb.z, !dbg !15949

bb.ak:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !15950
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 48, i1 false), !dbg !15950
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 94, !dbg !15951
  %i.fe = load i8, ptr %i.fd, align 2, !dbg !15951, !noundef !664 ; 2 uses
  invoke fastcc void @_RNvMNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropyINtB2_17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 captures(none) dereferenceable(920) %i.w, ptr noalias noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %i.n, i64 noundef %i.et, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %i.v, i8 noundef %i.fe)
          to label %bb.al unwind label %bb.ab, !dbg !15952

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !15953
  %i.ff = icmp eq i8 %i.fe, 0, !dbg !15954
  br i1 %i.ff, label %bb.am, label %bb.an, !dbg !15954

bb.am:                                            ; preds = %bb.ax, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !15955
  %i.fg = invoke noundef i64 @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc11find_strideINtB5_14EntropyPyramidNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE23stride_last_level_rangeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %i.ac)
          to label %bb.ay unwind label %.thread98, !dbg !15956

bb.an:                                            ; preds = %bb.al
  %i.fh = load i64, ptr %8, align 8, !dbg !15957, !noundef !664
  invoke fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream21process_command_queueINtNtB4_19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(920) %i.w, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %7, i64 noundef %i.fh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %10, i8 noundef %11)
          to label %bb.ap unwind label %.thread98, !dbg !15958

.thread102:                                       ; preds = %bb.bh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i
  %.pn121.ph = phi { ptr, i32 } [ %i.hd, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i ], [ %i.hz, %bb.bh ]
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc10prior_eval9PriorEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(296) %i.u) #21, !dbg !15959
  br label %.thread43.thread65, !dbg !15960

.thread107:                                       ; preds = %bb.ba, %bb.bb, %bb.bc
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc10prior_eval9PriorEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(296) %i.u) #21, !dbg !15959
  br label %bb.bs, !dbg !15960

bb.ao:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuuE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit
  %lpad.thr_comm.split-lp106 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc10prior_eval9PriorEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(296) %i.u) #21, !dbg !15959
  br label %.thread43.thread65, !dbg !15960

.thread98:                                        ; preds = %bb.an, %bb.am, %bb.ay, %bb.av, %bb.aw, %bb.ax, %bb.ap, %.noexc170, %bb.aq, %.noexc182, %bb.ar, %.noexc195, %bb.as, %.noexc202, %bb.at, %.noexc208, %bb.au, %.noexc215
end_hunk_2
