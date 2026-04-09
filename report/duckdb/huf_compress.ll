inline.NumInlined: 440
inline.NumDeleted: 31
begin_hunk_0_@_ZN11duckdb_zstd14HUF_readCTableEPmPjPKvmS1_:bb.a
bb.d:                                             ; preds = %bb.c
  %i.s = add i32 %i.o, -1                         ; 2 uses
  store i32 %i.s, ptr %1, align 4, !tbaa !3
  %i.t = trunc nuw nsw i32 %i.m to i8             ; 3 uses
  %i.u = trunc i32 %i.s to i8
  store i8 %i.t, ptr %0, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd14HUF_readCTableEPmPjPKvmS1_:bb.a
  br label %._crit_edge63

.lr.ph59:                                         ; preds = %.preheader54
  %wide.trip.count78 = zext i32 %i.o to i64       ; 5 uses
  %min.iters.check = icmp ult i32 %i.o, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph59
  %n.vec = and i64 %wide.trip.count78, 4294967292 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %i.t, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd14HUF_readCTableEPmPjPKvmS1_:bb.a
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.ab = sub <2 x i8> %broadcast.splat, %wide.load
  %i.ac = sub <2 x i8> %broadcast.splat, %wide.load95
  %5 = add <2 x i8> %i.ab, splat (i8 1)
  %6 = add <2 x i8> %i.ac, splat (i8 1)
  %i.ad = icmp eq <2 x i8> %wide.load, zeroinitializer
  %i.ae = icmp eq <2 x i8> %wide.load95, zeroinitializer
  %i.af = select <2 x i1> %i.ad, <2 x i8> zeroinitializer, <2 x i8> %5
  %i.ag = select <2 x i1> %i.ae, <2 x i8> zeroinitializer, <2 x i8> %6
  %i.ah = zext <2 x i8> %i.af to <2 x i64>
  %i.ai = zext <2 x i8> %i.ag to <2 x i64>
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstd14HUF_readCTableEPmPjPKvmS1_:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv75
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !7   ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv75
  %i.ba = sub i8 %i.t, %i.ay
  %7 = add i8 %i.ba, 1
  %.not53 = icmp eq i8 %i.ay, 0
  %narrow = select i1 %.not53, i8 0, i8 %7
  %i.bb = zext i8 %narrow to i64
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !15
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstd17HUF_compressBoundEm
define noundef i64 @_ZN11duckdb_zstd17HUF_compressBoundEm(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = lshr i64 %0, 8
  %i.b = add i64 %0, %i.a
  %i.c = add i64 %i.b, 137
  ret i64 %i.c
}

end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstdL35HUF_compress4X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %gepdiff = add nsw i64 %1, -6
  %i.h = tail call fastcc noundef i64 @_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi(ptr noundef nonnull %i.f, i64 noundef %gepdiff, ptr noundef %2, i64 noundef %i.b, ptr noundef %4, i32 noundef %5) ; 7 uses
  %i.i = icmp ult i64 %i.h, -119
  br i1 %i.i, label %bb.c, label %.thread
end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstdL35HUF_compress4X_usingCTable_internalEPvmPKvmPKmi:bb.a
  store i16 %i.k, ptr %0, align 1, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.b ; 2 uses
  %gepdiff127.a = sub i64 %1, %i.h
  %gepdiff127 = add i64 %gepdiff127.a, -6
  %i.n = tail call fastcc noundef i64 @_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi(ptr noundef nonnull %i.l, i64 noundef %gepdiff127, ptr noundef %i.m, i64 noundef %i.b, ptr noundef %4, i32 noundef %5) ; 6 uses
  %i.o = icmp ult i64 %i.n, -119
  br i1 %i.o, label %bb.e, label %.thread

end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstdL35HUF_compress4X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.b ; 2 uses
  %i.u = add nuw nsw i64 %i.h, %i.n
  %gepdiff128.a = sub i64 %1, %i.u
  %gepdiff128 = add i64 %gepdiff128.a, -6
  %i.v = tail call fastcc noundef i64 @_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi(ptr noundef nonnull %i.s, i64 noundef %gepdiff128, ptr noundef %i.t, i64 noundef %i.b, ptr noundef %4, i32 noundef %5) ; 5 uses
  %i.w = icmp ult i64 %i.v, -119
  br i1 %i.w, label %bb.g, label %.thread

end_hunk_7
begin_hunk_8_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  br i1 %.not.i29, label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %3 = sub i32 %2, %1
  %4 = add i32 %3, 1                              ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.f, align 4, !tbaa !3 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
end_hunk_8
