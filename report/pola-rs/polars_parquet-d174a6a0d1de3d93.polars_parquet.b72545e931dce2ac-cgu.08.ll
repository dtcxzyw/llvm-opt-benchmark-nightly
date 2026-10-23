Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.08?download=true
inline.NumInlined: 3445
inline.NumDeleted: 1834
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write12column_chunk18build_column_chunk:bb.a
  %.sroa.6183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24, !dbg !16846 ; 3 uses
  store ptr %.sroa.0208.0.copyload, ptr %.sroa.6183.0..sroa_idx, align 8, !dbg !16846
  %.sroa.7184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 32, !dbg !16846 ; 2 uses
  store ptr %i.aw, ptr %.sroa.7184.0..sroa_idx, align 8, !dbg !16846
  %.sroa.8185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 40, !dbg !16846
  store ptr %i.az, ptr %.sroa.8185.0..sroa_idx, align 8, !dbg !16846
  %.sroa.9186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 48, !dbg !16846 ; 2 uses
  store <16 x i1> %i.ax, ptr %.sroa.9186.0..sroa_idx, align 8, !dbg !16846
  %.sroa.10188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 56, !dbg !16846 ; 2 uses
  store i64 %i.aj, ptr %.sroa.10188.0..sroa_idx, align 8, !dbg !16846
  %i.ba = icmp eq i64 %i.aj, 0, !dbg !16847
  br i1 %i.ba, label %bb.l, label %bb.j, !dbg !16847

bb.j:                                             ; preds = %bb.i
  %i.bb = bitcast <16 x i1> %i.ax to i16, !dbg !16847 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16662), !dbg !16848
  %.not11.i = icmp eq i16 %i.bb, 0, !dbg !16849
  br i1 %.not11.i, label %.lr.ph.i, label %bb.k, !dbg !16850

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store ptr %i.bg, ptr %.sroa.7184.0..sroa_idx, align 8, !dbg !16851, !alias.scope !16662
  store ptr %i.bf, ptr %.sroa.6183.0..sroa_idx, align 8, !dbg !16852, !alias.scope !16662
  br label %bb.k, !dbg !16850

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %i.bc = phi ptr [ %i.bg, %.lr.ph.i ], [ %i.aw, %bb.j ], !dbg !16853 ; 2 uses
  %i.bd = phi ptr [ %i.bf, %.lr.ph.i ], [ %.sroa.0208.0.copyload, %bb.j ]
  %.val9.i = load <16 x i8>, ptr %i.bc, align 16, !dbg !16854, !noalias !16662
  %i.be = icmp sgt <16 x i8> %.val9.i, splat (i8 -1), !dbg !16855
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -16, !dbg !16856 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16, !dbg !16857 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.be to i16, !dbg !16858 ; 2 uses
  %.not.i101 = icmp eq i16 %.cast.i, 0, !dbg !16849
  br i1 %.not.i101, label %.lr.ph.i, label %._crit_edge.i, !dbg !16850

bb.k:                                             ; preds = %._crit_edge.i, %bb.j
  %i.bh = phi ptr [ %i.bf, %._crit_edge.i ], [ %.sroa.0208.0.copyload, %bb.j ], !dbg !16859
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.bb, %bb.j ], !dbg !16858 ; 3 uses
  %i.bi = add i16 %.lcssa.i, -1, !dbg !16860
  %i.bj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !16861
  %i.bk = zext nneg i16 %i.bj to i64, !dbg !16862
  %i.bl = and i16 %i.bi, %.lcssa.i, !dbg !16863
  store i16 %i.bl, ptr %.sroa.9186.0..sroa_idx, align 8, !dbg !16864, !alias.scope !16662
  %i.bm = sub nsw i64 0, %i.bk, !dbg !16865
  %i.bn = getelementptr inbounds i8, ptr %i.bh, i64 %i.bm, !dbg !16866
  store i64 0, ptr %.sroa.10188.0..sroa_idx, align 8, !dbg !16867
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -1, !dbg !16868
  %i.bp = load i8, ptr %i.bo, align 1, !dbg !16869, !range !1212, !noundef !859
  %i.bq = zext nneg i8 %i.bp to i32, !dbg !16870
  br label %bb.l, !dbg !16871

