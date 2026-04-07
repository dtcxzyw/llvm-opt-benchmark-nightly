inline.NumInlined: 1556
inline.NumDeleted: 206
begin_hunk_0_@red_CRwTautologyCheck:bb.a
  br i1 %.not.i148.not, label %bb.q, label %bb.v

bb.q:                                             ; preds = %clause_LiteralAtom.exit
  %i.ip = tail call ptr @term_Copy(ptr noundef %.0.i206) #14
  %i.iq = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store ptr %i.ip, ptr %i.ir, align 8
  store ptr null, ptr %i.iq, align 8
  %i.is = tail call ptr @clause_Create(ptr noundef nonnull %i.iq, ptr noundef null, ptr noundef null, ptr noundef nonnull %.val.i, ptr noundef %.val57.i) #14 ; 6 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 76
  store i32 27, ptr %i.it, align 4
  br label %.lr.ph.i199
end_hunk_0
begin_hunk_1_@red_CRwTautologyCheck:bb.a
  store ptr null, ptr %i.b, align 8
  %.val62.i = load i32, ptr %i.is, align 8
  %.val65.i = load ptr, ptr %i.ic, align 8
  %i.jc = call fastcc i32 @red_SortSimplification(ptr noundef %.val65.i, ptr noundef nonnull %i.is, i32 noundef -1, i32 noundef %i.ih, ptr noundef nonnull %.val.i, ptr noundef %.val57.i, ptr noundef %i.b)
  %.not47.i = icmp eq i32 %i.jc, 0
  br i1 %.not47.i, label %bb.u, label %bb.r

end_hunk_1
begin_hunk_2_@red_CRwTautologyCheck:bb.a
  store ptr null, ptr %i.jj, align 8
  %.230.val.i = load ptr, ptr %.23055.i, align 8  ; 2 uses
  %.not43.i = icmp eq ptr %.230.val.i, null
  br i1 %.not43.i, label %._crit_edge58.i, label %.lr.ph57.i, !llvm.loop !106

._crit_edge58.i:                                  ; preds = %.lr.ph57.i, %bb.s
  %i.jk = getelementptr i8, ptr %.pre, i64 40     ; 2 uses
end_hunk_2
begin_hunk_3_@red_CRwTautologyCheck:bb.a
  br i1 %.not56.i, label %red_CRwLitTautologyCheck.exit.thread263, label %red_CRwLitTautologyCheck.exit.thread

red_CRwLitTautologyCheck.exit.thread:             ; preds = %.thread, %bb.t
  tail call void @clause_Delete(ptr noundef nonnull %i.is) #14
  br label %red_CRwLitTautologyCheck.exit.thread263

bb.u:                                             ; preds = %list_Delete.exit204
  tail call void @clause_Delete(ptr noundef nonnull %i.is) #14
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %clause_LiteralAtom.exit
end_hunk_3
begin_hunk_4_@red_CRwTautologyCheck:bb.a
  br i1 %.not49.i.not, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ju = tail call ptr @clause_CopyConstraint(ptr noundef %1) #14
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.jv = tail call ptr @clause_CopyAntecedentExcept(ptr noundef %1, i32 noundef %2) #14
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.044.i = phi ptr [ %i.ju, %bb.x ], [ %i.jv, %bb.y ]
  %i.jw = tail call ptr @term_Copy(ptr noundef %.0.i206) #14
  %i.jx = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store ptr %i.jw, ptr %i.jy, align 8
end_hunk_4
begin_hunk_5_@red_CRwTautologyCheck:bb.a
  br label %bb.ab

bb.aa:                                            ; preds = %bb.v
  %i.jz = tail call ptr @term_Copy(ptr noundef %.0.i206) #14
  %i.ka = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store ptr %i.jz, ptr %i.kb, align 8
  store ptr null, ptr %i.ka, align 8
  %i.kc = tail call ptr @clause_CopySuccedentExcept(ptr noundef %1, i32 noundef %2) #14
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1.i = phi ptr [ %.044.i, %bb.z ], [ %i.ka, %bb.aa ] ; 3 uses
  %.0.i = phi ptr [ %i.jx, %bb.z ], [ %i.kc, %bb.aa ] ; 3 uses
  %i.kd = tail call ptr @clause_Create(ptr noundef null, ptr noundef %.1.i, ptr noundef %.0.i, ptr noundef nonnull %.val.i, ptr noundef %.val57.i) #14 ; 2 uses
  store ptr %i.kd, ptr %i.a, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 76
  store i32 27, ptr %i.ke, align 4
