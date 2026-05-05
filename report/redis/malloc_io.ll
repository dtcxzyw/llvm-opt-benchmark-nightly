inline.NumInlined: 16
inline.NumDeleted: 6
begin_hunk_0_@je_malloc_strtoumax:bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %bb.h
  %.068 = phi i64 [ 0, %bb.h ], [ %i.ad, %bb.o ]  ; 4 uses
  %.3 = phi ptr [ %.2, %bb.h ], [ %i.ai, %bb.o ]  ; 7 uses
  %i.s = load i8, ptr %.3, align 1, !tbaa !13     ; 5 uses
  %i.t = add i8 %i.s, -48                         ; 3 uses
  %or.cond = icmp ult i8 %i.t, 10
end_hunk_0
begin_hunk_1_@je_malloc_strtoumax:bb.a
  br label %bb.i

.critedge7split:                                  ; preds = %bb.n, %bb.m, %bb.l
  %.3.lcssa153 = phi ptr [ %.3, %bb.n ], [ %.3, %bb.m ], [ %.3, %bb.l ]
  br label %.critedge7

..critedge7_crit_edge:                            ; preds = %bb.j
  %.3.lcssa154 = phi ptr [ %.3, %bb.j ]
  br label %.critedge7

.critedge7:                                       ; preds = %.critedge7split, %..critedge7_crit_edge
  %.068.lcssa = phi i64 [ %.068, %..critedge7_crit_edge ], [ %.068, %.critedge7split ] ; 2 uses
  %.3.lcssa = phi ptr [ %.3.lcssa154, %..critedge7_crit_edge ], [ %.3.lcssa153, %.critedge7split ] ; 2 uses
  %i.aj = sub nsw i64 0, %.068.lcssa
  %spec.select89 = select i1 %.165, i64 %i.aj, i64 %.068.lcssa
  %i.ak = icmp eq ptr %.3.lcssa, %.1
end_hunk_1
