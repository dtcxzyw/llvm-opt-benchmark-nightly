inline.NumInlined: 37
inline.NumDeleted: 10
begin_hunk_0_@_PyPreConfig_Read:bb.a
  %i.bh = phi i32 [ %.pre181, %bb.o ], [ %i.em, %.thread ]
  %i.bi = phi i32 [ %.pre179, %bb.o ], [ %i.aj, %.thread ]
  %i.bj = phi i1 [ false, %bb.o ], [ true, %.thread ]
  %.0104170 = phi i32 [ 0, %bb.o ], [ %.1105, %.thread ] ; 2 uses
  %i.bk = phi i32 [ %.pr, %bb.o ], [ %i.ek, %.thread ] ; 3 uses
  %i.bl = phi <4 x i32> [ %i.au, %bb.o ], [ %i.ah, %.thread ]
  %i.bm = phi <2 x i32> [ %i.av, %bb.o ], [ %i.aq, %.thread ]
end_hunk_0
begin_hunk_1_@_PyPreConfig_Read:bb.a
preconfig_read.exit:                              ; preds = %bb.at, %.thread13.i.i, %bb.ap
  %i.eg = load i32, ptr %i.al, align 4, !tbaa !64
  %i.eh = icmp eq i32 %i.eg, 0
  %7 = icmp ne i32 %.0104170, 0
  %or.cond = select i1 %i.eh, i1 true, i1 %7      ; 3 uses
  br i1 %or.cond, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %preconfig_read.exit
end_hunk_1
begin_hunk_2_@_PyPreConfig_Read:bb.a
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %preconfig_read.exit
  %.1105 = phi i32 [ %.0104170, %preconfig_read.exit ], [ 1, %bb.av ]
  %i.ej = icmp eq i32 %i.bk, -1
  %i.ek = load i32, ptr %i.ao, align 4, !tbaa !66 ; 4 uses
  br i1 %i.ej, label %bb.ax, label %bb.ay
end_hunk_2
