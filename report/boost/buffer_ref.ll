Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/buffer_ref?download=true
inline.NumInlined: 4775
inline.NumDeleted: 1323
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN5boost5beast20test_buffer_sequenceINS0_6detail12buffers_pairILb0EEEEEvRKT_:.lr.ph.i.i.i.epil.preheader
  %.068.i.i.i88.epil = phi i64 [ %i.an, %.lr.ph.i.i.i86.epil ], [ 0, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit ]
  %epil.iter168 = phi i64 [ %epil.iter168.next, %.lr.ph.i.i.i86.epil ], [ 0, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit ]
  %.sroa.3.0..0.sroa_idx.i.i.i89.epil = getelementptr inbounds nuw i8, ptr %.09.i.i.i87.epil, i64 8
  %.sroa.3.0.copyload.i.i.i90.epil = load i64, ptr %.sroa.3.0..0.sroa_idx.i.i.i89.epil, align 8, !tbaa !38
  %i.an = add i64 %.sroa.3.0.copyload.i.i.i90.epil, %.068.i.i.i88.epil ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i87.epil, i64 16
  %epil.iter168.next = add i64 %epil.iter168, 1   ; 2 uses
  %epil.iter168.cmp.not = icmp eq i64 %epil.iter168.next, %i.am
  br i1 %epil.iter168.cmp.not, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit92.epilog-lcssa, label %.lr.ph.i.i.i86.epil, !llvm.loop !1484

_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit92.epilog-lcssa: ; preds = %.lr.ph.i.i.i86.epil
  %i.ap = icmp eq i64 %i.an, %i.y
  %i.aq = zext i1 %i.ap to i8
  store i8 %i.aq, ptr %i.e, align 1, !tbaa !227
  %i.ar = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.aj, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 162) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !386
  %i.as = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !310
  %.not.i.i.i.i93.not = icmp eq i64 %i.au, 0
  %i.av = select i1 %.not.i.i.i.i93.not, i64 1, i64 2
  br label %.lr.ph.i.i.i96.epil

.lr.ph.i.i.i96.epil:                              ; preds = %.lr.ph.i.i.i96.epil, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit92.epilog-lcssa
  %.09.i.i.i97.epil = phi ptr [ %i.ax, %.lr.ph.i.i.i96.epil ], [ %2, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit92.epilog-lcssa ] ; 2 uses
  %.068.i.i.i98.epil = phi i64 [ %i.aw, %.lr.ph.i.i.i96.epil ], [ 0, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit92.epilog-lcssa ]
  %epil.iter175 = phi i64 [ %epil.iter175.next, %.lr.ph.i.i.i96.epil ], [ 0, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit92.epilog-lcssa ]
  %.sroa.3.0..0.sroa_idx.i.i.i99.epil = getelementptr inbounds nuw i8, ptr %.09.i.i.i97.epil, i64 8
  %.sroa.3.0.copyload.i.i.i100.epil = load i64, ptr %.sroa.3.0..0.sroa_idx.i.i.i99.epil, align 8, !tbaa !38
  %i.aw = add i64 %.sroa.3.0.copyload.i.i.i100.epil, %.068.i.i.i98.epil ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.09.i.i.i97.epil, i64 16
  %epil.iter175.next = add i64 %epil.iter175, 1   ; 2 uses
  %epil.iter175.cmp.not = icmp eq i64 %epil.iter175.next, %i.av
  br i1 %epil.iter175.cmp.not, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit102.epilog-lcssa, label %.lr.ph.i.i.i96.epil, !llvm.loop !1485

_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit102.epilog-lcssa: ; preds = %.lr.ph.i.i.i96.epil
  %i.ay = icmp eq i64 %i.aw, %i.y
  %i.az = zext i1 %i.ay to i8
  %.not.i.i = icmp eq i64 %i.ae, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 1, i64 2   ; 5 uses
  store i8 %i.az, ptr %i.f, align 1, !tbaa !227
  %i.ba = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.as, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 167) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  %i.bb = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  store i8 1, ptr %i.g, align 1, !tbaa !227
  %i.bc = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 177) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  %i.bd = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  store i8 1, ptr %i.h, align 1, !tbaa !227
  %i.be = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.bd, ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 178) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  %i.bf = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  store i8 1, ptr %i.i, align 1, !tbaa !227
  %i.bg = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.bf, ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 179) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  %i.bh = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 1, ptr %i.j, align 1, !tbaa !227
  %i.bi = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.j, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 180) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  %i.bj = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #31
  store i8 1, ptr %i.k, align 1, !tbaa !227
  %i.bk = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 181) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #31
  %i.bl = load i64, ptr %i.v, align 8, !tbaa !310
  br label %bb.a

