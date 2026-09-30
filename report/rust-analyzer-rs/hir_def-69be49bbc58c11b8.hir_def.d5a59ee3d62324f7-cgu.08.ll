Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.08?download=true
inline.NumInlined: 3532
inline.NumDeleted: 1668
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_RINvMs_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB5_4Node7compileQINtNtB7_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def:bb.a
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
  %i.fo = add i8 %i.fn, -63
  %i.fp = tail call i8 @llvm.umax.i8(i8 %i.fo, i8 -64) ; 2 uses
  %i.fq = and i8 %i.fp, 63
  %i.fr = icmp eq i8 %i.fq, 0
  br i1 %i.fr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !634
  store i8 %i.fk, ptr %i.g, align 1, !noalias !634
  %i.fs = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1) ; 2 uses
  %.not.i14 = icmp eq ptr %i.fs, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !634
  br i1 %.not.i14, label %bb.ak, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !634
  store i8 %i.fp, ptr %i.f, align 1, !noalias !634
  %i.ft = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !634
  br label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit

bb.al:                                            ; preds = %bb.e
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.fu = icmp eq i64 %i.ag, 0
  br i1 %i.fu, label %_RINvNtCsjsNuU4yXw23_3fst5bytes9pack_uintQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i, label %.thread

.thread:                                          ; preds = %bb.ah, %bb.al
  %.sroa.5.0.copyload22 = phi i8 [ %.sroa.5.0.copyload, %bb.al ], [ %i.fk, %bb.ah ]
  %i.fv = icmp ult i64 %i.ag, 256
  br i1 %i.fv, label %.lr.ph.preheader.i.i.i, label %bb.am

bb.am:                                            ; preds = %.thread
  %i.fw = icmp ult i64 %i.ag, 65536
  br i1 %i.fw, label %.lr.ph.preheader.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fx = icmp ult i64 %i.ag, 16777216
  br i1 %i.fx, label %.lr.ph.preheader.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fy = icmp ult i64 %i.ag, 4294967296
  br i1 %i.fy, label %.lr.ph.preheader.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fz = icmp ult i64 %i.ag, 1099511627776
  br i1 %i.fz, label %.lr.ph.preheader.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ga = icmp ult i64 %i.ag, 281474976710656
  br i1 %i.ga, label %.lr.ph.preheader.i.i.i, label %_RNvNtCsjsNuU4yXw23_3fst5bytes9pack_size.exit.i.i

_RNvNtCsjsNuU4yXw23_3fst5bytes9pack_size.exit.i.i: ; preds = %bb.aq
  %i.gb = icmp ult i64 %i.ag, 72057594037927936
  %..i.i.i = select i1 %i.gb, i8 7, i8 8
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_RNvNtCsjsNuU4yXw23_3fst5bytes9pack_size.exit.i.i, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %.thread
  %.sroa.0.0.i3.i.i = phi i8 [ %..i.i.i, %_RNvNtCsjsNuU4yXw23_3fst5bytes9pack_size.exit.i.i ], [ 5, %bb.ap ], [ 4, %bb.ao ], [ 3, %bb.an ], [ 2, %bb.am ], [ 1, %.thread ], [ 6, %bb.aq ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !635
  store i64 0, ptr %i.b, align 8, !noalias !635
  %wide.trip.count.i.i.i = zext nneg i8 %.sroa.0.0.i3.i.i to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.gc = icmp samesign ult i8 %.sroa.0.0.i3.i.i, 4
  br i1 %i.gc, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 12
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i.i ] ; 5 uses
  %.sroa.0.014.i.i.i = phi i64 [ %i.ag, %.lr.ph.preheader.i.i.i.new ], [ %i.gr, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i.i
  %i.ge = trunc i64 %.sroa.0.014.i.i.i to i8
  store i8 %i.ge, ptr %i.gd, align 4, !noalias !635
  %i.gf = lshr i64 %.sroa.0.014.i.i.i, 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  %i.gi = trunc i64 %i.gf to i8
  store i8 %i.gi, ptr %i.gh, align 1, !noalias !635
  %i.gj = lshr i64 %.sroa.0.014.i.i.i, 16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %i.gm = trunc i64 %i.gj to i8
  store i8 %i.gm, ptr %i.gl, align 2, !noalias !635
  %i.gn = lshr i64 %.sroa.0.014.i.i.i, 24
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 3
  %i.gq = trunc i64 %i.gn to i8
  store i8 %i.gq, ptr %i.gp, align 1, !noalias !635
  %i.gr = lshr i64 %.sroa.0.014.i.i.i, 32         ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i.i.unr-lcssa, label %.lr.ph.i.i.i

_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i.i.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.3, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i.i.unr-lcssa ]
  %.sroa.0.014.i.i.i.epil.init = phi i64 [ %i.ag, %.lr.ph.preheader.i.i.i ], [ %i.gr, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i.i.unr-lcssa ]
  %lcmp.mod69 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod69)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %.lr.ph.i.i.i.epil ] ; 2 uses
  %.sroa.0.014.i.i.i.epil = phi i64 [ %.sroa.0.014.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ], [ %i.gu, %.lr.ph.i.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i.i.epil
  %i.gt = trunc i64 %.sroa.0.014.i.i.i.epil to i8
  store i8 %i.gt, ptr %i.gs, align 1, !noalias !635
  %i.gu = lshr i64 %.sroa.0.014.i.i.i.epil, 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !619

_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i.i: ; preds = %.lr.ph.i.i.i.epil, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i.i.unr-lcssa
  %i.gv = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 1, 9) %wide.trip.count.i.i.i), !noalias !636 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !635
  %.not.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i, label %_RINvNtCsjsNuU4yXw23_3fst5bytes9pack_uintQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit

_RINvNtCsjsNuU4yXw23_3fst5bytes9pack_uintQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i: ; preds = %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i.i, %bb.al
  %.sroa.5.0.copyload23 = phi i8 [ %.sroa.5.0.copyload, %bb.al ], [ %.sroa.5.0.copyload22, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i.i ] ; 2 uses
  %.sroa.03.0.i = phi i8 [ 0, %bb.al ], [ %.sroa.0.0.i3.i.i, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i.i ]
  %i.gw = icmp eq i64 %i.ae, 0
  br i1 %i.gw, label %.lr.ph.preheader.i.i36.i, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCsjsNuU4yXw23_3fst5bytes9pack_uintQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i
  %i.gx = sub i64 %2, %i.ae                       ; 14 uses
  %i.gy = icmp ult i64 %i.gx, 256
  br i1 %i.gy, label %.lr.ph.preheader.i.i36.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gz = icmp ult i64 %i.gx, 65536
  br i1 %i.gz, label %.lr.ph.preheader.i.i36.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ha = icmp ult i64 %i.gx, 16777216
  br i1 %i.ha, label %.lr.ph.preheader.i.i36.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hb = icmp ult i64 %i.gx, 4294967296
  br i1 %i.hb, label %.lr.ph.preheader.i.i36.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hc = icmp ult i64 %i.gx, 1099511627776
  br i1 %i.hc, label %.lr.ph.preheader.i.i36.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hd = icmp ult i64 %i.gx, 281474976710656
  br i1 %i.hd, label %.lr.ph.preheader.i.i36.i, label %_RNvNtCsjsNuU4yXw23_3fst5bytes9pack_size.exit.i34.i

_RNvNtCsjsNuU4yXw23_3fst5bytes9pack_size.exit.i34.i: ; preds = %bb.aw
  %i.he = icmp ult i64 %i.gx, 72057594037927936
  %..i.i35.i = select i1 %i.he, i8 7, i8 8
  br label %.lr.ph.preheader.i.i36.i

