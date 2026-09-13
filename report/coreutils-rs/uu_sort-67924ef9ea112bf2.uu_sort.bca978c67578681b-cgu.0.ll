Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_sort-67924ef9ea112bf2.uu_sort.bca978c67578681b-cgu.0?download=true
inline.NumInlined: 5661
inline.NumDeleted: 2556
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_RINvNtCsgcf5BHVXlUt_7uu_sort5merge19merge_without_limitINtB2_15PlainMergeInputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB1j_2io4read4ReadNtNtCs6JMX4GRUq9U_4core6marker4SendEL_EEINtNtNtNtB2f_4iter8adapters3map3MapINtNtNtB2f_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB2_5merge0EEB4_:bb.a
_RNvMsg_NtCsfyPazK51OL5_16binary_heap_plus11binary_heapINtB5_10BinaryHeapNtNtCsgcf5BHVXlUt_7uu_sort5merge13MergeableFileNtB1a_14FileComparatorE7rebuildB1c_.exit: ; preds = %.lr.ph.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2V_.exit
  store i64 1, ptr %0, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.522.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ee, ptr %.sroa.623.0..sroa_idx, align 8
  %.sroa.623.sroa.4.0..sroa.623.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.di, ptr %.sroa.623.sroa.4.0..sroa.623.0..sroa_idx.sroa_idx, align 8
  %.sroa.623.sroa.5.0..sroa.623.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ed, ptr %.sroa.623.sroa.5.0..sroa.623.0..sroa_idx.sroa_idx, align 8
  %.sroa.724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %.sroa.724.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEB1U_.exit, %_RNvMsg_NtCsfyPazK51OL5_16binary_heap_plus11binary_heapINtB5_10BinaryHeapNtNtCsgcf5BHVXlUt_7uu_sort5merge13MergeableFileNtB1a_14FileComparatorE7rebuildB1c_.exit
  ret void

bb.al:                                            ; preds = %.lr.ph238
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1n_(i64 %i.et, ptr %i.ev) #34
  br label %bb.ap

bb.am:                                            ; preds = %.lr.ph238
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !3324
  %i.fh = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !3324 ; 5 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.an, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !15

bb.an:                                            ; preds = %bb.am
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #37, !noalias !3324
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.am
  store i64 1, ptr %i.fh, align 8
  %.sroa.4178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store i64 1, ptr %.sroa.4178.0..sroa_idx, align 8
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store ptr %i.ex, ptr %.sroa.5179.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3325)
  %i.fj = load i64, ptr %i.n, align 8, !range !22, !alias.scope !3325, !noalias !3326, !noundef !11
  %i.fk = icmp eq i64 %i.er, %i.fj
  br i1 %i.fk, label %bb.ao, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge13MergeableFileE8push_mutBJ_.exit

bb.ao:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCsgcf5BHVXlUt_7uu_sort5merge13MergeableFileE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #39, !noalias !3326
  %.pre268 = load ptr, ptr %i.ef, align 8, !alias.scope !3325, !noalias !3326
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge13MergeableFileE8push_mutBJ_.exit

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge13MergeableFileE8push_mutBJ_.exit: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.ao
  %i.fl = phi ptr [ %i.eq, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.pre268, %bb.ao ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [40 x i8], ptr %i.fl, i64 %i.er ; 5 uses
  store i64 %i.et, ptr %i.fm, align 8, !noalias !3325
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr %i.ev, ptr %.sroa.4155.0..sroa_idx, align 8, !noalias !3325
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store ptr %i.fh, ptr %.sroa.5156.0..sroa_idx, align 8, !noalias !3325
  %.sroa.6157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store i64 0, ptr %.sroa.6157.0..sroa_idx, align 8, !noalias !3325
  %.sroa.7158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  store i64 %.sroa.13145.0236, ptr %.sroa.7158.0..sroa_idx, align 8, !noalias !3325
  %i.fn = add i64 %i.er, 1                        ; 2 uses
  store i64 %i.fn, ptr %i.eg, align 8, !alias.scope !3325, !noalias !3326
  br label %bb.ap

bb.ap:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge13MergeableFileE8push_mutBJ_.exit, %bb.al
  %i.fo = phi ptr [ %i.fl, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge13MergeableFileE8push_mutBJ_.exit ], [ %i.eq, %bb.al ]
  %i.fp = phi i64 [ %i.fn, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge13MergeableFileE8push_mutBJ_.exit ], [ %i.er, %bb.al ]
  %i.fq = icmp eq ptr %i.es, %i.ek
  br i1 %i.fq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1o_.exit.i.i.i, label %.lr.ph238

bb.aq:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEE8push_mutB1r_.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bb, ptr %i.fs, align 8
  store i64 -1, ptr %0, align 8
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc10SyncSenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1q_(i64 %i.bd, ptr %i.be) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3328)
  %i.ft = icmp eq i64 %i.bm, 0
  br i1 %i.ft, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropB1r_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aq, %.lr.ph.i.i.i
  %.sroa.0.04.i.i.i = phi i64 [ %i.fv, %.lr.ph.i.i.i ], [ 0, %bb.aq ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %.sroa.0.04.i.i.i ; 2 uses
  %i.fv = add nuw nsw i64 %.sroa.0.04.i.i.i, 1
  %.val.i.i.i61 = load i64, ptr %i.fu, align 8, !range !32, !alias.scope !3328, !noalias !3327, !noundef !11
  %i.fw = getelementptr i8, ptr %i.fu, i64 8
  %.val3.i.i.i = load ptr, ptr %i.fw, align 8, !alias.scope !3328, !noalias !3327
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1n_(i64 %.val.i.i.i61, ptr %.val3.i.i.i) #34, !noalias !3329
  %i.fx = icmp eq i64 %.sroa.0.04.i.i.i, %i.ax
  br i1 %i.fx, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropB1r_.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropB1r_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.aq
  %.val.i = load i64, ptr %i.s, align 8, !range !22, !alias.scope !3327, !noundef !11 ; 2 uses
  %i.fy = icmp eq i64 %.val.i, 0
  br i1 %i.fy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEB1U_.exit, label %bb.ar

bb.ar:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropB1r_.exit.i
  %i.fz = shl nuw i64 %.val.i, 4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bj, i64 noundef %i.fz, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !3327
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEB1U_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEB1U_.exit: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropB1r_.exit.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionINtNtCsgcf5BHVXlUt_7uu_sort5merge10ReaderFileINtB1x_15PlainMergeInputINtNtBG_5boxed3BoxDNtNtNtBG_2io4read4ReadNtNtB4_6marker4SendEL_EEEEEEB1z_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #34
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1p_(i64 1, ptr nonnull %i.t) #34
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1n_(i64 1, ptr nonnull %i.t) #34
  br label %bb.ak

bb.as:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEE8push_mutB1r_.exit
  %i.ga = load i64, ptr %i.ah, align 8, !noundef !11 ; 4 uses
  %i.gb = load i64, ptr %i.d, align 8, !range !22, !noundef !11
  %i.gc = icmp eq i64 %i.ga, %i.gb
  br i1 %i.gc, label %bb.at, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtCsgcf5BHVXlUt_7uu_sort5merge10ReaderFileINtB1k_15PlainMergeInputINtNtB7_5boxed3BoxDNtNtNtB7_2io4read4ReadNtNtBK_6marker4SendEL_EEEEE8push_mutB1m_.exit

bb.at:                                            ; preds = %bb.as
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtCsgcf5BHVXlUt_7uu_sort5merge10ReaderFileINtB1r_15PlainMergeInputINtNtB7_5boxed3BoxDNtNtNtB7_2io4read4ReadNtNtBR_6marker4SendEL_EEEEE8grow_oneB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #39
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtCsgcf5BHVXlUt_7uu_sort5merge10ReaderFileINtB1k_15PlainMergeInputINtNtB7_5boxed3BoxDNtNtNtB7_2io4read4ReadNtNtBK_6marker4SendEL_EEEEE8push_mutB1m_.exit

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtCsgcf5BHVXlUt_7uu_sort5merge10ReaderFileINtB1k_15PlainMergeInputINtNtB7_5boxed3BoxDNtNtNtB7_2io4read4ReadNtNtBK_6marker4SendEL_EEEEE8push_mutB1m_.exit: ; preds = %bb.as, %bb.at
  %i.gd = load ptr, ptr %i.ag, align 8, !nonnull !11, !noundef !11
  %i.ge = getelementptr inbounds nuw [56 x i8], ptr %i.gd, i64 %i.ga ; 7 uses
  store i64 %i.bd, ptr %i.ge, align 8, !noalias !3330
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store ptr %i.be, ptr %.sroa.5104.0..sroa_idx, align 8, !noalias !3330
  %.sroa.6105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store i64 0, ptr %.sroa.6105.0..sroa_idx, align 8, !noalias !3330
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.7.0..sroa_idx, align 8, !noalias !3330
  %.sroa.8106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  store i64 0, ptr %.sroa.8106.0..sroa_idx, align 8, !noalias !3330
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  store ptr %i.ba, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !3330
  %.sroa.10107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  store ptr %i.bb, ptr %.sroa.10107.0..sroa_idx, align 8, !noalias !3330
  %i.gf = add i64 %i.ga, 1                        ; 3 uses
  store i64 %i.gf, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !3331
  %i.gg = tail call noundef dereferenceable_or_null(8192) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) 8192, i64 noundef range(i64 1, 9) 1) #34, !noalias !3331 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.au, label %_RNvMs0_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_13RecycledChunk3new.exit80

