Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.08?download=true
inline.NumInlined: 3532
inline.NumDeleted: 1668
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_RINvMs_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB5_4Node7compileQINtNtB7_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def:bb.a
  %i.bn = icmp eq ptr %i.as, %i.ar
  br i1 %i.bn, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RNvNtCsjsNuU4yXw23_3fst5bytes9pack_size.exit97.i, %_RNvNtCsjsNuU4yXw23_3fst5bytes9pack_size.exit.i
  %.sroa.010.0.lcssa.i = phi i1 [ %i.ao, %_RNvNtCsjsNuU4yXw23_3fst5bytes9pack_size.exit.i ], [ %narrow.i, %_RNvNtCsjsNuU4yXw23_3fst5bytes9pack_size.exit97.i ] ; 2 uses
  %.sroa.04.0.lcssa.i = phi i8 [ %.sroa.0.0.i.i, %_RNvNtCsjsNuU4yXw23_3fst5bytes9pack_size.exit.i ], [ %..i98.i, %_RNvNtCsjsNuU4yXw23_3fst5bytes9pack_size.exit97.i ] ; 4 uses
  %.sroa.01.0.lcssa.i = phi i8 [ 0, %_RNvNtCsjsNuU4yXw23_3fst5bytes9pack_size.exit.i ], [ %..i94.i, %_RNvNtCsjsNuU4yXw23_3fst5bytes9pack_size.exit97.i ] ; 4 uses
  %spec.select169.i = select i1 %.sroa.010.0.lcssa.i, i8 %.sroa.04.0.lcssa.i, i8 0
  %i.bo = shl nuw i8 %.sroa.01.0.lcssa.i, 4
  %i.bp = add nuw nsw i8 %i.bo, %spec.select169.i
  %spec.select.i = shl nuw nsw i8 %i.v, 6
  %i.bq = trunc i64 %i.q to i8                    ; 3 uses
  %i.br = icmp ult i8 %i.bq, 64
  %i.bs = select i1 %i.br, i8 %i.bq, i8 0         ; 2 uses
  %.sroa.071.1.i = or disjoint i8 %spec.select.i, %i.bs
  br i1 %.sroa.010.0.lcssa.i, label %bb.y, label %.loopexit126.i

.loopexit126.i:                                   ; preds = %.split.us.i, %.split.us.preheader.i, %._crit_edge.i
  %.not164.i = icmp eq i8 %.sroa.01.0.lcssa.i, 0
  %wide.trip.count.i111.i = zext i8 %.sroa.01.0.lcssa.i to i64 ; 3 uses
  br i1 %.not164.i, label %.split136.i, label %.split136.us.i.preheader, !prof !19

.split136.us.i.preheader:                         ; preds = %.loopexit126.i
  %i.bt = icmp eq i64 %i.q, 0
  br i1 %i.bt, label %.preheader.i, label %.lr.ph.preheader.i110.us.i.preheader

.lr.ph.preheader.i110.us.i.preheader:             ; preds = %.split136.us.i.preheader
  %xtraiter88 = and i64 %wide.trip.count.i111.i, 3 ; 3 uses
  %i.bu = icmp ult i8 %.sroa.01.0.lcssa.i, 4
  %unroll_iter92 = and i64 %wide.trip.count.i111.i, 252
  %lcmp.mod90.not = icmp eq i64 %xtraiter88, 0
  %lcmp.mod91 = icmp ne i64 %xtraiter88, 0
  br label %.lr.ph.preheader.i110.us.i

.split136.us.i:                                   ; preds = %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit118.us.i
  %i.bv = getelementptr inbounds i8, ptr %.sroa.524.0.us.i62, i64 -24 ; 2 uses
  %i.bw = icmp eq ptr %i.aq, %i.bv
  br i1 %i.bw, label %.preheader.i, label %.lr.ph.preheader.i110.us.i