.lr.ph.preheader.i.i36.i:                         ; preds = %_RNvNtCsjsNuU4yXw23_3fst5bytes9pack_size.exit.i34.i, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %_RINvNtCsjsNuU4yXw23_3fst5bytes9pack_uintQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i
  %.sroa.0.05.i.i = phi i8 [ %..i.i35.i, %_RNvNtCsjsNuU4yXw23_3fst5bytes9pack_size.exit.i34.i ], [ 6, %bb.aw ], [ 5, %bb.av ], [ 4, %bb.au ], [ 3, %bb.at ], [ 2, %bb.as ], [ 1, %bb.ar ], [ 1, %_RINvNtCsjsNuU4yXw23_3fst5bytes9pack_uintQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i ] ; 3 uses
  %.sroa.011.04.i.i = phi i64 [ %i.gx, %_RNvNtCsjsNuU4yXw23_3fst5bytes9pack_size.exit.i34.i ], [ %i.gx, %bb.aw ], [ %i.gx, %bb.av ], [ %i.gx, %bb.au ], [ %i.gx, %bb.at ], [ %i.gx, %bb.as ], [ %i.gx, %bb.ar ], [ 0, %_RINvNtCsjsNuU4yXw23_3fst5bytes9pack_uintQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !637
  store i64 0, ptr %i.a, align 8, !noalias !637
  %wide.trip.count.i.i37.i = zext nneg i8 %.sroa.0.05.i.i to i64 ; 3 uses
  %xtraiter70 = and i64 %wide.trip.count.i.i37.i, 3 ; 3 uses
  %i.hf = icmp samesign ult i8 %.sroa.0.05.i.i, 4
  br i1 %i.hf, label %.lr.ph.i.i38.i.epil.preheader, label %.lr.ph.preheader.i.i36.i.new

.lr.ph.preheader.i.i36.i.new:                     ; preds = %.lr.ph.preheader.i.i36.i
  %unroll_iter74 = and i64 %wide.trip.count.i.i37.i, 12
  br label %.lr.ph.i.i38.i

.lr.ph.i.i38.i:                                   ; preds = %.lr.ph.i.i38.i, %.lr.ph.preheader.i.i36.i.new
  %indvars.iv.i.i39.i = phi i64 [ 0, %.lr.ph.preheader.i.i36.i.new ], [ %indvars.iv.next.i.i41.i.3, %.lr.ph.i.i38.i ] ; 5 uses
  %.sroa.0.014.i.i40.i = phi i64 [ %.sroa.011.04.i.i, %.lr.ph.preheader.i.i36.i.new ], [ %i.hu, %.lr.ph.i.i38.i ] ; 5 uses
  %niter75 = phi i64 [ 0, %.lr.ph.preheader.i.i36.i.new ], [ %niter75.next.3, %.lr.ph.i.i38.i ]
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i39.i
  %i.hh = trunc i64 %.sroa.0.014.i.i40.i to i8
  store i8 %i.hh, ptr %i.hg, align 4, !noalias !637
  %i.hi = lshr i64 %.sroa.0.014.i.i40.i, 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i39.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  %i.hl = trunc i64 %i.hi to i8
  store i8 %i.hl, ptr %i.hk, align 1, !noalias !637
  %i.hm = lshr i64 %.sroa.0.014.i.i40.i, 16
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i39.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  %i.hp = trunc i64 %i.hm to i8
  store i8 %i.hp, ptr %i.ho, align 2, !noalias !637
  %i.hq = lshr i64 %.sroa.0.014.i.i40.i, 24
  %indvars.iv.next.i.i41.i.3 = add nuw nsw i64 %indvars.iv.i.i39.i, 4 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i39.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 3
  %i.ht = trunc i64 %i.hq to i8
  store i8 %i.ht, ptr %i.hs, align 1, !noalias !637
  %i.hu = lshr i64 %.sroa.0.014.i.i40.i, 32       ; 2 uses
  %niter75.next.3 = add i64 %niter75, 4           ; 2 uses
  %niter75.ncmp.3 = icmp eq i64 %niter75.next.3, %unroll_iter74
  br i1 %niter75.ncmp.3, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i43.i.unr-lcssa, label %.lr.ph.i.i38.i

_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i43.i.unr-lcssa: ; preds = %.lr.ph.i.i38.i
  %lcmp.mod72.not = icmp eq i64 %xtraiter70, 0
  br i1 %lcmp.mod72.not, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i43.i, label %.lr.ph.i.i38.i.epil.preheader

.lr.ph.i.i38.i.epil.preheader:                    ; preds = %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i43.i.unr-lcssa, %.lr.ph.preheader.i.i36.i
  %indvars.iv.i.i39.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i36.i ], [ %indvars.iv.next.i.i41.i.3, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i43.i.unr-lcssa ]
  %.sroa.0.014.i.i40.i.epil.init = phi i64 [ %.sroa.011.04.i.i, %.lr.ph.preheader.i.i36.i ], [ %i.hu, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i43.i.unr-lcssa ]
  %lcmp.mod73 = icmp ne i64 %xtraiter70, 0
  call void @llvm.assume(i1 %lcmp.mod73)
  br label %.lr.ph.i.i38.i.epil

.lr.ph.i.i38.i.epil:                              ; preds = %.lr.ph.i.i38.i.epil, %.lr.ph.i.i38.i.epil.preheader
  %indvars.iv.i.i39.i.epil = phi i64 [ %indvars.iv.i.i39.i.epil.init, %.lr.ph.i.i38.i.epil.preheader ], [ %indvars.iv.next.i.i41.i.epil, %.lr.ph.i.i38.i.epil ] ; 2 uses
  %.sroa.0.014.i.i40.i.epil = phi i64 [ %.sroa.0.014.i.i40.i.epil.init, %.lr.ph.i.i38.i.epil.preheader ], [ %i.hx, %.lr.ph.i.i38.i.epil ] ; 2 uses
  %epil.iter71 = phi i64 [ 0, %.lr.ph.i.i38.i.epil.preheader ], [ %epil.iter71.next, %.lr.ph.i.i38.i.epil ]
  %indvars.iv.next.i.i41.i.epil = add nuw nsw i64 %indvars.iv.i.i39.i.epil, 1
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i39.i.epil
  %i.hw = trunc i64 %.sroa.0.014.i.i40.i.epil to i8
  store i8 %i.hw, ptr %i.hv, align 1, !noalias !637
  %i.hx = lshr i64 %.sroa.0.014.i.i40.i.epil, 8
  %epil.iter71.next = add i64 %epil.iter71, 1     ; 2 uses
  %epil.iter71.cmp.not = icmp eq i64 %epil.iter71.next, %xtraiter70
  br i1 %epil.iter71.cmp.not, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i43.i, label %.lr.ph.i.i38.i.epil, !llvm.loop !624

