inline.NumInlined: 48
inline.NumDeleted: 21
begin_hunk_0
; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 -44, 1) i64 @_ZN11duckdb_zstd20FSE_buildCTable_wkspEPjPKsjjPvm(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef captures(none) %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nuw i32 1, %3                        ; 12 uses
  %i.b = add i32 %i.a, -1                         ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %.not = icmp eq i32 %3, 0
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd20FSE_buildCTable_wkspEPjPKsjjPvm:bb.a
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.f ; 3 uses
  %i.h = lshr i32 %i.a, 3
  %i.i = add nuw nsw i32 %i.h, 3
  %i.j = add nuw nsw i32 %i.i, %i.d               ; 5 uses
  %i.k = add i32 %2, 1                            ; 4 uses
  %i.l = add i32 %2, 2                            ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd20FSE_buildCTable_wkspEPjPKsjjPvm:bb.a
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %.epil.preheader246
  %i.dl = shl i32 %3, 16                          ; 2 uses
  %i.dm = sub i32 %i.dl, %i.a
  %i.dn = add i32 %i.dl, 65536
  %6 = sub i32 %i.dn, %i.a
  %umax231 = tail call i32 @llvm.umax.i32(i32 %i.k, i32 1)
  %wide.trip.count232 = zext i32 %umax231 to i64
  br label %bb.n
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstd20FSE_buildCTable_wkspEPjPKsjjPvm:bb.a
bb.o:                                             ; preds = %bb.n
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv228
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i32 %6, ptr %i.en, align 4, !tbaa !24
  br label %bb.r

bb.p:                                             ; preds = %bb.n, %bb.n
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstd24FSE_compress_usingCTableEPvmPKvmPKj
define noundef i64 @_ZN11duckdb_zstd24FSE_compress_usingCTableEPvmPKvmPKj(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(address) %2, i64 noundef %3, ptr noundef readonly captures(none) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i64 %3, 7
  %i.b = add i64 %3, 12
  %i.c = add i64 %i.b, %i.a
  %.not = icmp uge i64 %1, %i.c
  %. = zext i1 %.not to i32
  %i.d = tail call fastcc noundef i64 @_ZN11duckdb_zstdL32FSE_compress_usingCTable_genericEPvmPKvmPKjj(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %.)
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstd17FSE_compressBoundEm
define noundef i64 @_ZN11duckdb_zstd17FSE_compressBoundEm(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i64 %0, 7
  %i.b = add i64 %0, 524
  %i.c = add i64 %i.b, %i.a
  ret i64 %i.c
}

end_hunk_5
