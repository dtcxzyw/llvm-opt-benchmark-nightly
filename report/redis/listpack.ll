begin_hunk_0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !19
  %.not43 = icmp eq ptr %3, null
  br i1 %.not43, label %.split.us, label %bb.h

.split.us:                                        ; preds = %bb.e, %bb.g
  %.02849.us = phi i32 [ %i.o, %bb.g ], [ 0, %bb.e ] ; 2 uses
end_hunk_0
begin_hunk_1
  %i.o = add i32 %.02849.us, 1                    ; 2 uses
  %.pr.us = load ptr, ptr %i.a, align 8, !tbaa !19 ; 2 uses
  %.not37.us = icmp eq ptr %.pr.us, null
  br i1 %.not37.us, label %.critedge, label %.split.us

.split.a:                                         ; preds = %bb.j
  %5 = add i32 %.02849, 1                         ; 2 uses
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not38.a = icmp eq ptr %.pr, null
  br i1 %.not38.a, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.e, %.split.a
  %.02849 = phi i32 [ %5, %.split.a ], [ 0, %bb.e ] ; 2 uses
  %6 = phi ptr [ %.pr, %.split.a ], [ %i.k, %bb.e ] ; 3 uses
  %7 = load i8, ptr %6, align 1, !tbaa !13
  %.not42.a = icmp eq i8 %7, -1
  br i1 %.not42.a, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %8 = call i32 @lpValidateNext(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %1)
  %.not44.a = icmp eq i32 %8, 0
  br i1 %.not44.a, label %.critedge46, label %bb.j

bb.j:                                             ; preds = %bb.i
  %9 = tail call i32 %3(ptr noundef nonnull %6, i32 noundef %i.j, ptr noundef %4) #23
  %.not37 = icmp eq i32 %9, 0
  br i1 %.not37, label %.critedge46, label %.split.a

.critedge:                                        ; preds = %bb.h, %.split.a, %.split.us, %bb.g
  %.us-phi = phi ptr [ %i.l, %.split.us ], [ null, %bb.g ], [ null, %.split.a ], [ %6, %bb.h ]
  %.us-phi50 = phi i32 [ %.02849.us, %.split.us ], [ %i.o, %bb.g ], [ %5, %.split.a ], [ %.02849, %bb.h ]
  %.not39 = icmp eq ptr %.us-phi, %i.f
  br i1 %.not39, label %bb.k, label %.critedge46

end_hunk_1
begin_hunk_2
  %spec.select = zext i1 %or.cond to i32
  br label %.critedge46

