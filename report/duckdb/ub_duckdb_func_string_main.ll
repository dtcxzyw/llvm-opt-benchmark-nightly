begin_hunk_0
  %.0.copyload.i.i = load i16, ptr %2, align 1    ; 2 uses
  %i.k = and i16 %.0.copyload.i.i, 255
  %i.l = zext nneg i16 %i.k to i32
  %invariant.op257 = sub i64 1, %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i
end_hunk_0
begin_hunk_1
  br label %_ZN6duckdb12_GLOBAL__N_18ContainsItNS0_15ContainsAlignedEEEmPKhmS4_mm.exit

bb.g:                                             ; preds = %bb.e
  %i.r = add i64 %i.p, %invariant.op257           ; 2 uses
  %.not36.i = icmp ult i64 %i.r, %i.j
  br i1 %.not36.i, label %bb.d, label %_ZN6duckdb12_GLOBAL__N_18ContainsItNS0_15ContainsAlignedEEEmPKhmS4_mm.exit, !llvm.loop !1855

end_hunk_1
begin_hunk_2
  %i.u = and i16 %.0.copyload.i.i46, 255
  %i.v = zext nneg i16 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 2
  %invariant.op256 = sub i64 1, %i.e
  br label %bb.i

bb.i:                                             ; preds = %.thread.i, %.lr.ph.i45
end_hunk_2
begin_hunk_3

bb.j:                                             ; preds = %bb.i
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %.0.copyload.i39.i = load i16, ptr %i.z, align 1
  %i.ab = icmp eq i16 %.0.copyload.i.i46, %.0.copyload.i39.i
  br i1 %i.ab, label %bb.k, label %.thread.i
end_hunk_3
begin_hunk_4
  br i1 %.not49.i, label %.thread45.loopexit.split.loop.exit.i, label %.thread.i

.thread.i:                                        ; preds = %bb.k, %bb.j
  %i.af = add i64 %i.aa, %invariant.op256         ; 2 uses
  %.not36.i48 = icmp ult i64 %i.af, %i.t
  br i1 %.not36.i48, label %bb.i, label %_ZN6duckdb12_GLOBAL__N_18ContainsItNS0_15ContainsAlignedEEEmPKhmS4_mm.exit, !llvm.loop !1856

end_hunk_4
begin_hunk_5
  %i.ai = add i64 %i.h, -3                        ; 2 uses
  %.0.copyload.i.i51 = load i32, ptr %2, align 1  ; 2 uses
  %i.aj = and i32 %.0.copyload.i.i51, 255
  %invariant.op255 = sub i64 1, %i.e
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %.lr.ph.i50
end_hunk_5
begin_hunk_6
  br label %_ZN6duckdb12_GLOBAL__N_18ContainsItNS0_15ContainsAlignedEEEmPKhmS4_mm.exit

bb.p:                                             ; preds = %bb.n
  %i.ap = add i64 %i.an, %invariant.op255         ; 2 uses
  %.not36.i56 = icmp ult i64 %i.ap, %i.ai
  br i1 %.not36.i56, label %bb.m, label %_ZN6duckdb12_GLOBAL__N_18ContainsItNS0_15ContainsAlignedEEEmPKhmS4_mm.exit, !llvm.loop !1857

end_hunk_6
begin_hunk_7
  %.0.copyload.i.i59 = load i32, ptr %2, align 1  ; 2 uses
  %i.as = and i32 %.0.copyload.i.i59, 255
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4
  %invariant.op254 = sub i64 1, %i.e
  br label %bb.r

bb.r:                                             ; preds = %.thread.i63, %.lr.ph.i60
end_hunk_7
begin_hunk_8

bb.s:                                             ; preds = %bb.r
  %i.ax = ptrtoint ptr %i.aw to i64               ; 2 uses
  %.0.copyload.i39.i62 = load i32, ptr %i.aw, align 1
  %i.ay = icmp eq i32 %.0.copyload.i.i59, %.0.copyload.i39.i62
  br i1 %i.ay, label %.preheader.i.preheader, label %.thread.i63
end_hunk_8
begin_hunk_9
  br i1 %i.bc, label %.thread45.loopexit.split.loop.exit.i67, label %.thread.i63

.thread.i63:                                      ; preds = %.preheader.i.preheader, %bb.s
  %i.bd = add i64 %i.ax, %invariant.op254         ; 2 uses
  %.not36.i64 = icmp ult i64 %i.bd, %i.ar
  br i1 %.not36.i64, label %bb.r, label %_ZN6duckdb12_GLOBAL__N_18ContainsItNS0_15ContainsAlignedEEEmPKhmS4_mm.exit, !llvm.loop !1858

end_hunk_9
begin_hunk_10
  %i.bh = and i32 %.0.copyload.i.i69, 255
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 5
  %invariant.op253 = sub i64 1, %i.e
  br label %bb.u