bb.l:                                             ; preds = %bb.i, %bb.k
  %.sroa.0.0 = phi i32 [ %i.bq, %bb.k ], [ 0, %bb.i ], !dbg !16872
  invoke void @_RNvMsn_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_7RawIterTNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionuEE13drop_elementsBU_(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sroa.6183.0..sroa_idx)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !16873

.noexc:                                           ; preds = %bb.l
  %i.br = load i64, ptr %i.y, align 8, !dbg !16874, !range !1014, !alias.scope !16677, !noundef !859 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.br, 0, !dbg !16874
  br i1 %.not.i.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set8IntoIterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionEEB1s_.exit, label %bb.m, !dbg !16875

bb.m:                                             ; preds = %.noexc
  %i.bs = load i64, ptr %.sroa.4182.0..sroa_idx, align 8, !dbg !16876, !alias.scope !16677, !noundef !859 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0, !dbg !16877
  br i1 %i.bt, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set8IntoIterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionEEB1s_.exit, label %bb.n, !dbg !16877

bb.n:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !16878, !alias.scope !16677, !nonnull !859, !noundef !859
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) %i.br) #40, !dbg !16879
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set8IntoIterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionEEB1s_.exit, !dbg !16880

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set8IntoIterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionEEB1s_.exit: ; preds = %bb.n, %bb.m, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !16881
  br i1 %.not.i, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks5_0NCINvXse_NtB25_5accumxNtB4l_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit, label %.preheader.preheader, !dbg !16882

