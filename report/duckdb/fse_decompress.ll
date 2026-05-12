inline.NumInlined: 83
inline.NumDeleted: 15
begin_hunk_0_@_ZN11duckdb_zstdL24FSE_buildDTable_internalEPjPKsjjPvm:bb.a

.loopexit137:                                     ; preds = %.preheader, %._crit_edge150..loopexit137_crit_edge
  %wide.trip.count184.pre-phi = phi i64 [ %.pre, %._crit_edge150..loopexit137_crit_edge ], [ %i.be, %.preheader ]
  br label %bb.r

bb.r:                                             ; preds = %.loopexit137, %bb.r
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL24FSE_buildDTable_internalEPjPKsjjPvm:bb.a
  store i16 %i.dr, ptr %i.dp, align 2, !tbaa !7
  %i.ds = zext i16 %i.dq to i32                   ; 2 uses
  %i.dt = tail call noundef range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.ds, i1 true)
  %6 = xor i32 %i.dt, 31
  %7 = sub nsw i32 %3, %6                         ; 2 uses
  %i.du = trunc nsw i32 %7 to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 3
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !25
  %i.dw = and i32 %7, 255
  %i.dx = shl i32 %i.ds, %i.dw
  %i.dy = sub i32 %i.dx, %i.f
  %i.dz = trunc i32 %i.dy to i16
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd24FSE_decompress_wksp_bmi2EPvmPKvmjS0_mi:bb.a
_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i: ; preds = %bb.k
  %i.cq = trunc nuw nsw i64 %i.au to i32
  %i.cr = call noundef range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.cq, i1 true)
  %14 = xor i32 %i.cr, 31
  %15 = sub nuw nsw i32 8, %14
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %15, ptr %i.cs, align 8, !tbaa !37
  %i.ct = icmp ult i64 %i.k, -119
  br i1 %i.ct, label %bb.t, label %_ZN11duckdb_zstdL34FSE_decompress_usingDTable_genericEPvmPKvmPKjj.exit12.i

end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstdL29FSE_decompress_wksp_body_bmi2EPvmPKvmjS0_m:bb.a
_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit: ; preds = %bb.i
  %i.cp = trunc nuw nsw i64 %i.at to i32
  %i.cq = call noundef range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.cp, i1 true)
  %13 = xor i32 %i.cq, 31
  %14 = sub nuw nsw i32 8, %13
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %14, ptr %i.cr, align 8, !tbaa !37
  %i.cs = icmp ult i64 %i.j, -119
  br i1 %i.cs, label %bb.r, label %_ZN11duckdb_zstdL34FSE_decompress_usingDTable_genericEPvmPKvmPKjj.exit12

end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm:bb.a
.thread:                                          ; preds = %bb.d
  %i.k = zext i8 %i.j to i32
  %i.l = tail call noundef range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.k, i1 true)
  %3 = xor i32 %i.l, 31
  %4 = sub nuw nsw i32 8, %3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %4, ptr %i.m, align 8, !tbaa !37
  br label %bb.p

bb.e:                                             ; preds = %bb.d
end_hunk_4