.lr.ph.preheader.i110.us.i:                       ; preds = %.lr.ph.preheader.i110.us.i.preheader, %.split136.us.i
  %.sroa.524.0.us.i62 = phi ptr [ %i.bv, %.split136.us.i ], [ %i.ar, %.lr.ph.preheader.i110.us.i.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.sroa.524.0.us.i62, i64 -16
  %i.by = load i64, ptr %i.bx, align 8, !noalias !625, !noundef !5 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = sub i64 %2, %i.by
  %.sroa.064.0.us.i = select i1 %i.bz, i64 0, i64 %i.ca ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !628
  store i64 0, ptr %i.h, align 8, !noalias !628
  br i1 %i.bu, label %.lr.ph.i112.us.i.epil.preheader, label %.lr.ph.i112.us.i

.lr.ph.i112.us.i:                                 ; preds = %.lr.ph.preheader.i110.us.i, %.lr.ph.i112.us.i
  %indvars.iv.i113.us.i = phi i64 [ %indvars.iv.next.i115.us.i.3, %.lr.ph.i112.us.i ], [ 0, %.lr.ph.preheader.i110.us.i ] ; 5 uses
  %.sroa.0.014.i114.us.i = phi i64 [ %i.cp, %.lr.ph.i112.us.i ], [ %.sroa.064.0.us.i, %.lr.ph.preheader.i110.us.i ] ; 5 uses
  %niter93 = phi i64 [ %niter93.next.3, %.lr.ph.i112.us.i ], [ 0, %.lr.ph.preheader.i110.us.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.i113.us.i
  %i.cc = trunc i64 %.sroa.0.014.i114.us.i to i8
  store i8 %i.cc, ptr %i.cb, align 4, !noalias !628
  %i.cd = lshr i64 %.sroa.0.014.i114.us.i, 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.i113.us.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.cg = trunc i64 %i.cd to i8
  store i8 %i.cg, ptr %i.cf, align 1, !noalias !628
  %i.ch = lshr i64 %.sroa.0.014.i114.us.i, 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.i113.us.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %i.ck = trunc i64 %i.ch to i8
  store i8 %i.ck, ptr %i.cj, align 2, !noalias !628
  %i.cl = lshr i64 %.sroa.0.014.i114.us.i, 24
  %indvars.iv.next.i115.us.i.3 = add nuw nsw i64 %indvars.iv.i113.us.i, 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.i113.us.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 3
  %i.co = trunc i64 %i.cl to i8
  store i8 %i.co, ptr %i.cn, align 1, !noalias !628
  %i.cp = lshr i64 %.sroa.0.014.i114.us.i, 32     ; 2 uses
  %niter93.next.3 = add i64 %niter93, 4           ; 2 uses
  %niter93.ncmp.3 = icmp eq i64 %niter93.next.3, %unroll_iter92
  br i1 %niter93.ncmp.3, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit118.us.i.unr-lcssa, label %.lr.ph.i112.us.i

_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit118.us.i.unr-lcssa: ; preds = %.lr.ph.i112.us.i
  br i1 %lcmp.mod90.not, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit118.us.i, label %.lr.ph.i112.us.i.epil.preheader

.lr.ph.i112.us.i.epil.preheader:                  ; preds = %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit118.us.i.unr-lcssa, %.lr.ph.preheader.i110.us.i
  %indvars.iv.i113.us.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i110.us.i ], [ %indvars.iv.next.i115.us.i.3, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit118.us.i.unr-lcssa ]
  %.sroa.0.014.i114.us.i.epil.init = phi i64 [ %.sroa.064.0.us.i, %.lr.ph.preheader.i110.us.i ], [ %i.cp, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit118.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod91)
  br label %.lr.ph.i112.us.i.epil

.lr.ph.i112.us.i.epil:                            ; preds = %.lr.ph.i112.us.i.epil, %.lr.ph.i112.us.i.epil.preheader
  %indvars.iv.i113.us.i.epil = phi i64 [ %indvars.iv.i113.us.i.epil.init, %.lr.ph.i112.us.i.epil.preheader ], [ %indvars.iv.next.i115.us.i.epil, %.lr.ph.i112.us.i.epil ] ; 2 uses
  %.sroa.0.014.i114.us.i.epil = phi i64 [ %.sroa.0.014.i114.us.i.epil.init, %.lr.ph.i112.us.i.epil.preheader ], [ %i.cs, %.lr.ph.i112.us.i.epil ] ; 2 uses
  %epil.iter89 = phi i64 [ 0, %.lr.ph.i112.us.i.epil.preheader ], [ %epil.iter89.next, %.lr.ph.i112.us.i.epil ]
  %indvars.iv.next.i115.us.i.epil = add nuw nsw i64 %indvars.iv.i113.us.i.epil, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.i113.us.i.epil
  %i.cr = trunc i64 %.sroa.0.014.i114.us.i.epil to i8
  store i8 %i.cr, ptr %i.cq, align 1, !noalias !628
  %i.cs = lshr i64 %.sroa.0.014.i114.us.i.epil, 8
  %epil.iter89.next = add i64 %epil.iter89, 1     ; 2 uses
  %epil.iter89.cmp.not = icmp eq i64 %epil.iter89.next, %xtraiter88
  br i1 %epil.iter89.cmp.not, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit118.us.i, label %.lr.ph.i112.us.i.epil, !llvm.loop !603

_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit118.us.i: ; preds = %.lr.ph.i112.us.i.epil, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit118.us.i.unr-lcssa
  %i.ct = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 1, 9) %wide.trip.count.i111.i), !noalias !629 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !628
  %.not78.us.i = icmp eq ptr %i.ct, null
  br i1 %.not78.us.i, label %.split136.us.i, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit

bb.y:                                             ; preds = %._crit_edge.i
  br i1 %i.w, label %.lr.ph.preheader.i.i, label %._crit_edge149.i

._crit_edge149.i:                                 ; preds = %bb.y
  %.pre150.i = zext nneg i8 %.sroa.04.0.lcssa.i to i64
  br label %.split.us.preheader.i

.split.us.preheader.i:                            ; preds = %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i, %._crit_edge149.i
  %wide.trip.count.i101.pre-phi.i = phi i64 [ %.pre150.i, %._crit_edge149.i ], [ %wide.trip.count.i.i, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i ] ; 4 uses
  %i.cu = icmp eq i64 %i.q, 0
  br i1 %i.cu, label %.loopexit126.i, label %.lr.ph.preheader.i100.us.i.preheader

.lr.ph.preheader.i100.us.i.preheader:             ; preds = %.split.us.preheader.i
  %i.cv = add nsw i64 %wide.trip.count.i101.pre-phi.i, -1
  %xtraiter82 = and i64 %wide.trip.count.i101.pre-phi.i, 3 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 3
  %unroll_iter86 = and i64 %wide.trip.count.i101.pre-phi.i, 124
  %lcmp.mod84.not = icmp eq i64 %xtraiter82, 0
  %lcmp.mod85 = icmp ne i64 %xtraiter82, 0
  br label %.lr.ph.preheader.i100.us.i

.split.us.i:                                      ; preds = %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit108.us.i
  %i.cx = icmp eq ptr %i.aq, %i.cy
  br i1 %i.cx, label %.loopexit126.i, label %.lr.ph.preheader.i100.us.i

.lr.ph.preheader.i100.us.i:                       ; preds = %.lr.ph.preheader.i100.us.i.preheader, %.split.us.i
  %.sroa.5.0.us.i61 = phi ptr [ %i.cy, %.split.us.i ], [ %i.ar, %.lr.ph.preheader.i100.us.i.preheader ]
  %i.cy = getelementptr inbounds i8, ptr %.sroa.5.0.us.i61, i64 -24 ; 3 uses
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !625, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !630
  store i64 0, ptr %i.i, align 8, !noalias !630
  br i1 %i.cw, label %.lr.ph.i102.us.i.epil.preheader, label %.lr.ph.i102.us.i