.preheader.preheader:                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set8IntoIterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionEEB1s_.exit
  %xtraiter = and i64 %2, 3, !dbg !16883          ; 3 uses
  %i.bv = icmp samesign ult i64 %2, 4, !dbg !16883
  br i1 %i.bv, label %.preheader.epil.preheader, label %.preheader.preheader.new, !dbg !16883

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %2, 18014398509481980, !dbg !16883
  br label %.preheader, !dbg !16883

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.cu, %.preheader ], !dbg !16884 ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ct, %.preheader ], !dbg !16885
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.bw = getelementptr inbounds nuw [600 x i8], ptr %1, i64 %.sroa.04.0.i, !dbg !16886 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 348, !dbg !16887
  %.val.i = load i32, ptr %i.bx, align 4, !dbg !16887, !noundef !859
  %i.by = getelementptr i8, ptr %i.bw, i64 568, !dbg !16887
  %.val13.i = load i64, ptr %i.by, align 8, !dbg !16887, !noundef !859
  %i.bz = sext i32 %.val.i to i64, !dbg !16888
  %i.ca = add i64 %.sroa.02.0.i, %i.bz, !dbg !16889
  %i.cb = add i64 %i.ca, %.val13.i, !dbg !16890
  %i.cc = getelementptr inbounds nuw [600 x i8], ptr %1, i64 %.sroa.04.0.i, !dbg !16886 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 948, !dbg !16887
  %.val.i.1 = load i32, ptr %i.cd, align 4, !dbg !16887, !noundef !859
  %i.ce = getelementptr i8, ptr %i.cc, i64 1168, !dbg !16887
  %.val13.i.1 = load i64, ptr %i.ce, align 8, !dbg !16887, !noundef !859
  %i.cf = sext i32 %.val.i.1 to i64, !dbg !16888
  %i.cg = add i64 %i.cb, %i.cf, !dbg !16889
  %i.ch = add i64 %i.cg, %.val13.i.1, !dbg !16890
  %i.ci = getelementptr inbounds nuw [600 x i8], ptr %1, i64 %.sroa.04.0.i, !dbg !16886 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 1548, !dbg !16887
  %.val.i.2 = load i32, ptr %i.cj, align 4, !dbg !16887, !noundef !859
  %i.ck = getelementptr i8, ptr %i.ci, i64 1768, !dbg !16887
  %.val13.i.2 = load i64, ptr %i.ck, align 8, !dbg !16887, !noundef !859
  %i.cl = sext i32 %.val.i.2 to i64, !dbg !16888
  %i.cm = add i64 %i.ch, %i.cl, !dbg !16889
  %i.cn = add i64 %i.cm, %.val13.i.2, !dbg !16890
  %i.co = getelementptr inbounds nuw [600 x i8], ptr %1, i64 %.sroa.04.0.i, !dbg !16886 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 2148, !dbg !16887
  %.val.i.3 = load i32, ptr %i.cp, align 4, !dbg !16887, !noundef !859
  %i.cq = getelementptr i8, ptr %i.co, i64 2368, !dbg !16887
  %.val13.i.3 = load i64, ptr %i.cq, align 8, !dbg !16887, !noundef !859
  %i.cr = sext i32 %.val.i.3 to i64, !dbg !16888
  %i.cs = add i64 %i.cn, %i.cr, !dbg !16889
  %i.ct = add i64 %i.cs, %.val13.i.3, !dbg !16890 ; 3 uses
  %i.cu = add nuw nsw i64 %.sroa.04.0.i, 4, !dbg !16891 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4, !dbg !16883 ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !16883
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.preheader.unr-lcssa, label %.preheader, !dbg !16883

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.preheader.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !16883
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.preheader, label %.preheader.epil.preheader, !dbg !16883

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.preheader.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.cu, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.preheader.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ct, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.preheader.unr-lcssa ]
  %lcmp.mod327 = icmp ne i64 %xtraiter, 0, !dbg !16883
  call void @llvm.assume(i1 %lcmp.mod327), !dbg !16883
  br label %.preheader.epil, !dbg !16883

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.db, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ], !dbg !16884 ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.da, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ], !dbg !16885
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.cv = getelementptr inbounds nuw [600 x i8], ptr %1, i64 %.sroa.04.0.i.epil, !dbg !16886 ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 348, !dbg !16887
  %.val.i.epil = load i32, ptr %i.cw, align 4, !dbg !16887, !noundef !859
  %i.cx = getelementptr i8, ptr %i.cv, i64 568, !dbg !16887
  %.val13.i.epil = load i64, ptr %i.cx, align 8, !dbg !16887, !noundef !859
  %i.cy = sext i32 %.val.i.epil to i64, !dbg !16888
  %i.cz = add i64 %.sroa.02.0.i.epil, %i.cy, !dbg !16889
  %i.da = add i64 %i.cz, %.val13.i.epil, !dbg !16890 ; 2 uses
  %i.db = add nuw nsw i64 %.sroa.04.0.i.epil, 1, !dbg !16891
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !16883 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !16883
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.preheader, label %.preheader.epil, !dbg !16883, !llvm.loop !16090

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.preheader: ; preds = %.preheader.epil, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.preheader.unr-lcssa
  %.lcssa323 = phi i64 [ %i.ct, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.preheader.unr-lcssa ], [ %i.da, %.preheader.epil ], !dbg !16890
  %xtraiter328 = and i64 %2, 3, !dbg !16892       ; 3 uses
  %i.dc = icmp samesign ult i64 %2, 4, !dbg !16892
  br i1 %i.dc, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.epil.preheader, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.preheader.new, !dbg !16892

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.preheader.new: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.preheader
  %unroll_iter333 = and i64 %2, 18014398509481980, !dbg !16892
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit, !dbg !16892

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.preheader.new
  %.sroa.04.0.i102 = phi i64 [ 0, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.preheader.new ], [ %i.eb, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit ], !dbg !16893 ; 5 uses
  %.sroa.02.0.i103 = phi i64 [ 0, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.preheader.new ], [ %i.ea, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit ], !dbg !16894
  %niter334 = phi i64 [ 0, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.preheader.new ], [ %niter334.next.3, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit ]
  %i.dd = getelementptr inbounds nuw [600 x i8], ptr %1, i64 %.sroa.04.0.i102, !dbg !16895 ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 344, !dbg !16896
  %.val.i104 = load i32, ptr %i.de, align 8, !dbg !16896, !noundef !859
  %i.df = getelementptr i8, ptr %i.dd, i64 568, !dbg !16896
  %.val13.i105 = load i64, ptr %i.df, align 8, !dbg !16896, !noundef !859
  %i.dg = sext i32 %.val.i104 to i64, !dbg !16897
  %i.dh = add i64 %.sroa.02.0.i103, %i.dg, !dbg !16898
  %i.di = add i64 %i.dh, %.val13.i105, !dbg !16899
  %i.dj = getelementptr inbounds nuw [600 x i8], ptr %1, i64 %.sroa.04.0.i102, !dbg !16895 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 944, !dbg !16896
  %.val.i104.1 = load i32, ptr %i.dk, align 8, !dbg !16896, !noundef !859
  %i.dl = getelementptr i8, ptr %i.dj, i64 1168, !dbg !16896
  %.val13.i105.1 = load i64, ptr %i.dl, align 8, !dbg !16896, !noundef !859
  %i.dm = sext i32 %.val.i104.1 to i64, !dbg !16897
  %i.dn = add i64 %i.di, %i.dm, !dbg !16898
  %i.do = add i64 %i.dn, %.val13.i105.1, !dbg !16899
  %i.dp = getelementptr inbounds nuw [600 x i8], ptr %1, i64 %.sroa.04.0.i102, !dbg !16895 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 1544, !dbg !16896
  %.val.i104.2 = load i32, ptr %i.dq, align 8, !dbg !16896, !noundef !859
  %i.dr = getelementptr i8, ptr %i.dp, i64 1768, !dbg !16896
  %.val13.i105.2 = load i64, ptr %i.dr, align 8, !dbg !16896, !noundef !859
  %i.ds = sext i32 %.val.i104.2 to i64, !dbg !16897
  %i.dt = add i64 %i.do, %i.ds, !dbg !16898
  %i.du = add i64 %i.dt, %.val13.i105.2, !dbg !16899
  %i.dv = getelementptr inbounds nuw [600 x i8], ptr %1, i64 %.sroa.04.0.i102, !dbg !16895 ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 2144, !dbg !16896
  %.val.i104.3 = load i32, ptr %i.dw, align 8, !dbg !16896, !noundef !859
  %i.dx = getelementptr i8, ptr %i.dv, i64 2368, !dbg !16896
  %.val13.i105.3 = load i64, ptr %i.dx, align 8, !dbg !16896, !noundef !859
  %i.dy = sext i32 %.val.i104.3 to i64, !dbg !16897
  %i.dz = add i64 %i.du, %i.dy, !dbg !16898
  %i.ea = add i64 %i.dz, %.val13.i105.3, !dbg !16899 ; 3 uses
  %i.eb = add nuw nsw i64 %.sroa.04.0.i102, 4, !dbg !16900 ; 2 uses
  %niter334.next.3 = add nuw nsw i64 %niter334, 4, !dbg !16892 ; 2 uses
  %niter334.ncmp.3 = icmp eq i64 %niter334.next.3, %unroll_iter333, !dbg !16892
  br i1 %niter334.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks0_0NCINvXse_NtB25_5accumxNtB4l_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.unr-lcssa, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit, !dbg !16892

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks0_0NCINvXse_NtB25_5accumxNtB4l_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.unr-lcssa: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit
  %lcmp.mod330.not = icmp eq i64 %xtraiter328, 0, !dbg !16892
  br i1 %lcmp.mod330.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks0_0NCINvXse_NtB25_5accumxNtB4l_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.epil.preheader, !dbg !16892

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.epil.preheader: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks0_0NCINvXse_NtB25_5accumxNtB4l_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.unr-lcssa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.preheader
  %.sroa.04.0.i102.epil.init = phi i64 [ 0, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.preheader ], [ %i.eb, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks0_0NCINvXse_NtB25_5accumxNtB4l_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.unr-lcssa ]
  %.sroa.02.0.i103.epil.init = phi i64 [ 0, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.preheader ], [ %i.ea, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks0_0NCINvXse_NtB25_5accumxNtB4l_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.unr-lcssa ]
  %lcmp.mod332 = icmp ne i64 %xtraiter328, 0, !dbg !16892
  call void @llvm.assume(i1 %lcmp.mod332), !dbg !16892
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.epil, !dbg !16892

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.epil: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.epil, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.epil.preheader
  %.sroa.04.0.i102.epil = phi i64 [ %i.ei, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.epil ], [ %.sroa.04.0.i102.epil.init, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.epil.preheader ], !dbg !16893 ; 2 uses
  %.sroa.02.0.i103.epil = phi i64 [ %i.eh, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.epil ], [ %.sroa.02.0.i103.epil.init, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.epil.preheader ], !dbg !16894
  %epil.iter329 = phi i64 [ %epil.iter329.next, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.epil ], [ 0, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.epil.preheader ]
  %i.ec = getelementptr inbounds nuw [600 x i8], ptr %1, i64 %.sroa.04.0.i102.epil, !dbg !16895 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 344, !dbg !16896
  %.val.i104.epil = load i32, ptr %i.ed, align 8, !dbg !16896, !noundef !859
  %i.ee = getelementptr i8, ptr %i.ec, i64 568, !dbg !16896
  %.val13.i105.epil = load i64, ptr %i.ee, align 8, !dbg !16896, !noundef !859
  %i.ef = sext i32 %.val.i104.epil to i64, !dbg !16897
  %i.eg = add i64 %.sroa.02.0.i103.epil, %i.ef, !dbg !16898
  %i.eh = add i64 %i.eg, %.val13.i105.epil, !dbg !16899 ; 2 uses
  %i.ei = add nuw nsw i64 %.sroa.04.0.i102.epil, 1, !dbg !16900
  %epil.iter329.next = add i64 %epil.iter329, 1, !dbg !16892 ; 2 uses
  %epil.iter329.cmp.not = icmp eq i64 %epil.iter329.next, %xtraiter328, !dbg !16892
  br i1 %epil.iter329.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks0_0NCINvXse_NtB25_5accumxNtB4l_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.epil, !dbg !16892, !llvm.loop !16109

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks0_0NCINvXse_NtB25_5accumxNtB4l_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.epil, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks0_0NCINvXse_NtB25_5accumxNtB4l_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.unr-lcssa
  %.lcssa322 = phi i64 [ %i.ea, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks0_0NCINvXse_NtB25_5accumxNtB4l_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.unr-lcssa ], [ %i.eh, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks_0NCINvXse_NtB25_5accumxNtB4k_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit.epil ], !dbg !16899
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 340, !dbg !16901
  %i.ek = load i32, ptr %i.ej, align 4, !dbg !16901, !alias.scope !16697, !noundef !859
  %i.el = icmp eq i32 %i.ek, 2, !dbg !16901
  %i.em = getelementptr i8, ptr %1, i64 576, !dbg !16902
  %.val = load i64, ptr %i.em, align 8, !dbg !16902, !noundef !859 ; 2 uses
  br i1 %i.el, label %bb.w, label %bb.o, !dbg !16903

