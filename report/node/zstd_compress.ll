begin_hunk_0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %10, ptr noundef nonnull readonly align 8 dereferenceable(224) %6, i64 224, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 360
  %.sroa.0.sroa.0.0.copyload.i.i = load i32, ptr %i.af, align 8, !tbaa !5 ; 2 uses
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 364
  %.sroa.0.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !5 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 368
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !5 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 372
  %.sroa.6.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !5 ; 2 uses
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 376
  %11 = load i64, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8
  %.not.i13.i = icmp ne i32 %i.s, 0
  %.off.i.i.i = add i32 %i.u, -3
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 3
  %or.cond.i14.i = select i1 %.not.i13.i, i1 %switch.i.i.i, i1 false
  %i.ag = add i32 %.sroa.4.0.copyload.i.i, -2
  %spec.store.select.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.ag, i32 6)
  %.sroa.4.0.i.i = select i1 %or.cond.i14.i, i32 %spec.store.select.i.i.i, i32 %.sroa.4.0.copyload.i.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 160 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !78
  %i.aj = icmp ult i64 %7, 1073741825
end_hunk_0
begin_hunk_1
  %i.an = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.am, i1 true)
  %i.ao = sub nuw nsw i32 32, %i.an
  %i.ap = select i1 %i.ak, i32 6, i32 %i.ao
  %spec.store.select40.i.i.i = tail call i32 @llvm.umin.i32(i32 %.sroa.0.sroa.0.0.copyload.i.i, i32 %i.ap)
  br label %.thread.i.i.i

bb.p:                                             ; preds = %ZSTD_shouldAttachDict.exit.thread17.i
  %.not.i.i.i = icmp eq i64 %7, -1
  br i1 %.not.i.i.i, label %bb.q, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.p, %bb.o
  %i.aq = phi i32 [ %spec.store.select40.i.i.i, %bb.o ], [ %.sroa.0.sroa.0.0.copyload.i.i, %bb.p ] ; 3 uses
  %i.ar = icmp ugt i32 %i.u, 5
  %.neg.i.i.i.i = sext i1 %i.ar to i32            ; 2 uses
  %i.as = add i32 %.sroa.0.sroa.4.0.copyload.i.i, %.neg.i.i.i.i
  %i.at = add i32 %i.aq, 1
  %spec.store.select41.i.i.i = tail call i32 @llvm.umin.i32(i32 %.sroa.4.0.i.i, i32 %i.at)
  %i.au = icmp ugt i32 %i.as, %i.aq
  %12 = sub i32 %i.aq, %.neg.i.i.i.i
  %spec.select.i.i = select i1 %i.au, i32 %12, i32 %.sroa.0.sroa.4.0.copyload.i.i
  br label %bb.q

bb.q:                                             ; preds = %.thread.i.i.i, %bb.p
  %.sroa.7.0.i.i = phi i32 [ %.sroa.0.sroa.4.0.copyload.i.i, %bb.p ], [ %spec.select.i.i, %.thread.i.i.i ]
  %.sroa.9.0.i.i = phi i32 [ %.sroa.4.0.i.i, %bb.p ], [ %spec.store.select41.i.i.i, %.thread.i.i.i ] ; 2 uses
  %i.av = add i32 %i.u, -6
  %i.aw = icmp ult i32 %i.av, -3
  %i.ax = icmp ugt i32 %i.ai, 1
end_hunk_1
begin_hunk_2
  br i1 %.not48.i.i.i, label %ZSTD_adjustCParams_internal.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = tail call i32 @llvm.umax.i32(i32 %.sroa.6.sroa.0.0.copyload.i.i, i32 4)
  %i.az = tail call i32 @llvm.umin.i32(i32 %i.ay, i32 6)
  %i.ba = or disjoint i32 %i.az, 24
  %spec.store.select44.i.i.i = tail call i32 @llvm.umin.i32(i32 %.sroa.9.0.i.i, i32 %i.ba)
end_hunk_2
begin_hunk_3

ZSTD_adjustCParams_internal.exit.i.i:             ; preds = %bb.r, %bb.q
  %.sroa.9.1.i.i = phi i32 [ %.sroa.9.0.i.i, %bb.q ], [ %spec.store.select44.i.i.i, %bb.r ]
  %.sroa.448.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.sroa.7.0.i.i, ptr %.sroa.448.0..sroa_idx.i.i, align 8, !tbaa !5
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %.sroa.9.1.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !5
  %.sroa.6.0..sroa_idx49.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %.sroa.6.sroa.0.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx49.i.i, align 8, !tbaa !5
  %.sroa.750.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i64 %11, ptr %.sroa.750.0..sroa_idx.i.i, align 4
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i32 %i.u, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !tbaa !5
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 6072
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !273
  store i32 %i.bc, ptr %i.ah, align 8, !tbaa !78
end_hunk_3