end_hunk_5
begin_hunk_6_@red_CRwTautologyCheck:bb.a
  %indvars.iv.next.i176 = add nuw nsw i64 %indvars.iv.i175, 1
  %i.no = icmp samesign ult i64 %indvars.iv.i175, %i.mv
  %i.np = and i1 %i.no, %.157.i
  br i1 %i.np, label %.lr.ph.i174, label %._crit_edge.loopexit.i, !llvm.loop !107

._crit_edge.loopexit.i:                           ; preds = %bb.ao, %bb.am, %bb.ak
  %.157151.i = phi i1 [ %.157.i, %bb.ao ], [ false, %bb.am ], [ false, %bb.ak ]
end_hunk_6
begin_hunk_7_@red_CRwTautologyCheck:bb.a
  %indvars.iv.next142.i = add nsw i64 %indvars.iv141.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next142.i to i32
  %exitcond.not.i168 = icmp eq i32 %i.ky, %lftr.wideiv.i
  br i1 %exitcond.not.i168, label %._crit_edge137.i, label %bb.ac, !llvm.loop !108

red_LiteralIsDefinition.exit.thread.i.thread:     ; preds = %cont_BackTrack.exit.i
  tail call void @clause_ReplaceVariable(ptr noundef %i.kv, i32 noundef %.061.i, ptr noundef %.059.i) #14
end_hunk_7
begin_hunk_8_@red_CRwTautologyCheck:bb.a
  %indvars.iv.next142.i210 = add nsw i64 %indvars.iv141.i, 1 ; 2 uses
  %lftr.wideiv.i211 = trunc i64 %indvars.iv.next142.i210 to i32
  %exitcond.not.i168212 = icmp eq i32 %i.ky, %lftr.wideiv.i211
  br i1 %exitcond.not.i168212, label %._crit_edge137.i.thread.thread, label %.outer, !llvm.loop !108

._crit_edge137.i.thread.thread:                   ; preds = %red_LiteralIsDefinition.exit.thread.i.thread
  tail call void @clause_DeleteLiterals(ptr noundef %i.kv, ptr noundef nonnull %i.os, ptr noundef nonnull %.val.i, ptr noundef %.val57.i) #14
end_hunk_8
begin_hunk_9_@red_CRwTautologyCheck:bb.a
  store ptr null, ptr %i.b, align 8
  store ptr null, ptr %i.c, align 8
  %.val61.i = load i32, ptr %i.pc, align 8
  %i.pd = call fastcc i32 @red_SelectedStaticReductions(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, i32 noundef %6)
  %i.pe = load ptr, ptr %i.a, align 8             ; 10 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 76
  store i32 27, ptr %i.pf, align 4
end_hunk_9
begin_hunk_10_@red_CRwTautologyCheck:bb.a
  br i1 %.not224, label %.thread267, label %clause_IsEmptyClause.exit.thread

clause_IsEmptyClause.exit.thread:                 ; preds = %bb.aq, %bb.ar, %clause_IsEmptyClause.exit
  %i.pj = tail call i32 @cc_Tautology(ptr noundef nonnull %i.pe) #14
  %.not52.i = icmp eq i32 %i.pj, 0
  br i1 %.not52.i, label %.thread267, label %bb.as

end_hunk_10
begin_hunk_11_@red_CRwTautologyCheck:bb.a
  br i1 %.not53.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call fastcc void @clause_UpdateSplitDataFromPartner(ptr noundef nonnull %i.pe, ptr noundef nonnull %i.pk)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
end_hunk_11
begin_hunk_12_@red_CRwTautologyCheck:bb.a
  %.012.i.i = phi ptr [ %.012.val15.i.i, %.preheader.i277 ], [ %i.po, %bb.aw ] ; 2 uses
  %.012.val15.i.i = load ptr, ptr %.012.i.i, align 8 ; 2 uses
  %.not17.i.i = icmp eq ptr %.012.val15.i.i, null
  br i1 %.not17.i.i, label %bb.ax, label %.preheader.i277, !llvm.loop !109

bb.ax:                                            ; preds = %.preheader.i277
  store ptr %.046.i, ptr %.012.i.i, align 8
end_hunk_12
begin_hunk_13_@red_CRwTautologyCheck:bb.a
  %.0.i.i278 = phi ptr [ %i.po, %bb.ax ], [ %.046.i, %.lr.ph.i274 ], [ %i.po, %bb.aw ] ; 2 uses
  %.028.val36.i = load ptr, ptr %.02845.i, align 8 ; 2 uses
  %.not.i279 = icmp eq ptr %.028.val36.i, null
  br i1 %.not.i279, label %._crit_edge.i280, label %.lr.ph.i274, !llvm.loop !110

