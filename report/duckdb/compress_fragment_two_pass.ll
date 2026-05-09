inline.NumInlined: 24
inline.NumDeleted: 4
begin_hunk_0_@_ZL34BrotliCompressFragmentTwoPassImpl8PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.mo, ptr %i.mm, align 1, !noalias !48
  %i.mp = add i64 %i.mk, 1                        ; 3 uses
  store i64 %i.mp, ptr %6, align 8, !tbaa !7, !alias.scope !48, !noalias !51
  %8 = icmp ugt i64 %.037.i260, 65536             ; 2 uses
  %.0.i53 = select i1 %8, i64 20, i64 16
  %9 = zext i1 %8 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.mq = lshr i64 %i.mp, 3
end_hunk_0
begin_hunk_1_@_ZL34BrotliCompressFragmentTwoPassImpl8PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.mw, ptr %i.mr, align 1, !noalias !53
  %i.mx = add i64 %i.mk, 3                        ; 4 uses
  store i64 %i.mx, ptr %6, align 8, !tbaa !7, !alias.scope !53, !noalias !56
  %i.my = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
end_hunk_1
begin_hunk_2_@_ZL34BrotliCompressFragmentTwoPassImpl8PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.ne = shl nuw nsw i64 %i.my, %i.nd
  %i.nf = or i64 %i.ne, %i.nc
  store i64 %i.nf, ptr %i.na, align 1, !noalias !58
  %i.ng = add i64 %i.mx, %.0.i53                  ; 4 uses
  store i64 %i.ng, ptr %6, align 8, !tbaa !7, !alias.scope !58, !noalias !61
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
end_hunk_2
begin_hunk_3_@_ZL34BrotliCompressFragmentTwoPassImpl8PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.nv, ptr %i.nt, align 1, !noalias !73
  %i.nw = add i64 %i.nr, 1                        ; 3 uses
  store i64 %i.nw, ptr %6, align 8, !tbaa !7, !alias.scope !73, !noalias !76
  %10 = icmp ugt i64 %.037.i260, 65536            ; 2 uses
  %.0.i.i = select i1 %10, i64 20, i64 16
  %11 = zext i1 %10 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.nx = lshr i64 %i.nw, 3
end_hunk_3
begin_hunk_4_@_ZL34BrotliCompressFragmentTwoPassImpl8PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !9, !alias.scope !81, !noalias !78
  %i.oa = zext i8 %i.nz to i64
  %i.ob = and i64 %i.nw, 7
  %i.oc = shl nuw nsw i64 %11, %i.ob
  %i.od = or i64 %i.oc, %i.oa
  store i64 %i.od, ptr %i.ny, align 1, !noalias !78
  %i.oe = add i64 %i.nr, 3                        ; 4 uses
  store i64 %i.oe, ptr %6, align 8, !tbaa !7, !alias.scope !78, !noalias !81
  %i.of = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
end_hunk_4
begin_hunk_5_@_ZL34BrotliCompressFragmentTwoPassImpl8PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.ol = shl nuw nsw i64 %i.of, %i.ok
  %i.om = or i64 %i.ol, %i.oj
  store i64 %i.om, ptr %i.oh, align 1, !noalias !83
  %i.on = add i64 %i.oe, %.0.i.i                  ; 4 uses
  store i64 %i.on, ptr %6, align 8, !tbaa !7, !alias.scope !83, !noalias !86
  %i.oo = lshr i64 %i.on, 3
  %i.op = getelementptr inbounds nuw i8, ptr %7, i64 %i.oo ; 2 uses
end_hunk_5
begin_hunk_6_@_ZL34BrotliCompressFragmentTwoPassImpl9PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.mo, ptr %i.mm, align 1, !noalias !94
  %i.mp = add i64 %i.mk, 1                        ; 3 uses
  store i64 %i.mp, ptr %6, align 8, !tbaa !7, !alias.scope !94, !noalias !97
  %8 = icmp ugt i64 %.037.i260, 65536             ; 2 uses
  %.0.i53 = select i1 %8, i64 20, i64 16
  %9 = zext i1 %8 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.mq = lshr i64 %i.mp, 3
