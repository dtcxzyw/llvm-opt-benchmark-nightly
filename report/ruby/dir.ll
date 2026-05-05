inline.NumInlined: 217
inline.NumDeleted: 89
begin_hunk_0_@has_magic:bb.a

.loopexit27.split.us.us.loopexitsplit:            ; preds = %bb.c, %bb.c, %bb.c
  %.018.us.us.lcssa121 = phi ptr [ %.018.us.us, %bb.c ], [ %.018.us.us, %bb.c ], [ %.018.us.us, %bb.c ]
  %.ph.ph = phi i64 [ 1, %bb.c ], [ 1, %bb.c ], [ 1, %bb.c ]
  %.1.us.ph.ph = phi i32 [ 1, %bb.c ], [ 1, %bb.c ], [ 1, %bb.c ]
  br label %.loopexit27.split.us.us.loopexit

..loopexit27.split.us.us.loopexit_crit_edge:      ; preds = %bb.d
  %.018.us.us.lcssa124 = phi ptr [ %.018.us.us, %bb.d ]
  %.018.us.us.lcssa122 = phi ptr [ %.018.us.us, %bb.d ] ; 0 uses
  %split119 = phi i64 [ 2, %bb.d ]
  %split120 = phi i32 [ %.015.ph.us, %bb.d ]
  br label %.loopexit27.split.us.us.loopexit, !llvm.loop !155

.loopexit27.split.us.us.loopexit:                 ; preds = %.loopexit27.split.us.us.loopexitsplit, %..loopexit27.split.us.us.loopexit_crit_edge
  %.018.us.us.lcssa113 = phi ptr [ %.018.us.us.lcssa124, %..loopexit27.split.us.us.loopexit_crit_edge ], [ %.018.us.us.lcssa121, %.loopexit27.split.us.us.loopexitsplit ]
  %.ph = phi i64 [ %split119, %..loopexit27.split.us.us.loopexit_crit_edge ], [ %.ph.ph, %.loopexit27.split.us.us.loopexitsplit ]
  %.1.us.ph = phi i32 [ %split120, %..loopexit27.split.us.us.loopexit_crit_edge ], [ %.1.us.ph.ph, %.loopexit27.split.us.us.loopexitsplit ]
  br label %.loopexit27.split.us.us

.loopexit27.split.us.us:                          ; preds = %.loopexit27.split.us.us.loopexit, %.split.us.us
end_hunk_0
begin_hunk_1_@has_magic:bb.a
  br label %.outer.us, !llvm.loop !155

bb.b:                                             ; preds = %bb.d, %.outer.us
  %.018.us.us = phi ptr [ %i.j, %bb.d ], [ %.018.ph.us, %.outer.us ] ; 9 uses
  %i.h = icmp ult ptr %.018.us.us, %1
  br i1 %i.h, label %bb.c, label %.critedge.loopexit

end_hunk_1
begin_hunk_2_@fnmatch:bb.a

.preheader47:                                     ; preds = %.preheader47.preheader, %.backedge
  %i.g = phi ptr [ %storemerge, %.backedge ], [ %2, %.preheader47.preheader ]
  %.promoted = phi ptr [ %i.ag, %.backedge ], [ %0, %.preheader47.preheader ] ; 5 uses
  %.031 = phi ptr [ %.132, %.backedge ], [ null, %.preheader47.preheader ] ; 3 uses
  %.0 = phi ptr [ %.0.be, %.backedge ], [ null, %.preheader47.preheader ] ; 3 uses
  %i.h = load i8, ptr %.promoted, align 1, !tbaa !20
end_hunk_2
begin_hunk_3_@fnmatch:bb.a
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.preheader, %bb.e
  %lsr.iv = phi ptr [ %scevgep, %.preheader46.preheader ], [ %scevgep80, %bb.e ] ; 5 uses
  %lsr.iv.a = phi ptr [ %4, %bb.e ], [ %.promoted, %.preheader46.preheader ]
  %4 = getelementptr i8, ptr %lsr.iv.a, i64 3     ; 4 uses
  %i.p = load i8, ptr %lsr.iv, align 1, !tbaa !20
  %i.q = icmp eq i8 %i.p, 42
  br i1 %i.q, label %bb.d, label %.critedgesplit

bb.d:                                             ; preds = %.preheader46
  %scevgep81 = getelementptr i8, ptr %lsr.iv, i64 1
  %i.r = load i8, ptr %scevgep81, align 1, !tbaa !20
  %i.s = icmp eq i8 %i.r, 42
  br i1 %i.s, label %bb.e, label %..critedge_crit_edge

bb.e:                                             ; preds = %bb.d
  %scevgep82 = getelementptr i8, ptr %lsr.iv, i64 2
  %i.t = load i8, ptr %scevgep82, align 1, !tbaa !20
  %i.u = icmp eq i8 %i.t, 47
  %scevgep80 = getelementptr i8, ptr %lsr.iv, i64 3
  br i1 %i.u, label %.preheader46, label %.critedgesplit, !llvm.loop !157

.critedgesplit:                                   ; preds = %bb.e, %.preheader46
  %lsr.iv.lcssa = phi ptr [ %4, %bb.e ], [ %4, %.preheader46 ]
  br label %.critedge

..critedge_crit_edge:                             ; preds = %bb.d
  %lsr.iv.lcssa81 = phi ptr [ %lsr.iv, %bb.d ]
  %lsr.iv.lcssa83 = phi ptr [ %4, %bb.d ]         ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedgesplit, %..critedge_crit_edge
  %.lcssa = phi ptr [ %lsr.iv.lcssa81, %..critedge_crit_edge ], [ %lsr.iv.lcssa, %.critedgesplit ] ; 2 uses
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !156
  br label %bb.f

end_hunk_3
