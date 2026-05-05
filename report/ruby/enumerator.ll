inline.NumInlined: 658
inline.NumDeleted: 103
begin_hunk_0_@arith_seq_first:bb.a
  br i1 %or.cond.i38, label %.lr.ph219.i, label %.critedge.i, !llvm.loop !100

.critedge.i:                                      ; preds = %.lr.ph219.i
  %.lcssa118 = phi i64 [ %i.gl, %.lr.ph219.i ]    ; 2 uses
  %.lcssa116 = phi i1 [ %i.gn, %.lr.ph219.i ]
  %.lcssa = phi i1 [ %i.gp, %.lr.ph219.i ]
end_hunk_0
begin_hunk_1_@arith_seq_first:bb.a
  br label %.lr.ph225.i

.lr.ph225.i:                                      ; preds = %.lr.ph225.i.preheader, %.lr.ph225.i
  %lsr.iv129 = phi i64 [ %.0126218.i, %.lr.ph225.i.preheader ], [ %lsr.iv.next130, %.lr.ph225.i ]
  %.0123224.i = phi i64 [ %i.gu, %.lr.ph225.i ], [ %.0123224.i.ph, %.lr.ph225.i.preheader ] ; 2 uses
  %i.gt = tail call i64 @rb_ary_push(i64 noundef %i.gf, i64 noundef %.0123224.i) #16 ; 0 uses
  %i.gu = tail call i64 @rb_big_plus(i64 noundef %.0123224.i, i64 noundef %i.fv) #16
end_hunk_1
begin_hunk_2_@lazy_flat_map_proc:bb.a
  br label %bb.h

bb.h:                                             ; preds = %lazy_yielder_yield.exit, %bb.g
  %.0 = phi i64 [ 0, %bb.g ], [ %i.bn, %lazy_yielder_yield.exit ] ; 5 uses
  %i.ai = add i64 %.0, 1                          ; 2 uses
  %i.aj = load i64, ptr %.pre-phi, align 8, !tbaa !21 ; 4 uses
  %i.ak = and i64 %i.aj, 8192
end_hunk_2
begin_hunk_3_@lazy_flat_map_proc:bb.a

split.a:                                          ; preds = %rb_array_len.exit
  %.0.lcssa77 = phi i64 [ %.0, %rb_array_len.exit ]
  br label %bb.m

rb_array_len.exit.thread._crit_edge:              ; preds = %rb_array_len.exit.thread
  %.0.lcssa76 = phi i64 [ %.0, %rb_array_len.exit.thread ]
  br label %bb.m

bb.m:                                             ; preds = %split.a, %rb_array_len.exit.thread._crit_edge
  %.0.lcssa = phi i64 [ %.0.lcssa76, %rb_array_len.exit.thread._crit_edge ], [ %.0.lcssa77, %split.a ] ; 3 uses
  %.lcssa = phi i64 [ %i.aj, %rb_array_len.exit.thread._crit_edge ], [ %i.aj, %split.a ]
  %.not45 = icmp eq i32 %i.g, 0
  br i1 %.not45, label %bb.o, label %bb.n

end_hunk_3