bb.au:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtCsgcf5BHVXlUt_7uu_sort5merge10ReaderFileINtB1k_15PlainMergeInputINtNtB7_5boxed3BoxDNtNtNtB7_2io4read4ReadNtNtBK_6marker4SendEL_EEEEE8push_mutB1m_.exit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #37, !noalias !3332
  unreachable

_RNvMs0_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_13RecycledChunk3new.exit80: ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtCsgcf5BHVXlUt_7uu_sort5merge10ReaderFileINtB1k_15PlainMergeInputINtNtB7_5boxed3BoxDNtNtNtB7_2io4read4ReadNtNtBK_6marker4SendEL_EEEEE8push_mutB1m_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5110.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7112.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9114.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %.sroa.896.0230, ptr %i.q, align 8
  store i64 0, ptr %i.au, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4109.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6111.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8113.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10115.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.12.0..sroa_idx, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.14.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.16.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.18.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.19.0..sroa_idx, align 8
  store i64 8192, ptr %.sroa.20.0..sroa_idx, align 8
  store ptr %i.gg, ptr %.sroa.21.0..sroa_idx, align 8
  store i64 8192, ptr %.sroa.22.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.23.0..sroa_idx, align 8
  call fastcc void @_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendBU_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(232) %i.r, i64 1, ptr nonnull %i.t, ptr noalias nofree noundef align 8 captures(address) dereferenceable(232) %i.q) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3333)
  %i.gi = load i64, ptr %i.av, align 8, !range !10, !alias.scope !3333, !noalias !3334, !noundef !11
  %.not.i = icmp eq i64 %i.gi, -1
  br i1 %.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE6unwrapB1x_.exit, label %bb.av, !prof !17

bb.av:                                            ; preds = %_RNvMs0_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_13RecycledChunk3new.exit80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3335
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(232) %i.r, i64 232, i1 false), !noalias !3334
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @370, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #40, !noalias !3333
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE6unwrapB1x_.exit: ; preds = %_RNvMs0_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_13RecycledChunk3new.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.gj = icmp eq ptr %i.ay, %2
  br i1 %i.gj, label %._crit_edge, label %bb.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsgcf5BHVXlUt_7uu_sort5merge19merge_without_limitNtB2_18PlainTmpMergeInputINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultBR_INtNtB1n_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB4_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.6157 = alloca [160 x i8], align 8        ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 2 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 10 uses
  %i.h = alloca [232 x i8], align 8               ; 3 uses
  %i.i = alloca [232 x i8], align 8               ; 3 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [232 x i8], align 8               ; 25 uses
  %i.o = alloca [232 x i8], align 8               ; 5 uses
  %i.p = alloca [232 x i8], align 8               ; 25 uses
  %i.q = alloca [232 x i8], align 8               ; 5 uses
  %i.r = alloca [40 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !3434
  %i.t = tail call noundef align 128 dereferenceable_or_null(512) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 512, i64 noundef range(i64 1, -9223372036854775807) 128) #34, !noalias !3434 ; 20 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.b, label %_RINvNtNtCs2vKOLqTMYjT_3std4sync4mpmc7channelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEBM_.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 512) #37, !noalias !3434
  unreachable