bb.o:                                             ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks0_0NCINvXse_NtB25_5accumxNtB4l_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit, %bb.x, %bb.w
  %.sroa.06.0.ph = phi i64 [ 0, %bb.w ], [ %.val99, %bb.x ], [ %.val, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks0_0NCINvXse_NtB25_5accumxNtB4l_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit ]
  %.sroa.02.0.ph = phi i64 [ 1, %bb.w ], [ 1, %bb.x ], [ 0, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks0_0NCINvXse_NtB25_5accumxNtB4l_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %bb.p, !dbg !16904

bb.p:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecxxNCNvNtBZ_12column_chunk18build_column_chunks5_0NCINvXse_NtNtB8_6traits5accumxNtB31_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB27_EE0E0B13_.exit.i, %bb.o
  %.sroa.04.0.i109 = phi i64 [ 0, %bb.o ], [ %i.fd, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecxxNCNvNtBZ_12column_chunk18build_column_chunks5_0NCINvXse_NtNtB8_6traits5accumxNtB31_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB27_EE0E0B13_.exit.i ], !dbg !16905 ; 2 uses
  %.sroa.02.0.i110 = phi i64 [ 0, %bb.o ], [ %i.fc, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecxxNCNvNtBZ_12column_chunk18build_column_chunks5_0NCINvXse_NtNtB8_6traits5accumxNtB31_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB27_EE0E0B13_.exit.i ], !dbg !16906
  %i.eo = getelementptr inbounds nuw [600 x i8], ptr %1, i64 %.sroa.04.0.i109, !dbg !16907 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16703), !dbg !16908
  call void @llvm.experimental.noalias.scope.decl(metadata !16704), !dbg !16909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !16910, !noalias !16705
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 340, !dbg !16910
  %i.eq = load i32, ptr %i.ep, align 4, !dbg !16910, !alias.scope !16705, !noundef !859
  invoke void @_RNvXs4_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB5_8PageTypeINtNtCscgRAwXFJnXP_4core7convert7TryFromNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8PageTypeE8try_from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, i32 noundef %i.eq)
          to label %.noexc113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !16911