bb.a:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit102.epilog-lcssa, %bb.a
  %.0116 = phi i64 [ %.0.v.i.i, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit102.epilog-lcssa ], [ %i.bm, %bb.a ]
  %.069115 = phi i64 [ 0, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit102.epilog-lcssa ], [ %i.bn, %bb.a ]
  %.073114 = phi ptr [ %0, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit102.epilog-lcssa ], [ %i.bo, %bb.a ] ; 2 uses
  %i.bm = add nsw i64 %.0116, -1                  ; 2 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !38
  %i.bn = add i64 %.sroa.26.0.copyload, %.069115  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.073114, i64 16
  %.not = icmp eq i64 %i.bm, 0
  br i1 %.not, label %scalar.ph155, label %bb.a, !llvm.loop !1486

scalar.ph155:                                     ; preds = %bb.a
  %.not.i.i106 = icmp eq i64 %i.bl, 0
  %.0.v.i.i107 = select i1 %.not.i.i106, i64 16, i64 32 ; 3 uses
  %.0.i.i108 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.v.i.i107 ; 2 uses
  %i.bp = shl nuw nsw i64 %.0.v.i.i, 4            ; 2 uses
  %i.bq = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #31
  %i.br = icmp eq i64 %i.bp, %.0.v.i.i107
  %i.bs = zext i1 %i.br to i8                     ; 2 uses
  store i8 %i.bs, ptr %i.l, align 1, !tbaa !227
  %i.bt = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.bq, ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 198) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31
  %i.bu = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #31
  %i.bv = icmp eq i64 %i.bn, %i.y
  %i.bw = zext i1 %i.bv to i8
  store i8 %i.bw, ptr %i.m, align 1, !tbaa !227
  %i.bx = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.bu, ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 199) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #31
  br label %bb.b

bb.b:                                             ; preds = %scalar.ph155, %bb.b
  %.1119 = phi i64 [ %.0.v.i.i, %scalar.ph155 ], [ %i.by, %bb.b ]
  %.170118 = phi i64 [ 0, %scalar.ph155 ], [ %i.ca, %bb.b ]
  %.174117 = phi ptr [ %0, %scalar.ph155 ], [ %i.bz, %bb.b ] ; 2 uses
  %i.by = add nsw i64 %.1119, -1                  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.174117, i64 16
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.174117, i64 8
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !38
  %i.ca = add i64 %.sroa.24.0.copyload, %.170118  ; 2 uses
  %.not77 = icmp eq i64 %i.by, 0
  br i1 %.not77, label %.epil.preheader, label %bb.b, !llvm.loop !1487

.epil.preheader:                                  ; preds = %bb.b
  %i.cb = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #31
  store i8 %i.bs, ptr %i.n, align 1, !tbaa !227
  %i.cc = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.cb, ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 206) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #31
  %i.cd = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #31
  %i.ce = icmp eq i64 %i.ca, %i.y
  %i.cf = zext i1 %i.ce to i8
  store i8 %i.cf, ptr %i.o, align 1, !tbaa !227
  %i.cg = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.cd, ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 207) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.271121.epil = phi i64 [ 0, %.epil.preheader ], [ %i.ci, %bb.c ]
  %.275120.epil = phi ptr [ %.0.i.i108, %.epil.preheader ], [ %i.ch, %bb.c ] ; 2 uses
  %epil.iter183 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter183.next, %bb.c ]
  %i.ch = getelementptr inbounds i8, ptr %.275120.epil, i64 -16
  %.sroa.22.0..sroa_idx.epil = getelementptr inbounds i8, ptr %.275120.epil, i64 -8
  %.sroa.22.0.copyload.epil = load i64, ptr %.sroa.22.0..sroa_idx.epil, align 8, !tbaa !38
  %i.ci = add i64 %.sroa.22.0.copyload.epil, %.271121.epil ; 2 uses
  %epil.iter183.next = add i64 %epil.iter183, 1   ; 2 uses
  %epil.iter183.cmp.not = icmp eq i64 %epil.iter183.next, %.0.v.i.i
  br i1 %epil.iter183.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !1488