_RINvNtNtCs2vKOLqTMYjT_3std4sync4mpmc7channelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEBM_.exit: ; preds = %bb.a
  %.sroa.543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %.sroa.745.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  store i32 0, ptr %.sroa.745.0..sroa_idx.i, align 128, !noalias !3435
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 260
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !3435
  %.sroa.947.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  store i64 0, ptr %.sroa.947.0..sroa_idx.i, align 8, !noalias !3435
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(16) %i.t, i8 0, i64 16, i1 false), !noalias !3435
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(16) %.sroa.543.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !3435
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.0..sroa_idx.i, align 16, !noalias !3435
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 280
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !3435
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !3435
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 304
  store i64 0, ptr %.sroa.14.0..sroa_idx.i, align 16, !noalias !3435
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 312
  store i8 1, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !3435
  %.sroa.1648.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 384
  store i64 1, ptr %.sroa.1648.0..sroa_idx.i, align 128, !noalias !3435
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 392
  store i64 1, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !3435
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 400
  store i8 0, ptr %.sroa.18.0..sroa_idx.i, align 16, !noalias !3435
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val69 = load ptr, ptr %i.v, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val70 = load ptr, ptr %i.w, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.x = ptrtoint ptr %.val70 to i64
  %i.y = ptrtoint ptr %.val69 to i64
  %i.z = sub nuw i64 %i.x, %i.y                   ; 3 uses
  %i.aa = lshr exact i64 %i.z, 5                  ; 5 uses
  %i.ab = mul i64 %i.aa, 72                       ; 3 uses
  %or.cond.i = icmp ugt i64 %i.z, 4099276460824344800
  br i1 %or.cond.i, label %bb.e, label %bb.c, !prof !12

bb.c:                                             ; preds = %_RINvNtNtCs2vKOLqTMYjT_3std4sync4mpmc7channelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEBM_.exit
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !3436
  %i.ad = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !3436 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.e, label %3

3:                                                ; preds = %bb.d
  %4 = ptrtoint ptr %i.ad to i64
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit

bb.e:                                             ; preds = %_RINvNtNtCs2vKOLqTMYjT_3std4sync4mpmc7channelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEBM_.exit, %bb.d
  %.sroa.10183.0.ph = phi i64 [ %i.ab, %bb.d ], [ undef, %_RINvNtNtCs2vKOLqTMYjT_3std4sync4mpmc7channelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEBM_.exit ]
  %.sroa.4181.0.ph = phi i64 [ 8, %bb.d ], [ 0, %_RINvNtNtCs2vKOLqTMYjT_3std4sync4mpmc7channelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEBM_.exit ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4181.0.ph, i64 %.sroa.10183.0.ph) #37
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %3, %bb.c
  %.sroa.10183.0 = phi i64 [ %4, %3 ], [ 8, %bb.c ]
  %.sroa.4181.0 = phi i64 [ %i.aa, %3 ], [ 0, %bb.c ] ; 2 uses
  %5 = inttoptr i64 %.sroa.10183.0 to ptr
  %6 = icmp samesign ule i64 %i.aa, %.sroa.4181.0
  tail call void @llvm.assume(i1 %6)
  store i64 %.sroa.4181.0, ptr %i.d, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %5, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ah = lshr exact i64 %i.z, 1                  ; 2 uses
  %i.ai = icmp eq ptr %.val70, %.val69
  br i1 %i.ai, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit75, label %7

7:                                                ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !3437
  %8 = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !3437 ; 2 uses
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb.f, label %10

10:                                               ; preds = %7
  %11 = ptrtoint ptr %8 to i64
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit75

bb.f:                                             ; preds = %7
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ah) #37
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit75: ; preds = %10, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit
  %.sroa.10187.0 = phi i64 [ %11, %10 ], [ 8, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit ]
  %.sroa.4185.0 = phi i64 [ %i.aa, %10 ], [ 0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit ] ; 2 uses
  %12 = inttoptr i64 %.sroa.10187.0 to ptr        ; 2 uses
  %i.aj = icmp samesign ule i64 %i.aa, %.sroa.4185.0
  tail call void @llvm.assume(i1 %i.aj)
  store i64 %.sroa.4185.0, ptr %i.s, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  store ptr %12, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store i64 0, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !3438, !noalias !3439, !nonnull !11, !noundef !11 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %.promoted = load ptr, ptr %i.ao, align 8, !alias.scope !3438, !noalias !3439 ; 5 uses
  %i.ap = icmp eq ptr %.promoted, %i.an
  br i1 %i.ap, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i._crit_edge, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i.lr.ph

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i.lr.ph: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit75
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.6126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.7127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.8128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %.sroa.9129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %.sroa.10130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %.sroa.11131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %.sroa.12132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 200
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 216
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 224
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.promoted, i64 32 ; 2 uses
  %.sroa.0.0.copyload1.i369 = load i64, ptr %.promoted, align 8, !noalias !3440 ; 2 uses
  %.not.i76370 = icmp eq i64 %.sroa.0.0.copyload1.i369, -2
  br i1 %.not.i76370, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i._crit_edge, label %.lr.ph372

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE6unwrapB1x_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %.sroa.0.0.copyload1.i = load i64, ptr %i.ax, align 8, !noalias !3441 ; 2 uses
  %.not.i76 = icmp eq i64 %.sroa.0.0.copyload1.i, -2
  br i1 %.not.i76, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i._crit_edge, label %.lr.ph372

.lr.ph372:                                        ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i.lr.ph, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i
  %.sroa.0.0.copyload1.i371 = phi i64 [ %.sroa.0.0.copyload1.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i ], [ %.sroa.0.0.copyload1.i369, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i.lr.ph ] ; 2 uses
  %i.ax = phi ptr [ %i.aw, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i ], [ %i.av, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i.lr.ph ] ; 6 uses
  %i.ay = phi i64 [ %i.bc, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i ], [ 0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i.lr.ph ] ; 2 uses
  %i.az = phi ptr [ %i.ax, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i ], [ %.promoted, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i.lr.ph ] ; 3 uses
  %i.ba = phi i64 [ %i.bm, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i ], [ 0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i.lr.ph ] ; 4 uses
  %i.bb = phi ptr [ %i.bj, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i ], [ %12, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i.lr.ph ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3442)
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.9.16.copyload = load ptr, ptr %.sroa.7.0..sroa_idx2.i, align 8, !noalias !3442 ; 3 uses
  %.sroa.11.16..sroa.7.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.11.16.copyload = load ptr, ptr %.sroa.11.16..sroa.7.0..sroa_idx2.i.sroa_idx, align 8, !noalias !3442 ; 3 uses
  %.sroa.12.16..sroa.7.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.12.16.copyload = load i64, ptr %.sroa.12.16..sroa.7.0..sroa_idx2.i.sroa_idx, align 8, !noalias !3442
  %i.bc = add i64 %i.ay, 1                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call fastcc void @_RINvNtNtCs2vKOLqTMYjT_3std4sync4mpmc12sync_channelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.l, i64 noundef 2) #34
  %i.bd = load i64, ptr %i.l, align 8, !range !32, !noundef !11 ; 2 uses
  %i.be = load ptr, ptr %i.aq, align 8, !noundef !11 ; 2 uses
  %i.bf = load i64, ptr %i.ar, align 8, !range !32, !noundef !11
  %i.bg = load ptr, ptr %i.as, align 8, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3443)
  %i.bh = load i64, ptr %i.s, align 8, !range !22, !alias.scope !3443, !noundef !11
  %i.bi = icmp eq i64 %i.ba, %i.bh
  br i1 %i.bi, label %bb.g, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEE8push_mutB1r_.exit