.lr.ph.i102.us.i:                                 ; preds = %.lr.ph.preheader.i100.us.i, %.lr.ph.i102.us.i
  %indvars.iv.i103.us.i = phi i64 [ %indvars.iv.next.i105.us.i.3, %.lr.ph.i102.us.i ], [ 0, %.lr.ph.preheader.i100.us.i ] ; 5 uses
  %.sroa.0.014.i104.us.i = phi i64 [ %i.do, %.lr.ph.i102.us.i ], [ %i.cz, %.lr.ph.preheader.i100.us.i ] ; 5 uses
  %niter87 = phi i64 [ %niter87.next.3, %.lr.ph.i102.us.i ], [ 0, %.lr.ph.preheader.i100.us.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i103.us.i
  %i.db = trunc i64 %.sroa.0.014.i104.us.i to i8
  store i8 %i.db, ptr %i.da, align 4, !noalias !630
  %i.dc = lshr i64 %.sroa.0.014.i104.us.i, 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i103.us.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = trunc i64 %i.dc to i8
  store i8 %i.df, ptr %i.de, align 1, !noalias !630
  %i.dg = lshr i64 %.sroa.0.014.i104.us.i, 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i103.us.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  %i.dj = trunc i64 %i.dg to i8
  store i8 %i.dj, ptr %i.di, align 2, !noalias !630
  %i.dk = lshr i64 %.sroa.0.014.i104.us.i, 24
  %indvars.iv.next.i105.us.i.3 = add nuw nsw i64 %indvars.iv.i103.us.i, 4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i103.us.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 3
  %i.dn = trunc i64 %i.dk to i8
  store i8 %i.dn, ptr %i.dm, align 1, !noalias !630
  %i.do = lshr i64 %.sroa.0.014.i104.us.i, 32     ; 2 uses
  %niter87.next.3 = add i64 %niter87, 4           ; 2 uses
  %niter87.ncmp.3 = icmp eq i64 %niter87.next.3, %unroll_iter86
  br i1 %niter87.ncmp.3, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit108.us.i.unr-lcssa, label %.lr.ph.i102.us.i

_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit108.us.i.unr-lcssa: ; preds = %.lr.ph.i102.us.i
  br i1 %lcmp.mod84.not, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit108.us.i, label %.lr.ph.i102.us.i.epil.preheader

.lr.ph.i102.us.i.epil.preheader:                  ; preds = %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit108.us.i.unr-lcssa, %.lr.ph.preheader.i100.us.i
  %indvars.iv.i103.us.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i100.us.i ], [ %indvars.iv.next.i105.us.i.3, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit108.us.i.unr-lcssa ]
  %.sroa.0.014.i104.us.i.epil.init = phi i64 [ %i.cz, %.lr.ph.preheader.i100.us.i ], [ %i.do, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit108.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod85)
  br label %.lr.ph.i102.us.i.epil

.lr.ph.i102.us.i.epil:                            ; preds = %.lr.ph.i102.us.i.epil, %.lr.ph.i102.us.i.epil.preheader
  %indvars.iv.i103.us.i.epil = phi i64 [ %indvars.iv.i103.us.i.epil.init, %.lr.ph.i102.us.i.epil.preheader ], [ %indvars.iv.next.i105.us.i.epil, %.lr.ph.i102.us.i.epil ] ; 2 uses
  %.sroa.0.014.i104.us.i.epil = phi i64 [ %.sroa.0.014.i104.us.i.epil.init, %.lr.ph.i102.us.i.epil.preheader ], [ %i.dr, %.lr.ph.i102.us.i.epil ] ; 2 uses
  %epil.iter83 = phi i64 [ 0, %.lr.ph.i102.us.i.epil.preheader ], [ %epil.iter83.next, %.lr.ph.i102.us.i.epil ]
  %indvars.iv.next.i105.us.i.epil = add nuw nsw i64 %indvars.iv.i103.us.i.epil, 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i103.us.i.epil
  %i.dq = trunc i64 %.sroa.0.014.i104.us.i.epil to i8
  store i8 %i.dq, ptr %i.dp, align 1, !noalias !630
  %i.dr = lshr i64 %.sroa.0.014.i104.us.i.epil, 8
  %epil.iter83.next = add i64 %epil.iter83, 1     ; 2 uses
  %epil.iter83.cmp.not = icmp eq i64 %epil.iter83.next, %xtraiter82
  br i1 %epil.iter83.cmp.not, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit108.us.i, label %.lr.ph.i102.us.i.epil, !llvm.loop !606

