begin_hunk_0_@pm_strpbrk:bb.a
bb.aa:                                            ; preds = %bb.z
  %i.bv = load ptr, ptr %i.ao, align 8, !tbaa !43
  %i.bw = sub nsw i64 %3, %.03946.us.i
  %i.bx = tail call i64 %i.bv(ptr noundef nonnull %i.bq, i64 noundef %i.bw) #5 ; 3 uses
  %i.by = load ptr, ptr %i.bo, align 8, !tbaa !39 ; 3 uses
  %.not.i.us.i = icmp eq ptr %i.by, null
  %.pre53.i = load ptr, ptr %i.an, align 8, !tbaa !37 ; 3 uses
end_hunk_0
begin_hunk_1_@pm_strpbrk:bb.a
.preheader.us.i40:                                ; preds = %.lr.ph153
  %i.cj = add nuw i64 %i.cl, 1                    ; 3 uses
  %i.ck = icmp ult i64 %i.cj, %3
  br i1 %i.ck, label %.lr.ph153, label %.critedge.us.i42, !llvm.loop !44

.lr.ph153:                                        ; preds = %.preheader.us.i40.preheader, %.preheader.us.i40
  %i.cl = phi i64 [ %i.cj, %.preheader.us.i40 ], [ %i.cg, %.preheader.us.i40.preheader ] ; 4 uses
  %i.cm = load ptr, ptr %i.ao, align 8, !tbaa !43
  %i.cn = getelementptr i8, ptr %1, i64 %i.cl
  %i.co = sub nuw nsw i64 %3, %i.cl
  %i.cp = tail call i64 %i.cm(ptr noundef %i.cn, i64 noundef %i.co) #5
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %.preheader.us.i40, label %..critedge.us.i42_crit_edge, !llvm.loop !44

..critedge.us.i42_crit_edge:                      ; preds = %.lr.ph153
  br label %.critedge.us.i42, !llvm.loop !44

.critedge.us.i42:                                 ; preds = %.preheader.us.i40, %..critedge.us.i42_crit_edge, %.preheader.us.i40.preheader
  %.lcssa = phi i64 [ %i.cl, %..critedge.us.i42_crit_edge ], [ %i.cg, %.preheader.us.i40.preheader ], [ %i.cj, %.preheader.us.i40 ] ; 2 uses
end_hunk_1
begin_hunk_2_@pm_strpbrk:bb.a
bb.ag:                                            ; preds = %bb.af, %.critedge.us.i42, %bb.ae
  %.3.us.i39 = phi i64 [ %i.cv, %bb.af ], [ %i.ci, %bb.ae ], [ %.lcssa, %.critedge.us.i42 ] ; 2 uses
  %i.cw = icmp ult i64 %.3.us.i39, %3
  br i1 %i.cw, label %.split.us.i35, label %pm_strpbrk_utf8.exit, !llvm.loop !45

.split.i31:                                       ; preds = %bb.y, %bb.ak
  %.03946.i = phi i64 [ %.3.i34, %bb.ak ], [ 0, %bb.y ] ; 5 uses
end_hunk_2
begin_hunk_3_@pm_strpbrk:bb.a
.thread.i:                                        ; preds = %bb.ah
  %i.dd = load ptr, ptr %i.ao, align 8, !tbaa !43
  %i.de = sub nsw i64 %3, %.03946.i
  %i.df = tail call i64 %i.dd(ptr noundef nonnull %i.cx, i64 noundef %i.de) #5 ; 2 uses
  %.not4344.i = icmp eq i64 %i.df, 0
  br i1 %.not4344.i, label %.thread45.i, label %bb.aj

end_hunk_3
begin_hunk_4_@pm_strpbrk:bb.a
bb.ak:                                            ; preds = %.thread45.i, %bb.aj, %bb.ai
  %.3.i34 = phi i64 [ %i.dc, %bb.ai ], [ %i.dg, %bb.aj ], [ %i.dh, %.thread45.i ] ; 2 uses
  %i.di = icmp ult i64 %.3.i34, %3
  br i1 %i.di, label %.split.i31, label %pm_strpbrk_utf8.exit, !llvm.loop !45

