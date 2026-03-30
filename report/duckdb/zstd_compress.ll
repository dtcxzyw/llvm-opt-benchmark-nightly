begin_hunk_0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %10, ptr noundef nonnull readonly align 8 dereferenceable(216) %6, i64 216, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 360
  %.sroa.0.0.copyload.i.i = load <2 x i32>, ptr %i.af, align 8 ; 6 uses
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 368
  %.sroa.0.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !3 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 372
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !3 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 376
  %.sroa.6.sroa.4.0.copyload.i.i = load <2 x i32>, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 3 uses
  %11 = load i32, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 4, !tbaa !102
  %.not.i13.i = icmp ne i32 %i.s, 0
  %.off.i.i.i = add i32 %i.u, -3
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 3
  %or.cond.i14.i = select i1 %.not.i13.i, i1 %switch.i.i.i, i1 false
  %i.ag = add i32 %.sroa.0.sroa.4.0.copyload.i.i, -2
  %spec.store.select.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.ag, i32 6)
  %.sroa.4.0.i.i = select i1 %or.cond.i14.i, i32 %spec.store.select.i.i.i, i32 %.sroa.0.sroa.4.0.copyload.i.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 144 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !88
  %i.aj = icmp ult i64 %7, 1073741825
end_hunk_0
begin_hunk_1
  %i.an = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.am, i1 true)
  %i.ao = sub nuw nsw i32 32, %i.an
  %i.ap = select i1 %i.ak, i32 6, i32 %i.ao
  %.sroa.045.0.vec.extract48.i.i = extractelement <2 x i32> %.sroa.0.0.copyload.i.i, i64 0
  %spec.store.select40.i.i.i = tail call i32 @llvm.umin.i32(i32 %.sroa.045.0.vec.extract48.i.i, i32 %i.ap)
  br label %.thread.i.i.i

bb.p:                                             ; preds = %_ZN11duckdb_zstdL21ZSTD_shouldAttachDictEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEm.exit.thread17.i
  %.not.i.i.i = icmp eq i64 %7, -1
  %.sroa.045.0.vec.extract.i.i = extractelement <2 x i32> %.sroa.0.0.copyload.i.i, i64 0 ; 2 uses
  br i1 %.not.i.i.i, label %bb.q, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.p, %bb.o
  %i.aq = phi i32 [ %spec.store.select40.i.i.i, %bb.o ], [ %.sroa.045.0.vec.extract.i.i, %bb.p ] ; 5 uses
  %.sroa.045.4.vec.extract.i.i = extractelement <2 x i32> %.sroa.0.0.copyload.i.i, i64 1
  %i.ar = icmp ugt i32 %i.u, 5
  %.neg.i.i.i.i = sext i1 %i.ar to i32            ; 2 uses
  %i.as = add i32 %.sroa.045.4.vec.extract.i.i, %.neg.i.i.i.i
  %i.at = add i32 %i.aq, 1
  %spec.store.select41.i.i.i = tail call i32 @llvm.umin.i32(i32 %.sroa.4.0.i.i, i32 %i.at) ; 2 uses
  %i.au = icmp ugt i32 %i.as, %i.aq
  br i1 %i.au, label %12, label %bb.q

12:                                               ; preds = %.thread.i.i.i
  %13 = sub i32 %i.aq, %.neg.i.i.i.i
  %.sroa.045.4.vec.insert.i.i = insertelement <2 x i32> %.sroa.0.0.copyload.i.i, i32 %13, i64 1
  br label %bb.q

bb.q:                                             ; preds = %12, %.thread.i.i.i, %bb.p
  %.sroa.045.0.i.i = phi <2 x i32> [ %.sroa.045.4.vec.insert.i.i, %12 ], [ %.sroa.0.0.copyload.i.i, %.thread.i.i.i ], [ %.sroa.0.0.copyload.i.i, %bb.p ]
  %.sroa.9.0.i.i = phi i32 [ %spec.store.select41.i.i.i, %12 ], [ %spec.store.select41.i.i.i, %.thread.i.i.i ], [ %.sroa.4.0.i.i, %bb.p ] ; 2 uses
  %14 = phi i32 [ %i.aq, %12 ], [ %i.aq, %.thread.i.i.i ], [ %.sroa.045.0.vec.extract.i.i, %bb.p ]
  %spec.store.select42.i.i.i = tail call i32 @llvm.umax.i32(i32 %14, i32 10)
  %.sroa.045.0.vec.insert.i.i = insertelement <2 x i32> %.sroa.045.0.i.i, i32 %spec.store.select42.i.i.i, i64 0
  %i.av = add i32 %i.u, -6
  %i.aw = icmp ult i32 %i.av, -3
  %i.ax = icmp ugt i32 %i.ai, 1
end_hunk_1
begin_hunk_2
  br i1 %.not48.i.i.i, label %_ZN11duckdb_zstdL27ZSTD_adjustCParams_internalENS_26ZSTD_compressionParametersEymNS_17ZSTD_cParamMode_eENS_18ZSTD_paramSwitch_eE.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = tail call i32 @llvm.umax.i32(i32 %.sroa.4.0.copyload.i.i, i32 4)
  %i.az = tail call i32 @llvm.umin.i32(i32 %i.ay, i32 6)
  %i.ba = or disjoint i32 %i.az, 24
  %spec.store.select44.i.i.i = tail call i32 @llvm.umin.i32(i32 %.sroa.9.0.i.i, i32 %i.ba)
end_hunk_2
begin_hunk_3

_ZN11duckdb_zstdL27ZSTD_adjustCParams_internalENS_26ZSTD_compressionParametersEymNS_17ZSTD_cParamMode_eENS_18ZSTD_paramSwitch_eE.exit.i.i: ; preds = %bb.r, %bb.q
  %.sroa.9.1.i.i = phi i32 [ %.sroa.9.0.i.i, %bb.q ], [ %spec.store.select44.i.i.i, %bb.r ]
  store <2 x i32> %.sroa.045.0.vec.insert.i.i, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 4
  %.sroa.450.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %.sroa.9.1.i.i, ptr %.sroa.450.0..sroa_idx.i.i, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx51.i.i = getelementptr inbounds nuw i8, ptr %10, i64 20
  store <2 x i32> %.sroa.6.sroa.4.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx51.i.i, align 4
  %.sroa.752.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i32 %i.u, ptr %.sroa.752.0..sroa_idx.i.i, align 4, !tbaa !85
  store i32 %11, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 4, !tbaa !102
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 6072
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !288
  store i32 %i.bc, ptr %i.ah, align 8, !tbaa !88
end_hunk_3
begin_hunk_4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !3
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 36
  store <2 x i32> zeroinitializer, ptr %.sroa.633.0..sroa_idx, align 4
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 44
  store i32 0, ptr %.sroa.634.0..sroa_idx, align 4, !tbaa !3
  %.sroa.735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 144
end_hunk_4