.noexc113:                                        ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !16706), !dbg !16912
  %i.er = load i64, ptr %i.n, align 8, !dbg !16913, !range !1229, !alias.scope !16706, !noalias !16705, !noundef !859
  %.not.i.i.i.i111 = icmp eq i64 %i.er, -9223372036854775803, !dbg !16913
  br i1 %.not.i.i.i.i111, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8PageTypeNtNtBL_5error12ParquetErrorE6unwrapBN_.exit.i.i.i, label %bb.q, !dbg !16914, !prof !944

bb.q:                                             ; preds = %.noexc113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !16915, !noalias !16707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !16915, !noalias !16705
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 43, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #36
          to label %bb.s unwind label %bb.r, !dbg !16916, !noalias !16707

bb.r:                                             ; preds = %bb.q
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m) #37
          to label %.body119 unwind label %bb.t, !dbg !16917, !noalias !16707

bb.s:                                             ; preds = %bb.q
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !16918, !noalias !16707
  unreachable, !dbg !16918

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8PageTypeNtNtBL_5error12ParquetErrorE6unwrapBN_.exit.i.i.i: ; preds = %.noexc113
  %i.eu = load i8, ptr %i.en, align 8, !dbg !16919, !range !1171, !alias.scope !16706, !noalias !16705, !noundef !859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !16920, !noalias !16705
  switch i8 %i.eu, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8PageTypeNtNtBL_5error12ParquetErrorE6unwrapBN_.exit.i.i.i.unreachabledefault [
    i8 0, label %bb.u
    i8 1, label %bb.v
    i8 2, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecxxNCNvNtBZ_12column_chunk18build_column_chunks5_0NCINvXse_NtNtB8_6traits5accumxNtB31_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB27_EE0E0B13_.exit.i
  ], !dbg !16921

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8PageTypeNtNtBL_5error12ParquetErrorE6unwrapBN_.exit.i.i.i.unreachabledefault: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8PageTypeNtNtBL_5error12ParquetErrorE6unwrapBN_.exit.i.i.i
  unreachable