_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit108.us.i: ; preds = %.lr.ph.i102.us.i.epil, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit108.us.i.unr-lcssa
  %i.ds = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 1, 9) %wide.trip.count.i101.pre-phi.i), !noalias !631 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !630
  %.not77.us.i = icmp eq ptr %i.ds, null
  br i1 %.not77.us.i, label %.split.us.i, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !632
  store i64 0, ptr %i.j, align 8, !noalias !632
  %wide.trip.count.i.i = zext nneg i8 %.sroa.04.0.lcssa.i to i64 ; 4 uses
  %xtraiter76 = and i64 %wide.trip.count.i.i, 3   ; 3 uses
  %i.dt = add nsw i8 %.sroa.04.0.lcssa.i, -1
  %i.du = icmp ult i8 %i.dt, 3
  br i1 %i.du, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter80 = and i64 %wide.trip.count.i.i, 124
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 5 uses
  %.sroa.0.014.i.i = phi i64 [ %i.y, %.lr.ph.preheader.i.i.new ], [ %i.ej, %.lr.ph.i.i ] ; 5 uses
  %niter81 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter81.next.3, %.lr.ph.i.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i
  %i.dw = trunc i64 %.sroa.0.014.i.i to i8
  store i8 %i.dw, ptr %i.dv, align 4, !noalias !632
  %i.dx = lshr i64 %.sroa.0.014.i.i, 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  %i.ea = trunc i64 %i.dx to i8
  store i8 %i.ea, ptr %i.dz, align 1, !noalias !632
  %i.eb = lshr i64 %.sroa.0.014.i.i, 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 2
  %i.ee = trunc i64 %i.eb to i8
  store i8 %i.ee, ptr %i.ed, align 2, !noalias !632
  %i.ef = lshr i64 %.sroa.0.014.i.i, 24
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.ei = trunc i64 %i.ef to i8
  store i8 %i.ei, ptr %i.eh, align 1, !noalias !632
  %i.ej = lshr i64 %.sroa.0.014.i.i, 32           ; 2 uses
  %niter81.next.3 = add i64 %niter81, 4           ; 2 uses
  %niter81.ncmp.3 = icmp eq i64 %niter81.next.3, %unroll_iter80
  br i1 %niter81.ncmp.3, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i.unr-lcssa, label %.lr.ph.i.i

_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod78.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod78.not, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.3, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i.unr-lcssa ]
  %.sroa.0.014.i.i.epil.init = phi i64 [ %i.y, %.lr.ph.preheader.i.i ], [ %i.ej, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i.unr-lcssa ]
  %lcmp.mod79 = icmp ne i64 %xtraiter76, 0
  tail call void @llvm.assume(i1 %lcmp.mod79)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %.sroa.0.014.i.i.epil = phi i64 [ %.sroa.0.014.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %i.em, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter77 = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter77.next, %.lr.ph.i.i.epil ]
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i.epil
  %i.el = trunc i64 %.sroa.0.014.i.i.epil to i8
  store i8 %i.el, ptr %i.ek, align 1, !noalias !632
  %i.em = lshr i64 %.sroa.0.014.i.i.epil, 8
  %epil.iter77.next = add i64 %epil.iter77, 1     ; 2 uses
  %epil.iter77.cmp.not = icmp eq i64 %epil.iter77.next, %xtraiter76
  br i1 %epil.iter77.cmp.not, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !609

_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i: ; preds = %.lr.ph.i.i.epil, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i.unr-lcssa
  %i.en = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 1, 9) %wide.trip.count.i.i), !noalias !633 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !632
  %.not.i = icmp eq ptr %i.en, null
  br i1 %.not.i, label %.split.us.preheader.i, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit

.split136.i:                                      ; preds = %.loopexit126.i
  br i1 %i.t, label %._crit_edge139.thread.i, label %bb.z

.preheader.i:                                     ; preds = %.split136.us.i, %.split136.us.i.preheader
  br i1 %i.t, label %._crit_edge139.thread.i, label %.lr.ph138.i

bb.z:                                             ; preds = %.split136.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #43, !noalias !629
  unreachable

.lr.ph138.i:                                      ; preds = %.preheader.i, %bb.ab
  %.sroa.532.0137.i = phi ptr [ %i.es, %bb.ab ], [ %i.ar, %.preheader.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !627
  %i.eo = getelementptr inbounds i8, ptr %.sroa.532.0137.i, i64 -8
  %i.ep = load i8, ptr %i.eo, align 8, !noalias !625, !noundef !5
  store i8 %i.ep, ptr %i.o, align 1, !noalias !627
  %i.eq = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef 1), !noalias !625 ; 2 uses
  %.not79.i = icmp eq ptr %i.eq, null
  br i1 %.not79.i, label %bb.ab, label %bb.aa

._crit_edge139.i:                                 ; preds = %bb.ab
  %i.er = icmp samesign ugt i64 %i.q, 32
  br i1 %i.er, label %.lr.ph143.preheader.i, label %._crit_edge139.thread.i

bb.aa:                                            ; preds = %.lr.ph138.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !627
  br label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit

bb.ab:                                            ; preds = %.lr.ph138.i
  %i.es = getelementptr inbounds i8, ptr %.sroa.532.0137.i, i64 -24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !627
  %i.et = icmp eq ptr %i.aq, %i.es
  br i1 %i.et, label %._crit_edge139.i, label %.lr.ph138.i