bb.al:                                            ; preds = %bb.x
  br i1 %4, label %.split.i47, label %.split.us.i43
end_hunk_4
begin_hunk_5_@pm_strpbrk:bb.a
bb.am:                                            ; preds = %.split.us.i43
  %i.dn = add nuw nsw i64 %.03843.us.i, 1         ; 2 uses
  %exitcond.not.i46 = icmp eq i64 %i.dn, %3
  br i1 %exitcond.not.i46, label %pm_strpbrk_utf8.exit, label %.split.us.i43, !llvm.loop !46

.split.i47:                                       ; preds = %bb.al, %bb.au
  %.03843.i = phi i64 [ %.3.i49, %bb.au ], [ 0, %bb.al ] ; 5 uses
end_hunk_5
begin_hunk_6_@pm_strpbrk:bb.a
bb.ap:                                            ; preds = %bb.an
  %i.du = load ptr, ptr %i.ao, align 8, !tbaa !43
  %i.dv = sub nsw i64 %3, %.03843.i
  %i.dw = tail call i64 %i.du(ptr noundef nonnull %i.do, i64 noundef %i.dv) #5 ; 3 uses
  %i.dx = load ptr, ptr %i.bo, align 8, !tbaa !39 ; 3 uses
  %.not.i.i50 = icmp eq ptr %i.dx, null
  %.pre50.i = load ptr, ptr %i.an, align 8, !tbaa !37 ; 3 uses
end_hunk_6
begin_hunk_7_@pm_strpbrk:bb.a
.preheader.i:                                     ; preds = %.lr.ph150
  %i.ei = add nuw i64 %i.ek, 1                    ; 3 uses
  %i.ej = icmp ult i64 %i.ei, %3
  br i1 %i.ej, label %.lr.ph150, label %.critedge.i, !llvm.loop !47

.lr.ph150:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %i.ek = phi i64 [ %i.ei, %.preheader.i ], [ %i.ef, %.preheader.i.preheader ] ; 4 uses
  %i.el = load ptr, ptr %i.ao, align 8, !tbaa !43
  %i.em = getelementptr i8, ptr %1, i64 %i.ek
  %i.en = sub nuw nsw i64 %3, %i.ek
  %i.eo = tail call i64 %i.el(ptr noundef %i.em, i64 noundef %i.en) #5
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %.preheader.i, label %..critedge.i_crit_edge, !llvm.loop !47

..critedge.i_crit_edge:                           ; preds = %.lr.ph150
  br label %.critedge.i, !llvm.loop !47

.critedge.i:                                      ; preds = %.preheader.i, %..critedge.i_crit_edge, %.preheader.i.preheader
  %.lcssa146 = phi i64 [ %i.ek, %..critedge.i_crit_edge ], [ %i.ef, %.preheader.i.preheader ], [ %i.ei, %.preheader.i ] ; 2 uses
end_hunk_7
begin_hunk_8_@pm_strpbrk:bb.a
bb.au:                                            ; preds = %.critedge.i, %bb.at, %bb.ao
  %.3.i49 = phi i64 [ %i.dt, %bb.ao ], [ %i.eh, %bb.at ], [ %.lcssa146, %.critedge.i ] ; 2 uses
  %i.eu = icmp ult i64 %.3.i49, %3
  br i1 %i.eu, label %.split.i47, label %pm_strpbrk_utf8.exit, !llvm.loop !46

pm_strpbrk_utf8.exit.loopexit118.split.loop.exit: ; preds = %.split.us.i43
  %i.ev = getelementptr i8, ptr %1, i64 %.03843.us.i
end_hunk_8
begin_hunk_9_@__assert_fail
!41 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !17, i64 32, !30, i64 40}
!42 = !{!41, !30, i64 40}
!43 = !{!41, !15, i64 0}
!44 = distinct !{!44, !35}
!45 = distinct !{!45, !35}
!46 = distinct !{!46, !35}
!47 = distinct !{!47, !35}
end_hunk_9