bb.g:                                             ; preds = %.lr.ph372
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEE8grow_oneB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #39
  %.pre = load ptr, ptr %i.ak, align 8, !alias.scope !3443
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEE8push_mutB1r_.exit

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEE8push_mutB1r_.exit: ; preds = %.lr.ph372, %bb.g
  %i.bj = phi ptr [ %i.bb, %.lr.ph372 ], [ %.pre, %bb.g ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.ba ; 2 uses
  store i64 %i.bf, ptr %i.bk, align 8, !noalias !3443
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bg, ptr %i.bl, align 8, !noalias !3443
  %i.bm = add i64 %i.ba, 1                        ; 5 uses
  store i64 %i.bm, ptr %i.al, align 8, !alias.scope !3443
  %i.bn = icmp eq i64 %.sroa.0.0.copyload1.i371, -1
  br i1 %i.bn, label %bb.an, label %bb.ap

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i._crit_edge: ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE6unwrapB1x_.exit, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i.lr.ph, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit75
  %i.bo = phi i64 [ 0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit75 ], [ 0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i.lr.ph ], [ %i.bm, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE6unwrapB1x_.exit ], [ %i.bm, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i ] ; 3 uses
  %i.bp = phi i64 [ 0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit75 ], [ 0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i.lr.ph ], [ %i.gg, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE6unwrapB1x_.exit ], [ %i.gg, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i ] ; 3 uses
  %.lcssa247 = phi i64 [ 0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit75 ], [ 0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i.lr.ph ], [ %i.bc, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE6unwrapB1x_.exit ], [ %i.bc, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i ]
  %i.bq = phi ptr [ %.promoted, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit75 ], [ %i.av, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i.lr.ph ], [ %i.ax, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE6unwrapB1x_.exit ], [ %i.aw, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i ]
  store ptr %i.bq, ptr %i.ao, align 8
  store i64 %.lcssa247, ptr %.sroa.2.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB1s_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEB2z_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.r) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.br = icmp ult i64 %i.bp, 128102389400760776
  tail call void @llvm.assume(i1 %i.br)
  %.not = icmp eq i64 %i.bp, 0
  br i1 %.not, label %._crit_edge256, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.6136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.7137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.8138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.sroa.9139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %.sroa.10140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %.sroa.11141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %.sroa.12142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %.sroa.13143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %.sroa.14144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %.sroa.15145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %.sroa.16146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %.sroa.17147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  %.sroa.18148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 184
  %.sroa.19149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  %.sroa.20150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %.sroa.21151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  %.sroa.22152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %.sroa.23153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.ad