.lr.ph143.preheader.i:                            ; preds = %._crit_edge139.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !627
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.n, i8 -1, i64 256, i1 false), !noalias !627
  br label %.lr.ph143.i

._crit_edge139.thread.i:                          ; preds = %._crit_edge144.i, %._crit_edge139.i, %.preheader.i, %.split136.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !627
  store i8 %i.bp, ptr %i.m, align 1, !noalias !627
  %i.eu = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef 1), !noalias !625 ; 2 uses
  %.not82.i = icmp eq ptr %i.eu, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !627
  br i1 %.not82.i, label %bb.ac, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit

._crit_edge144.i:                                 ; preds = %.lr.ph143.i
  %i.ev = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef 256), !noalias !625 ; 2 uses
  %.not81.i = icmp eq ptr %i.ev, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !627
  br i1 %.not81.i, label %._crit_edge139.thread.i, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit

bb.ac:                                            ; preds = %._crit_edge139.thread.i
  %i.ew = icmp eq i8 %i.bs, 0
  br i1 %i.ew, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ex = icmp eq i64 %i.q, 256
  br i1 %i.ex, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ey = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 1), !noalias !625 ; 2 uses
  %.not84.i = icmp eq ptr %i.ey, null
  br i1 %.not84.i, label %bb.ag, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !627
  store i8 %i.bq, ptr %i.l, align 1, !noalias !627
  %i.ez = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 1), !noalias !625 ; 2 uses
  %.not83.i = icmp eq ptr %i.ez, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !627
  br i1 %.not83.i, label %bb.ag, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !627
  store i8 %.sroa.071.1.i, ptr %i.k, align 1, !noalias !627
  %i.fa = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 1), !noalias !625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !627
  br label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit

.lr.ph143.i:                                      ; preds = %.lr.ph143.i, %.lr.ph143.preheader.i
  %.sroa.7.0141.i = phi i8 [ %i.fc, %.lr.ph143.i ], [ 0, %.lr.ph143.preheader.i ] ; 2 uses
  %.sroa.0120.0140.i = phi ptr [ %i.fb, %.lr.ph143.i ], [ %i.aq, %.lr.ph143.preheader.i ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0120.0140.i, i64 24 ; 2 uses
  %i.fc = add i8 %.sroa.7.0141.i, 1
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0120.0140.i, i64 16
  %i.fe = load i8, ptr %i.fd, align 8, !noalias !625, !noundef !5
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ff
  store i8 %.sroa.7.0141.i, ptr %i.fg, align 1, !noalias !627
  %i.fh = icmp eq ptr %i.fb, %i.ar
  br i1 %i.fh, label %._crit_edge144.i, label %.lr.ph143.i

bb.ah:                                            ; preds = %bb.e
  %i.fi = icmp eq i64 %i.ag, 0
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.fk = load i8, ptr %i.fj, align 8             ; 3 uses
  br i1 %i.fi, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr @5, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !noalias !634, !noundef !5
  %i.fo = add i8 %i.fn, 1
  %i.fp = tail call i8 @llvm.umin.i8(i8 %i.fo, i8 64) ; 2 uses
  %i.fq = or i8 %i.fp, -64
  %i.fr = and i8 %i.fp, 63
  %i.fs = icmp eq i8 %i.fr, 0
  br i1 %i.fs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !634
  store i8 %i.fk, ptr %i.g, align 1, !noalias !634
  %i.ft = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1) ; 2 uses
  %.not.i14 = icmp eq ptr %i.ft, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !634
  br i1 %.not.i14, label %bb.ak, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !634
  store i8 %i.fq, ptr %i.f, align 1, !noalias !634
  %i.fu = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !634
  br label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit

bb.al:                                            ; preds = %bb.e
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.fv = icmp eq i64 %i.ag, 0
  br i1 %i.fv, label %_RINvNtCsjsNuU4yXw23_3fst5bytes9pack_uintQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i, label %.thread

.thread:                                          ; preds = %bb.ah, %bb.al
  %.sroa.5.0.copyload22 = phi i8 [ %.sroa.5.0.copyload, %bb.al ], [ %i.fk, %bb.ah ]
  %i.fw = icmp ult i64 %i.ag, 256
end_hunk_0
