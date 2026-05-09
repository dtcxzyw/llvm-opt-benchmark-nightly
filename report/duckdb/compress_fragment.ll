inline.NumInlined: 19
inline.NumDeleted: 4
begin_hunk_0_@_ZL31BrotliCompressFragmentFastImpl9PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  store i64 %i.k, ptr %i.i, align 1, !noalias !36
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !7, !alias.scope !36, !noalias !39
  %7 = icmp ugt i64 %2, 65536                     ; 2 uses
  %.0.i52 = select i1 %7, i64 20, i64 16
  %8 = zext i1 %7 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.m = lshr i64 %i.l, 3
end_hunk_0
begin_hunk_1_@_ZL31BrotliCompressFragmentFastImpl9PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.s = or i64 %i.r, %i.p
  store i64 %i.s, ptr %i.n, align 1, !noalias !41
  store i64 %i.g, ptr %5, align 8, !tbaa !7, !alias.scope !41, !noalias !44
  %i.t = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
end_hunk_1
begin_hunk_2_@_ZL31BrotliCompressFragmentFastImpl9PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.z = shl nuw nsw i64 %i.t, %i.y
  %i.aa = or i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.v, align 1, !noalias !46
  %i.ab = add i64 %i.g, %.0.i52                   ; 4 uses
  store i64 %i.ab, ptr %5, align 8, !tbaa !7, !alias.scope !46, !noalias !49
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
end_hunk_2
begin_hunk_3_@_ZL31BrotliCompressFragmentFastImpl9PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  store i64 %i.awd, ptr %i.awb, align 1, !noalias !348
  %i.awe = add i64 %i.avy, 1                      ; 3 uses
  store i64 %i.awe, ptr %5, align 8, !tbaa !7, !alias.scope !348, !noalias !351
  %9 = icmp ugt i64 %.5323.i, 65536               ; 2 uses
  %.0.i55 = select i1 %9, i64 20, i64 16
  %10 = zext i1 %9 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.awf = lshr i64 %i.awe, 3
end_hunk_3
begin_hunk_4_@_ZL31BrotliCompressFragmentFastImpl9PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !9, !alias.scope !356, !noalias !353
  %i.awi = zext i8 %i.awh to i64
  %i.awj = and i64 %i.awe, 7
  %i.awk = shl nuw nsw i64 %10, %i.awj
  %i.awl = or i64 %i.awk, %i.awi
  store i64 %i.awl, ptr %i.awg, align 1, !noalias !353
  store i64 %i.avz, ptr %5, align 8, !tbaa !7, !alias.scope !353, !noalias !356
  %i.awm = add nsw i64 %i.avx, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
end_hunk_4
begin_hunk_5_@_ZL31BrotliCompressFragmentFastImpl9PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.aws = shl nuw nsw i64 %i.awm, %i.awr
  %i.awt = or i64 %i.aws, %i.awq
  store i64 %i.awt, ptr %i.awo, align 1, !noalias !358
  %i.awu = add i64 %i.avz, %.0.i55                ; 4 uses
  store i64 %i.awu, ptr %5, align 8, !tbaa !7, !alias.scope !358, !noalias !361
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
end_hunk_5
begin_hunk_6_@_ZL32BrotliCompressFragmentFastImpl11PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  store i64 %i.k, ptr %i.i, align 1, !noalias !373
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !7, !alias.scope !373, !noalias !376
  %7 = icmp ugt i64 %2, 65536                     ; 2 uses
  %.0.i52 = select i1 %7, i64 20, i64 16
  %8 = zext i1 %7 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.m = lshr i64 %i.l, 3
end_hunk_6
begin_hunk_7_@_ZL32BrotliCompressFragmentFastImpl11PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.s = or i64 %i.r, %i.p
  store i64 %i.s, ptr %i.n, align 1, !noalias !378
  store i64 %i.g, ptr %5, align 8, !tbaa !7, !alias.scope !378, !noalias !381
  %i.t = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
