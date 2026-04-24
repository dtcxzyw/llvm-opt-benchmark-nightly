inline.NumInlined: 1254
inline.NumDeleted: 36
begin_hunk_0_@_ZN11duckdb_zstd44ZSTD_dedicatedDictSearch_lazy_loadDictionaryEPNS_17ZSTD_matchState_tEPKh:bb.a
  %i.u = load i32, ptr %i.t, align 4, !tbaa !24
  %i.v = shl nuw i32 1, %i.u
  %i.w = add i32 %i.v, -3                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.y = load i32, ptr %i.x, align 8, !tbaa !25   ; 5 uses
  %i.z = add i32 %i.y, -2                         ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd44ZSTD_dedicatedDictSearch_lazy_loadDictionaryEPNS_17ZSTD_matchState_tEPKh:bb.a
.preheader164:                                    ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141._crit_edge, %bb.a
  %i.ap = shl nuw i32 1, %i.z                     ; 4 uses
  %.not197 = icmp eq i32 %i.w, 0
  %2 = tail call i32 @llvm.umax.i32(i32 %i.w, i32 1)
  %umax = tail call i32 @llvm.umin.i32(i32 %2, i32 255) ; 3 uses
  %wide.trip.count = zext i32 %i.ap to i64
  br label %bb.i

end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd44ZSTD_dedicatedDictSearch_lazy_loadDictionaryEPNS_17ZSTD_matchState_tEPKh:bb.a
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %exitcond.not = icmp eq i32 %i.cg, %umax
  br i1 %exitcond.not, label %._crit_edge182.thread241, label %.lr.ph181, !llvm.loop !30

._crit_edge182.thread241:                         ; preds = %bb.l
  %i.cp = sub i32 %i.cd, %umax
  %i.cq = shl i32 %i.cp, 8
  %i.cr = or disjoint i32 %i.cq, %umax
  br label %.thread

._crit_edge182:                                   ; preds = %bb.j
end_hunk_2