.epilog-lcssa:                                    ; preds = %bb.c
  %i.cj = icmp eq i64 %i.ci, %i.y
  %i.ck = zext i1 %i.cj to i8
  %i.cl = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #31
  %i.cm = icmp eq i64 %.0.v.i.i107, %i.bp
  %i.cn = zext i1 %i.cm to i8                     ; 2 uses
  store i8 %i.cn, ptr %i.p, align 1, !tbaa !227
  %i.co = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.cl, ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 214) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #31
  %i.cp = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #31
  store i8 %i.ck, ptr %i.q, align 1, !tbaa !227
  %i.cq = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.cp, ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 215) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epilog-lcssa
  %.372124.epil = phi i64 [ 0, %.epilog-lcssa ], [ %i.cs, %bb.d ]
  %.376123.epil = phi ptr [ %.0.i.i108, %.epilog-lcssa ], [ %i.cr, %bb.d ] ; 2 uses
  %epil.iter193 = phi i64 [ 0, %.epilog-lcssa ], [ %epil.iter193.next, %bb.d ]
  %i.cr = getelementptr inbounds i8, ptr %.376123.epil, i64 -16
  %.sroa.2.0..sroa_idx.epil = getelementptr inbounds i8, ptr %.376123.epil, i64 -8
  %.sroa.2.0.copyload.epil = load i64, ptr %.sroa.2.0..sroa_idx.epil, align 8, !tbaa !38
  %i.cs = add i64 %.sroa.2.0.copyload.epil, %.372124.epil ; 2 uses
  %epil.iter193.next = add i64 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i64 %epil.iter193.next, %.0.v.i.i
  br i1 %epil.iter193.cmp.not, label %.epilog-lcssa195, label %bb.d, !llvm.loop !1489

.epilog-lcssa195:                                 ; preds = %bb.d
  %i.ct = icmp eq i64 %i.cs, %i.y
  %i.cu = zext i1 %i.ct to i8
  %i.cv = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #31
  store i8 %i.cn, ptr %i.r, align 1, !tbaa !227
  %i.cw = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.cv, ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 225) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #31
  %i.cx = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #31
  store i8 %i.cu, ptr %i.s, align 1, !tbaa !227
  %i.cy = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.cx, ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 226) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail20test_mutable_buffersINS1_12buffers_pairILb1EEEEEvRKT_NS_4asio14mutable_bufferE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