end_hunk_7
begin_hunk_8_@_ZL32BrotliCompressFragmentFastImpl11PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.z = shl nuw nsw i64 %i.t, %i.y
  %i.aa = or i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.v, align 1, !noalias !383
  %i.ab = add i64 %i.g, %.0.i52                   ; 4 uses
  store i64 %i.ab, ptr %5, align 8, !tbaa !7, !alias.scope !383, !noalias !386
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
end_hunk_8
begin_hunk_9_@_ZL32BrotliCompressFragmentFastImpl11PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  store i64 %i.awd, ptr %i.awb, align 1, !noalias !665
  %i.awe = add i64 %i.avy, 1                      ; 3 uses
  store i64 %i.awe, ptr %5, align 8, !tbaa !7, !alias.scope !665, !noalias !668
  %9 = icmp ugt i64 %.5323.i, 65536               ; 2 uses
  %.0.i55 = select i1 %9, i64 20, i64 16
  %10 = zext i1 %9 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %i.awf = lshr i64 %i.awe, 3
end_hunk_9
begin_hunk_10_@_ZL32BrotliCompressFragmentFastImpl11PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !9, !alias.scope !673, !noalias !670
  %i.awi = zext i8 %i.awh to i64
  %i.awj = and i64 %i.awe, 7
  %i.awk = shl nuw nsw i64 %10, %i.awj
  %i.awl = or i64 %i.awk, %i.awi
  store i64 %i.awl, ptr %i.awg, align 1, !noalias !670
  store i64 %i.avz, ptr %5, align 8, !tbaa !7, !alias.scope !670, !noalias !673
  %i.awm = add nsw i64 %i.avx, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
end_hunk_10
begin_hunk_11_@_ZL32BrotliCompressFragmentFastImpl11PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.aws = shl nuw nsw i64 %i.awm, %i.awr
  %i.awt = or i64 %i.aws, %i.awq
  store i64 %i.awt, ptr %i.awo, align 1, !noalias !675
  %i.awu = add i64 %i.avz, %.0.i55                ; 4 uses
  store i64 %i.awu, ptr %5, align 8, !tbaa !7, !alias.scope !675, !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
end_hunk_11
begin_hunk_12_@_ZL32BrotliCompressFragmentFastImpl13PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  store i64 %i.k, ptr %i.i, align 1, !noalias !690
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !7, !alias.scope !690, !noalias !693
  %7 = icmp ugt i64 %2, 65536                     ; 2 uses
  %.0.i52 = select i1 %7, i64 20, i64 16
  %8 = zext i1 %7 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  %i.m = lshr i64 %i.l, 3
end_hunk_12
begin_hunk_13_@_ZL32BrotliCompressFragmentFastImpl13PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.s = or i64 %i.r, %i.p
  store i64 %i.s, ptr %i.n, align 1, !noalias !695
  store i64 %i.g, ptr %5, align 8, !tbaa !7, !alias.scope !695, !noalias !698
  %i.t = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
end_hunk_13
begin_hunk_14_@_ZL32BrotliCompressFragmentFastImpl13PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.z = shl nuw nsw i64 %i.t, %i.y
  %i.aa = or i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.v, align 1, !noalias !700
  %i.ab = add i64 %i.g, %.0.i52                   ; 4 uses
  store i64 %i.ab, ptr %5, align 8, !tbaa !7, !alias.scope !700, !noalias !703
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
end_hunk_14
begin_hunk_15_@_ZL32BrotliCompressFragmentFastImpl13PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  store i64 %i.awd, ptr %i.awb, align 1, !noalias !982
  %i.awe = add i64 %i.avy, 1                      ; 3 uses
  store i64 %i.awe, ptr %5, align 8, !tbaa !7, !alias.scope !982, !noalias !985
  %9 = icmp ugt i64 %.5323.i, 65536               ; 2 uses
  %.0.i55 = select i1 %9, i64 20, i64 16
  %10 = zext i1 %9 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !990)
  %i.awf = lshr i64 %i.awe, 3