._crit_edge.i280:                                 ; preds = %list_Append.exit.i, %bb.av
  %.0.lcssa.i = phi ptr [ %.val37.i273, %bb.av ], [ %.0.i.i278, %list_Append.exit.i ] ; 2 uses
end_hunk_13
begin_hunk_14_@red_CRwTautologyCheck:bb.a
  %i.pz = tail call ptr @list_PointerDeleteElement(ptr noundef %.249.i, ptr noundef %i.py) #14 ; 2 uses
  %.129.val35.i = load ptr, ptr %.12948.i, align 8 ; 2 uses
  %.not42.i = icmp eq ptr %.129.val35.i, null
  br i1 %.not42.i, label %._crit_edge52.i, label %.lr.ph51.i, !llvm.loop !111

._crit_edge52.i:                                  ; preds = %.lr.ph51.i, %bb.az
  %.2.lcssa.i = phi ptr [ %i.pv, %bb.az ], [ %i.pz, %.lr.ph51.i ]
end_hunk_14
begin_hunk_15_@red_CRwTautologyCheck:bb.a
  store ptr null, ptr %i.qc, align 8
  %.230.val.i285 = load ptr, ptr %.23055.i284, align 8 ; 2 uses
  %.not43.i286 = icmp eq ptr %.230.val.i285, null
  br i1 %.not43.i286, label %._crit_edge58.i287, label %.lr.ph57.i283, !llvm.loop !106

._crit_edge58.i287:                               ; preds = %.lr.ph57.i283, %._crit_edge52.i
  %i.qd = getelementptr i8, ptr %i.pe, i64 40     ; 2 uses
end_hunk_15
begin_hunk_16_@red_CRwTautologyCheck:bb.a
  br label %red_CRwLitTautologyCheck.exit.thread265

red_CRwLitTautologyCheck.exit.thread265:          ; preds = %red_CRwCalculateAdditionalParents.exit, %bb.au
  tail call void @clause_DeleteClauseList(ptr noundef %.pre247) #14
  br label %red_CRwLitTautologyCheck.exit.thread263

.thread267:                                       ; preds = %clause_IsEmptyClause.exit.thread, %clause_IsEmptyClause.exit
  tail call void @clause_Delete(ptr noundef nonnull %i.pe) #14
  %.pre246 = load ptr, ptr %i.c, align 8
  tail call void @clause_DeleteClauseList(ptr noundef %.pre246) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
end_hunk_16
begin_hunk_17_@red_CRwTautologyCheck:bb.a
bb.bg:                                            ; preds = %bb.n, %bb.bf
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1 ; 2 uses
  %exitcond.not314 = icmp eq i64 %indvars.iv.next243, %i.if
  br i1 %exitcond.not314, label %._crit_edge236, label %bb.n, !llvm.loop !112

._crit_edge236:                                   ; preds = %bb.bg, %.thread267, %flag_TransferAllFlags.exit
  %.lcssa228 = phi i1 [ true, %flag_TransferAllFlags.exit ], [ false, %.thread267 ], [ true, %bb.bg ]
end_hunk_17
begin_hunk_18_@red_CRwTautologyCheck:bb.a
  store i32 %i.ta, ptr %i.tb, align 4
  %indvars.iv.next.i160.5 = add nuw nsw i64 %indvars.iv.i159, 6 ; 2 uses
  %exitcond.not.i161.5 = icmp eq i64 %indvars.iv.next.i160.5, 96
  br i1 %exitcond.not.i161.5, label %flag_TransferAllFlags.exit162, label %scalar.ph329, !llvm.loop !113

flag_TransferAllFlags.exit162:                    ; preds = %scalar.ph329, %vector.body331
  %i.tc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 3072), align 8 ; 2 uses
end_hunk_18
begin_hunk_19_@llvm.assume
!103 = distinct !{!103, !5}
!104 = distinct !{!104, !5, !105}
!105 = !{!"llvm.loop.isvectorized", i32 1}
!106 = distinct !{!106, !5}
!107 = distinct !{!107, !5}
!108 = distinct !{!108, !5}
!109 = distinct !{!109, !5}
!110 = distinct !{!110, !5}
!111 = distinct !{!111, !5}
!112 = distinct !{!112, !5}
!113 = distinct !{!113, !5, !105}
end_hunk_19