.critedge46:                                      ; preds = %bb.i, %bb.j, %bb.f, %bb.k, %.critedge
  %.2 = phi i32 [ 0, %.critedge ], [ %spec.select, %bb.k ], [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.l

end_hunk_2
begin_hunk_3
lpLength.exit:                                    ; preds = %bb.a, %._crit_edge.thread.i
  %.016.in.i = phi i32 [ %i.i, %bb.a ], [ %.015.lcssa25.i, %._crit_edge.thread.i ] ; 2 uses
  %.not = icmp eq i32 %.016.in.i, 0
  br i1 %.not, label %bb.e, label %.preheader52, !prof !47

.preheader52:                                     ; preds = %._crit_edge.i, %lpLength.exit
  %.016.in.i101 = phi i32 [ %.016.in.i, %lpLength.exit ], [ %i.p, %._crit_edge.i ]
end_hunk_3
begin_hunk_4
  %i.z = tail call i32 @rand() #23
  %i.aa = urem i32 %i.z, %.016.in.i101
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = trunc nuw i64 %indvars.iv to i32
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !51

.preheader:                                       ; preds = %lpFirst.exit, %lpGetValue.exit
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %lpGetValue.exit ], [ 0, %lpFirst.exit ] ; 2 uses
  %.03070 = phi ptr [ %.1.lcssa, %lpGetValue.exit ], [ %.0.i, %lpFirst.exit ] ; 2 uses
  %.03268 = phi i32 [ %.133.lcssa, %lpGetValue.exit ], [ 0, %lpFirst.exit ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv77 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !48 ; 3 uses
  %i.ag = icmp ult i32 %.03268, %i.af
  br i1 %i.ag, label %.lr.ph65, label %lpGetValue.exit

end_hunk_4
begin_hunk_5
  %.0.i39 = phi ptr [ null, %lpSkip.exit.i ], [ %i.bk, %lpDecodeBacklen.exit ] ; 2 uses
  %i.eq = add nuw i32 %.13362, 1                  ; 2 uses
  %exitcond76.not = icmp eq i32 %i.eq, %i.af
  br i1 %exitcond76.not, label %lpGetValue.exit, label %.lr.ph65, !llvm.loop !52

lpGetValue.exit:                                  ; preds = %lpNext.exit, %.preheader
  %.133.lcssa = phi i32 [ %.03268, %.preheader ], [ %i.af, %lpNext.exit ]
  %.1.lcssa = phi ptr [ %.03070, %.preheader ], [ %.0.i39, %lpNext.exit ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.et = call ptr @lpGet(ptr noundef %.1.lcssa, ptr noundef nonnull %i.a, ptr noundef null) ; 2 uses
  %.not.i40 = icmp eq ptr %i.et, null             ; 2 uses
end_hunk_5
begin_hunk_6
  store i64 %spec.select51, ptr %i.ez, align 8, !tbaa !37
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %i.d
  br i1 %exitcond81.not, label %._crit_edge71, label %.preheader, !llvm.loop !53
}

; Function Attrs: nofree
end_hunk_6
begin_hunk_7

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  tail call void @qsort(ptr noundef %i.e, i64 noundef %i.c, i64 noundef 8, ptr noundef nonnull @uintCompare) #23
  %i.t = load i32, ptr %i.e, align 4, !tbaa !54   ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = tail call ptr @lpSeek(ptr noundef nonnull %0, i64 noundef %i.u) ; 2 uses
  %i.w = icmp ne ptr %i.v, null
end_hunk_7
begin_hunk_8
  %i.ac = urem i32 %i.ab, %i.s
  %i.ad = mul i32 %i.ac, %4
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = trunc nuw i64 %indvars.iv to i32
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !57

.loopexit:                                        ; preds = %lpNext.exit
  %i.ah = icmp ne ptr %.0.i, null
  %i.ai = icmp ult i32 %.151.lcssa, %1
  %i.aj = and i1 %i.ai, %i.ah
  br i1 %i.aj, label %bb.h, label %._crit_edge133, !llvm.loop !58

bb.h:                                             ; preds = %.lr.ph132, %.loopexit
  %.049129 = phi ptr [ %i.v, %.lr.ph132 ], [ %.0.i, %.loopexit ] ; 13 uses
end_hunk_8
begin_hunk_9
.lr.ph113.split.us:                               ; preds = %.lr.ph113, %bb.aq
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %bb.aq ], [ %i.eg, %.lr.ph113 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv142 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !54
  %i.ej = icmp eq i32 %.052126, %i.ei
  br i1 %i.ej, label %bb.aq, label %.lr.ph120.preheader.loopexit.split.loop.exit

bb.aq:                                            ; preds = %.lr.ph113.split.us
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !56
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [24 x i8], ptr %2, i64 %i.em ; 3 uses
  store ptr %.0.i.i97, ptr %i.en, align 8, !tbaa !33
end_hunk_9
begin_hunk_10
  store i64 %.186, ptr %i.ep, align 8, !tbaa !37
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next143, %i.c
  br i1 %exitcond145.not, label %.lr.ph120.preheader, label %.lr.ph113.split.us, !llvm.loop !59

.lr.ph113.split:                                  ; preds = %.lr.ph113, %bb.ar
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %bb.ar ], [ %i.eg, %.lr.ph113 ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv138 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !54
  %i.es = icmp eq i32 %.052126, %i.er
  br i1 %i.es, label %bb.ar, label %.lr.ph120.preheader.loopexit170.split.loop.exit

bb.ar:                                            ; preds = %.lr.ph113.split
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !56
  %i.ev = sext i32 %i.eu to i64                   ; 2 uses
  %i.ew = getelementptr inbounds [24 x i8], ptr %2, i64 %i.ev ; 3 uses
  store ptr %.0.i.i97, ptr %i.ew, align 8, !tbaa !33
end_hunk_10
begin_hunk_11
  store i64 %.184, ptr %i.fb, align 8, !tbaa !37
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next139, %i.c
  br i1 %exitcond141.not, label %.lr.ph120.preheader, label %.lr.ph113.split, !llvm.loop !59

.lr.ph120.preheader.loopexit.split.loop.exit:     ; preds = %.lr.ph113.split.us
  %i.fc = trunc nuw i64 %indvars.iv142 to i32
end_hunk_11
begin_hunk_12
  %.0.i = phi ptr [ null, %lpSkip.exit.i ], [ %i.gi, %lpDecodeBacklen.exit ] ; 3 uses
  %i.jo = add nuw nsw i32 %.0119, 1
  %exitcond146.not = icmp eq i32 %.0119, %i.aa
  br i1 %exitcond146.not, label %.loopexit, label %.lr.ph120, !llvm.loop !60

._crit_edge133:                                   ; preds = %.loopexit, %._crit_edge
  tail call void @zfree(ptr noundef nonnull %i.e) #23
end_hunk_12
begin_hunk_13
  %i.ef = icmp samesign ult i64 %indvars.iv.next, %i.y
  %i.eg = icmp ne ptr %i.ec, null
  %i.eh = and i1 %i.eg, %i.ef
  br i1 %i.eh, label %bb.i, label %._crit_edge.loopexit, !llvm.loop !61

._crit_edge.loopexit:                             ; preds = %bb.au
  %i.ei = trunc nuw i64 %indvars.iv.next to i32
end_hunk_13
begin_hunk_14
  %i.w = icmp ult i32 %.028.be, %.016.in.i
  %i.x = icmp ne ptr %i.v, null
  %i.y = and i1 %i.w, %i.x
  br i1 %i.y, label %bb.g, label %.loopexit, !llvm.loop !62

bb.h:                                             ; preds = %bb.g
  %i.z = sub i32 %.016.in.i, %.02837
end_hunk_14
begin_hunk_15
  %.0.i.i = phi ptr [ %i.bo, %bb.x ], [ %i.by, %bb.z ], [ %i.cd, %bb.ab ], [ %i.c, %bb.am ] ; 2 uses
  %i.dk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23) ; 0 uses
  %i.dl = icmp sgt i64 %.037, 40
  %i.dm = load ptr, ptr @stdout, align 8, !tbaa !63 ; 2 uses
  br i1 %i.dl, label %bb.ao, label %bb.ar

