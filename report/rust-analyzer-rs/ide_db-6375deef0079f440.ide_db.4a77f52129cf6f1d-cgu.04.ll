Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.04?download=true
inline.NumInlined: 2237
inline.NumDeleted: 872
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvMs_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB5_4Node7compileQINtNtB7_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db:bb.a
.lr.ph.i102.us.i.epil.preheader:                  ; preds = %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit108.us.i.unr-lcssa, %.lr.ph.preheader.i100.us.i
  %indvars.iv.i103.us.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i100.us.i ], [ %indvars.iv.next.i105.us.i.3, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit108.us.i.unr-lcssa ]
  %.sroa.0.014.i104.us.i.epil.init = phi i64 [ %i.cz, %.lr.ph.preheader.i100.us.i ], [ %i.do, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit108.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod85)
  br label %.lr.ph.i102.us.i.epil

.lr.ph.i102.us.i.epil:                            ; preds = %.lr.ph.i102.us.i.epil, %.lr.ph.i102.us.i.epil.preheader
  %indvars.iv.i103.us.i.epil = phi i64 [ %indvars.iv.i103.us.i.epil.init, %.lr.ph.i102.us.i.epil.preheader ], [ %indvars.iv.next.i105.us.i.epil, %.lr.ph.i102.us.i.epil ] ; 2 uses
  %.sroa.0.014.i104.us.i.epil = phi i64 [ %.sroa.0.014.i104.us.i.epil.init, %.lr.ph.i102.us.i.epil.preheader ], [ %i.dr, %.lr.ph.i102.us.i.epil ] ; 2 uses
  %epil.iter83 = phi i64 [ 0, %.lr.ph.i102.us.i.epil.preheader ], [ %epil.iter83.next, %.lr.ph.i102.us.i.epil ]
  %indvars.iv.next.i105.us.i.epil = add nuw nsw i64 %indvars.iv.i103.us.i.epil, 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i103.us.i.epil
  %i.dq = trunc i64 %.sroa.0.014.i104.us.i.epil to i8
  store i8 %i.dq, ptr %i.dp, align 1, !noalias !96
  %i.dr = lshr i64 %.sroa.0.014.i104.us.i.epil, 8
  %epil.iter83.next = add i64 %epil.iter83, 1     ; 2 uses
  %epil.iter83.cmp.not = icmp eq i64 %epil.iter83.next, %xtraiter82
  br i1 %epil.iter83.cmp.not, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit108.us.i, label %.lr.ph.i102.us.i.epil, !llvm.loop !71

_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit108.us.i: ; preds = %.lr.ph.i102.us.i.epil, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit108.us.i.unr-lcssa
  %i.ds = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 1, 9) %wide.trip.count.i101.pre-phi.i), !noalias !97 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !96
  %.not77.us.i = icmp eq ptr %i.ds, null
  br i1 %.not77.us.i, label %.split.us.i, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !98
  store i64 0, ptr %i.j, align 8, !noalias !98
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
  store i8 %i.dw, ptr %i.dv, align 4, !noalias !98
  %i.dx = lshr i64 %.sroa.0.014.i.i, 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  %i.ea = trunc i64 %i.dx to i8
  store i8 %i.ea, ptr %i.dz, align 1, !noalias !98
  %i.eb = lshr i64 %.sroa.0.014.i.i, 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 2
  %i.ee = trunc i64 %i.eb to i8
  store i8 %i.ee, ptr %i.ed, align 2, !noalias !98
  %i.ef = lshr i64 %.sroa.0.014.i.i, 24
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.ei = trunc i64 %i.ef to i8
  store i8 %i.ei, ptr %i.eh, align 1, !noalias !98
  %i.ej = lshr i64 %.sroa.0.014.i.i, 32           ; 2 uses
  %niter81.next.3 = add i64 %niter81, 4           ; 2 uses
  %niter81.ncmp.3 = icmp eq i64 %niter81.next.3, %unroll_iter80
  br i1 %niter81.ncmp.3, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i.unr-lcssa, label %.lr.ph.i.i

_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod78.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod78.not, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.3, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i.unr-lcssa ]
  %.sroa.0.014.i.i.epil.init = phi i64 [ %i.y, %.lr.ph.preheader.i.i ], [ %i.ej, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i.unr-lcssa ]
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
  store i8 %i.el, ptr %i.ek, align 1, !noalias !98
  %i.em = lshr i64 %.sroa.0.014.i.i.epil, 8
  %epil.iter77.next = add i64 %epil.iter77, 1     ; 2 uses
  %epil.iter77.cmp.not = icmp eq i64 %epil.iter77.next, %xtraiter76
  br i1 %epil.iter77.cmp.not, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !74

_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i: ; preds = %.lr.ph.i.i.epil, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i.unr-lcssa
  %i.en = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 1, 9) %wide.trip.count.i.i), !noalias !99 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !98
  %.not.i = icmp eq ptr %i.en, null
  br i1 %.not.i, label %.split.us.preheader.i, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit

.split136.i:                                      ; preds = %.loopexit126.i
  br i1 %i.t, label %._crit_edge139.thread.i, label %bb.z

.preheader.i:                                     ; preds = %.split136.us.i, %.split136.us.i.preheader
  br i1 %i.t, label %._crit_edge139.thread.i, label %.lr.ph138.i

bb.z:                                             ; preds = %.split136.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #38, !noalias !95
  unreachable

.lr.ph138.i:                                      ; preds = %.preheader.i, %bb.ab
  %.sroa.532.0137.i = phi ptr [ %i.es, %bb.ab ], [ %i.ar, %.preheader.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !92
  %i.eo = getelementptr inbounds i8, ptr %.sroa.532.0137.i, i64 -8
  %i.ep = load i8, ptr %i.eo, align 8, !noalias !90, !noundef !5
  store i8 %i.ep, ptr %i.o, align 1, !noalias !92
  %i.eq = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef 1), !noalias !90 ; 2 uses
  %.not79.i = icmp eq ptr %i.eq, null
  br i1 %.not79.i, label %bb.ab, label %bb.aa

._crit_edge139.i:                                 ; preds = %bb.ab
  %i.er = icmp samesign ugt i64 %i.q, 32
  br i1 %i.er, label %.lr.ph143.preheader.i, label %._crit_edge139.thread.i

bb.aa:                                            ; preds = %.lr.ph138.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !92
  br label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit

bb.ab:                                            ; preds = %.lr.ph138.i
  %i.es = getelementptr inbounds i8, ptr %.sroa.532.0137.i, i64 -24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !92
  %i.et = icmp eq ptr %i.aq, %i.es
  br i1 %i.et, label %._crit_edge139.i, label %.lr.ph138.i

.lr.ph143.preheader.i:                            ; preds = %._crit_edge139.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.n, i8 -1, i64 256, i1 false), !noalias !92
  br label %.lr.ph143.i