end_hunk_6
begin_hunk_7_@_ZL34BrotliCompressFragmentTwoPassImpl9PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.mw, ptr %i.mr, align 1, !noalias !99
  %i.mx = add i64 %i.mk, 3                        ; 4 uses
  store i64 %i.mx, ptr %6, align 8, !tbaa !7, !alias.scope !99, !noalias !102
  %i.my = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
end_hunk_7
begin_hunk_8_@_ZL34BrotliCompressFragmentTwoPassImpl9PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.ne = shl nuw nsw i64 %i.my, %i.nd
  %i.nf = or i64 %i.ne, %i.nc
  store i64 %i.nf, ptr %i.na, align 1, !noalias !104
  %i.ng = add i64 %i.mx, %.0.i53                  ; 4 uses
  store i64 %i.ng, ptr %6, align 8, !tbaa !7, !alias.scope !104, !noalias !107
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
end_hunk_8
begin_hunk_9_@_ZL34BrotliCompressFragmentTwoPassImpl9PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.nv, ptr %i.nt, align 1, !noalias !119
  %i.nw = add i64 %i.nr, 1                        ; 3 uses
  store i64 %i.nw, ptr %6, align 8, !tbaa !7, !alias.scope !119, !noalias !122
  %10 = icmp ugt i64 %.037.i260, 65536            ; 2 uses
  %.0.i.i = select i1 %10, i64 20, i64 16
  %11 = zext i1 %10 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.nx = lshr i64 %i.nw, 3
end_hunk_9
begin_hunk_10_@_ZL34BrotliCompressFragmentTwoPassImpl9PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !9, !alias.scope !127, !noalias !124
  %i.oa = zext i8 %i.nz to i64
  %i.ob = and i64 %i.nw, 7
  %i.oc = shl nuw nsw i64 %11, %i.ob
  %i.od = or i64 %i.oc, %i.oa
  store i64 %i.od, ptr %i.ny, align 1, !noalias !124
  %i.oe = add i64 %i.nr, 3                        ; 4 uses
  store i64 %i.oe, ptr %6, align 8, !tbaa !7, !alias.scope !124, !noalias !127
  %i.of = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
end_hunk_10
begin_hunk_11_@_ZL34BrotliCompressFragmentTwoPassImpl9PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.ol = shl nuw nsw i64 %i.of, %i.ok
  %i.om = or i64 %i.ol, %i.oj
  store i64 %i.om, ptr %i.oh, align 1, !noalias !129
  %i.on = add i64 %i.oe, %.0.i.i                  ; 4 uses
  store i64 %i.on, ptr %6, align 8, !tbaa !7, !alias.scope !129, !noalias !132
  %i.oo = lshr i64 %i.on, 3
  %i.op = getelementptr inbounds nuw i8, ptr %7, i64 %i.oo ; 2 uses
end_hunk_11
begin_hunk_12_@_ZL35BrotliCompressFragmentTwoPassImpl10PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.mo, ptr %i.mm, align 1, !noalias !139
  %i.mp = add i64 %i.mk, 1                        ; 3 uses
  store i64 %i.mp, ptr %6, align 8, !tbaa !7, !alias.scope !139, !noalias !142
  %8 = icmp ugt i64 %.037.i260, 65536             ; 2 uses
  %.0.i53 = select i1 %8, i64 20, i64 16
  %9 = zext i1 %8 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.mq = lshr i64 %i.mp, 3
end_hunk_12
begin_hunk_13_@_ZL35BrotliCompressFragmentTwoPassImpl10PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.mw, ptr %i.mr, align 1, !noalias !144
  %i.mx = add i64 %i.mk, 3                        ; 4 uses
  store i64 %i.mx, ptr %6, align 8, !tbaa !7, !alias.scope !144, !noalias !147
  %i.my = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
end_hunk_13
begin_hunk_14_@_ZL35BrotliCompressFragmentTwoPassImpl10PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.ne = shl nuw nsw i64 %i.my, %i.nd
  %i.nf = or i64 %i.ne, %i.nc
  store i64 %i.nf, ptr %i.na, align 1, !noalias !149
  %i.ng = add i64 %i.mx, %.0.i53                  ; 4 uses
  store i64 %i.ng, ptr %6, align 8, !tbaa !7, !alias.scope !149, !noalias !152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