._crit_edge256:                                   ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE6unwrapB1x_.exit53, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i._crit_edge
  call fastcc void @_RNvXso_Csgcf5BHVXlUt_7uu_sortNtB5_14GlobalSettingsNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(160) %.sroa.6157, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %2) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 -1, ptr %i.bu, align 8
  store i64 0, ptr %i.k, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i8 0, ptr %i.bv, align 8
  %i.bw = load atomic i64, ptr @_RNvNCNvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8, !noalias !3444 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3444
  call void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 14) #34, !noalias !3444
  %i.by = load i64, ptr %i.c, align 8, !range !10, !noalias !3444, !noundef !11 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.by, -1
  br i1 %.not.i.i.i, label %_RNCNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCINvNtCsgcf5BHVXlUt_7uu_sort5merge19merge_without_limitNtB15_18PlainTmpMergeInputINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultB1U_INtNtB2r_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE0IB39_uB3O_EE00B17_.exit.i.i.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge256
  %i.bz = add i64 %i.bw, -1
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.45.0.copyload.i.i.i = load ptr, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !noalias !3444, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.56.0.copyload.i.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i, align 8, !noalias !3444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3445
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.45.0.copyload.i.i.i, i64 noundef %.sroa.56.0.copyload.i.i.i) #34, !noalias !3445
  %i.ca = load i64, ptr %i.b, align 8, !range !34, !noalias !3445, !noundef !11
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3445
  br label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !3445, !nonnull !11, !noundef !11 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !3445, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3445
  switch i64 %i.cf, label %thread-pre-split.i.i.i.i.i [
    i64 0, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cg = load i8, ptr %i.cd, align 1, !alias.scope !3446, !noalias !3447, !noundef !11 ; 2 uses
  switch i8 %i.cg, label %bb.n [
    i8 43, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
    i8 45, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i:                       ; preds = %bb.l
  %.pr.i.i.i.i.i = load i8, ptr %i.cd, align 1, !alias.scope !3446, !noalias !3447
  br label %bb.n

bb.n:                                             ; preds = %thread-pre-split.i.i.i.i.i, %bb.m
  %i.ch = phi i8 [ %.pr.i.i.i.i.i, %thread-pre-split.i.i.i.i.i ], [ %i.cg, %bb.m ]
  %cond.i.i.i.i.i = icmp eq i8 %i.ch, 43          ; 2 uses
  %i.ci = sext i1 %cond.i.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i.i = add nsw i64 %i.cf, %i.ci ; 4 uses
  %.sroa.0.0.idx.i.i.i.i.i = zext i1 %cond.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.sroa.0.0.idx.i.i.i.i.i ; 2 uses
  %i.cj = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i, 17
  br i1 %i.cj, label %.preheader.i.i.i.i.i, label %.preheader56.i.i.i.i.i.preheader

.preheader.i.i.i.i.i:                             ; preds = %bb.n
  %.not5366.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i, 0
  br i1 %.not5366.i.i.i.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader56.i.i.i.i.i:                           ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i382, i64 1
  %i.cl = add nsw i64 %.sroa.15.1.i.i.i.i.i381, -1 ; 2 uses
  %.not52.i.not.i.i.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not52.i.not.i.i.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.preheader56.i.i.i.i.i.preheader

.preheader56.i.i.i.i.i.preheader:                 ; preds = %bb.n, %.preheader56.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i382 = phi ptr [ %i.ck, %.preheader56.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.n ] ; 2 uses
  %.sroa.15.1.i.i.i.i.i381 = phi i64 [ %i.cl, %.preheader56.i.i.i.i.i ], [ %.sroa.15.0.i.i.i.i.i, %bb.n ]
  %.sroa.042.0.i.i.i.i.i380 = phi i64 [ %i.cu, %.preheader56.i.i.i.i.i ], [ 0, %bb.n ]
  %i.cm = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i.i.i380, i64 10) ; 2 uses
  %i.cn = extractvalue { i64, i1 } %i.cm, 1
  br i1 %i.cn, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %bb.o, !prof !21

bb.o:                                             ; preds = %.preheader56.i.i.i.i.i.preheader
  %i.co = extractvalue { i64, i1 } %i.cm, 0       ; 2 uses
  %i.cp = load i8, ptr %.sroa.0.1.i.i.i.i.i382, align 1, !alias.scope !3446, !noalias !3447, !noundef !11
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add nsw i32 %i.cq, -48                  ; 2 uses
  %i.cs = icmp ugt i32 %i.cr, 9
  %i.ct = zext nneg i32 %i.cr to i64
  %i.cu = add i64 %i.co, %i.ct                    ; 3 uses
  %i.cv = icmp ult i64 %i.cu, %i.co
  %or.cond.i.i.i.i = select i1 %i.cs, i1 true, i1 %i.cv, !prof !12
  br i1 %or.cond.i.i.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.preheader56.i.i.i.i.i, !prof !12

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.p
  %.sroa.0.269.i.i.i.i.i = phi ptr [ %i.dc, %bb.p ], [ %.sroa.0.0.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i.i.i = phi i64 [ %i.db, %bb.p ], [ %.sroa.15.0.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %.sroa.042.267.i.i.i.i.i = phi i64 [ %i.de, %bb.p ], [ 0, %.preheader.i.i.i.i.i ]
  %i.cw = load i8, ptr %.sroa.0.269.i.i.i.i.i, align 1, !alias.scope !3446, !noalias !3447, !noundef !11
  %i.cx = zext i8 %i.cw to i32
  %i.cy = add nsw i32 %i.cx, -48                  ; 2 uses
  %i.cz = icmp ugt i32 %i.cy, 9
  br i1 %i.cz, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.da = mul i64 %.sroa.042.267.i.i.i.i.i, 10
  %i.db = add nsw i64 %.sroa.15.268.i.i.i.i.i, -1 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i.i.i, i64 1
  %i.dd = zext nneg i32 %i.cy to i64
  %i.de = add i64 %i.da, %i.dd                    ; 2 uses
  %.not53.i.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not53.i.i.i.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i: ; preds = %bb.o, %.preheader56.i.i.i.i.i.preheader, %.preheader56.i.i.i.i.i, %bb.p, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.m, %bb.m, %bb.l, %bb.k
  %.sroa.0.1.i.i.i.i = phi i64 [ 2097152, %bb.k ], [ 0, %.preheader.i.i.i.i.i ], [ 2097152, %bb.m ], [ 2097152, %bb.l ], [ 2097152, %bb.m ], [ %i.de, %bb.p ], [ 2097152, %.lr.ph.i.i.i.i.i ], [ 2097152, %bb.o ], [ 2097152, %.preheader56.i.i.i.i.i.preheader ], [ %i.cu, %.preheader56.i.i.i.i.i ] ; 2 uses
  %i.df = icmp eq i64 %i.by, 0
  br i1 %i.df, label %_RNCNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCINvNtCsgcf5BHVXlUt_7uu_sort5merge19merge_without_limitNtB15_18PlainTmpMergeInputINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultB1U_INtNtB2r_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE0IB39_uB3O_EE00B17_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i
end_hunk_0
begin_hunk_1_@_RINvNtCsgcf5BHVXlUt_7uu_sort5merge19merge_without_limitNtB2_18PlainTmpMergeInputINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultBR_INtNtB1n_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB4_:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9139.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11141.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13143.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15145.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17147.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %.sroa.047.0254, ptr %i.n, align 8
  store i64 0, ptr %i.bs, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4134.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6136.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8138.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10140.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.12142.0..sroa_idx, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.14144.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.16146.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.18148.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.19149.0..sroa_idx, align 8
  store i64 8192, ptr %.sroa.20150.0..sroa_idx, align 8
  store ptr %i.eo, ptr %.sroa.21151.0..sroa_idx, align 8
  store i64 8192, ptr %.sroa.22152.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.23153.0..sroa_idx, align 8
  call fastcc void @_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendBU_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(232) %i.o, i64 1, ptr nonnull %i.t, ptr noalias nofree noundef align 8 captures(address) dereferenceable(232) %i.n) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3463)
  %i.eq = load i64, ptr %i.bt, align 8, !range !10, !alias.scope !3463, !noalias !3464, !noundef !11
  %.not.i52 = icmp eq i64 %i.eq, -1
  br i1 %.not.i52, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE6unwrapB1x_.exit53, label %bb.af, !prof !17

bb.af:                                            ; preds = %_RNvMs0_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_13RecycledChunk3new.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(232) %i.o, i64 232, i1 false), !noalias !3464
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @370, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #40, !noalias !3463
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE6unwrapB1x_.exit53: ; preds = %_RNvMs0_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_13RecycledChunk3new.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %exitcond.not = icmp eq i64 %i.en, %i.bp
  br i1 %exitcond.not, label %._crit_edge256, label %bb.ad