default.unreachable:                              ; preds = %bb.bw, %bb.bk
  unreachable

bb.u:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8PageTypeNtNtBL_5error12ParquetErrorE6unwrapBN_.exit.i.i.i
  %i.ev = load i64, ptr %i.eo, align 8, !dbg !16922, !range !1019, !alias.scope !16705, !noundef !859
  %.not3.i.i.i = icmp eq i64 %i.ev, 3, !dbg !16922
  br i1 %.not3.i.i.i, label %.invoke, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecxxNCNvNtBZ_12column_chunk18build_column_chunks5_0NCINvXse_NtNtB8_6traits5accumxNtB31_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB27_EE0E0B13_.exit.sink.split.i, !dbg !16923, !prof !880

bb.v:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8PageTypeNtNtBL_5error12ParquetErrorE6unwrapBN_.exit.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 152, !dbg !16924
  %i.ex = load i64, ptr %i.ew, align 8, !dbg !16924, !range !1019, !alias.scope !16705, !noundef !859
  %.not.i.i.i = icmp eq i64 %i.ex, 3, !dbg !16924
  br i1 %.not.i.i.i, label %.invoke, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecxxNCNvNtBZ_12column_chunk18build_column_chunks5_0NCINvXse_NtNtB8_6traits5accumxNtB31_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB27_EE0E0B13_.exit.sink.split.i, !dbg !16925, !prof !880