end_hunk_14
begin_hunk_15_@_ZL35BrotliCompressFragmentTwoPassImpl10PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.nv, ptr %i.nt, align 1, !noalias !164
  %i.nw = add i64 %i.nr, 1                        ; 3 uses
  store i64 %i.nw, ptr %6, align 8, !tbaa !7, !alias.scope !164, !noalias !167
  %10 = icmp ugt i64 %.037.i260, 65536            ; 2 uses
  %.0.i.i = select i1 %10, i64 20, i64 16
  %11 = zext i1 %10 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.nx = lshr i64 %i.nw, 3
end_hunk_15
begin_hunk_16_@_ZL35BrotliCompressFragmentTwoPassImpl10PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !9, !alias.scope !172, !noalias !169
  %i.oa = zext i8 %i.nz to i64
  %i.ob = and i64 %i.nw, 7
  %i.oc = shl nuw nsw i64 %11, %i.ob
  %i.od = or i64 %i.oc, %i.oa
  store i64 %i.od, ptr %i.ny, align 1, !noalias !169
  %i.oe = add i64 %i.nr, 3                        ; 4 uses
  store i64 %i.oe, ptr %6, align 8, !tbaa !7, !alias.scope !169, !noalias !172
  %i.of = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
end_hunk_16
begin_hunk_17_@_ZL35BrotliCompressFragmentTwoPassImpl10PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.ol = shl nuw nsw i64 %i.of, %i.ok
  %i.om = or i64 %i.ol, %i.oj
  store i64 %i.om, ptr %i.oh, align 1, !noalias !174
  %i.on = add i64 %i.oe, %.0.i.i                  ; 4 uses
  store i64 %i.on, ptr %6, align 8, !tbaa !7, !alias.scope !174, !noalias !177
  %i.oo = lshr i64 %i.on, 3
  %i.op = getelementptr inbounds nuw i8, ptr %7, i64 %i.oo ; 2 uses
end_hunk_17
begin_hunk_18_@_ZL35BrotliCompressFragmentTwoPassImpl11PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.mo, ptr %i.mm, align 1, !noalias !184
  %i.mp = add i64 %i.mk, 1                        ; 3 uses
  store i64 %i.mp, ptr %6, align 8, !tbaa !7, !alias.scope !184, !noalias !187
  %8 = icmp ugt i64 %.037.i260, 65536             ; 2 uses
  %.0.i53 = select i1 %8, i64 20, i64 16
  %9 = zext i1 %8 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.mq = lshr i64 %i.mp, 3
end_hunk_18
begin_hunk_19_@_ZL35BrotliCompressFragmentTwoPassImpl11PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.mw, ptr %i.mr, align 1, !noalias !189
  %i.mx = add i64 %i.mk, 3                        ; 4 uses
  store i64 %i.mx, ptr %6, align 8, !tbaa !7, !alias.scope !189, !noalias !192
  %i.my = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
end_hunk_19
begin_hunk_20_@_ZL35BrotliCompressFragmentTwoPassImpl11PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.ne = shl nuw nsw i64 %i.my, %i.nd
  %i.nf = or i64 %i.ne, %i.nc
  store i64 %i.nf, ptr %i.na, align 1, !noalias !194
  %i.ng = add i64 %i.mx, %.0.i53                  ; 4 uses
  store i64 %i.ng, ptr %6, align 8, !tbaa !7, !alias.scope !194, !noalias !197
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
end_hunk_20
begin_hunk_21_@_ZL35BrotliCompressFragmentTwoPassImpl11PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.nv, ptr %i.nt, align 1, !noalias !209
  %i.nw = add i64 %i.nr, 1                        ; 3 uses
  store i64 %i.nw, ptr %6, align 8, !tbaa !7, !alias.scope !209, !noalias !212
  %10 = icmp ugt i64 %.037.i260, 65536            ; 2 uses
  %.0.i.i = select i1 %10, i64 20, i64 16
  %11 = zext i1 %10 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.nx = lshr i64 %i.nw, 3
end_hunk_21
begin_hunk_22_@_ZL35BrotliCompressFragmentTwoPassImpl11PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !9, !alias.scope !217, !noalias !214
  %i.oa = zext i8 %i.nz to i64
  %i.ob = and i64 %i.nw, 7
  %i.oc = shl nuw nsw i64 %11, %i.ob
  %i.od = or i64 %i.oc, %i.oa
  store i64 %i.od, ptr %i.ny, align 1, !noalias !214
  %i.oe = add i64 %i.nr, 3                        ; 4 uses
  store i64 %i.oe, ptr %6, align 8, !tbaa !7, !alias.scope !214, !noalias !217
  %i.of = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
