begin_hunk_0
  br i1 %.not219, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.0148218 = phi ptr [ %.35.a, %.loopexit ], [ %0, %bb.a ] ; 4 uses
  %.0158217 = phi ptr [ %.45, %.loopexit ], [ %2, %bb.a ] ; 67 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0148218, i64 1 ; 36 uses
  %i.d = load i8, ptr %.0148218, align 1, !tbaa !13 ; 3 uses
end_hunk_0
begin_hunk_1
bb.al:                                            ; preds = %bb.ak, %bb.f
  %.31189 = phi ptr [ %i.dc, %bb.ak ], [ %.0158217, %bb.f ] ; 2 uses
  %.31 = phi ptr [ %i.da, %bb.ak ], [ %i.c, %bb.f ] ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.31, i64 1
  %i.dd = load i8, ptr %.31, align 1, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %.31189, i64 1
  store i8 %i.dd, ptr %.31189, align 1, !tbaa !13
end_hunk_1
begin_hunk_2
  br label %.critedge

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %.32 = phi ptr [ %i.dm, %bb.ap ], [ %i.c, %bb.ao ] ; 2 uses
  %.0139 = phi i32 [ %i.dp, %bb.ap ], [ %i.dk, %bb.ao ] ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %.32, i64 1 ; 5 uses
  %i.dr = load i8, ptr %.32, align 1, !tbaa !13
  %i.ds = zext i8 %i.dr to i64                    ; 2 uses
  %i.dt = sub nuw nsw i64 %i.di, %i.ds            ; 2 uses
end_hunk_2
begin_hunk_3
  unreachable

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block, %bb.ax, %bb.bg, %bb.al
  %.45 = phi ptr [ %i.de, %bb.al ], [ %i.hu, %bb.bg ], [ %i.fp, %bb.ax ], [ %i.ej, %middle.block ], [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %i.gn, %.preheader ] ; 2 uses
  %.35.a = phi ptr [ %4, %bb.al ], [ %5, %bb.bg ], [ %5, %bb.ax ], [ %5, %middle.block ], [ %5, %.preheader ], [ %5, %.preheader.prol.loopexit ] ; 2 uses
  %i.hv = icmp ult ptr %.35.a, %i.a
  br i1 %i.hv, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.loopexit, %bb.a
end_hunk_3
begin_hunk_4
  %i.hy = sub i64 %i.hw, %i.hx
  br label %.critedge

.critedge:                                        ; preds = %bb.au, %bb.as, %bb.aq, %bb.an, %bb.c, %bb.e, %._crit_edge
  %.4147 = phi i64 [ %i.hy, %._crit_edge ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.an ], [ 0, %bb.aq ], [ 0, %bb.as ], [ 0, %bb.au ]
  ret i64 %.4147
}
end_hunk_4