.invoke:                                          ; preds = %bb.v, %bb.u
  %i.ey = phi ptr [ @39, %bb.u ], [ @40, %bb.v ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ey) #35
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !16926

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecxxNCNvNtBZ_12column_chunk18build_column_chunks5_0NCINvXse_NtNtB8_6traits5accumxNtB31_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB27_EE0E0B13_.exit.sink.split.i: ; preds = %bb.v, %bb.u
  %.sink.i = phi i64 [ 136, %bb.u ], [ 288, %bb.v ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sink.i, !dbg !16926
  %i.fa = load i32, ptr %i.ez, align 8, !dbg !16926, !alias.scope !16705, !noundef !859
  %i.fb = sext i32 %i.fa to i64, !dbg !16926
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecxxNCNvNtBZ_12column_chunk18build_column_chunks5_0NCINvXse_NtNtB8_6traits5accumxNtB31_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB27_EE0E0B13_.exit.i, !dbg !16927

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecxxNCNvNtBZ_12column_chunk18build_column_chunks5_0NCINvXse_NtNtB8_6traits5accumxNtB31_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB27_EE0E0B13_.exit.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8PageTypeNtNtBL_5error12ParquetErrorE6unwrapBN_.exit.i.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecxxNCNvNtBZ_12column_chunk18build_column_chunks5_0NCINvXse_NtNtB8_6traits5accumxNtB31_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB27_EE0E0B13_.exit.sink.split.i
  %.sroa.0.0.i.i.i = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8PageTypeNtNtBL_5error12ParquetErrorE6unwrapBN_.exit.i.i.i ], [ %i.fb, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecxxNCNvNtBZ_12column_chunk18build_column_chunks5_0NCINvXse_NtNtB8_6traits5accumxNtB31_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB27_EE0E0B13_.exit.sink.split.i ], !dbg !16926
  %i.fc = add i64 %.sroa.0.0.i.i.i, %.sroa.02.0.i110, !dbg !16927 ; 2 uses
  %i.fd = add nuw nsw i64 %.sroa.04.0.i109, 1, !dbg !16928 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, %2, !dbg !16929
  br i1 %i.fe, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks5_0NCINvXse_NtB25_5accumxNtB4l_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit, label %bb.p, !dbg !16929

bb.w:                                             ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks0_0NCINvXse_NtB25_5accumxNtB4l_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit
  %.not226 = icmp eq i64 %2, 1, !dbg !16930
  br i1 %.not226, label %bb.o, label %bb.x, !dbg !16930

bb.x:                                             ; preds = %bb.w
  %i.ff = getelementptr i8, ptr %1, i64 1176, !dbg !16931
  %.val99 = load i64, ptr %i.ff, align 8, !dbg !16931, !noundef !859
  br label %bb.o, !dbg !16932

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks5_0NCINvXse_NtB25_5accumxNtB4l_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecxxNCNvNtBZ_12column_chunk18build_column_chunks5_0NCINvXse_NtNtB8_6traits5accumxNtB31_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB27_EE0E0B13_.exit.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set8IntoIterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionEEB1s_.exit
  %.sroa.02.0288 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set8IntoIterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionEEB1s_.exit ], [ %.sroa.02.0.ph, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecxxNCNvNtBZ_12column_chunk18build_column_chunks5_0NCINvXse_NtNtB8_6traits5accumxNtB31_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB27_EE0E0B13_.exit.i ]
  %.sroa.3.0286 = phi i64 [ undef, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set8IntoIterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionEEB1s_.exit ], [ %.val, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecxxNCNvNtBZ_12column_chunk18build_column_chunks5_0NCINvXse_NtNtB8_6traits5accumxNtB31_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB27_EE0E0B13_.exit.i ]
  %.sroa.06.0284 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set8IntoIterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionEEB1s_.exit ], [ %.sroa.06.0.ph, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecxxNCNvNtBZ_12column_chunk18build_column_chunks5_0NCINvXse_NtNtB8_6traits5accumxNtB31_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB27_EE0E0B13_.exit.i ] ; 2 uses
  %.sroa.0.0.i216272282 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set8IntoIterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionEEB1s_.exit ], [ %.lcssa323, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecxxNCNvNtBZ_12column_chunk18build_column_chunks5_0NCINvXse_NtNtB8_6traits5accumxNtB31_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB27_EE0E0B13_.exit.i ] ; 2 uses
  %.sroa.0.0.i106273280 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set8IntoIterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionEEB1s_.exit ], [ %.lcssa322, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecxxNCNvNtBZ_12column_chunk18build_column_chunks5_0NCINvXse_NtNtB8_6traits5accumxNtB31_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB27_EE0E0B13_.exit.i ]
  %.sroa.0.0.i112 = phi i64 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set8IntoIterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11CompressionEEB1s_.exit ], [ %i.fc, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecxxNCNvNtBZ_12column_chunk18build_column_chunks5_0NCINvXse_NtNtB8_6traits5accumxNtB31_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB27_EE0E0B13_.exit.i ], !dbg !16906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !16933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !16934
  store ptr null, ptr %i.v, align 8, !dbg !16935
  %.sroa.074.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32, !dbg !16935
  store ptr null, ptr %.sroa.074.sroa.5.0..sroa_idx, align 8, !dbg !16935
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 64, !dbg !16935
  store ptr %1, ptr %.sroa.575.0..sroa_idx, align 8, !dbg !16935
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 72, !dbg !16935
  store ptr %i.ab, ptr %.sroa.676.0..sroa_idx, align 8, !dbg !16935
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !16936, !noalias !16714
  %i.fg = invoke noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc.i116 unwind label %bb.af, !dbg !16937, !noalias !16714