.lr.ph259:                                        ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtCs2vKOLqTMYjT_3std6thread11join_handle10JoinHandleIBv_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtB4_2io5error5ErrorE6expectCsgcf5BHVXlUt_7uu_sort.exit, %bb.am
  %i.er = phi ptr [ %i.fp, %bb.am ], [ inttoptr (i64 8 to ptr), %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtCs2vKOLqTMYjT_3std6thread11join_handle10JoinHandleIBv_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtB4_2io5error5ErrorE6expectCsgcf5BHVXlUt_7uu_sort.exit ] ; 2 uses
  %i.es = phi i64 [ %i.fq, %bb.am ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtCs2vKOLqTMYjT_3std6thread11join_handle10JoinHandleIBv_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtB4_2io5error5ErrorE6expectCsgcf5BHVXlUt_7uu_sort.exit ] ; 4 uses
  %.sroa.4159.0258 = phi ptr [ %i.et, %bb.am ], [ %i.ei, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtCs2vKOLqTMYjT_3std6thread11join_handle10JoinHandleIBv_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtB4_2io5error5ErrorE6expectCsgcf5BHVXlUt_7uu_sort.exit ] ; 3 uses
  %.sroa.13162.0257 = phi i64 [ %i.ex, %bb.am ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtCs2vKOLqTMYjT_3std6thread11join_handle10JoinHandleIBv_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtB4_2io5error5ErrorE6expectCsgcf5BHVXlUt_7uu_sort.exit ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.4159.0258, i64 16 ; 2 uses
  %i.eu = load i64, ptr %.sroa.4159.0258, align 8, !range !32, !noalias !3466, !noundef !11 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.4159.0258, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !noalias !3466, !noundef !11 ; 3 uses
  %i.ex = add nuw nsw i64 %.sroa.13162.0257, 1
  %i.ey = call fastcc noundef ptr @_RNvMsg_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4recvBU_(i64 %i.eu, ptr %i.ew) #34 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %bb.ai, label %bb.aj

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1o_.exit.i.i.i: ; preds = %bb.am, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtCs2vKOLqTMYjT_3std6thread11join_handle10JoinHandleIBv_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtB4_2io5error5ErrorE6expectCsgcf5BHVXlUt_7uu_sort.exit
  %i.fa = icmp eq i64 %i.ej, 0
  br i1 %i.fa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2V_.exit, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1o_.exit.i.i.i
  %i.fb = shl nuw i64 %i.ej, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ei, i64 noundef %i.fb, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !3467
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2V_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2V_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1o_.exit.i.i.i, %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %2, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !noundef !11 ; 3 uses
  %i.ff = icmp ult i64 %i.fe, 230584300921369396
  call void @llvm.assume(i1 %i.ff)
  %i.fg = lshr i64 %i.fe, 1                       ; 2 uses
  %.not3.i = icmp eq i64 %i.fg, 0
  br i1 %.not3.i, label %_RNvMsg_NtCsfyPazK51OL5_16binary_heap_plus11binary_heapINtB5_10BinaryHeapNtNtCsgcf5BHVXlUt_7uu_sort5merge13MergeableFileNtB1a_14FileComparatorE7rebuildB1c_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2V_.exit, %.lr.ph.i
  %.sroa.0.04.i = phi i64 [ %i.fh, %.lr.ph.i ], [ %i.fg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2V_.exit ]
  %i.fh = add nsw i64 %.sroa.0.04.i, -1           ; 3 uses
  call fastcc void @_RNvMsg_NtCsfyPazK51OL5_16binary_heap_plus11binary_heapINtB5_10BinaryHeapNtNtCsgcf5BHVXlUt_7uu_sort5merge13MergeableFileNtB1a_14FileComparatorE15sift_down_rangeB1c_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.j, i64 noundef %i.fh, i64 noundef %i.fe) #34
  %.not.i80 = icmp eq i64 %i.fh, 0
  br i1 %.not.i80, label %_RNvMsg_NtCsfyPazK51OL5_16binary_heap_plus11binary_heapINtB5_10BinaryHeapNtNtCsgcf5BHVXlUt_7uu_sort5merge13MergeableFileNtB1a_14FileComparatorE7rebuildB1c_.exit, label %.lr.ph.i

_RNvMsg_NtCsfyPazK51OL5_16binary_heap_plus11binary_heapINtB5_10BinaryHeapNtNtCsgcf5BHVXlUt_7uu_sort5merge13MergeableFileNtB1a_14FileComparatorE7rebuildB1c_.exit: ; preds = %.lr.ph.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2V_.exit
  store i64 1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.537.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ef, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.dj, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  %.sroa.638.sroa.5.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ee, ptr %.sroa.638.sroa.5.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  %.sroa.739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %.sroa.739.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEB1U_.exit, %_RNvMsg_NtCsfyPazK51OL5_16binary_heap_plus11binary_heapINtB5_10BinaryHeapNtNtCsgcf5BHVXlUt_7uu_sort5merge13MergeableFileNtB1a_14FileComparatorE7rebuildB1c_.exit
  ret void

bb.ai:                                            ; preds = %.lr.ph259
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1n_(i64 %i.eu, ptr %i.ew) #34
  br label %bb.am

bb.aj:                                            ; preds = %.lr.ph259
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !3468
  %i.fi = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !3468 ; 5 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %bb.ak, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !15

bb.ak:                                            ; preds = %bb.aj
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #37, !noalias !3468
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.aj
  store i64 1, ptr %i.fi, align 8
  %.sroa.4195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i64 1, ptr %.sroa.4195.0..sroa_idx, align 8
  %.sroa.5196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store ptr %i.ey, ptr %.sroa.5196.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3469)
  %i.fk = load i64, ptr %i.m, align 8, !range !22, !alias.scope !3469, !noalias !3470, !noundef !11
  %i.fl = icmp eq i64 %i.es, %i.fk
  br i1 %i.fl, label %bb.al, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge13MergeableFileE8push_mutBJ_.exit

bb.al:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCsgcf5BHVXlUt_7uu_sort5merge13MergeableFileE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #39, !noalias !3470
  %.pre287 = load ptr, ptr %i.eg, align 8, !alias.scope !3469, !noalias !3470
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge13MergeableFileE8push_mutBJ_.exit

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge13MergeableFileE8push_mutBJ_.exit: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.al
  %i.fm = phi ptr [ %i.er, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.pre287, %bb.al ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [40 x i8], ptr %i.fm, i64 %i.es ; 5 uses
  store i64 %i.eu, ptr %i.fn, align 8, !noalias !3469
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr %i.ew, ptr %.sroa.4172.0..sroa_idx, align 8, !noalias !3469
  %.sroa.5173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store ptr %i.fi, ptr %.sroa.5173.0..sroa_idx, align 8, !noalias !3469
  %.sroa.6174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store i64 0, ptr %.sroa.6174.0..sroa_idx, align 8, !noalias !3469
  %.sroa.7175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  store i64 %.sroa.13162.0257, ptr %.sroa.7175.0..sroa_idx, align 8, !noalias !3469
  %i.fo = add i64 %i.es, 1                        ; 2 uses
  store i64 %i.fo, ptr %i.eh, align 8, !alias.scope !3469, !noalias !3470
  br label %bb.am

bb.am:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge13MergeableFileE8push_mutBJ_.exit, %bb.ai
  %i.fp = phi ptr [ %i.fm, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge13MergeableFileE8push_mutBJ_.exit ], [ %i.er, %bb.ai ]
  %i.fq = phi i64 [ %i.fo, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge13MergeableFileE8push_mutBJ_.exit ], [ %i.es, %bb.ai ]
  %i.fr = icmp eq ptr %i.et, %i.el
  br i1 %i.fr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1o_.exit.i.i.i, label %.lr.ph259

bb.an:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEE8push_mutB1r_.exit
  store ptr %i.ax, ptr %i.ao, align 8
  store i64 %i.bc, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.16.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.16.copyload) ]
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.16.copyload, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.11.16.copyload, ptr %i.ft, align 8
  store i64 -1, ptr %0, align 8
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc10SyncSenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1q_(i64 %i.bd, ptr %i.be) #34
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB1s_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEB2z_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.r) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3472)
  %i.fu = icmp eq i64 %i.bm, 0
  br i1 %i.fu, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropB1r_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.an, %.lr.ph.i.i.i
  %.sroa.0.04.i.i.i = phi i64 [ %i.fw, %.lr.ph.i.i.i ], [ 0, %bb.an ] ; 3 uses
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %.sroa.0.04.i.i.i ; 2 uses
  %i.fw = add nuw nsw i64 %.sroa.0.04.i.i.i, 1
  %.val.i.i.i81 = load i64, ptr %i.fv, align 8, !range !32, !alias.scope !3472, !noalias !3471, !noundef !11
  %i.fx = getelementptr i8, ptr %i.fv, i64 8
  %.val3.i.i.i = load ptr, ptr %i.fx, align 8, !alias.scope !3472, !noalias !3471
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1n_(i64 %.val.i.i.i81, ptr %.val3.i.i.i) #34, !noalias !3473
  %i.fy = icmp eq i64 %.sroa.0.04.i.i.i, %i.ba
  br i1 %i.fy, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropB1r_.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropB1r_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.an
  %.val.i = load i64, ptr %i.s, align 8, !range !22, !alias.scope !3471, !noundef !11 ; 2 uses
  %i.fz = icmp eq i64 %.val.i, 0
  br i1 %i.fz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEB1U_.exit, label %bb.ao