bb.an:                                            ; preds = %lpEncodeBacklenBytes.exit, %bb.an
end_hunk_15
begin_hunk_16
  %i.ds = add i32 %.045, 1                        ; 2 uses
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = icmp samesign ugt i64 %i.be, %i.dt
  br i1 %i.du, label %bb.an, label %bb.w, !llvm.loop !65

bb.ao:                                            ; preds = %lpGet.exit
  %i.dv = call i64 @fwrite(ptr noundef nonnull %.0.i.i, i64 noundef 40, i64 noundef 1, ptr noundef %i.dm)
end_hunk_16
begin_hunk_17
  %i.ea = add nuw nsw i32 %.02947, 1
  %i.eb = call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.02848) ; 2 uses
  %.not = icmp eq ptr %i.eb, null
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.at, %lpLength.exit
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
end_hunk_17
begin_hunk_18
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
!47 = !{!"branch_weights", !"expected", i32 1215604, i32 2146268044}
!48 = !{!49, !10, i64 0}
!49 = !{!"pick", !10, i64 0, !10, i64 4}
!50 = !{!49, !10, i64 4}
!51 = distinct !{!51, !15}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15}
!54 = !{!55, !10, i64 0}
!55 = !{!"", !10, i64 0, !10, i64 4}
!56 = !{!55, !10, i64 4}
!57 = distinct !{!57, !15}
!58 = distinct !{!58, !15}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !15}
!61 = distinct !{!61, !15}
!62 = distinct !{!62, !15}
!63 = !{!64, !64, i64 0}
!64 = !{!"p1 _ZTS8_IO_FILE", !21, i64 0}
!65 = distinct !{!65, !15}
!66 = distinct !{!66, !15}
end_hunk_18