end_hunk_22
begin_hunk_23_@_ZL35BrotliCompressFragmentTwoPassImpl11PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.ol = shl nuw nsw i64 %i.of, %i.ok
  %i.om = or i64 %i.ol, %i.oj
  store i64 %i.om, ptr %i.oh, align 1, !noalias !219
  %i.on = add i64 %i.oe, %.0.i.i                  ; 4 uses
  store i64 %i.on, ptr %6, align 8, !tbaa !7, !alias.scope !219, !noalias !222
  %i.oo = lshr i64 %i.on, 3
  %i.op = getelementptr inbounds nuw i8, ptr %7, i64 %i.oo ; 2 uses
end_hunk_23
begin_hunk_24_@_ZL35BrotliCompressFragmentTwoPassImpl12PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.mo, ptr %i.mm, align 1, !noalias !229
  %i.mp = add i64 %i.mk, 1                        ; 3 uses
  store i64 %i.mp, ptr %6, align 8, !tbaa !7, !alias.scope !229, !noalias !232
  %8 = icmp ugt i64 %.037.i260, 65536             ; 2 uses
  %.0.i53 = select i1 %8, i64 20, i64 16
  %9 = zext i1 %8 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.mq = lshr i64 %i.mp, 3
end_hunk_24
begin_hunk_25_@_ZL35BrotliCompressFragmentTwoPassImpl12PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.mw, ptr %i.mr, align 1, !noalias !234
  %i.mx = add i64 %i.mk, 3                        ; 4 uses
  store i64 %i.mx, ptr %6, align 8, !tbaa !7, !alias.scope !234, !noalias !237
  %i.my = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
end_hunk_25
begin_hunk_26_@_ZL35BrotliCompressFragmentTwoPassImpl12PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.ne = shl nuw nsw i64 %i.my, %i.nd
  %i.nf = or i64 %i.ne, %i.nc
  store i64 %i.nf, ptr %i.na, align 1, !noalias !239
  %i.ng = add i64 %i.mx, %.0.i53                  ; 4 uses
  store i64 %i.ng, ptr %6, align 8, !tbaa !7, !alias.scope !239, !noalias !242
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
end_hunk_26
begin_hunk_27_@_ZL35BrotliCompressFragmentTwoPassImpl12PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.nv, ptr %i.nt, align 1, !noalias !254
  %i.nw = add i64 %i.nr, 1                        ; 3 uses
  store i64 %i.nw, ptr %6, align 8, !tbaa !7, !alias.scope !254, !noalias !257
  %10 = icmp ugt i64 %.037.i260, 65536            ; 2 uses
  %.0.i.i = select i1 %10, i64 20, i64 16
  %11 = zext i1 %10 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.nx = lshr i64 %i.nw, 3
end_hunk_27
begin_hunk_28_@_ZL35BrotliCompressFragmentTwoPassImpl12PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !9, !alias.scope !262, !noalias !259
  %i.oa = zext i8 %i.nz to i64
  %i.ob = and i64 %i.nw, 7
  %i.oc = shl nuw nsw i64 %11, %i.ob
  %i.od = or i64 %i.oc, %i.oa
  store i64 %i.od, ptr %i.ny, align 1, !noalias !259
  %i.oe = add i64 %i.nr, 3                        ; 4 uses
  store i64 %i.oe, ptr %6, align 8, !tbaa !7, !alias.scope !259, !noalias !262
  %i.of = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
end_hunk_28
begin_hunk_29_@_ZL35BrotliCompressFragmentTwoPassImpl12PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.ol = shl nuw nsw i64 %i.of, %i.ok
  %i.om = or i64 %i.ol, %i.oj
  store i64 %i.om, ptr %i.oh, align 1, !noalias !264
  %i.on = add i64 %i.oe, %.0.i.i                  ; 4 uses
  store i64 %i.on, ptr %6, align 8, !tbaa !7, !alias.scope !264, !noalias !267
  %i.oo = lshr i64 %i.on, 3
  %i.op = getelementptr inbounds nuw i8, ptr %7, i64 %i.oo ; 2 uses