bb.ao:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropB1r_.exit.i
  %i.ga = shl nuw i64 %.val.i, 4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bj, i64 noundef %i.ga, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !3471
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEB1U_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEB1U_.exit: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropB1r_.exit.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionINtNtCsgcf5BHVXlUt_7uu_sort5merge10ReaderFileNtB1x_18PlainTmpMergeInputEEEEB1z_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #34
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1p_(i64 1, ptr nonnull %i.t) #34
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1n_(i64 1, ptr nonnull %i.t) #34
  br label %bb.ah

bb.ap:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEE8push_mutB1r_.exit
  %i.gb = load i64, ptr %i.ag, align 8, !noundef !11 ; 3 uses
  %i.gc = load i64, ptr %i.d, align 8, !range !22, !noundef !11
  %i.gd = icmp eq i64 %i.gb, %i.gc
  br i1 %i.gd, label %bb.aq, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtCsgcf5BHVXlUt_7uu_sort5merge10ReaderFileNtB1k_18PlainTmpMergeInputEEE8push_mutB1m_.exit

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtCsgcf5BHVXlUt_7uu_sort5merge10ReaderFileNtB1r_18PlainTmpMergeInputEEE8grow_oneB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #39
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtCsgcf5BHVXlUt_7uu_sort5merge10ReaderFileNtB1k_18PlainTmpMergeInputEEE8push_mutB1m_.exit

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtCsgcf5BHVXlUt_7uu_sort5merge10ReaderFileNtB1k_18PlainTmpMergeInputEEE8push_mutB1m_.exit: ; preds = %bb.ap, %bb.aq
  %i.ge = load ptr, ptr %i.af, align 8, !nonnull !11, !noundef !11
  %i.gf = getelementptr inbounds nuw [72 x i8], ptr %i.ge, i64 %i.gb ; 9 uses
  store i64 %i.bd, ptr %i.gf, align 8, !noalias !3474
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store ptr %i.be, ptr %.sroa.5117.0..sroa_idx, align 8, !noalias !3474
  %.sroa.6118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store i64 %.sroa.0.0.copyload1.i371, ptr %.sroa.6118.0..sroa_idx, align 8, !noalias !3474
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store ptr %.sroa.9.16.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !3474
  %.sroa.8119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  store ptr %.sroa.11.16.copyload, ptr %.sroa.8119.0..sroa_idx, align 8, !noalias !3474
  %.sroa.9120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  store i64 %.sroa.12.16.copyload, ptr %.sroa.9120.0..sroa_idx, align 8, !noalias !3474
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  store i64 0, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !3474
  %.sroa.11121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.11121.0..sroa_idx, align 8, !noalias !3474
  %.sroa.12122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 64
  store i64 0, ptr %.sroa.12122.0..sroa_idx, align 8, !noalias !3474
  %i.gg = add i64 %i.gb, 1                        ; 3 uses
  store i64 %i.gg, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !3475
  %i.gh = tail call noundef dereferenceable_or_null(8192) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) 8192, i64 noundef range(i64 1, 9) 1) #34, !noalias !3475 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %bb.ar, label %_RNvMs0_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_13RecycledChunk3new.exit100

bb.ar:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtCsgcf5BHVXlUt_7uu_sort5merge10ReaderFileNtB1k_18PlainTmpMergeInputEEE8push_mutB1m_.exit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #37, !noalias !3476
  unreachable

_RNvMs0_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_13RecycledChunk3new.exit100: ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtCsgcf5BHVXlUt_7uu_sort5merge10ReaderFileNtB1k_18PlainTmpMergeInputEEE8push_mutB1m_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5125.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7127.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9129.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11131.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.ay, ptr %i.p, align 8
  store i64 0, ptr %i.at, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4124.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6126.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8128.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10130.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.12132.0..sroa_idx, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.14.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.16.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.18.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.19.0..sroa_idx, align 8
  store i64 8192, ptr %.sroa.20.0..sroa_idx, align 8
  store ptr %i.gh, ptr %.sroa.21.0..sroa_idx, align 8
  store i64 8192, ptr %.sroa.22.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.23.0..sroa_idx, align 8
  call fastcc void @_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendBU_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(232) %i.q, i64 1, ptr nonnull %i.t, ptr noalias nofree noundef align 8 captures(address) dereferenceable(232) %i.p) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3477)
  %i.gj = load i64, ptr %i.au, align 8, !range !10, !alias.scope !3477, !noalias !3478, !noundef !11
  %.not.i = icmp eq i64 %i.gj, -1
  br i1 %.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE6unwrapB1x_.exit, label %bb.as, !prof !17