bb.u:                                             ; preds = %.thread.i75, %.lr.ph.i71
end_hunk_10
begin_hunk_11

bb.v:                                             ; preds = %bb.u
  %i.bn = ptrtoint ptr %i.bm to i64               ; 2 uses
  %.0.copyload.i39.i74 = load i32, ptr %i.bm, align 1
  %i.bo = icmp eq i32 %.0.copyload.i.i69, %.0.copyload.i39.i74
  br i1 %i.bo, label %.preheader.i78.preheader, label %.thread.i75
end_hunk_11
begin_hunk_12
  br i1 %.not49.i82, label %.thread45.loopexit.split.loop.exit.i83, label %.thread.i75

.thread.i75:                                      ; preds = %.preheader.i78.preheader, %bb.v
  %i.bx = add i64 %i.bn, %invariant.op253         ; 2 uses
  %.not36.i76 = icmp ult i64 %i.bx, %i.bg
  br i1 %.not36.i76, label %bb.u, label %_ZN6duckdb12_GLOBAL__N_18ContainsItNS0_15ContainsAlignedEEEmPKhmS4_mm.exit, !llvm.loop !1858

end_hunk_12
begin_hunk_13
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 6
  %invariant.op252 = sub i64 1, %i.e
  br label %bb.x

bb.x:                                             ; preds = %.thread.i92, %.lr.ph.i88
end_hunk_13
begin_hunk_14

bb.y:                                             ; preds = %bb.x
  %i.ci = ptrtoint ptr %i.ch to i64               ; 2 uses
  %.0.copyload.i39.i91 = load i32, ptr %i.ch, align 1
  %i.cj = icmp eq i32 %.0.copyload.i.i86, %.0.copyload.i39.i91
  br i1 %i.cj, label %.preheader.i95.preheader, label %.thread.i92
end_hunk_14
begin_hunk_15
  br i1 %.not49.i99, label %.thread45.loopexit.split.loop.exit.i100, label %.thread.i92

.thread.i92:                                      ; preds = %.preheader.i95.preheader, %bb.y
  %i.db = add i64 %i.ci, %invariant.op252         ; 2 uses
  %.not36.i93 = icmp ult i64 %i.db, %i.ca
  br i1 %.not36.i93, label %bb.x, label %_ZN6duckdb12_GLOBAL__N_18ContainsItNS0_15ContainsAlignedEEEmPKhmS4_mm.exit, !llvm.loop !1858

end_hunk_15
begin_hunk_16
  %.0.copyload.i.i103 = load i64, ptr %2, align 1 ; 2 uses
  %i.df = trunc i64 %.0.copyload.i.i103 to i32
  %i.dg = and i32 %i.df, 255
  %invariant.op = sub i64 1, %i.e
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ad, %.lr.ph.i102
end_hunk_16
begin_hunk_17
  br label %_ZN6duckdb12_GLOBAL__N_18ContainsItNS0_15ContainsAlignedEEEmPKhmS4_mm.exit

bb.ad:                                            ; preds = %bb.ab
  %i.dm = add i64 %i.dk, %invariant.op            ; 2 uses
  %.not36.i108 = icmp ult i64 %i.dm, %i.de
  br i1 %.not36.i108, label %bb.aa, label %_ZN6duckdb12_GLOBAL__N_18ContainsItNS0_15ContainsAlignedEEEmPKhmS4_mm.exit, !llvm.loop !1859

end_hunk_17
begin_hunk_18
  %i.dq = and i32 %i.dp, 255
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ds = add i64 %3, -8
  %invariant.op258 = sub i64 1, %i.e
  br label %bb.ag

bb.ag:                                            ; preds = %.thread.i118, %.lr.ph.i114
end_hunk_18
begin_hunk_19

bb.ah:                                            ; preds = %bb.ag
  %i.dw = ptrtoint ptr %i.dv to i64               ; 2 uses
  %.0.copyload.i39.i117 = load i64, ptr %i.dv, align 1
  %i.dx = icmp eq i64 %.0.copyload.i.i112, %.0.copyload.i39.i117
  br i1 %i.dx, label %bb.ai, label %.thread.i118
end_hunk_19
begin_hunk_20
  br i1 %.not49.i121, label %.thread45.loopexit.split.loop.exit.i122, label %.thread.i118

.thread.i118:                                     ; preds = %bb.ai, %bb.ah
  %i.dz = add i64 %i.dw, %invariant.op258         ; 2 uses
  %.not36.i119 = icmp ult i64 %i.dz, %i.do
  br i1 %.not36.i119, label %bb.ag, label %_ZN6duckdb12_GLOBAL__N_18ContainsItNS0_15ContainsAlignedEEEmPKhmS4_mm.exit, !llvm.loop !1860

end_hunk_20