end_hunk_29
begin_hunk_30_@_ZL35BrotliCompressFragmentTwoPassImpl13PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.mo, ptr %i.mm, align 1, !noalias !274
  %i.mp = add i64 %i.mk, 1                        ; 3 uses
  store i64 %i.mp, ptr %6, align 8, !tbaa !7, !alias.scope !274, !noalias !277
  %8 = icmp ugt i64 %.037.i260, 65536             ; 2 uses
  %.0.i53 = select i1 %8, i64 20, i64 16
  %9 = zext i1 %8 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.mq = lshr i64 %i.mp, 3
end_hunk_30
begin_hunk_31_@_ZL35BrotliCompressFragmentTwoPassImpl13PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.mw, ptr %i.mr, align 1, !noalias !279
  %i.mx = add i64 %i.mk, 3                        ; 4 uses
  store i64 %i.mx, ptr %6, align 8, !tbaa !7, !alias.scope !279, !noalias !282
  %i.my = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
end_hunk_31
begin_hunk_32_@_ZL35BrotliCompressFragmentTwoPassImpl13PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.ne = shl nuw nsw i64 %i.my, %i.nd
  %i.nf = or i64 %i.ne, %i.nc
  store i64 %i.nf, ptr %i.na, align 1, !noalias !284
  %i.ng = add i64 %i.mx, %.0.i53                  ; 4 uses
  store i64 %i.ng, ptr %6, align 8, !tbaa !7, !alias.scope !284, !noalias !287
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
end_hunk_32
begin_hunk_33_@_ZL35BrotliCompressFragmentTwoPassImpl13PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.nv, ptr %i.nt, align 1, !noalias !299
  %i.nw = add i64 %i.nr, 1                        ; 3 uses
  store i64 %i.nw, ptr %6, align 8, !tbaa !7, !alias.scope !299, !noalias !302
  %10 = icmp ugt i64 %.037.i260, 65536            ; 2 uses
  %.0.i.i = select i1 %10, i64 20, i64 16
  %11 = zext i1 %10 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.nx = lshr i64 %i.nw, 3
end_hunk_33
begin_hunk_34_@_ZL35BrotliCompressFragmentTwoPassImpl13PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !9, !alias.scope !307, !noalias !304
  %i.oa = zext i8 %i.nz to i64
  %i.ob = and i64 %i.nw, 7
  %i.oc = shl nuw nsw i64 %11, %i.ob
  %i.od = or i64 %i.oc, %i.oa
  store i64 %i.od, ptr %i.ny, align 1, !noalias !304
  %i.oe = add i64 %i.nr, 3                        ; 4 uses
  store i64 %i.oe, ptr %6, align 8, !tbaa !7, !alias.scope !304, !noalias !307
  %i.of = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
end_hunk_34
begin_hunk_35_@_ZL35BrotliCompressFragmentTwoPassImpl13PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.ol = shl nuw nsw i64 %i.of, %i.ok
  %i.om = or i64 %i.ol, %i.oj
  store i64 %i.om, ptr %i.oh, align 1, !noalias !309
  %i.on = add i64 %i.oe, %.0.i.i                  ; 4 uses
  store i64 %i.on, ptr %6, align 8, !tbaa !7, !alias.scope !309, !noalias !312
  %i.oo = lshr i64 %i.on, 3
  %i.op = getelementptr inbounds nuw i8, ptr %7, i64 %i.oo ; 2 uses
end_hunk_35
begin_hunk_36_@_ZL35BrotliCompressFragmentTwoPassImpl14PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.mo, ptr %i.mm, align 1, !noalias !319
  %i.mp = add i64 %i.mk, 1                        ; 3 uses
  store i64 %i.mp, ptr %6, align 8, !tbaa !7, !alias.scope !319, !noalias !322
  %8 = icmp ugt i64 %.037.i260, 65536             ; 2 uses
  %.0.i53 = select i1 %8, i64 20, i64 16
  %9 = zext i1 %8 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.mq = lshr i64 %i.mp, 3
end_hunk_36
begin_hunk_37_@_ZL35BrotliCompressFragmentTwoPassImpl14PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.mw, ptr %i.mr, align 1, !noalias !324
  %i.mx = add i64 %i.mk, 3                        ; 4 uses
  store i64 %i.mx, ptr %6, align 8, !tbaa !7, !alias.scope !324, !noalias !327
  %i.my = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