bb.as:                                            ; preds = %_RNvMs0_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_13RecycledChunk3new.exit100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(232) %i.q, i64 232, i1 false), !noalias !3478
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @370, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #40, !noalias !3477
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE6unwrapB1x_.exit: ; preds = %_RNvMs0_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_13RecycledChunk3new.exit100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.gk = icmp eq ptr %i.ax, %i.an
  br i1 %i.gk, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i._crit_edge, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge18PlainTmpMergeInputINtNtB9_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextB1C_.exit.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsgcf5BHVXlUt_7uu_sort5merge19merge_without_limitNtB2_18PlainTmpMergeInputINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtB2_18ClosedPlainTmpFileEINtNtB2b_5boxed3BoxDINtNtNtB1p_3ops8function5FnMutTB2S_EEp6OutputINtNtB1p_6result6ResultBR_IB3j_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEL_EEEB4_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.6189 = alloca [160 x i8], align 8        ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 2 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 9 uses
  %i.j = alloca [232 x i8], align 8               ; 3 uses
  %i.k = alloca [232 x i8], align 8               ; 3 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [232 x i8], align 8               ; 25 uses
  %i.q = alloca [232 x i8], align 8               ; 5 uses
  %i.r = alloca [232 x i8], align 8               ; 25 uses
  %i.s = alloca [232 x i8], align 8               ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 10 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !3623
  %i.u = tail call noundef align 128 dereferenceable_or_null(512) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 512, i64 noundef range(i64 1, -9223372036854775807) 128) #34, !noalias !3623 ; 20 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.b, label %_RINvNtNtCs2vKOLqTMYjT_3std4sync4mpmc7channelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEBM_.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 512) #37, !noalias !3623
  unreachable

_RINvNtNtCs2vKOLqTMYjT_3std4sync4mpmc7channelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEBM_.exit: ; preds = %bb.a
  %.sroa.543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  %.sroa.745.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 256
  store i32 0, ptr %.sroa.745.0..sroa_idx.i, align 128, !noalias !3624
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 260
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !3624
  %.sroa.947.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 264
  store i64 0, ptr %.sroa.947.0..sroa_idx.i, align 8, !noalias !3624
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !noalias !3624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(16) %.sroa.543.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !3624
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.0..sroa_idx.i, align 16, !noalias !3624
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 280
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !3624
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !3624
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 304
  store i64 0, ptr %.sroa.14.0..sroa_idx.i, align 16, !noalias !3624
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 312
  store i8 1, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !3624
  %.sroa.1648.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 384
  store i64 1, ptr %.sroa.1648.0..sroa_idx.i, align 128, !noalias !3624
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 392
  store i64 1, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !3624
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 400
  store i8 0, ptr %.sroa.18.0..sroa_idx.i, align 16, !noalias !3624
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val69 = load ptr, ptr %i.w, align 8, !nonnull !11, !noundef !11 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val70 = load ptr, ptr %i.x, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %i.y = ptrtoint ptr %.val70 to i64              ; 3 uses
  %i.z = ptrtoint ptr %.val69 to i64
  %i.aa = sub nuw i64 %i.y, %i.z                  ; 2 uses
  %i.ab = udiv exact i64 %i.aa, 24                ; 6 uses
  %i.ac = mul i64 %i.ab, 72                       ; 3 uses
  %or.cond.i = icmp ugt i64 %i.aa, 3074457345618258600
  br i1 %or.cond.i, label %bb.f, label %bb.c, !prof !12

bb.c:                                             ; preds = %_RINvNtNtCs2vKOLqTMYjT_3std4sync4mpmc7channelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEBM_.exit
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !3625
  %i.ae = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !3625 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = ptrtoint ptr %i.ae to i64
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit

bb.f:                                             ; preds = %_RINvNtNtCs2vKOLqTMYjT_3std4sync4mpmc7channelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEBM_.exit, %bb.d
  %.sroa.10215.0.ph = phi i64 [ %i.ac, %bb.d ], [ undef, %_RINvNtNtCs2vKOLqTMYjT_3std4sync4mpmc7channelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEBM_.exit ]
  %.sroa.4213.0.ph = phi i64 [ 8, %bb.d ], [ 0, %_RINvNtNtCs2vKOLqTMYjT_3std4sync4mpmc7channelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEBM_.exit ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4213.0.ph, i64 %.sroa.10215.0.ph) #37
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.e, %bb.c
  %.sroa.10215.0 = phi i64 [ %i.ag, %bb.e ], [ 8, %bb.c ]
  %.sroa.4213.0 = phi i64 [ %i.ab, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.ah = inttoptr i64 %.sroa.10215.0 to ptr
  %i.ai = icmp samesign ule i64 %i.ab, %.sroa.4213.0
  tail call void @llvm.assume(i1 %i.ai)
  store i64 %.sroa.4213.0, ptr %i.d, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.ah, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.al = shl nuw nsw i64 %i.ab, 4                ; 2 uses
  %i.am = icmp eq ptr %.val70, %.val69            ; 2 uses
  br i1 %i.am, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit75, label %bb.g

bb.g:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !3626
  %i.an = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !3626 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = ptrtoint ptr %i.an to i64
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit75

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.al) #37
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit75: ; preds = %bb.h, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit
  %.sroa.10219.0 = phi i64 [ %i.ap, %bb.h ], [ 8, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit ]
  %.sroa.4217.0 = phi i64 [ %i.ab, %bb.h ], [ 0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit ] ; 2 uses
  %i.aq = inttoptr i64 %.sroa.10219.0 to ptr      ; 2 uses
  %i.ar = icmp samesign ule i64 %i.ab, %.sroa.4217.0
  tail call void @llvm.assume(i1 %i.ar)
  store i64 %.sroa.4217.0, ptr %i.t, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  store ptr %i.aq, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store i64 0, ptr %i.at, align 8
  %.sroa.0133.sroa.0.0.copyload = load ptr, ptr %1, align 8, !alias.scope !3627 ; 4 uses
  %.sroa.0133.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0133.sroa.3.0.copyload = load i64, ptr %.sroa.0133.sroa.3.0..sroa_idx, align 8, !alias.scope !3627 ; 4 uses
  %.sroa.0133.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0133.sroa.5.0.copyload = load ptr, ptr %.sroa.0133.sroa.5.0..sroa_idx, align 8, !alias.scope !3627 ; 8 uses
  %.sroa.0133.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0133.sroa.6.0.copyload = load ptr, ptr %.sroa.0133.sroa.6.0..sroa_idx, align 8, !alias.scope !3627 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3628
  br i1 %i.am, label %._crit_edge, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgcf5BHVXlUt_7uu_sort5merge18ClosedPlainTmpFileENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i.lr.ph

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgcf5BHVXlUt_7uu_sort5merge18ClosedPlainTmpFileENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i.lr.ph: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit75
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0133.sroa.6.0.copyload, i64 32
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.10140.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
end_hunk_1