._crit_edge139.thread.i:                          ; preds = %._crit_edge144.i, %._crit_edge139.i, %.preheader.i, %.split136.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !92
  store i8 %i.bp, ptr %i.m, align 1, !noalias !92
  %i.eu = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef 1), !noalias !90 ; 2 uses
  %.not82.i = icmp eq ptr %i.eu, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !92
  br i1 %.not82.i, label %bb.ac, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit

._crit_edge144.i:                                 ; preds = %.lr.ph143.i
  %i.ev = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef 256), !noalias !90 ; 2 uses
  %.not81.i = icmp eq ptr %i.ev, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !92
  br i1 %.not81.i, label %._crit_edge139.thread.i, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit

bb.ac:                                            ; preds = %._crit_edge139.thread.i
  %i.ew = icmp eq i8 %i.bs, 0
  br i1 %i.ew, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ex = icmp eq i64 %i.q, 256
  br i1 %i.ex, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ey = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 1), !noalias !90 ; 2 uses
  %.not84.i = icmp eq ptr %i.ey, null
  br i1 %.not84.i, label %bb.ag, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !92
  store i8 %i.bq, ptr %i.l, align 1, !noalias !92
  %i.ez = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 1), !noalias !90 ; 2 uses
  %.not83.i = icmp eq ptr %i.ez, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !92
  br i1 %.not83.i, label %bb.ag, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !92
  store i8 %.sroa.071.1.i, ptr %i.k, align 1, !noalias !92
  %i.fa = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 1), !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !92
  br label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit

.lr.ph143.i:                                      ; preds = %.lr.ph143.i, %.lr.ph143.preheader.i
  %.sroa.7.0141.i = phi i8 [ %i.fc, %.lr.ph143.i ], [ 0, %.lr.ph143.preheader.i ] ; 2 uses
  %.sroa.0120.0140.i = phi ptr [ %i.fb, %.lr.ph143.i ], [ %i.aq, %.lr.ph143.preheader.i ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0120.0140.i, i64 24 ; 2 uses
  %i.fc = add i8 %.sroa.7.0141.i, 1
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0120.0140.i, i64 16
  %i.fe = load i8, ptr %i.fd, align 8, !noalias !90, !noundef !5
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ff
  store i8 %.sroa.7.0141.i, ptr %i.fg, align 1, !noalias !92
  %i.fh = icmp eq ptr %i.fb, %i.ar
  br i1 %i.fh, label %._crit_edge144.i, label %.lr.ph143.i

bb.ah:                                            ; preds = %bb.e
  %i.fi = icmp eq i64 %i.ag, 0
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.fk = load i8, ptr %i.fj, align 8             ; 3 uses
  br i1 %i.fi, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr @3, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !noalias !100, !noundef !5
  %i.fo = add i8 %i.fn, 1
  %i.fp = tail call i8 @llvm.umin.i8(i8 %i.fo, i8 64) ; 2 uses
  %4 = or i8 %i.fp, -64
  %i.fq = and i8 %i.fp, 63
  %i.fr = icmp eq i8 %i.fq, 0
  br i1 %i.fr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !100
  store i8 %i.fk, ptr %i.g, align 1, !noalias !100
  %i.fs = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1) ; 2 uses
  %.not.i14 = icmp eq ptr %i.fs, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !100
  br i1 %.not.i14, label %bb.ak, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !100
  store i8 %4, ptr %i.f, align 1, !noalias !100
  %i.ft = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !100
  br label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit

bb.al:                                            ; preds = %bb.e
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.fu = icmp eq i64 %i.ag, 0
  br i1 %i.fu, label %_RINvNtCsjsNuU4yXw23_3fst5bytes9pack_uintQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i, label %.thread

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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !101
  store i64 0, ptr %i.b, align 8, !noalias !101
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
  store i8 %i.ge, ptr %i.gd, align 4, !noalias !101
  %i.gf = lshr i64 %.sroa.0.014.i.i.i, 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  %i.gi = trunc i64 %i.gf to i8
  store i8 %i.gi, ptr %i.gh, align 1, !noalias !101
  %i.gj = lshr i64 %.sroa.0.014.i.i.i, 16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %i.gm = trunc i64 %i.gj to i8
  store i8 %i.gm, ptr %i.gl, align 2, !noalias !101
  %i.gn = lshr i64 %.sroa.0.014.i.i.i, 24
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 3
  %i.gq = trunc i64 %i.gn to i8
  store i8 %i.gq, ptr %i.gp, align 1, !noalias !101
  %i.gr = lshr i64 %.sroa.0.014.i.i.i, 32         ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i.i.unr-lcssa, label %.lr.ph.i.i.i

_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i.i.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.3, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i.i.unr-lcssa ]
  %.sroa.0.014.i.i.i.epil.init = phi i64 [ %i.ag, %.lr.ph.preheader.i.i.i ], [ %i.gr, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i.i.unr-lcssa ]
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
  store i8 %i.gt, ptr %i.gs, align 1, !noalias !101
  %i.gu = lshr i64 %.sroa.0.014.i.i.i.epil, 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !84

_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i.i: ; preds = %.lr.ph.i.i.i.epil, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i.i.unr-lcssa
  %i.gv = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 1, 9) %wide.trip.count.i.i.i), !noalias !102 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !101
  %.not.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i, label %_RINvNtCsjsNuU4yXw23_3fst5bytes9pack_uintQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit

_RINvNtCsjsNuU4yXw23_3fst5bytes9pack_uintQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i: ; preds = %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i.i, %bb.al
  %.sroa.5.0.copyload23 = phi i8 [ %.sroa.5.0.copyload, %bb.al ], [ %.sroa.5.0.copyload22, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i.i ] ; 2 uses
  %.sroa.03.0.i = phi i8 [ 0, %bb.al ], [ %.sroa.0.0.i3.i.i, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i.i ]
  %i.gw = icmp eq i64 %i.ae, 0
  br i1 %i.gw, label %.lr.ph.preheader.i.i36.i, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCsjsNuU4yXw23_3fst5bytes9pack_uintQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i
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