end_hunk_37
begin_hunk_38_@_ZL35BrotliCompressFragmentTwoPassImpl14PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.ne = shl nuw nsw i64 %i.my, %i.nd
  %i.nf = or i64 %i.ne, %i.nc
  store i64 %i.nf, ptr %i.na, align 1, !noalias !329
  %i.ng = add i64 %i.mx, %.0.i53                  ; 4 uses
  store i64 %i.ng, ptr %6, align 8, !tbaa !7, !alias.scope !329, !noalias !332
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
end_hunk_38
begin_hunk_39_@_ZL35BrotliCompressFragmentTwoPassImpl14PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.nv, ptr %i.nt, align 1, !noalias !344
  %i.nw = add i64 %i.nr, 1                        ; 3 uses
  store i64 %i.nw, ptr %6, align 8, !tbaa !7, !alias.scope !344, !noalias !347
  %10 = icmp ugt i64 %.037.i260, 65536            ; 2 uses
  %.0.i.i = select i1 %10, i64 20, i64 16
  %11 = zext i1 %10 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.nx = lshr i64 %i.nw, 3
end_hunk_39
begin_hunk_40_@_ZL35BrotliCompressFragmentTwoPassImpl14PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !9, !alias.scope !352, !noalias !349
  %i.oa = zext i8 %i.nz to i64
  %i.ob = and i64 %i.nw, 7
  %i.oc = shl nuw nsw i64 %11, %i.ob
  %i.od = or i64 %i.oc, %i.oa
  store i64 %i.od, ptr %i.ny, align 1, !noalias !349
  %i.oe = add i64 %i.nr, 3                        ; 4 uses
  store i64 %i.oe, ptr %6, align 8, !tbaa !7, !alias.scope !349, !noalias !352
  %i.of = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
end_hunk_40
begin_hunk_41_@_ZL35BrotliCompressFragmentTwoPassImpl14PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.ol = shl nuw nsw i64 %i.of, %i.ok
  %i.om = or i64 %i.ol, %i.oj
  store i64 %i.om, ptr %i.oh, align 1, !noalias !354
  %i.on = add i64 %i.oe, %.0.i.i                  ; 4 uses
  store i64 %i.on, ptr %6, align 8, !tbaa !7, !alias.scope !354, !noalias !357
  %i.oo = lshr i64 %i.on, 3
  %i.op = getelementptr inbounds nuw i8, ptr %7, i64 %i.oo ; 2 uses
end_hunk_41
begin_hunk_42_@_ZL35BrotliCompressFragmentTwoPassImpl15PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.mo, ptr %i.mm, align 1, !noalias !364
  %i.mp = add i64 %i.mk, 1                        ; 3 uses
  store i64 %i.mp, ptr %6, align 8, !tbaa !7, !alias.scope !364, !noalias !367
  %8 = icmp ugt i64 %.037.i260, 65536             ; 2 uses
  %.0.i53 = select i1 %8, i64 20, i64 16
  %9 = zext i1 %8 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.mq = lshr i64 %i.mp, 3
end_hunk_42
begin_hunk_43_@_ZL35BrotliCompressFragmentTwoPassImpl15PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.mw, ptr %i.mr, align 1, !noalias !369
  %i.mx = add i64 %i.mk, 3                        ; 4 uses
  store i64 %i.mx, ptr %6, align 8, !tbaa !7, !alias.scope !369, !noalias !372
  %i.my = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
end_hunk_43
begin_hunk_44_@_ZL35BrotliCompressFragmentTwoPassImpl15PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.ne = shl nuw nsw i64 %i.my, %i.nd
  %i.nf = or i64 %i.ne, %i.nc
  store i64 %i.nf, ptr %i.na, align 1, !noalias !374
  %i.ng = add i64 %i.mx, %.0.i53                  ; 4 uses
  store i64 %i.ng, ptr %6, align 8, !tbaa !7, !alias.scope !374, !noalias !377
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
end_hunk_44
begin_hunk_45_@_ZL35BrotliCompressFragmentTwoPassImpl15PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.nv, ptr %i.nt, align 1, !noalias !389
  %i.nw = add i64 %i.nr, 1                        ; 3 uses
  store i64 %i.nw, ptr %6, align 8, !tbaa !7, !alias.scope !389, !noalias !392
  %10 = icmp ugt i64 %.037.i260, 65536            ; 2 uses
  %.0.i.i = select i1 %10, i64 20, i64 16
  %11 = zext i1 %10 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.nx = lshr i64 %i.nw, 3
