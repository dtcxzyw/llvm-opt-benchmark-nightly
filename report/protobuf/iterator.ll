inline.NumInlined: 28
inline.NumDeleted: 24
begin_hunk_0_@_upb_Message_NextBaseField_dont_copy_me__upb_internal_use_only:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %i.g = phi i64 [ %i.bk, %bb.p ], [ %i.e, %.lr.ph.preheader ] ; 8 uses
  %.sroa.10.058 = phi i64 [ %.sroa.10.1, %bb.p ], [ undef, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.057 = phi ptr [ %.sroa.0.1, %bb.p ], [ undef, %.lr.ph.preheader ] ; 2 uses
  %.val26 = load ptr, ptr %1, align 8, !tbaa !11
  %i.h = and i64 %i.g, 4294967295
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %.val26, i64 %i.h ; 10 uses
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %.val27 = load i16, ptr %i.j, align 4, !tbaa !14
  %i.k = zext i16 %.val27 to i64
end_hunk_0
begin_hunk_1_@_upb_Message_NextBaseField_dont_copy_me__upb_internal_use_only:bb.a

_upb_MiniTableField_DataCopy_dont_copy_me__upb_internal_use_only.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %lhsc.i.i = phi i8 [ %i.o, %bb.b ], [ %i.u, %bb.c ], [ %i.x, %bb.d ], [ %i.z, %bb.e ]
  %.sroa.0.1 = phi ptr [ %i.q, %bb.b ], [ %i.t, %bb.c ], [ %i.w, %bb.d ], [ %.sroa.0.0.copyload37, %bb.e ] ; 8 uses
  %.sroa.10.1 = phi i64 [ %.sroa.10.058, %bb.b ], [ %.sroa.10.058, %bb.c ], [ %.sroa.10.058, %bb.d ], [ %.sroa.10.0.copyload39, %bb.e ] ; 6 uses
  %i.aa = and i8 %.val28, 8
  %.not.i = icmp eq i8 %i.aa, 0                   ; 2 uses
  br i1 %.not.i, label %upb_MiniTableField_HasPresence.exit, label %bb.f
end_hunk_1
begin_hunk_2_@_upb_Message_NextBaseField_dont_copy_me__upb_internal_use_only:bb.a
  br i1 %i.bj, label %bb.p, label %.critedgesplit, !llvm.loop !19

.critedgesplit:                                   ; preds = %upb_Message_HasBaseField.exit, %bb.o, %bb.n, %bb.h
  %.sroa.0.1.lcssa.ph = phi ptr [ %.sroa.0.1, %upb_Message_HasBaseField.exit ], [ %.sroa.0.1, %bb.o ], [ %.sroa.0.1, %bb.n ], [ %.sroa.0.1, %bb.h ]
  %.sroa.10.1.lcssa.ph = phi i64 [ %.sroa.10.1, %upb_Message_HasBaseField.exit ], [ %.sroa.10.1, %bb.o ], [ %.sroa.10.1, %bb.n ], [ %.sroa.10.1, %bb.h ]
  %.lcssa110 = phi i64 [ %i.g, %upb_Message_HasBaseField.exit ], [ %i.g, %bb.o ], [ %i.g, %bb.n ], [ %i.g, %bb.h ]
  %.lcssa103.ph = phi ptr [ %i.i, %upb_Message_HasBaseField.exit ], [ %i.i, %bb.o ], [ %i.i, %bb.n ], [ %i.i, %bb.h ]
  br label %.critedge

..critedge_crit_edge:                             ; preds = %bb.m
  %.lcssa114 = phi i64 [ %i.g, %bb.m ]
  %split = phi ptr [ %.sroa.0.1, %bb.m ]
  %split110 = phi i64 [ %.sroa.10.1, %bb.m ]
  %.lcssa111 = phi i64 [ %i.g, %bb.m ]            ; 0 uses
  %split112 = phi ptr [ %i.i, %bb.m ]
  br label %.critedge

.critedge:                                        ; preds = %.critedgesplit, %..critedge_crit_edge
  %.sroa.0.1.lcssa = phi ptr [ %split, %..critedge_crit_edge ], [ %.sroa.0.1.lcssa.ph, %.critedgesplit ]
  %.sroa.10.1.lcssa = phi i64 [ %split110, %..critedge_crit_edge ], [ %.sroa.10.1.lcssa.ph, %.critedgesplit ]
  %.lcssa106 = phi i64 [ %.lcssa114, %..critedge_crit_edge ], [ %.lcssa110, %.critedgesplit ]
  %.lcssa103 = phi ptr [ %split112, %..critedge_crit_edge ], [ %.lcssa103.ph, %.critedgesplit ]
  store ptr %.lcssa103, ptr %2, align 8, !tbaa !11
  store ptr %.sroa.0.1.lcssa, ptr %3, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_2