_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i43.i: ; preds = %.lr.ph.i.i38.i.epil, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i43.i.unr-lcssa
  %i.hy = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 1, 9) %wide.trip.count.i.i37.i), !noalias !638 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !637
  %.not.i44.i = icmp eq ptr %i.hy, null
  br i1 %.not.i44.i, label %_RINvNtNtCsjsNuU4yXw23_3fst3raw4node10pack_deltaQQINtNtB4_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit

_RINvNtNtCsjsNuU4yXw23_3fst3raw4node10pack_deltaQQINtNtB4_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i: ; preds = %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i43.i
  %i.hz = shl nuw i8 %.sroa.0.05.i.i, 4
  %i.ia = add nuw nsw i8 %i.hz, %.sroa.03.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !639
  store i8 %i.ia, ptr %i.e, align 1, !noalias !639
  %i.ib = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1), !noalias !640 ; 2 uses
  %.not.i16 = icmp eq ptr %i.ib, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !639
  br i1 %.not.i16, label %bb.ax, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit

bb.ax:                                            ; preds = %_RINvNtNtCsjsNuU4yXw23_3fst3raw4node10pack_deltaQQINtNtB4_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit.i
  %i.ic = zext i8 %.sroa.5.0.copyload23 to i64
  %i.id = getelementptr inbounds nuw i8, ptr @5, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !noalias !639, !noundef !5 ; 2 uses
  %i.if = add i8 %i.ie, -63
  %4 = icmp ult i8 %i.if, -64
  %5 = add nsw i8 %i.ie, -127
  %i.ig = select i1 %4, i8 -128, i8 %5            ; 2 uses
  %i.ih = and i8 %i.ig, 63
  %i.ii = icmp eq i8 %i.ih, 0
  br i1 %i.ii, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !639
  store i8 %.sroa.5.0.copyload23, ptr %i.d, align 1, !noalias !639
  %i.ij = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1), !noalias !640 ; 2 uses
  %.not28.i = icmp eq ptr %i.ij, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !639
  br i1 %.not28.i, label %bb.az, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !639
  store i8 %i.ig, ptr %i.c, align 1, !noalias !639
  %i.ik = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1), !noalias !640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !639
  br label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECsileJQcQObtj_7hir_def.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsa_NtCsjsNuU4yXw23_3fst3rawINtB6_15StreamWithStateRINtNtB8_15inner_automaton10StartsWithNtBV_3StrEE9next_withuNCNvXs9_B6_INtB6_6StreamBR_ENtNtB8_6stream8Streamer4next0ECsileJQcQObtj_7hir_def(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %.sroa.5 = alloca [64 x i8], align 8            ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [96 x i8], align 16               ; 19 uses
  %i.e = alloca [96 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = load i64, ptr %1, align 8, !range !7, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  store i64 0, ptr %1, align 8
  %i.j = trunc nuw i64 %i.g to i1
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !21, !alias.scope !682, !noalias !683, !noundef !5 ; 2 uses
  switch i64 %i.l, label %default.unreachable [
    i64 0, label %_RNvMs7_NtCsjsNuU4yXw23_3fst3rawNtB5_5Bound11exceeded_by.exit
    i64 1, label %bb.c
    i64 2, label %_RNvMs7_NtCsjsNuU4yXw23_3fst3rawNtB5_5Bound11exceeded_by.exit.thread
  ]

default.unreachable:                              ; preds = %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCsjsNuU4yXw23_3fst3raw11StreamStateINtNtBK_15inner_automaton15StartsWithStateNtB1m_3StrEEE8push_mutCsileJQcQObtj_7hir_def.exit58, %bb.k, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  br label %_RNvMs7_NtCsjsNuU4yXw23_3fst3rawNtB5_5Bound11exceeded_by.exit

_RNvMs7_NtCsjsNuU4yXw23_3fst3rawNtB5_5Bound11exceeded_by.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi i64 [ -1, %bb.c ], [ %i.l, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !682, !noalias !683, !noundef !5
  %i.o = sub i64 0, %i.n
  %i.p = icmp slt i64 %.sink.i, %i.o
  br i1 %i.p, label %bb.e, label %_RNvMs7_NtCsjsNuU4yXw23_3fst3rawNtB5_5Bound11exceeded_by.exit.thread

bb.d:                                             ; preds = %bb.g, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.s = load i64, ptr %i.r, align 8, !noundef !5 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 73 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 74 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 59
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.h

_RNvMs7_NtCsjsNuU4yXw23_3fst3rawNtB5_5Bound11exceeded_by.exit.thread: ; preds = %bb.b, %_RNvMs7_NtCsjsNuU4yXw23_3fst3rawNtB5_5Bound11exceeded_by.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.au = tail call { i64, i64 } @_RNvXNtCsjsNuU4yXw23_3fst15inner_automatonRINtB2_10StartsWithNtB2_3StrENtB2_9Automaton5startCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.at) ; 2 uses
  %i.av = extractvalue { i64, i64 } %i.au, 0
  %i.aw = extractvalue { i64, i64 } %i.au, 1
  store i64 %i.av, ptr %i.f, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.aw, ptr %i.ax, align 8
  %i.ay = call noundef zeroext i1 @_RNvXNtCsjsNuU4yXw23_3fst15inner_automatonRINtB2_10StartsWithNtB2_3StrENtB2_9Automaton8is_matchCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
  br i1 %i.ay, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMs7_NtCsjsNuU4yXw23_3fst3rawNtB5_5Bound11exceeded_by.exit
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 0, ptr %i.az, align 8
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.f:                                             ; preds = %_RNvMs7_NtCsjsNuU4yXw23_3fst3rawNtB5_5Bound11exceeded_by.exit.thread
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %.sroa.54.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.g:                                             ; preds = %_RNvMs7_NtCsjsNuU4yXw23_3fst3rawNtB5_5Bound11exceeded_by.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.d

._crit_edge:                                      ; preds = %.backedge, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph, %.backedge
  %i.ba = phi i64 [ %i.s, %.lr.ph ], [ %i.nb, %.backedge ] ; 2 uses
  %i.bb = add nsw i64 %i.ba, -1                   ; 3 uses
  store i64 %i.bb, ptr %i.r, align 8
  %i.bc = load i64, ptr %i.q, align 8, !range !17, !noundef !5
  %i.bd = icmp samesign ult i64 %i.bb, %i.bc
  call void @llvm.assume(i1 %i.bd)
  %i.be = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  %i.bf = icmp samesign ult i64 %i.ba, 96076792050570583
  call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw [96 x i8], ptr %i.be, i64 %i.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull align 8 dereferenceable(96) %i.bg, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %i.e, i64 96, i1 false)
  %i.bh = load i64, ptr %i.v, align 16, !noundef !5 ; 6 uses
  %i.bi = load i64, ptr %i.x, align 8, !noundef !5 ; 4 uses
  %.not = icmp ult i64 %i.bh, %i.bi
  br i1 %.not, label %bb.j, label %bb.az

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.bj, %._crit_edge
  ret void

bb.j:                                             ; preds = %bb.h
  %i.bj = call noundef zeroext i1 @_RNvXNtCsjsNuU4yXw23_3fst15inner_automatonRINtB2_10StartsWithNtB2_3StrENtB2_9Automaton9can_matchCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
  br i1 %i.bj, label %bb.k, label %bb.az

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.bk = load i8, ptr %i.ad, align 8, !range !22, !alias.scope !684, !noalias !685, !noundef !5
  switch i8 %i.bk, label %default.unreachable [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.aa
  ], !prof !23

bb.l:                                             ; preds = %bb.k
  %i.bl = icmp eq i64 %i.bh, 0
  br i1 %i.bl, label %bb.ab, label %bb.ag, !prof !8

bb.m:                                             ; preds = %bb.k
  %i.bm = icmp eq i64 %i.bh, 0
  br i1 %i.bm, label %bb.ah, label %bb.ax, !prof !8

bb.n:                                             ; preds = %bb.k
  %i.bn = load i8, ptr %i.ae, align 1, !alias.scope !684, !noalias !685, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  %i.bo = load i64, ptr %i.z, align 8, !alias.scope !686, !noundef !5 ; 3 uses
  %i.bp = and i8 %i.bn, 63
  %i.bq = icmp eq i8 %i.bp, 0                     ; 2 uses
  %..i = sext i1 %i.bq to i64                     ; 2 uses
  %i.br = load i64, ptr %i.af, align 16, !alias.scope !686, !noundef !5
  %i.bs = icmp ugt i64 %i.br, 1
  %i.bt = icmp ugt i64 %i.bi, 32
  %or.cond.i = and i1 %i.bs, %i.bt                ; 2 uses
  %.sroa.01.0.neg.i = select i1 %or.cond.i, i64 -256, i64 0 ; 2 uses
  %reass.sub = sub i64 %i.bo, %i.bh
  %i.bu = add i64 %reass.sub, -2
  %i.bv = add i64 %i.bu, %..i
  %i.bw = add i64 %i.bv, %.sroa.01.0.neg.i        ; 3 uses
  %i.bx = load i64, ptr %i.ag, align 8, !alias.scope !686, !noundef !5 ; 10 uses
  %i.by = icmp ult i64 %i.bw, %i.bx
  br i1 %i.by, label %_RNvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB5_13StateAnyTrans5input.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.bw, i64 noundef %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #43, !noalias !686
  unreachable

end_hunk_0
begin_hunk_1_@_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtB6_5Debug3fmtCsileJQcQObtj_7hir_def

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCs4kMRW8zVVbM_3cfg10CfgOptionsNtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBB_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEENtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCs33K2ylI4knu_10hir_expand15ExpandErrorKindNtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4MetaENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtB8_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtCs33K2ylI4knu_10hir_expand13EagerCallInfoEENtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCs33K2ylI4knu_10hir_expand16AttrMacroAttrIdsNtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdNtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs33K2ylI4knu_10hir_expand4name4NameEj3_NtB4_11PartialDrop12partial_dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsbSS6DM8SDEO_5alloc6string6StringINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB5_7HashSetNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs2_NtNtCscAsMj0W7j8b_3std4sync4mpmcINtB5_6SenderNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4sendCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdEB1R_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEE9drop_slowB7_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #38

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs8_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB5_4IterNtNtCsd9Lm8bEdjjY_5salsa5table4PageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NvCsileJQcQObtj_7hir_defsi_1__NtB7_10ModuleIdLtNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #38

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBL_13SpanStorage32EENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBL_13SpanStorage64EENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBL_13SpanStorage96EENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCs4dcH4YgJDq_2tt7storage10TopSubtreeENtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_5alloc6layout6LayoutNtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsf_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcTNtCs33K2ylI4knu_10hir_expand15ExpandErrorKindNtCsdovh4xi6v3I_4span4SpanEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i16 0, 329) i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRhNtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsgIpRO4v45SJ_7base_db5input5CrateNtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcTNtCs33K2ylI4knu_10hir_expand15ExpandErrorKindNtCsdovh4xi6v3I_4span4SpanEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRmNtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdE8data_rawCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdINtNtNtBa_5slice4iter4IterB14_EECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroENtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3AdtENtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3UseENtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleENtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroCallENtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdNtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtBa_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEINtNtNtBa_5slice4iter4IterB14_EEB2C_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtCsileJQcQObtj_7hir_def7MacroIdINtNtNtBa_5slice4iter4IterB14_EEB16_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtNtBa_5slice4iter4IterB14_EECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBP_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroCallEENtBP_11MacroCallIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #34

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #40

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #34

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { alwaysinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #25 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #33 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #35 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #38 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #41 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #42 = { noreturn }
attributes #43 = { noinline noreturn }
attributes #44 = { cold }
attributes #45 = { noinline }
attributes #46 = { cold noreturn nounwind }
attributes #47 = { inlinehint }
attributes #48 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!5 = !{}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i64 0, i64 2}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1074012, i32 2146409636, i32 0}
!10 = !{!"llvm.loop.peeled.count", i32 1}
!11 = !{i8 -1, i8 26}
!12 = !{i8 0, i8 26}
!13 = !{i8 0, i8 2}
!14 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!15 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!16 = !{i8 -1, i8 5}
!17 = !{i64 0, i64 -9223372036854775808}
!18 = !{i64 8}
!19 = !{!"branch_weights", i32 4001, i32 4000000}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{i64 0, i64 3}
!22 = !{i8 0, i8 4}
!23 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 1}
!24 = !{!"branch_weights", i32 4000000, i32 4001}
!25 = !{!"branch_weights", i32 4292820, i32 2143190828}
!26 = !{!"branch_weights", i32 2002, i32 2000}
!27 = !{i64 -1, i64 -9223372036854775808}
!28 = !{i32 0, i32 4}
!29 = !{i32 0, i32 2}
!30 = !{i64 -1, i64 3}
!31 = !{i64 0, i64 5}
!32 = !{i32 1, i32 0}
!33 = !{i32 -2, i32 3}
!34 = !{i32 0, i32 3}
!35 = !{i64 4}
!36 = !{i64 -1, i64 20}
!37 = !{!"address", !"read_provenance"}
!38 = !{!"branch_weights", i32 1074011, i32 2146409637, i32 0}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{i8 0, i8 8}
!42 = !{i8 0, i8 5}
!43 = !{i64 0, i64 -9223372036854775807}
!44 = !{i64 -2, i64 -9223372036854775808}
!45 = !{!"branch_weights", i32 2000, i32 2002}
!46 = !{i32 0, i32 10}
!47 = !{i8 0, i8 11}
!48 = distinct !{!48, !"_RNvMs_CsjJXvCMGntp8_6syntaxINtB4_5ParseINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB4_11syntax_node12RustLanguageEE11syntax_nodeCsileJQcQObtj_7hir_def"}
!49 = distinct !{!49, !48, !"_RNvMs_CsjJXvCMGntp8_6syntaxINtB4_5ParseINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB4_11syntax_node12RustLanguageEE11syntax_nodeCsileJQcQObtj_7hir_def: argument 0"}
!50 = !{!49}
!51 = distinct !{!51, !"_RNvMs_CsjJXvCMGntp8_6syntaxINtB4_5ParseINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB4_11syntax_node12RustLanguageEE11syntax_nodeCsileJQcQObtj_7hir_def"}
!52 = distinct !{!52, !51, !"_RNvMs_CsjJXvCMGntp8_6syntaxINtB4_5ParseINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB4_11syntax_node12RustLanguageEE11syntax_nodeCsileJQcQObtj_7hir_def: argument 0"}
!53 = !{!52}
!54 = distinct !{!54, !"_RNvMs_CsjJXvCMGntp8_6syntaxINtB4_5ParseINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB4_11syntax_node12RustLanguageEE11syntax_nodeCsileJQcQObtj_7hir_def"}
!55 = distinct !{!55, !54, !"_RNvMs_CsjJXvCMGntp8_6syntaxINtB4_5ParseINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB4_11syntax_node12RustLanguageEE11syntax_nodeCsileJQcQObtj_7hir_def: argument 0"}
!56 = !{!55}
!57 = distinct !{!57, !"_RNvMs_CsjJXvCMGntp8_6syntaxINtB4_5ParseINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB4_11syntax_node12RustLanguageEE11syntax_nodeCsileJQcQObtj_7hir_def"}
!58 = distinct !{!58, !57, !"_RNvMs_CsjJXvCMGntp8_6syntaxINtB4_5ParseINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB4_11syntax_node12RustLanguageEE11syntax_nodeCsileJQcQObtj_7hir_def: argument 0"}
!59 = !{!58}
!60 = distinct !{!60, !"_RINvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECsileJQcQObtj_7hir_def"}
!61 = distinct !{!61, !60, !"_RINvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECsileJQcQObtj_7hir_def: argument 0"}
!62 = distinct !{!62, !60, !"_RINvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECsileJQcQObtj_7hir_def: argument 1"}
!63 = distinct !{!63, !"_RINvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB6_13RawTableInner12resize_innerNtNtNtB6_5alloc5inner6GlobalECsileJQcQObtj_7hir_def"}
!64 = distinct !{!64, !63, !"_RINvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB6_13RawTableInner12resize_innerNtNtNtB6_5alloc5inner6GlobalECsileJQcQObtj_7hir_def: argument 0"}
!65 = distinct !{!65, !63, !"_RINvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB6_13RawTableInner12resize_innerNtNtNtB6_5alloc5inner6GlobalECsileJQcQObtj_7hir_def: argument 2"}
!66 = distinct !{!66, !63, !"_RINvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB6_13RawTableInner12resize_innerNtNtNtB6_5alloc5inner6GlobalECsileJQcQObtj_7hir_def: argument 1"}
!67 = distinct !{!67, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsk2Uk0NaJ3Ig_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECsileJQcQObtj_7hir_def"}
!68 = distinct !{!68, !67, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsk2Uk0NaJ3Ig_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECsileJQcQObtj_7hir_def: argument 0"}
!69 = distinct !{!69, !"_RNvXs1_NtCsk2Uk0NaJ3Ig_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB11_5alloc5inner6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def"}
!70 = distinct !{!70, !69, !"_RNvXs1_NtCsk2Uk0NaJ3Ig_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB11_5alloc5inner6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def: argument 0"}
!71 = distinct !{!71, !"_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE14reserve_rehashNCNvMNtCs39E2wp1vf7X_6intern6internINtB3u_8InternedB1A_E3news_0E0CsileJQcQObtj_7hir_def"}
!72 = distinct !{!72, !71, !"_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE14reserve_rehashNCNvMNtCs39E2wp1vf7X_6intern6internINtB3u_8InternedB1A_E3news_0E0CsileJQcQObtj_7hir_def: argument 1"}
!73 = distinct !{!73, !71, !"_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE14reserve_rehashNCNvMNtCs39E2wp1vf7X_6intern6internINtB3u_8InternedB1A_E3news_0E0CsileJQcQObtj_7hir_def: argument 0"}
!74 = distinct !{!74, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128"}
!75 = distinct !{!75, !74, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!76 = distinct !{!76, !"_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place"}
!77 = distinct !{!77, !76, !"_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place: argument 0"}
!78 = distinct !{!78, !"_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE14reserve_rehashNCNvMNtCs39E2wp1vf7X_6intern6internINtB3u_8InternedB1A_E3news_0E0CsileJQcQObtj_7hir_def"}
!79 = distinct !{!79, !78, !"_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE14reserve_rehashNCNvMNtCs39E2wp1vf7X_6intern6internINtB3u_8InternedB1A_E3news_0E0CsileJQcQObtj_7hir_def: argument 1"}
!80 = distinct !{!80, !78, !"_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE14reserve_rehashNCNvMNtCs39E2wp1vf7X_6intern6internINtB3u_8InternedB1A_E3news_0E0CsileJQcQObtj_7hir_def: argument 0"}
!81 = distinct !{!81, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128"}
!82 = distinct !{!82, !81, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!83 = !{!61}
!84 = !{!62}
!85 = !{!64}
!86 = !{!64, !66, !65, !61, !62}
!87 = !{!65}
!88 = !{!64, !61}
!89 = !{!66, !65, !62}
!90 = !{!68}
!91 = !{!70}
!92 = !{!70, !68}
!93 = !{!70, !68, !65}
!94 = !{!72}
!95 = !{!73, !65}
!96 = !{!73, !72, !65}
!97 = !{!75}
!98 = !{!77}
!99 = !{!77, !62}
!100 = !{!79}
!101 = !{!80, !62}
!102 = !{!80, !79, !62}
!103 = !{!82}
!104 = !{!61, !62}
!105 = distinct !{!105, !"_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionINtCsjpcu9PwIgok_8smallvec8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEj4_EE6insertB1P_"}
!106 = distinct !{!106, !105, !"_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionINtCsjpcu9PwIgok_8smallvec8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEj4_EE6insertB1P_: argument 0"}
!107 = distinct !{!107, !105, !"_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionINtCsjpcu9PwIgok_8smallvec8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEj4_EE6insertB1P_: argument 1"}
!108 = distinct !{!108, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEj4_EEEB25_"}
!109 = distinct !{!109, !108, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEj4_EEEB25_: argument 0"}
!110 = distinct !{!110, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEj4_EEB1J_"}
!111 = distinct !{!111, !110, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEj4_EEB1J_: argument 0"}
!112 = distinct !{!112, !"_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEj4_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1g_"}
!113 = distinct !{!113, !112, !"_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEj4_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1g_: argument 0"}
!114 = !{!106}
!115 = !{!107}
!116 = !{!109}
!117 = !{!109, !106}
!118 = !{!111}
!119 = !{!113}
!120 = !{!113, !111, !109, !106}
!121 = !{!113, !111, !109, !106, !107}
!122 = !{!106, !107}
!123 = distinct !{!123, !"_RINvYINtNtNtCshzWfHUSfYae_4core5array4iter8IntoIterNtNtCs33K2ylI4knu_10hir_expand4name4NameKj3_ENtNtNtNtBa_4iter6traits8iterator8Iterator7collectINtCsjpcu9PwIgok_8smallvec8SmallVecABN_j1_EECsileJQcQObtj_7hir_def"}
!124 = distinct !{!124, !123, !"_RINvYINtNtNtCshzWfHUSfYae_4core5array4iter8IntoIterNtNtCs33K2ylI4knu_10hir_expand4name4NameKj3_ENtNtNtNtBa_4iter6traits8iterator8Iterator7collectINtCsjpcu9PwIgok_8smallvec8SmallVecABN_j1_EECsileJQcQObtj_7hir_def: argument 1"}
!125 = distinct !{!125, !123, !"_RINvYINtNtNtCshzWfHUSfYae_4core5array4iter8IntoIterNtNtCs33K2ylI4knu_10hir_expand4name4NameKj3_ENtNtNtNtBa_4iter6traits8iterator8Iterator7collectINtCsjpcu9PwIgok_8smallvec8SmallVecABN_j1_EECsileJQcQObtj_7hir_def: argument 0"}
!126 = distinct !{!126, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1A_5array4iter8IntoIterBJ_Kj3_EECsileJQcQObtj_7hir_def"}
!127 = distinct !{!127, !126, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1A_5array4iter8IntoIterBJ_Kj3_EECsileJQcQObtj_7hir_def: argument 1"}
!128 = distinct !{!128, !126, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1A_5array4iter8IntoIterBJ_Kj3_EECsileJQcQObtj_7hir_def: argument 0"}
!129 = distinct !{!129, !"_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1A_5array4iter8IntoIterBJ_Kj3_EECsileJQcQObtj_7hir_def"}
!130 = distinct !{!130, !129, !"_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1A_5array4iter8IntoIterBJ_Kj3_EECsileJQcQObtj_7hir_def: argument 1"}
!131 = distinct !{!131, !129, !"_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1A_5array4iter8IntoIterBJ_Kj3_EECsileJQcQObtj_7hir_def: argument 0"}
!132 = distinct !{!132, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCs33K2ylI4knu_10hir_expand4name4NameKj3_EECsileJQcQObtj_7hir_def"}
end_hunk_1