end_hunk_45
begin_hunk_46_@_ZL35BrotliCompressFragmentTwoPassImpl15PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !9, !alias.scope !397, !noalias !394
  %i.oa = zext i8 %i.nz to i64
  %i.ob = and i64 %i.nw, 7
  %i.oc = shl nuw nsw i64 %11, %i.ob
  %i.od = or i64 %i.oc, %i.oa
  store i64 %i.od, ptr %i.ny, align 1, !noalias !394
  %i.oe = add i64 %i.nr, 3                        ; 4 uses
  store i64 %i.oe, ptr %6, align 8, !tbaa !7, !alias.scope !394, !noalias !397
  %i.of = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
end_hunk_46
begin_hunk_47_@_ZL35BrotliCompressFragmentTwoPassImpl15PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.ol = shl nuw nsw i64 %i.of, %i.ok
  %i.om = or i64 %i.ol, %i.oj
  store i64 %i.om, ptr %i.oh, align 1, !noalias !399
  %i.on = add i64 %i.oe, %.0.i.i                  ; 4 uses
  store i64 %i.on, ptr %6, align 8, !tbaa !7, !alias.scope !399, !noalias !402
  %i.oo = lshr i64 %i.on, 3
  %i.op = getelementptr inbounds nuw i8, ptr %7, i64 %i.oo ; 2 uses
end_hunk_47
begin_hunk_48_@_ZL35BrotliCompressFragmentTwoPassImpl16PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.pe, ptr %i.pc, align 1, !noalias !412
  %i.pf = add i64 %i.pa, 1                        ; 3 uses
  store i64 %i.pf, ptr %6, align 8, !tbaa !7, !alias.scope !412, !noalias !415
  %8 = icmp ugt i64 %.037.i281, 65536             ; 2 uses
  %.0.i55 = select i1 %8, i64 20, i64 16
  %9 = zext i1 %8 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.pg = lshr i64 %i.pf, 3
end_hunk_48
begin_hunk_49_@_ZL35BrotliCompressFragmentTwoPassImpl16PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.pm, ptr %i.ph, align 1, !noalias !417
  %i.pn = add i64 %i.pa, 3                        ; 4 uses
  store i64 %i.pn, ptr %6, align 8, !tbaa !7, !alias.scope !417, !noalias !420
  %i.po = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
end_hunk_49
begin_hunk_50_@_ZL35BrotliCompressFragmentTwoPassImpl16PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.pu = shl nuw nsw i64 %i.po, %i.pt
  %i.pv = or i64 %i.pu, %i.ps
  store i64 %i.pv, ptr %i.pq, align 1, !noalias !422
  %i.pw = add i64 %i.pn, %.0.i55                  ; 4 uses
  store i64 %i.pw, ptr %6, align 8, !tbaa !7, !alias.scope !422, !noalias !425
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
end_hunk_50
begin_hunk_51_@_ZL35BrotliCompressFragmentTwoPassImpl16PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.ql, ptr %i.qj, align 1, !noalias !437
  %i.qm = add i64 %i.qh, 1                        ; 3 uses
  store i64 %i.qm, ptr %6, align 8, !tbaa !7, !alias.scope !437, !noalias !440
  %10 = icmp ugt i64 %.037.i281, 65536            ; 2 uses
  %.0.i.i = select i1 %10, i64 20, i64 16
  %11 = zext i1 %10 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.qn = lshr i64 %i.qm, 3
end_hunk_51
begin_hunk_52_@_ZL35BrotliCompressFragmentTwoPassImpl16PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !9, !alias.scope !445, !noalias !442
  %i.qq = zext i8 %i.qp to i64
  %i.qr = and i64 %i.qm, 7
  %i.qs = shl nuw nsw i64 %11, %i.qr
  %i.qt = or i64 %i.qs, %i.qq
  store i64 %i.qt, ptr %i.qo, align 1, !noalias !442
  %i.qu = add i64 %i.qh, 3                        ; 4 uses
  store i64 %i.qu, ptr %6, align 8, !tbaa !7, !alias.scope !442, !noalias !445
  %i.qv = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