.lr.ph.preheader.i.i36.i:                         ; preds = %_RNvNtCsjsNuU4yXw23_3fst5bytes9pack_size.exit.i34.i, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %_RINvNtCsjsNuU4yXw23_3fst5bytes9pack_uintQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i
  %.sroa.0.05.i.i = phi i8 [ %..i.i35.i, %_RNvNtCsjsNuU4yXw23_3fst5bytes9pack_size.exit.i34.i ], [ 6, %bb.aw ], [ 5, %bb.av ], [ 4, %bb.au ], [ 3, %bb.at ], [ 2, %bb.as ], [ 1, %bb.ar ], [ 1, %_RINvNtCsjsNuU4yXw23_3fst5bytes9pack_uintQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i ] ; 3 uses
  %.sroa.011.04.i.i = phi i64 [ %i.gx, %_RNvNtCsjsNuU4yXw23_3fst5bytes9pack_size.exit.i34.i ], [ %i.gx, %bb.aw ], [ %i.gx, %bb.av ], [ %i.gx, %bb.au ], [ %i.gx, %bb.at ], [ %i.gx, %bb.as ], [ %i.gx, %bb.ar ], [ 0, %_RINvNtCsjsNuU4yXw23_3fst5bytes9pack_uintQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !103
  store i64 0, ptr %i.a, align 8, !noalias !103
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
  store i8 %i.hh, ptr %i.hg, align 4, !noalias !103
  %i.hi = lshr i64 %.sroa.0.014.i.i40.i, 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i39.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  %i.hl = trunc i64 %i.hi to i8
  store i8 %i.hl, ptr %i.hk, align 1, !noalias !103
  %i.hm = lshr i64 %.sroa.0.014.i.i40.i, 16
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i39.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  %i.hp = trunc i64 %i.hm to i8
  store i8 %i.hp, ptr %i.ho, align 2, !noalias !103
  %i.hq = lshr i64 %.sroa.0.014.i.i40.i, 24
  %indvars.iv.next.i.i41.i.3 = add nuw nsw i64 %indvars.iv.i.i39.i, 4 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i39.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 3
  %i.ht = trunc i64 %i.hq to i8
  store i8 %i.ht, ptr %i.hs, align 1, !noalias !103
  %i.hu = lshr i64 %.sroa.0.014.i.i40.i, 32       ; 2 uses
  %niter75.next.3 = add i64 %niter75, 4           ; 2 uses
  %niter75.ncmp.3 = icmp eq i64 %niter75.next.3, %unroll_iter74
  br i1 %niter75.ncmp.3, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i43.i.unr-lcssa, label %.lr.ph.i.i38.i

_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i43.i.unr-lcssa: ; preds = %.lr.ph.i.i38.i
  %lcmp.mod72.not = icmp eq i64 %xtraiter70, 0
  br i1 %lcmp.mod72.not, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i43.i, label %.lr.ph.i.i38.i.epil.preheader

.lr.ph.i.i38.i.epil.preheader:                    ; preds = %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i43.i.unr-lcssa, %.lr.ph.preheader.i.i36.i
  %indvars.iv.i.i39.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i36.i ], [ %indvars.iv.next.i.i41.i.3, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i43.i.unr-lcssa ]
  %.sroa.0.014.i.i40.i.epil.init = phi i64 [ %.sroa.011.04.i.i, %.lr.ph.preheader.i.i36.i ], [ %i.hu, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i43.i.unr-lcssa ]
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
  store i8 %i.hw, ptr %i.hv, align 1, !noalias !103
  %i.hx = lshr i64 %.sroa.0.014.i.i40.i.epil, 8
  %epil.iter71.next = add i64 %epil.iter71, 1     ; 2 uses
  %epil.iter71.cmp.not = icmp eq i64 %epil.iter71.next, %xtraiter70
  br i1 %epil.iter71.cmp.not, label %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i43.i, label %.lr.ph.i.i38.i.epil, !llvm.loop !89

_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i43.i: ; preds = %.lr.ph.i.i38.i.epil, %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i43.i.unr-lcssa
  %i.hy = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 1, 9) %wide.trip.count.i.i37.i), !noalias !104 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !103
  %.not.i44.i = icmp eq ptr %i.hy, null
  br i1 %.not.i44.i, label %_RINvNtNtCsjsNuU4yXw23_3fst3raw4node10pack_deltaQQINtNtB4_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit

_RINvNtNtCsjsNuU4yXw23_3fst3raw4node10pack_deltaQQINtNtB4_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i: ; preds = %_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i43.i
  %i.hz = shl nuw i8 %.sroa.0.05.i.i, 4
  %i.ia = add nuw nsw i8 %i.hz, %.sroa.03.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !105
  store i8 %i.ia, ptr %i.e, align 1, !noalias !105
  %i.ib = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1), !noalias !106 ; 2 uses
  %.not.i16 = icmp eq ptr %i.ib, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !105
  br i1 %.not.i16, label %bb.ax, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit

bb.ax:                                            ; preds = %_RINvNtNtCsjsNuU4yXw23_3fst3raw4node10pack_deltaQQINtNtB4_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit.i
  %i.ic = zext i8 %.sroa.5.0.copyload23 to i64
  %i.id = getelementptr inbounds nuw i8, ptr @3, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !noalias !105, !noundef !5
  %i.if = add i8 %i.ie, 1                         ; 2 uses
  %5 = icmp ugt i8 %i.if, 63
  %6 = or disjoint i8 %i.if, -128
  %i.ig = select i1 %5, i8 -128, i8 %6            ; 2 uses
  %i.ih = and i8 %i.ig, 63
  %i.ii = icmp eq i8 %i.ih, 0
  br i1 %i.ii, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !105
  store i8 %.sroa.5.0.copyload23, ptr %i.d, align 1, !noalias !105
  %i.ij = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1), !noalias !106 ; 2 uses
  %.not28.i = icmp eq ptr %i.ij, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !105
  br i1 %.not28.i, label %bb.az, label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !105
  store i8 %i.ig, ptr %i.c, align 1, !noalias !105
  %i.ik = call noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !105
  br label %_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db.exit
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef ptr @_RINvNtCsg1bCijyqAnf_6boxcar7buckets21allocate_race_and_getINtNtNtB4_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1n_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2y_(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = icmp ugt i64 %1, 576460752303423487
  br i1 %i.b, label %.split5.i, label %.split.i

.split5.i:                                        ; preds = %bb.a
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #38
  unreachable

.split.i:                                         ; preds = %bb.a
  %i.c = shl nuw nsw i64 %1, 4                    ; 4 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.d = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef %i.c, i64 noundef 8) #27 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RINvNtCsg1bCijyqAnf_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1g_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2r_.exit, !prof !4

bb.b:                                             ; preds = %.split.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.c) #34
  unreachable

