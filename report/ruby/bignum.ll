inline.NumInlined: 999
inline.NumDeleted: 129
begin_hunk_0_@bary_pack:bb.a
  %.034.i394 = select i1 %i.lu, i64 %i.lx, i64 %5
  %.033.i395 = select i1 %i.lu, i64 0, i64 %i.lw
  %i.ly = trunc i64 %6 to i32
  %i.lz = and i32 %i.ly, 7                        ; 3 uses
  %i.ma = icmp ne i32 %i.lz, 0                    ; 3 uses
  %i.mb = lshr i64 %6, 3                          ; 2 uses
  %i.mc = sub i64 %5, %i.mb
end_hunk_0
begin_hunk_1_@bary_pack:bb.a
  %i.mg = add i64 %5, -1
  %.032.i397 = select i1 %i.mf, i64 %i.mg, i64 0
  %.0.i398 = select i1 %i.mf, i64 -1, i64 1       ; 3 uses
  %i.mh = sub nuw nsw i32 8, %i.lz
  %8 = lshr i32 255, %i.lz
  %i.mi = select i1 %i.ma, i32 %8, i32 0          ; 2 uses
  %i.mj = getelementptr i8, ptr %3, i64 %.035.i393
  %i.mk = getelementptr i8, ptr %3, i64 %.033.i395
  %.not613 = icmp eq i64 %spec.select.i396, 0
end_hunk_1
begin_hunk_2_@bary_pack:bb.a
  %i.nm = and i32 %i.mi, %i.nl
  %i.nn = add i32 %i.nm, %.1.lcssa                ; 2 uses
  %i.no = and i32 %i.nn, %i.mi
  %i.np = trunc nuw nsw i32 %i.no to i8
  store i8 %i.np, ptr %.0.lcssa, align 1, !tbaa !15
  %i.nq = ashr i32 %i.nn, %i.mh
  br label %bb.bu
end_hunk_2
begin_hunk_3_@bary_unpack_internal:bb.a
  %.034.i = select i1 %i.ep, i64 %i.es, i64 %4
  %.033.i = select i1 %i.ep, i64 0, i64 %i.er
  %i.et = trunc i64 %5 to i32
  %i.eu = and i32 %i.et, 7                        ; 3 uses
  %i.ev = icmp ne i32 %i.eu, 0                    ; 3 uses
  %i.ew = lshr i64 %5, 3
  %i.ex = sub i64 %4, %i.ew
end_hunk_3
begin_hunk_4_@bary_unpack_internal:bb.a
  %i.fb = add i64 %4, -1
  %.032.i = select i1 %i.fa, i64 %i.fb, i64 0
  %.0.i233 = select i1 %i.fa, i64 -1, i64 1
  %i.fc = getelementptr i8, ptr %2, i64 %.035.i
  %i.fd = getelementptr i8, ptr %2, i64 %.033.i
  %.not371 = icmp eq i64 %spec.select.i, 0
  %8 = lshr i32 255, %i.eu
  %9 = select i1 %i.ev, i32 %8, i32 0
  %invariant.op = sub i32 8, %i.eu
  br label %bb.an

bb.an:                                            ; preds = %integer_unpack_push_bits.exit238, %bb.am
end_hunk_4
begin_hunk_5_@bary_unpack_internal:bb.a
bb.ao:                                            ; preds = %._crit_edge
  %i.gn = load i8, ptr %.0.lcssa, align 1, !tbaa !15
  %i.go = zext i8 %i.gn to i32
  %i.gp = and i32 %9, %i.go
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = zext nneg i32 %.1284.lcssa to i64
  %i.gs = shl i64 %i.gq, %i.gr
  %i.gt = or i64 %i.gs, %.1287.lcssa              ; 2 uses
  %i.gu = add i32 %.1284.lcssa, %invariant.op     ; 3 uses
  %i.gv = icmp sgt i32 %i.gu, 31
  br i1 %i.gv, label %.lr.ph.i235, label %integer_unpack_push_bits.exit238

end_hunk_5