end_hunk_52
begin_hunk_53_@_ZL35BrotliCompressFragmentTwoPassImpl16PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.rb = shl nuw nsw i64 %i.qv, %i.ra
  %i.rc = or i64 %i.rb, %i.qz
  store i64 %i.rc, ptr %i.qx, align 1, !noalias !447
  %i.rd = add i64 %i.qu, %.0.i.i                  ; 4 uses
  store i64 %i.rd, ptr %6, align 8, !tbaa !7, !alias.scope !447, !noalias !450
  %i.re = lshr i64 %i.rd, 3
  %i.rf = getelementptr inbounds nuw i8, ptr %7, i64 %i.re ; 2 uses
end_hunk_53
begin_hunk_54_@_ZL35BrotliCompressFragmentTwoPassImpl17PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.pe, ptr %i.pc, align 1, !noalias !457
  %i.pf = add i64 %i.pa, 1                        ; 3 uses
  store i64 %i.pf, ptr %6, align 8, !tbaa !7, !alias.scope !457, !noalias !460
  %8 = icmp ugt i64 %.037.i281, 65536             ; 2 uses
  %.0.i55 = select i1 %8, i64 20, i64 16
  %9 = zext i1 %8 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %i.pg = lshr i64 %i.pf, 3
end_hunk_54
begin_hunk_55_@_ZL35BrotliCompressFragmentTwoPassImpl17PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.pm, ptr %i.ph, align 1, !noalias !462
  %i.pn = add i64 %i.pa, 3                        ; 4 uses
  store i64 %i.pn, ptr %6, align 8, !tbaa !7, !alias.scope !462, !noalias !465
  %i.po = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
end_hunk_55
begin_hunk_56_@_ZL35BrotliCompressFragmentTwoPassImpl17PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.pu = shl nuw nsw i64 %i.po, %i.pt
  %i.pv = or i64 %i.pu, %i.ps
  store i64 %i.pv, ptr %i.pq, align 1, !noalias !467
  %i.pw = add i64 %i.pn, %.0.i55                  ; 4 uses
  store i64 %i.pw, ptr %6, align 8, !tbaa !7, !alias.scope !467, !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
end_hunk_56
begin_hunk_57_@_ZL35BrotliCompressFragmentTwoPassImpl17PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  store i64 %i.ql, ptr %i.qj, align 1, !noalias !482
  %i.qm = add i64 %i.qh, 1                        ; 3 uses
  store i64 %i.qm, ptr %6, align 8, !tbaa !7, !alias.scope !482, !noalias !485
  %10 = icmp ugt i64 %.037.i281, 65536            ; 2 uses
  %.0.i.i = select i1 %10, i64 20, i64 16
  %11 = zext i1 %10 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  %i.qn = lshr i64 %i.qm, 3
end_hunk_57
begin_hunk_58_@_ZL35BrotliCompressFragmentTwoPassImpl17PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !9, !alias.scope !490, !noalias !487
  %i.qq = zext i8 %i.qp to i64
  %i.qr = and i64 %i.qm, 7
  %i.qs = shl nuw nsw i64 %11, %i.qr
  %i.qt = or i64 %i.qs, %i.qq
  store i64 %i.qt, ptr %i.qo, align 1, !noalias !487
  %i.qu = add i64 %i.qh, 3                        ; 4 uses
  store i64 %i.qu, ptr %6, align 8, !tbaa !7, !alias.scope !487, !noalias !490
  %i.qv = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
end_hunk_58
begin_hunk_59_@_ZL35BrotliCompressFragmentTwoPassImpl17PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
  %i.rb = shl nuw nsw i64 %i.qv, %i.ra
  %i.rc = or i64 %i.rb, %i.qz
  store i64 %i.rc, ptr %i.qx, align 1, !noalias !492
  %i.rd = add i64 %i.qu, %.0.i.i                  ; 4 uses
  store i64 %i.rd, ptr %6, align 8, !tbaa !7, !alias.scope !492, !noalias !495
  %i.re = lshr i64 %i.rd, 3
  %i.rf = getelementptr inbounds nuw i8, ptr %7, i64 %i.re ; 2 uses
end_hunk_59