_RINvNtCsg1bCijyqAnf_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1g_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2r_.exit: ; preds = %.split.i
  %i.f = cmpxchg ptr %0, ptr null, ptr %i.d release acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i = extractvalue { ptr, i1 } %i.f, 1
  %.sroa.01.0.i = extractvalue { ptr, i1 } %i.f, 0
  br i1 %.sroa.18.0.in.i, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2x_.exit.i.i.preheader

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2x_.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2x_.exit.i.i.preheader
  %i.g = icmp eq i64 %i.i, %1
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1W_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEEB37_.exit, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2x_.exit.i.i.preheader

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2x_.exit.i.i.preheader: ; preds = %_RINvNtCsg1bCijyqAnf_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1g_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2r_.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2x_.exit.i.i
  %.sroa.0.0.i.i5 = phi i64 [ %i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2x_.exit.i.i ], [ 0, %_RINvNtCsg1bCijyqAnf_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1g_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2r_.exit ] ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.sroa.0.0.i.i5
  %i.i = add nuw nsw i64 %.sroa.0.0.i.i5, 1       ; 4 uses
  invoke void @_RNvXs6_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB5_5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtBT_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB23_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2x_.exit.i.i unwind label %bb.c

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2x_.exit7.i.i: ; preds = %.lr.ph
  %i.j = add nuw nsw i64 %.sroa.0.1.i.i6, 1       ; 2 uses
  %i.k = icmp eq i64 %i.j, %1
  br i1 %i.k, label %.body.i, label %.lr.ph

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2x_.exit.i.i.preheader
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.i, %1
  br i1 %i.m, label %.body.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2x_.exit7.i.i
  %.sroa.0.1.i.i6 = phi i64 [ %i.j, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2x_.exit7.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.sroa.0.1.i.i6
  invoke void @_RNvXs6_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB5_5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtBT_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB23_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2x_.exit7.i.i unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

.body.i:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2x_.exit7.i.i, %bb.c
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef 8) #27
  resume { ptr, i32 } %i.l

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1W_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEEB37_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2x_.exit.i.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef 8) #27
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCsg1bCijyqAnf_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1g_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2r_.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1W_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEEB37_.exit
  %.sroa.0.0 = phi ptr [ %.sroa.01.0.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1W_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEEB37_.exit ], [ %i.d, %_RINvNtCsg1bCijyqAnf_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1g_4memo4MemoNtNvNvCs6oosyzwIepl_6ide_db10line_indexs_1__25line_index_Configuration_EEEEB2r_.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef ptr @_RINvNtCsg1bCijyqAnf_6boxcar7buckets21allocate_race_and_getINtNtNtB4_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1n_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2C_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2E_(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = icmp ugt i64 %1, 576460752303423487
  br i1 %i.b, label %.split5.i, label %.split.i

.split5.i:                                        ; preds = %bb.a
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #38
  unreachable

.split.i:                                         ; preds = %bb.a
  %i.c = shl nuw nsw i64 %1, 4                    ; 4 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.d = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef %i.c, i64 noundef 8) #27 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RINvNtCsg1bCijyqAnf_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1g_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2v_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2x_.exit, !prof !4

bb.b:                                             ; preds = %.split.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.c) #34
  unreachable

_RINvNtCsg1bCijyqAnf_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1g_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2v_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2x_.exit: ; preds = %.split.i
  %i.f = cmpxchg ptr %0, ptr null, ptr %i.d release acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i = extractvalue { ptr, i1 } %i.f, 1
  %.sroa.01.0.i = extractvalue { ptr, i1 } %i.f, 0
  br i1 %.sroa.18.0.in.i, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2B_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2D_.exit.i.i.preheader

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2B_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2D_.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2B_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2D_.exit.i.i.preheader
  %i.g = icmp eq i64 %i.i, %1
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1W_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB3b_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEEB3d_.exit, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2B_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2D_.exit.i.i.preheader

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2B_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2D_.exit.i.i.preheader: ; preds = %_RINvNtCsg1bCijyqAnf_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1g_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2v_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2x_.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2B_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2D_.exit.i.i
  %.sroa.0.0.i.i5 = phi i64 [ %i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2B_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2D_.exit.i.i ], [ 0, %_RINvNtCsg1bCijyqAnf_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1g_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2v_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2x_.exit ] ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.sroa.0.0.i.i5
  %i.i = add nuw nsw i64 %.sroa.0.0.i.i5, 1       ; 4 uses
  invoke void @_RNvXs6_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB5_5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtBT_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB27_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB29_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2B_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2D_.exit.i.i unwind label %bb.c

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2B_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2D_.exit7.i.i: ; preds = %.lr.ph
  %i.j = add nuw nsw i64 %.sroa.0.1.i.i6, 1       ; 2 uses
  %i.k = icmp eq i64 %i.j, %1
  br i1 %i.k, label %.body.i, label %.lr.ph

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2B_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2D_.exit.i.i.preheader
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.i, %1
  br i1 %i.m, label %.body.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2B_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2D_.exit7.i.i
  %.sroa.0.1.i.i6 = phi i64 [ %i.j, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2B_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2D_.exit7.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.sroa.0.1.i.i6
  invoke void @_RNvXs6_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB5_5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtBT_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB27_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB29_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2B_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2D_.exit7.i.i unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

.body.i:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2B_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2D_.exit7.i.i, %bb.c
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef 8) #27
  resume { ptr, i32 } %i.l

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1W_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB3b_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEEB3d_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2B_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2D_.exit.i.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef 8) #27
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCsg1bCijyqAnf_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1g_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2v_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2x_.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1W_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB3b_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEEB3d_.exit
  %.sroa.0.0 = phi ptr [ %.sroa.01.0.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1W_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB3b_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEEB3d_.exit ], [ %i.d, %_RINvNtCsg1bCijyqAnf_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1g_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2v_11SymbolIndex14module_symbols1__29module_symbols_Configuration_EEEEB2x_.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef ptr @_RINvNtCsg1bCijyqAnf_6boxcar7buckets21allocate_race_and_getINtNtNtB4_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1n_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2C_11SymbolIndex15library_symbols1__30library_symbols_Configuration_EEEEB2E_(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = icmp ugt i64 %1, 576460752303423487
  br i1 %i.b, label %.split5.i, label %.split.i

.split5.i:                                        ; preds = %bb.a
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #38
  unreachable

.split.i:                                         ; preds = %bb.a
  %i.c = shl nuw nsw i64 %1, 4                    ; 4 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.d = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef %i.c, i64 noundef 8) #27 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RINvNtCsg1bCijyqAnf_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1g_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2v_11SymbolIndex15library_symbols1__30library_symbols_Configuration_EEEEB2x_.exit, !prof !4

bb.b:                                             ; preds = %.split.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.c) #34
  unreachable

