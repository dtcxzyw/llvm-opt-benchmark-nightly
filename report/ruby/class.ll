inline.NumInlined: 561
inline.NumDeleted: 126
begin_hunk_0_@do_include_modules_at:bb.a
  br i1 %.not393, label %.loopexit, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.h
  %5 = trunc nuw i32 %3 to i1                     ; 3 uses
  %i.al = getelementptr i8, ptr %i.n, i64 160     ; 2 uses
  %i.am = getelementptr i8, ptr %i.n, i64 24      ; 5 uses
  %i.an = icmp eq i64 %0, 0
end_hunk_0
begin_hunk_1_@do_include_modules_at:bb.a
  %.096395 = phi i64 [ 0, %.lr.ph400 ], [ %.399, %RCLASS_EXT_READABLE.exit351 ] ; 10 uses
  %.0100394 = phi i32 [ 0, %.lr.ph400 ], [ %.2102, %RCLASS_EXT_READABLE.exit351 ] ; 3 uses
  %i.as = icmp eq i64 %0, %.085399
  %i.at = icmp ne i64 %i.aj, %.085399
  %or.cond = select i1 %i.at, i1 true, i1 %5
  br i1 %or.cond, label %bb.j, label %.thread359

bb.j:                                             ; preds = %bb.i
end_hunk_1
begin_hunk_2_@do_include_modules_at:bb.a
bb.o:                                             ; preds = %.lr.ph, %RCLASS_EXT_READABLE.exit202
  %.095391 = phi i64 [ %.095387, %.lr.ph ], [ %.095, %RCLASS_EXT_READABLE.exit202 ] ; 4 uses
  %.087390 = phi i32 [ 0, %.lr.ph ], [ %.289.ph, %RCLASS_EXT_READABLE.exit202 ] ; 3 uses
  %.191389 = phi i1 [ %i.as, %.lr.ph ], [ %spec.select118, %RCLASS_EXT_READABLE.exit202 ]
  %i.bm = inttoptr i64 %.095391 to ptr            ; 14 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !19 ; 4 uses
  %i.bo = icmp ne i64 %i.aj, %.095391
  %or.cond3 = select i1 %i.bo, i1 true, i1 %5
  br i1 %or.cond3, label %bb.p, label %.thread359

bb.p:                                             ; preds = %bb.o
  %i.bp = trunc i64 %i.bn to i32
  %i.bq = and i32 %i.bp, 31
  %i.br = icmp eq i64 %.085399, %.095391
  %spec.select118 = select i1 %i.br, i1 true, i1 %.191389 ; 2 uses
  switch i32 %i.bq, label %bb.ac [
    i32 28, label %bb.q
    i32 2, label %bb.aa
end_hunk_2
begin_hunk_3_@do_include_modules_at:bb.a

bb.ab:                                            ; preds = %RCLASS_EXT_READABLE.exit182
  %i.df = icmp eq i32 %.087390, 0
  %or.cond5 = select i1 %i.df, i1 %spec.select118, i1 false
  %spec.select119 = select i1 %or.cond5, i64 %.095391, i64 %.085399
  br label %bb.ck

end_hunk_3
begin_hunk_4_@class_instance_method_list:bb.a

particular_class_p.exit.thread120:                ; preds = %RCLASS_EXT_READABLE.exit, %.lr.ph, %.preheader, %bb.d
  %.1 = phi i64 [ %2, %bb.d ], [ 0, %.preheader ], [ %.023123, %.lr.ph ], [ 0, %RCLASS_EXT_READABLE.exit ] ; 4 uses
  %6 = trunc nuw i32 %.022 to i1                  ; 2 uses
  br i1 %6, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %particular_class_p.exit.thread120
end_hunk_4
begin_hunk_5_@class_instance_method_list:bb.a
  %i.dz = and i64 %i.dy, 31
  %i.ea = icmp eq i64 %i.dz, 28
  %or.cond.not29 = and i1 %.not28, %i.ea
  %or.cond3 = or i1 %or.cond.not29, %6
  br i1 %or.cond3, label %bb.ai, label %add_instance_method_list.exit98._crit_edge

bb.ai:                                            ; preds = %add_instance_method_list.exit98
end_hunk_5
begin_hunk_6_@rb_obj_singleton_methods:bb.a

RCLASS_SINGLETON_P.exit39.thread:                 ; preds = %bb.p, %rbimpl_RB_TYPE_P_fastpath.exit.i38, %RCLASS_EXT_READABLE.exit79
  %.026 = phi i64 [ %i.cp, %RCLASS_EXT_READABLE.exit79 ], [ %.0.i36, %bb.p ], [ %.0.i36, %rbimpl_RB_TYPE_P_fastpath.exit.i38 ] ; 2 uses
  %4 = trunc nuw i32 %.0 to i1
  %i.cq = icmp ne i64 %.026, 0
  %or.cond = select i1 %4, i1 %i.cq, i1 false
  br i1 %or.cond, label %.preheader, label %.critedge
end_hunk_6