.lr.ph.i.i.i.epil.preheader:
  %i.a = alloca i8, align 1                       ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !111
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 16, i64 32 ; 2 uses
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.v.i.i.i.i
  %4 = add nsw i64 %.0.v.i.i.i.i, -16
  %5 = lshr exact i64 %4, 4
  %i.d = add nuw nsw i64 %5, 1                    ; 2 uses
  %xtraiter = and i64 %i.d, 7                     ; 2 uses
  %lcmp.mod41 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod41)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.09.i.i.i.epil = phi ptr [ %i.h, %.lr.ph.i.i.i.epil ], [ %0, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.068.i.i.i.epil = phi i64 [ %i.g, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.e = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !111
  %i.g = add i64 %i.f, %.068.i.i.i.epil           ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit.epilog-lcssa, label %.lr.ph.i.i.i.epil, !llvm.loop !1490

_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit.epilog-lcssa: ; preds = %.lr.ph.i.i.i.epil
  %i.i = icmp ult i64 %i.g, 13
  br i1 %i.i, label %.lr.ph.i.i.i9.preheader, label %.lr.ph.i.i.preheader

.lr.ph.i.i.i9.preheader:                          ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit.epilog-lcssa
  %xtraiter42 = and i64 %i.d, 7                   ; 2 uses
  %lcmp.mod46 = icmp ne i64 %xtraiter42, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %.lr.ph.i.i.i9.epil

.lr.ph.i.i.i9.epil:                               ; preds = %.lr.ph.i.i.i9.epil, %.lr.ph.i.i.i9.preheader
  %.09.i.i.i10.epil = phi ptr [ %i.m, %.lr.ph.i.i.i9.epil ], [ %0, %.lr.ph.i.i.i9.preheader ] ; 2 uses
  %.068.i.i.i11.epil = phi i64 [ %i.l, %.lr.ph.i.i.i9.epil ], [ 0, %.lr.ph.i.i.i9.preheader ]
  %epil.iter43 = phi i64 [ %epil.iter43.next, %.lr.ph.i.i.i9.epil ], [ 0, %.lr.ph.i.i.i9.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i.i10.epil, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !111
  %i.l = add i64 %i.k, %.068.i.i.i11.epil         ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i10.epil, i64 16
  %epil.iter43.next = add i64 %epil.iter43, 1     ; 2 uses
  %epil.iter43.cmp.not = icmp eq i64 %epil.iter43.next, %xtraiter42
  br i1 %epil.iter43.cmp.not, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit13, label %.lr.ph.i.i.i9.epil, !llvm.loop !1491

_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit13: ; preds = %.lr.ph.i.i.i9.epil
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit.epilog-lcssa, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit13
  %.sroa.8.033 = phi i64 [ %i.l, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit13 ], [ 13, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit.epilog-lcssa ] ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i
  %.01017.i.i = phi ptr [ %i.q, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %0, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.011.016.i.i = phi ptr [ %i.o, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ @.str.29, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.6.015.i.i = phi i64 [ %i.p, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %.sroa.8.033, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.4.0..010.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.01017.i.i, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..010.sroa_idx.i.i, align 8, !tbaa !38 ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.copyload.i.i, i64 %.sroa.6.015.i.i) ; 3 uses
  %.not.i.i4.i = icmp eq i64 %.sroa.4.0.copyload.i.i, 0
  br i1 %.not.i.i4.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.01017.i.i, align 8, !tbaa !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.copyload.i.i, ptr align 1 %.sroa.011.016.i.i, i64 %i.n, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i: ; preds = %bb.a, %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i.i, i64 %i.n
  %i.p = sub nuw i64 %.sroa.6.015.i.i, %i.n       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01017.i.i, i64 16 ; 2 uses
  %i.r = icmp ne i64 %i.p, 0
  %i.s = icmp ne ptr %i.q, %.0.i.i.i.i
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %.lr.ph.i.i, label %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit, !llvm.loop !22

_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit13
  %.not.i36 = phi i1 [ true, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit13 ], [ false, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ]
  %.sroa.8.034 = phi i64 [ 0, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit13 ], [ %.sroa.8.033, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %i.u = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN5boost5beast17buffers_to_stringINS0_6detail12buffers_pairILb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !42
  %i.x = icmp ne i64 %i.w, %.sroa.8.034           ; 2 uses
  %brmerge = or i1 %.not.i36, %i.x
  %not. = xor i1 %i.x, true
  br i1 %brmerge, label %_ZN5boost4coreeqISaIcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EENS0_17basic_string_viewIcEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit
  %i.y = load ptr, ptr %3, align 8, !tbaa !40
  %bcmp.i = call i32 @bcmp(ptr %i.y, ptr nonnull @.str.29, i64 %.sroa.8.034)
  %i.z = icmp eq i32 %bcmp.i, 0
  br label %_ZN5boost4coreeqISaIcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EENS0_17basic_string_viewIcEE.exit

_ZN5boost4coreeqISaIcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EENS0_17basic_string_viewIcEE.exit: ; preds = %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit, %bb.b
  %i.aa = phi i1 [ %not., %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit ], [ %i.z, %bb.b ]
  %i.ab = zext i1 %i.aa to i8
  store i8 %i.ab, ptr %i.a, align 1, !tbaa !227
  %i.ac = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.u, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 128)
          to label %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit unwind label %bb.c ; 0 uses

_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit: ; preds = %_ZN5boost4coreeqISaIcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EENS0_17basic_string_viewIcEE.exit
  %i.ad = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !41
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void

bb.c:                                             ; preds = %_ZN5boost4coreeqISaIcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EENS0_17basic_string_viewIcEE.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.c
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !41
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  resume { ptr, i32 } %i.ai
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast17buffers_to_stringINS0_6detail12buffers_pairILb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
.lr.ph.i.i.i.epil.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !42
  store i8 0, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !111
  %.not.i.i.i.i.not = icmp eq i64 %i.d, 0
  %i.e = select i1 %.not.i.i.i.i.not, i64 1, i64 2
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.09.i.i.i.epil = phi ptr [ %i.i, %.lr.ph.i.i.i.epil ], [ %1, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.068.i.i.i.epil = phi i64 [ %i.h, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !111
  %i.h = add i64 %i.g, %.068.i.i.i.epil           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.e
  br i1 %epil.iter.cmp.not, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit, label %.lr.ph.i.i.i.epil, !llvm.loop !1492

_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit: ; preds = %.lr.ph.i.i.i.epil
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.h)
          to label %.lr.ph.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.preheader:                                 ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit
  %i.j = load i64, ptr %i.c, align 8, !tbaa !111
  %.not.i.i.i12 = icmp eq i64 %i.j, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i12, i64 16, i64 32
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.0.v.i.i.i
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %.sroa.015.021 = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !38 ; 2 uses
  %i.k = load i64, ptr %i.b, align 8, !tbaa !42
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %.sroa.2.0.copyload.i
  br i1 %i.m, label %bb.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.a:                                             ; preds = %.lr.ph
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #33
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %.lr.ph
  %.sroa.0.0.copyload.i = load ptr, ptr %.sroa.015.021, align 8, !tbaa !112
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.o, %.0.i.i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph
end_hunk_0