_RINvNtCsg1bCijyqAnf_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1g_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2v_11SymbolIndex15library_symbols1__30library_symbols_Configuration_EEEEB2x_.exit: ; preds = %.split.i
  %i.f = cmpxchg ptr %0, ptr null, ptr %i.d release acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i = extractvalue { ptr, i1 } %i.f, 1
  %.sroa.01.0.i = extractvalue { ptr, i1 } %i.f, 0
  br i1 %.sroa.18.0.in.i, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2B_11SymbolIndex15library_symbols1__30library_symbols_Configuration_EEEEB2D_.exit.i.i.preheader

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2B_11SymbolIndex15library_symbols1__30library_symbols_Configuration_EEEEB2D_.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs0_NtCs6oosyzwIepl_6ide_db12symbol_indexNtB2B_11SymbolIndex15library_symbols1__30library_symbols_Configuration_EEEEB2D_.exit.i.i.preheader
  %i.g = icmp eq i64 %i.i, %1
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes6IfExpr11else_branch
declare { i64, ptr } @_RNvMs3_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes6IfExpr11else_branch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXsT_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes9WhileExprNtNtB7_6traits11HasLoopBody9loop_body(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMsg_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes8MacroDef4args(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMsg_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes8MacroDef4body(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMsM_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes9TokenTree22token_trees_and_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCsjJXvCMGntp8_6syntax3ast9generatedNtNtB2_5nodes4StmtNtB4_7AstNode4cast(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCscFGNKo4Sl5v_9itertools11groupbylazy3newbINtNtNtNtCshzWfHUSfYae_4core4iter8adapters9map_while8MapWhileINtNtBP_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext27parse_tt_as_comma_sep_paths0ENCB3L_s_0EB3R_(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapIB2p_INtNtCscFGNKo4Sl5v_9itertools11groupbylazy6GroupsbINtNtB2t_9map_while8MapWhileINtNtB2t_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtB19_11syntax_node12RustLanguageEENCNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext27parse_tt_as_comma_sep_paths0ENCB6x_s_0ENCB6x_s0_0ENCB6x_s1_0EE9from_iterB6D_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMsH_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes10Visibility4kind(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsf_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes4Path8segments(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvCs89JjGp7luZU_4stdx10iter_eq_byINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1G_8node_extNtB1C_4Path8segments0EBx_NCNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext6vis_eq0EB3u_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory10whitespace(ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsjJXvCMGntp8_6syntax13syntax_editorNtB2_12SyntaxEditor10insert_all(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCsjJXvCMGntp8_6syntax13syntax_editorNtB6_8Position6beforeINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB8_11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCsjJXvCMGntp8_6syntax13syntax_editorNtB6_8Position6beforeRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB8_11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i8 @_RNvMs2_NtNtCsjJXvCMGntp8_6syntax3ast4editNtB5_11IndentLevel9from_node(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCsjJXvCMGntp8_6syntax3ast4editNtB4_11IndentLevelNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsc_NtNtCsjJXvCMGntp8_6syntax13syntax_editor5editsNtNtNtNtB9_3ast9generated5nodes3UseNtB5_9Removable6remove(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCsjJXvCMGntp8_6syntax13syntax_editor5editsNtNtNtNtB9_3ast9generated5nodes7UseTreeNtB5_9Removable6remove(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileNtNtB8_6traits13HasModuleItem5itemsCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8ItemListNtNtB8_6traits13HasModuleItem5itemsCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListNtNtB8_6traits13HasModuleItem5itemsCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathE3zipBI_ECs6oosyzwIepl_6ide_db(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports13common_prefix(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMsf_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes4Path10qualifiers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory8use_tree(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports17wrap_in_tree_list(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB5_13SyntaxFactory4use_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtB1w_6cloned6ClonedINtNtNtB1A_5slice4iter4IterNtNtNtB7_9generated5nodes4AttrEEEECs6oosyzwIepl_6ide_db(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noundef, ptr noundef, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports17try_merge_imports(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCsjJXvCMGntp8_6syntax13syntax_editorNtB3_12SyntaxEditor7replaceRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB5_11syntax_node12RustLanguageEB16_ECs6oosyzwIepl_6ide_db(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCsuAhG64lL82_9text_size5rangeNtB2_9TextRangeNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedllECscAsMj0W7j8b_3std(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtReNtB6_5Debug3fmtCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull) unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsf_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxTokenNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXsj_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildrenNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEE9drop_slowB7_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #29

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green5token14GreenTokenHeadShEE9drop_slowB7_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsl_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_21SyntaxElementChildrenNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtCshzWfHUSfYae_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #29

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtCs6oosyzwIepl_6ide_db7imports10insert_use23insert_use_with_editor_0ENCB37_s_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionTNtNtNtNtB2i_3ast9generated5nodes7UseTreeINtB1u_10SyntaxNodeB2e_EEENCINvB10_15filter_map_foldB56_B5s_B56_INvNtB8_7flatten9into_itemB56_EINvNvB4t_4last4someB5s_EE0EB3d_(ptr noundef, ptr noundef, ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNodeNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #30

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtNtCsjsNuU4yXw23_3fst3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_allCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvMs1_NtCs9GitHPCrz2Q_5rowan13utility_typesINtB6_9WalkEventNtNtB8_6cursor10SyntaxNodeE3mapNvYINtNtB8_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtCshzWfHUSfYae_4core7convert4FromBX_E4fromB1v_ECs6oosyzwIepl_6ide_db(i64 noundef range(i64 0, 2), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvXs9_NtCs6oosyzwIepl_6ide_db10ra_fixtureNtNtCsuAhG64lL82_9text_size4size8TextSizeNtB5_18UpmapFromRaFixture21upmap_from_ra_fixture(i32 noundef, ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsa_NtCs6oosyzwIepl_6ide_db10ra_fixtureNtNtCsuAhG64lL82_9text_size5range9TextRangeNtB5_18UpmapFromRaFixture21upmap_from_ra_fixture(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), i32 noundef, i32 noundef, ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsp_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokensNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCs9GitHPCrz2Q_5rowan13utility_typesINtB6_9WalkEventINtB6_11NodeOrTokenNtNtB8_6cursor10SyntaxNodeNtB1i_11SyntaxTokenEE3mapNvYIBY_INtNtB8_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2f_11SyntaxTokenB2A_EEINtNtCshzWfHUSfYae_4core7convert4FromBX_E4fromB28_ECs6oosyzwIepl_6ide_db(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCscAsMj0W7j8b_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorE10drop_innerCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCshzWfHUSfYae_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs0_NtCsjJXvCMGntp8_6syntax3astINtCs83ee1IJTiSq_6either6EitherNtNtNtB5_9generated5nodes8IdentPatNtB13_9SelfParamENtB5_7AstNode4castCs6oosyzwIepl_6ide_db(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4StmtENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #31

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #31

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { norecurse nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #26 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nounwind }
attributes #28 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #34 = { noreturn }
attributes #35 = { cold }
attributes #36 = { cold noreturn nounwind }
attributes #37 = { inlinehint }
attributes #38 = { noinline noreturn }
attributes #39 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!5 = !{}
!6 = !{i64 0, i64 -9223372036854775808}
!7 = !{i64 8}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{i8 0, i8 2}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{i64 0, i64 2}
!12 = !{i8 0, i8 3}
!13 = !{i64 0, i64 3}
!14 = !{i64 1, i64 0}
!15 = !{i64 -1, i64 21}
!16 = !{!"address", !"read_provenance"}
!17 = !{i32 -1, i32 1000000000}
!18 = !{i64 0, i64 37}
!19 = !{i64 -2, i64 22}
!20 = !{i32 0, i32 2}
!21 = !{i32 1, i32 0}
!22 = !{i64 -1, i64 20}
!23 = !{i64 -1, i64 37}
!24 = distinct !{!24, !"_RNvXNtCsjsNuU4yXw23_3fst6streamINtNtB4_9inner_map12StreamOutputINtBw_6StreamRINtNtB4_15inner_automaton10StartsWithNtB1g_3StrEEENtB2_12IntoStreamer11into_streamCs6oosyzwIepl_6ide_db"}
!25 = distinct !{!25, !24, !"_RNvXNtCsjsNuU4yXw23_3fst6streamINtNtB4_9inner_map12StreamOutputINtBw_6StreamRINtNtB4_15inner_automaton10StartsWithNtB1g_3StrEEENtB2_12IntoStreamer11into_streamCs6oosyzwIepl_6ide_db: argument 1"}
!26 = distinct !{!26, !24, !"_RNvXNtCsjsNuU4yXw23_3fst6streamINtNtB4_9inner_map12StreamOutputINtBw_6StreamRINtNtB4_15inner_automaton10StartsWithNtB1g_3StrEEENtB2_12IntoStreamer11into_streamCs6oosyzwIepl_6ide_db: argument 0"}
!27 = distinct !{!27, !"_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCsjsNuU4yXw23_3fst9inner_map12StreamOutputINtBH_6StreamRINtNtBJ_15inner_automaton10StartsWithNtB1G_3StrEEEE3newCs6oosyzwIepl_6ide_db"}
!28 = distinct !{!28, !27, !"_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCsjsNuU4yXw23_3fst9inner_map12StreamOutputINtBH_6StreamRINtNtBJ_15inner_automaton10StartsWithNtB1G_3StrEEEE3newCs6oosyzwIepl_6ide_db: argument 0"}
!29 = distinct !{!29, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDG_INtNtCsjsNuU4yXw23_3fst6stream8StreamerL0_Ep4ItemTRL0_ShNtNtB15_3raw6OutputEEL_EE8push_mutCs6oosyzwIepl_6ide_db"}
!30 = distinct !{!30, !29, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDG_INtNtCsjsNuU4yXw23_3fst6stream8StreamerL0_Ep4ItemTRL0_ShNtNtB15_3raw6OutputEEL_EE8push_mutCs6oosyzwIepl_6ide_db: argument 0"}
!31 = distinct !{!31, !29, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDG_INtNtCsjsNuU4yXw23_3fst6stream8StreamerL0_Ep4ItemTRL0_ShNtNtB15_3raw6OutputEEL_EE8push_mutCs6oosyzwIepl_6ide_db: argument 1"}
!32 = !{!26, !25}
!33 = !{!28}
!34 = !{!30}
!35 = !{!31}
!36 = distinct !{!36, !"_RNvXNtCsjsNuU4yXw23_3fst6streamINtNtB4_9inner_map12StreamOutputINtBw_6StreamRNtNtB4_15inner_automaton11SubsequenceEENtB2_12IntoStreamer11into_streamCs6oosyzwIepl_6ide_db"}
!37 = distinct !{!37, !36, !"_RNvXNtCsjsNuU4yXw23_3fst6streamINtNtB4_9inner_map12StreamOutputINtBw_6StreamRNtNtB4_15inner_automaton11SubsequenceEENtB2_12IntoStreamer11into_streamCs6oosyzwIepl_6ide_db: argument 1"}
!38 = distinct !{!38, !36, !"_RNvXNtCsjsNuU4yXw23_3fst6streamINtNtB4_9inner_map12StreamOutputINtBw_6StreamRNtNtB4_15inner_automaton11SubsequenceEENtB2_12IntoStreamer11into_streamCs6oosyzwIepl_6ide_db: argument 0"}
!39 = distinct !{!39, !"_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCsjsNuU4yXw23_3fst9inner_map12StreamOutputINtBH_6StreamRNtNtBJ_15inner_automaton11SubsequenceEEE3newCs6oosyzwIepl_6ide_db"}
!40 = distinct !{!40, !39, !"_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCsjsNuU4yXw23_3fst9inner_map12StreamOutputINtBH_6StreamRNtNtBJ_15inner_automaton11SubsequenceEEE3newCs6oosyzwIepl_6ide_db: argument 0"}
!41 = distinct !{!41, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDG_INtNtCsjsNuU4yXw23_3fst6stream8StreamerL0_Ep4ItemTRL0_ShNtNtB15_3raw6OutputEEL_EE8push_mutCs6oosyzwIepl_6ide_db"}
!42 = distinct !{!42, !41, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDG_INtNtCsjsNuU4yXw23_3fst6stream8StreamerL0_Ep4ItemTRL0_ShNtNtB15_3raw6OutputEEL_EE8push_mutCs6oosyzwIepl_6ide_db: argument 0"}
!43 = distinct !{!43, !41, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDG_INtNtCsjsNuU4yXw23_3fst6stream8StreamerL0_Ep4ItemTRL0_ShNtNtB15_3raw6OutputEEL_EE8push_mutCs6oosyzwIepl_6ide_db: argument 1"}
!44 = !{!38, !37}
!45 = !{!40}
!46 = !{!42}
!47 = !{!43}
!48 = distinct !{!48, !"_RNvXNtCsjsNuU4yXw23_3fst6streamINtNtB4_9inner_map12StreamOutputINtBw_6StreamRNtNtB4_15inner_automaton3StrEENtB2_12IntoStreamer11into_streamCs6oosyzwIepl_6ide_db"}
!49 = distinct !{!49, !48, !"_RNvXNtCsjsNuU4yXw23_3fst6streamINtNtB4_9inner_map12StreamOutputINtBw_6StreamRNtNtB4_15inner_automaton3StrEENtB2_12IntoStreamer11into_streamCs6oosyzwIepl_6ide_db: argument 1"}
!50 = distinct !{!50, !48, !"_RNvXNtCsjsNuU4yXw23_3fst6streamINtNtB4_9inner_map12StreamOutputINtBw_6StreamRNtNtB4_15inner_automaton3StrEENtB2_12IntoStreamer11into_streamCs6oosyzwIepl_6ide_db: argument 0"}
!51 = distinct !{!51, !"_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCsjsNuU4yXw23_3fst9inner_map12StreamOutputINtBH_6StreamRNtNtBJ_15inner_automaton3StrEEE3newCs6oosyzwIepl_6ide_db"}
!52 = distinct !{!52, !51, !"_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCsjsNuU4yXw23_3fst9inner_map12StreamOutputINtBH_6StreamRNtNtBJ_15inner_automaton3StrEEE3newCs6oosyzwIepl_6ide_db: argument 0"}
!53 = distinct !{!53, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDG_INtNtCsjsNuU4yXw23_3fst6stream8StreamerL0_Ep4ItemTRL0_ShNtNtB15_3raw6OutputEEL_EE8push_mutCs6oosyzwIepl_6ide_db"}
!54 = distinct !{!54, !53, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDG_INtNtCsjsNuU4yXw23_3fst6stream8StreamerL0_Ep4ItemTRL0_ShNtNtB15_3raw6OutputEEL_EE8push_mutCs6oosyzwIepl_6ide_db: argument 0"}
!55 = distinct !{!55, !53, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDG_INtNtCsjsNuU4yXw23_3fst6stream8StreamerL0_Ep4ItemTRL0_ShNtNtB15_3raw6OutputEEL_EE8push_mutCs6oosyzwIepl_6ide_db: argument 1"}
!56 = !{!50, !49}
!57 = !{!52}
!58 = !{!54}
!59 = !{!55}
!60 = distinct !{!60, !"_RNCNCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBb_13SemanticsImpl26ancestors_with_macros_file000Cs6oosyzwIepl_6ide_db"}
!61 = distinct !{!61, !60, !"_RNCNCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtBb_13SemanticsImpl26ancestors_with_macros_file000Cs6oosyzwIepl_6ide_db: argument 0"}
!62 = !{!61}
!63 = distinct !{!63, !"_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db"}
!64 = distinct !{!64, !63, !"_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db: argument 1"}
!65 = distinct !{!65, !63, !"_RINvMs4_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateAnyTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db: argument 0"}
!66 = distinct !{!66, !"_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db"}
!67 = distinct !{!67, !66, !"_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db: argument 0"}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !"_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db"}
!70 = distinct !{!70, !69, !"_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db: argument 0"}
!71 = distinct !{!71, !10}
!72 = distinct !{!72, !"_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db"}
!73 = distinct !{!73, !72, !"_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db: argument 0"}
!74 = distinct !{!74, !10}
!75 = distinct !{!75, !"_RINvMs2_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_17StateOneTransNext7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db"}
!76 = distinct !{!76, !75, !"_RINvMs2_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_17StateOneTransNext7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db: argument 0"}
!77 = distinct !{!77, !"_RINvMs3_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateOneTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db"}
!78 = distinct !{!78, !77, !"_RINvMs3_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateOneTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db: argument 1"}
!79 = distinct !{!79, !77, !"_RINvMs3_NtNtCsjsNuU4yXw23_3fst3raw4nodeNtB6_13StateOneTrans7compileQINtNtB8_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db: argument 0"}
!80 = distinct !{!80, !"_RINvNtCsjsNuU4yXw23_3fst5bytes9pack_uintQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db"}
!81 = distinct !{!81, !80, !"_RINvNtCsjsNuU4yXw23_3fst5bytes9pack_uintQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db: argument 0"}
!82 = distinct !{!82, !"_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db"}
!83 = distinct !{!83, !82, !"_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db: argument 0"}
!84 = distinct !{!84, !10}
!85 = distinct !{!85, !"_RINvNtNtCsjsNuU4yXw23_3fst3raw4node10pack_deltaQQINtNtB4_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db"}
!86 = distinct !{!86, !85, !"_RINvNtNtCsjsNuU4yXw23_3fst3raw4node10pack_deltaQQINtNtB4_15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db: argument 0"}
!87 = distinct !{!87, !"_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db"}
!88 = distinct !{!88, !87, !"_RINvNtCsjsNuU4yXw23_3fst5bytes12pack_uint_inQQINtNtNtB4_3raw15counting_writer14CountingWriterINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6oosyzwIepl_6ide_db: argument 0"}
!89 = distinct !{!89, !10}
!90 = !{!64}
!91 = !{!65}
!92 = !{!65, !64}
!93 = !{!"branch_weights", i32 4001, i32 4000000}
!94 = !{!67, !65, !64}
!95 = !{!67, !64}
!96 = !{!70, !65, !64}
!97 = !{!70, !64}
!98 = !{!73, !65, !64}
!99 = !{!73, !64}
!100 = !{!76}
!101 = !{!83, !81, !79, !78}
!102 = !{!83, !81, !78}
!103 = !{!88, !86, !79, !78}
!104 = !{!88, !86, !78}
!105 = !{!79, !78}
!106 = !{!78}
!107 = distinct !{!107, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3arc3ArcINtBE_11HeaderSliceNtNtNtBG_5green4node13GreenNodeHeadSNtB1t_10GreenChildEEECs6oosyzwIepl_6ide_db"}
!108 = distinct !{!108, !107, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3arc3ArcINtBE_11HeaderSliceNtNtNtBG_5green4node13GreenNodeHeadSNtB1t_10GreenChildEEECs6oosyzwIepl_6ide_db: argument 0"}
!109 = distinct !{!109, !"_RNvXs7_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db"}
!110 = distinct !{!110, !109, !"_RNvXs7_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db: argument 0"}
!111 = distinct !{!111, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEECs6oosyzwIepl_6ide_db"}
!112 = distinct !{!112, !111, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEECs6oosyzwIepl_6ide_db: argument 0"}
!113 = distinct !{!113, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEECs6oosyzwIepl_6ide_db"}
!114 = distinct !{!114, !113, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs50pZefIA5Ye_8triomphe3arc3ArcSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEECs6oosyzwIepl_6ide_db: argument 0"}
!115 = !{!108}
!116 = !{!110}
!117 = !{!110, !108}
!118 = !{!112}
!119 = !{!114}
!120 = distinct !{!120, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zeroINtBJ_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4send0ECs6oosyzwIepl_6ide_db"}
!121 = distinct !{!121, !120, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zeroINtBJ_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4send0ECs6oosyzwIepl_6ide_db: argument 0"}
!122 = distinct !{!122, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3arc3ArcINtBE_11HeaderSliceNtNtNtBG_5green4node13GreenNodeHeadSNtB1t_10GreenChildEEECs6oosyzwIepl_6ide_db"}
!123 = distinct !{!123, !122, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3arc3ArcINtBE_11HeaderSliceNtNtNtBG_5green4node13GreenNodeHeadSNtB1t_10GreenChildEEECs6oosyzwIepl_6ide_db: argument 0"}
!124 = distinct !{!124, !"_RNvXs7_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db"}
!125 = distinct !{!125, !124, !"_RNvXs7_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db: argument 0"}
!126 = !{!121}
!127 = !{!123}
!128 = !{!125}
!129 = !{!125, !123, !121}
!130 = !{!125, !123}
!131 = distinct !{!131, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span5InnerECs6oosyzwIepl_6ide_db"}
!132 = distinct !{!132, !131, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span5InnerECs6oosyzwIepl_6ide_db: argument 0"}
!133 = distinct !{!133, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsaMQbKjKCVRW_12tracing_core10dispatcher8DispatchECs6oosyzwIepl_6ide_db"}
!134 = distinct !{!134, !133, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsaMQbKjKCVRW_12tracing_core10dispatcher8DispatchECs6oosyzwIepl_6ide_db: argument 0"}
!135 = distinct !{!135, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaMQbKjKCVRW_12tracing_core10dispatcher4KindINtNtCsbSS6DM8SDEO_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SyncNtB2v_4SendEL_EEECs6oosyzwIepl_6ide_db"}
!136 = distinct !{!136, !135, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaMQbKjKCVRW_12tracing_core10dispatcher4KindINtNtCsbSS6DM8SDEO_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SyncNtB2v_4SendEL_EEECs6oosyzwIepl_6ide_db: argument 0"}
!137 = distinct !{!137, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SyncNtB26_4SendEL_EECs6oosyzwIepl_6ide_db"}
!138 = distinct !{!138, !137, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SyncNtB26_4SendEL_EECs6oosyzwIepl_6ide_db: argument 0"}
!139 = distinct !{!139, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtCshzWfHUSfYae_4core6marker4SyncNtB1D_4SendEL_ENtNtNtB1F_3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db"}
!140 = distinct !{!140, !139, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtCshzWfHUSfYae_4core6marker4SyncNtB1D_4SendEL_ENtNtNtB1F_3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db: argument 0"}
!141 = !{!132}
!142 = !{!134}
!143 = !{!136}
!144 = !{!138}
!145 = !{!140}
!146 = !{!140, !138, !136, !134, !132}
!147 = distinct !{!147, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3arc3ArcINtBE_11HeaderSliceNtNtNtBG_5green4node13GreenNodeHeadSNtB1t_10GreenChildEEECs6oosyzwIepl_6ide_db"}
!148 = distinct !{!148, !147, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3arc3ArcINtBE_11HeaderSliceNtNtNtBG_5green4node13GreenNodeHeadSNtB1t_10GreenChildEEECs6oosyzwIepl_6ide_db: argument 0"}
!149 = distinct !{!149, !"_RNvXs7_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db"}
!150 = distinct !{!150, !149, !"_RNvXs7_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db: argument 0"}
!151 = !{!148}
!152 = !{!150}
!153 = !{!150, !148}
!154 = distinct !{!154, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3arc3ArcINtBE_11HeaderSliceNtNtNtBG_5green4node13GreenNodeHeadSNtB1t_10GreenChildEEECs6oosyzwIepl_6ide_db"}
!155 = distinct !{!155, !154, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3arc3ArcINtBE_11HeaderSliceNtNtNtBG_5green4node13GreenNodeHeadSNtB1t_10GreenChildEEECs6oosyzwIepl_6ide_db: argument 0"}
!156 = distinct !{!156, !"_RNvXs7_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db"}
!157 = distinct !{!157, !156, !"_RNvXs7_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db: argument 0"}
!158 = !{!155}
!159 = !{!157}
!160 = !{!157, !155}
!161 = distinct !{!161, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensECs6oosyzwIepl_6ide_db"}
!162 = distinct !{!162, !161, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensECs6oosyzwIepl_6ide_db: argument 0"}
!163 = distinct !{!163, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtBE_11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1K_11SyntaxTokenEEECs6oosyzwIepl_6ide_db"}
!164 = distinct !{!164, !163, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtBE_11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1K_11SyntaxTokenEEECs6oosyzwIepl_6ide_db: argument 0"}
!165 = distinct !{!165, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtBE_11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1K_11SyntaxTokenEEECs6oosyzwIepl_6ide_db"}
!166 = distinct !{!166, !165, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtBE_11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1K_11SyntaxTokenEEECs6oosyzwIepl_6ide_db: argument 0"}
!167 = !{!162}
!168 = !{!164, !162}
!169 = !{!166, !162}
!170 = distinct !{!170, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor8PreorderECs6oosyzwIepl_6ide_db"}
!171 = distinct !{!171, !170, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor8PreorderECs6oosyzwIepl_6ide_db: argument 0"}
!172 = !{!171}
!173 = !{i64 1, i64 536870913}
!174 = distinct !{!174, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counter7CounterINtNtBG_5array7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEECs6oosyzwIepl_6ide_db"}
!175 = distinct !{!175, !174, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counter7CounterINtNtBG_5array7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEECs6oosyzwIepl_6ide_db: argument 0"}
!176 = distinct !{!176, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5array7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEECs6oosyzwIepl_6ide_db"}
!177 = distinct !{!177, !176, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5array7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEECs6oosyzwIepl_6ide_db: argument 0"}
!178 = !{!175}
!179 = !{!177}
!180 = !{!177, !175}
!181 = distinct !{!181, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCscFGNKo4Sl5v_9itertools11groupbylazy10GroupInnerbINtNtNtNtB4_4iter8adapters9map_while8MapWhileINtNtB1U_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext27parse_tt_as_comma_sep_paths0ENCB4B_s_0EEEB4H_"}
!182 = distinct !{!182, !181, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCscFGNKo4Sl5v_9itertools11groupbylazy10GroupInnerbINtNtNtNtB4_4iter8adapters9map_while8MapWhileINtNtB1U_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext27parse_tt_as_comma_sep_paths0ENCB4B_s_0EEEB4H_: argument 0"}
!183 = distinct !{!183, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCscFGNKo4Sl5v_9itertools11groupbylazy10GroupInnerbINtNtNtNtB4_4iter8adapters9map_while8MapWhileINtNtB1Y_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext27parse_tt_as_comma_sep_paths0ENCB4F_s_0EEEB4L_"}
!184 = distinct !{!184, !183, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCscFGNKo4Sl5v_9itertools11groupbylazy10GroupInnerbINtNtNtNtB4_4iter8adapters9map_while8MapWhileINtNtB1Y_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext27parse_tt_as_comma_sep_paths0ENCB4F_s_0EEEB4L_: argument 0"}
!185 = distinct !{!185, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11groupbylazy10GroupInnerbINtNtNtNtB4_4iter8adapters9map_while8MapWhileINtNtB1z_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext27parse_tt_as_comma_sep_paths0ENCB4g_s_0EEB4m_"}
!186 = distinct !{!186, !185, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11groupbylazy10GroupInnerbINtNtNtNtB4_4iter8adapters9map_while8MapWhileINtNtB1z_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext27parse_tt_as_comma_sep_paths0ENCB4g_s_0EEB4m_: argument 0"}
!187 = !{!182}
!188 = !{!184}
!189 = !{!186}
end_hunk_1