.noexc.i116:                                      ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4page13PageWriteSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtB27_8adapters3map8map_foldRBQ_xxNCNvNtBU_12column_chunk18build_column_chunks5_0NCINvXse_NtB25_5accumxNtB4l_3Sum3sumINtB2R_3MapBF_B3r_EE0E0EBY_.exit
  %i.fh = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !16938, !noalias !16714
  %i.fi = icmp eq i8 %i.fh, 2, !dbg !16939
  br i1 %i.fi, label %bb.aa, label %bb.y, !dbg !16939, !prof !944

bb.y:                                             ; preds = %.noexc.i116
  invoke void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #39
          to label %bb.aa unwind label %bb.af, !dbg !16940, !noalias !16714

bb.z:                                             ; preds = %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8EncodinguEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !16941

.body.i:                                          ; preds = %bb.ac, %bb.z
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fj, %bb.z ], [ %i.gb, %bb.ac ]
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8EncodinguENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0..sroa_idx.i117, i64 noundef 4, i64 noundef 16)
          to label %.body119 unwind label %bb.ae, !dbg !16942, !noalias !16714

bb.aa:                                            ; preds = %bb.y, %.noexc.i116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) @34, i64 32, i1 false), !dbg !16943, !noalias !16714
  %.sroa.4.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !16943 ; 3 uses
  store i64 %i.fg, ptr %.sroa.4.0..sroa_idx.i117, align 8, !dbg !16943, !noalias !16714
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !16944, !noalias !16716
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(80) %i.v, i64 80, i1 false), !dbg !16945, !noalias !16717
  %i.fk = load ptr, ptr %i.k, align 8, !dbg !16946, !noalias !16716, !noundef !859
  %.not.i.i.i.i.i = icmp eq ptr %i.fk, null, !dbg !16946
  %i.fl = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !16947
  %.val.i.i.i.i.i.i = load ptr, ptr %i.fl, align 8, !dbg !16947, !noalias !16716, !nonnull !859
  %i.fm = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !16947
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.fm, align 8, !dbg !16947, !noalias !16716, !nonnull !859
  %i.fn = ptrtoint ptr %.val4.i.i.i.i.i.i to i64, !dbg !16947
  %i.fo = ptrtoint ptr %.val.i.i.i.i.i.i to i64, !dbg !16947
  %i.fp = sub nuw i64 %i.fn, %i.fo, !dbg !16947
  %i.fq = lshr exact i64 %i.fp, 2, !dbg !16947
  %.sroa.7.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.fq, !dbg !16947
  %i.fr = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !16948
  %i.fs = load ptr, ptr %i.fr, align 8, !dbg !16948, !noalias !16716, !noundef !859
end_hunk_0
