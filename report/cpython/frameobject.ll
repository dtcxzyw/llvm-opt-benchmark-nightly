inline.NumInlined: 241
inline.NumDeleted: 78
begin_hunk_0_@PyFrame_GetLasti:bb.a
  %.val = load i64, ptr %i.b, align 8
  %i.e = and i64 %.val, 8589934590
  %i.f = ptrtoint ptr %i.d to i64
  %.neg4 = add i64 %i.f, 8589934384
  %1 = sub i64 %.neg4, %i.e
  %i.g = lshr i64 %1, 1
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = shl i32 %i.h, 1
  %.inv = icmp sgt i32 %i.h, -1
end_hunk_0
begin_hunk_1_@frame_lineno_set:bb.a
  %.val133.i = load i64, ptr %i.ce, align 8
  %i.ch = and i64 %.val133.i, 8589934590
  %i.ci = ptrtoint ptr %i.cg to i64
  %.neg151.i = add i64 %i.ci, 8589934384
  %4 = sub i64 %.neg151.i, %i.ch
  %sext.i = shl i64 %4, 31
  %i.cj = ashr i64 %sext.i, 32
  %i.ck = getelementptr [8 x i8], ptr %i.cc, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !107 ; 5 uses
end_hunk_1
begin_hunk_2_@mark_stacks:bb.a
  %.0180.in.lcssa248 = phi i16 [ %.0180.in249, %.lr.ph275 ], [ %.0180.in, %._crit_edge256.loopexit ] ; 2 uses
  %.0181.lcssa = phi i32 [ 0, %.lr.ph275 ], [ %i.am, %._crit_edge256.loopexit ]
  %.sroa.6.0.in.in.lcssa = phi i16 [ %i.ad, %.lr.ph275 ], [ %i.ai, %._crit_edge256.loopexit ]
  %.1174.lcssa = phi i32 [ %.0173273, %.lr.ph275 ], [ %i.ah, %._crit_edge256.loopexit ] ; 4 uses
  %.sroa.6.0.in.lcssa = phi i16 [ %.sroa.6.0.in250, %.lr.ph275 ], [ %.sroa.6.0.in, %._crit_edge256.loopexit ]
  %.0180.le = zext nneg i16 %.0180.in.lcssa248 to i32
  %i.an = zext nneg i16 %.sroa.6.0.in.lcssa to i32 ; 3 uses
end_hunk_2
begin_hunk_3_@mark_stacks:bb.a
  %i.aq = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !14
  %i.as = zext i8 %i.ar to i32
  %i.at = add i32 %.1174.lcssa, 1                 ; 2 uses
  %i.au = add i32 %i.at, %i.as                    ; 18 uses
  %i.av = icmp eq i64 %i.ac, -2
  br i1 %i.av, label %bb.x, label %bb.e, !llvm.loop !151

end_hunk_3
begin_hunk_4_@mark_stacks:bb.a
  br label %bb.x

bb.g:                                             ; preds = %bb.e
  %i.bc = add i32 %.1174.lcssa, 2
  %i.bd = add i32 %i.bc, %i.ao
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr [8 x i8], ptr %i.g, i64 %i.be
  store i64 %i.ac, ptr %i.bf, align 8, !tbaa !107
end_hunk_4
begin_hunk_5_@mark_stacks:bb.a
  br label %bb.x

bb.h:                                             ; preds = %bb.e
  %i.bi = add i32 %i.at, %i.ao
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr [8 x i8], ptr %i.g, i64 %i.bj
  store i64 %i.ac, ptr %i.bk, align 8, !tbaa !107
end_hunk_5
begin_hunk_6_@mark_stacks:bb.a
  %i.cf = sext i32 %i.au to i64
  %i.cg = getelementptr [8 x i8], ptr %i.g, i64 %i.cf
  store i64 %.0.i198, ptr %i.cg, align 8, !tbaa !107
  %i.ch = add i32 %.1174.lcssa, 2
  %i.ci = add i32 %i.ch, %i.ao
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr [8 x i8], ptr %i.g, i64 %i.cj
  store i64 %.0.i198, ptr %i.ck, align 8, !tbaa !107
end_hunk_6