end_hunk_15
begin_hunk_16_@_ZL32BrotliCompressFragmentFastImpl13PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !9, !alias.scope !990, !noalias !987
  %i.awi = zext i8 %i.awh to i64
  %i.awj = and i64 %i.awe, 7
  %i.awk = shl nuw nsw i64 %10, %i.awj
  %i.awl = or i64 %i.awk, %i.awi
  store i64 %i.awl, ptr %i.awg, align 1, !noalias !987
  store i64 %i.avz, ptr %5, align 8, !tbaa !7, !alias.scope !987, !noalias !990
  %i.awm = add nsw i64 %i.avx, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
end_hunk_16
begin_hunk_17_@_ZL32BrotliCompressFragmentFastImpl13PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.aws = shl nuw nsw i64 %i.awm, %i.awr
  %i.awt = or i64 %i.aws, %i.awq
  store i64 %i.awt, ptr %i.awo, align 1, !noalias !992
  %i.awu = add i64 %i.avz, %.0.i55                ; 4 uses
  store i64 %i.awu, ptr %5, align 8, !tbaa !7, !alias.scope !992, !noalias !995
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
end_hunk_17
begin_hunk_18_@_ZL32BrotliCompressFragmentFastImpl15PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  store i64 %i.k, ptr %i.i, align 1, !noalias !1007
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !7, !alias.scope !1007, !noalias !1010
  %7 = icmp ugt i64 %2, 65536                     ; 2 uses
  %.0.i52 = select i1 %7, i64 20, i64 16
  %8 = zext i1 %7 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.m = lshr i64 %i.l, 3
end_hunk_18
begin_hunk_19_@_ZL32BrotliCompressFragmentFastImpl15PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.s = or i64 %i.r, %i.p
  store i64 %i.s, ptr %i.n, align 1, !noalias !1012
  store i64 %i.g, ptr %5, align 8, !tbaa !7, !alias.scope !1012, !noalias !1015
  %i.t = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
end_hunk_19
begin_hunk_20_@_ZL32BrotliCompressFragmentFastImpl15PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.z = shl nuw nsw i64 %i.t, %i.y
  %i.aa = or i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.v, align 1, !noalias !1017
  %i.ab = add i64 %i.g, %.0.i52                   ; 4 uses
  store i64 %i.ab, ptr %5, align 8, !tbaa !7, !alias.scope !1017, !noalias !1020
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1025)
end_hunk_20
begin_hunk_21_@_ZL32BrotliCompressFragmentFastImpl15PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  store i64 %i.awd, ptr %i.awb, align 1, !noalias !1299
  %i.awe = add i64 %i.avy, 1                      ; 3 uses
  store i64 %i.awe, ptr %5, align 8, !tbaa !7, !alias.scope !1299, !noalias !1302
  %9 = icmp ugt i64 %.5323.i, 65536               ; 2 uses
  %.0.i55 = select i1 %9, i64 20, i64 16
  %10 = zext i1 %9 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.awf = lshr i64 %i.awe, 3
end_hunk_21
begin_hunk_22_@_ZL32BrotliCompressFragmentFastImpl15PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !9, !alias.scope !1307, !noalias !1304
  %i.awi = zext i8 %i.awh to i64
  %i.awj = and i64 %i.awe, 7
  %i.awk = shl nuw nsw i64 %10, %i.awj
  %i.awl = or i64 %i.awk, %i.awi
  store i64 %i.awl, ptr %i.awg, align 1, !noalias !1304
  store i64 %i.avz, ptr %5, align 8, !tbaa !7, !alias.scope !1304, !noalias !1307
  %i.awm = add nsw i64 %i.avx, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
end_hunk_22
begin_hunk_23_@_ZL32BrotliCompressFragmentFastImpl15PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.aws = shl nuw nsw i64 %i.awm, %i.awr
  %i.awt = or i64 %i.aws, %i.awq
  store i64 %i.awt, ptr %i.awo, align 1, !noalias !1309
  %i.awu = add i64 %i.avz, %.0.i55                ; 4 uses
  store i64 %i.awu, ptr %5, align 8, !tbaa !7, !alias.scope !1309, !noalias !1312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
end_hunk_23
