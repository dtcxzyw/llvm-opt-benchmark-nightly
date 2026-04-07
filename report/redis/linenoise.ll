inline.NumInlined: 56
inline.NumDeleted: 18
begin_hunk_0_@linenoise:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 0, ptr %i.a, align 1, !tbaa !25
  %i.cq = load ptr, ptr %i.as, align 8, !tbaa !24
  call void %i.co(ptr noundef %i.cq, ptr noundef nonnull %1) #25, !inline_history !58
  %i.cr = load i64, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %bb.x, label %.preheader.i.i.i
end_hunk_0
begin_hunk_1_@linenoise:bb.a

bb.y:                                             ; preds = %.preheader.i.i.i
  %.sroa.3.0.copyload.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !19
  %.sroa.41.0.copyload.i.i.i = load i64, ptr %i.ax, align 8, !tbaa !59
  %.sroa.52.0.copyload.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !59
  %i.cy = load ptr, ptr %i.cg, align 8, !tbaa !13
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.03338.i.i.i
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !19 ; 2 uses
end_hunk_1
begin_hunk_2_@linenoise:bb.a
.preheader.i.i.i.backedge:                        ; preds = %bb.ad, %bb.ac
  %.be = phi i64 [ %.pre.pre.i.i, %bb.ad ], [ %i.di, %bb.ac ]
  %.03338.i.i.i.be = phi i64 [ %i.di, %bb.ad ], [ %i.dk, %bb.ac ]
  br label %.preheader.i.i.i, !llvm.loop !60

bb.ae:                                            ; preds = %bb.ab
  %i.dp = load i64, ptr %1, align 8, !tbaa !18
end_hunk_2
begin_hunk_3_@linenoise:bb.a
  %i.ef = add nuw i64 %.07.i.i.i, 1               ; 2 uses
  %i.eg = load i64, ptr %1, align 8, !tbaa !18
  %i.eh = icmp ult i64 %i.ef, %i.eg
  br i1 %i.eh, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !61

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %completeLine.exit.i.i
  %i.ei = load ptr, ptr %i.cg, align 8, !tbaa !13 ; 2 uses
end_hunk_3
begin_hunk_4_@linenoise:bb.a
  store i64 0, ptr %i.ay, align 8, !tbaa !21
  store i64 0, ptr %i.ax, align 8, !tbaa !30
  store i1 false, ptr @reverse_search_mode_enabled, align 4
  %i.fb = load ptr, ptr %i.cj, align 8, !tbaa !62
  store ptr %i.fb, ptr %i.au, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @search_result, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @search_result_friendly, i8 0, i64 4096, i1 false)
end_hunk_4
begin_hunk_5_@linenoise:bb.a
  store i64 0, ptr %i.ax, align 8, !tbaa !30
  store i1 true, ptr @reverse_search_mode_enabled, align 4
  %i.gb = load ptr, ptr %i.au, align 8, !tbaa !33
  store ptr %i.gb, ptr %i.cj, align 8, !tbaa !62
  %i.gc = select i1 %i.fy, ptr @.str.28, ptr @.str.29
  store ptr %i.gc, ptr %i.au, align 8, !tbaa !33
  call fastcc void @refreshLine(ptr noundef nonnull %3) #30
end_hunk_5
begin_hunk_6_@linenoise:bb.a
  store i64 0, ptr %i.ay, align 8, !tbaa !21
  store i64 0, ptr %i.ax, align 8, !tbaa !30
  store i1 false, ptr @reverse_search_mode_enabled, align 4
  %i.gd = load ptr, ptr %i.cj, align 8, !tbaa !62
  store ptr %i.gd, ptr %i.au, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @search_result, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @search_result_friendly, i8 0, i64 4096, i1 false)
end_hunk_6
begin_hunk_7_@linenoise:bb.a
  store i64 0, ptr %i.ay, align 8, !tbaa !21
  store i64 0, ptr %i.ax, align 8, !tbaa !30
  store i1 false, ptr @reverse_search_mode_enabled, align 4
  %i.gk = load ptr, ptr %i.cj, align 8, !tbaa !62
  store ptr %i.gk, ptr %i.au, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @search_result, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @search_result_friendly, i8 0, i64 4096, i1 false)
end_hunk_7
begin_hunk_8_@linenoiseHistoryAdd:bb.a
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #27 ; 3 uses
  store ptr %i.k, ptr @history_sensitive, align 8, !tbaa !63
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

end_hunk_8
begin_hunk_9_@linenoiseHistoryAdd:bb.a
  %i.y = load i32, ptr @history_len, align 4, !tbaa !7 ; 3 uses
  %i.z = load i32, ptr @history_max_len, align 4, !tbaa !7
  %i.aa = icmp eq i32 %i.y, %i.z
  %.pre = load ptr, ptr @history_sensitive, align 8, !tbaa !63 ; 3 uses
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
end_hunk_9
begin_hunk_10_@linenoiseHistorySetMaxLen:bb.a
  tail call void @free(ptr noundef %i.n) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !65

.critedge:                                        ; preds = %.lr.ph, %.preheader, %bb.f
  %.028 = phi i32 [ %.pre, %bb.f ], [ %0, %.preheader ], [ %0, %.lr.ph ] ; 2 uses
end_hunk_10
begin_hunk_11_@linenoiseHistorySetMaxLen:bb.a
  %i.s = sext i32 %.028 to i64                    ; 2 uses
  %i.t = shl nsw i64 %i.s, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.r, i64 %i.t, i1 false)
  %i.u = load ptr, ptr @history_sensitive, align 8, !tbaa !63 ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.q
  %i.w = shl nsw i64 %i.s, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr align 4 %i.v, i64 %i.w, i1 false)
  tail call void @free(ptr noundef nonnull %i.b) #25
  tail call void @free(ptr noundef %i.u) #25
  store ptr %i.e, ptr @history, align 8, !tbaa !44
  store ptr %i.h, ptr @history_sensitive, align 8, !tbaa !63
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.b
end_hunk_11
begin_hunk_12_@linenoiseHistorySave:bb.a
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %.pre14 = load ptr, ptr @history_sensitive, align 8, !tbaa !63
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
end_hunk_12
begin_hunk_13_@linenoiseHistorySave:bb.a
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.10, ptr noundef %i.o) #25 ; 0 uses
  %.pre = load ptr, ptr @history_sensitive, align 8, !tbaa !63
  %.pre15 = load i32, ptr @history_len, align 4, !tbaa !7
  br label %bb.d

end_hunk_13
begin_hunk_14_@linenoiseHistorySave:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = sext i32 %i.q to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %i.u = tail call i32 @fclose(ptr noundef nonnull %i.b) #30 ; 0 uses
end_hunk_14
begin_hunk_15_@linenoiseHistoryLoad:bb.a
  %i.g = call i32 @linenoiseHistoryAdd(ptr noundef nonnull %i.a, i32 noundef 0) #30 ; 0 uses
  %i.h = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 4096, ptr noundef nonnull %i.b) #30
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.i = call i32 @fclose(ptr noundef nonnull %i.b) #30 ; 0 uses
end_hunk_15
begin_hunk_16_@searchInHistory:bb.a
  store ptr %i.o, ptr %i.z, align 8, !tbaa !39
  %i.aa = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #26
  %i.ab = trunc i64 %i.aa to i32
  store i32 %i.ab, ptr %0, align 8, !tbaa !68
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.y, ptr %i.ac, align 8, !tbaa !41
  %i.ad = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
end_hunk_16
begin_hunk_17_@linenoiseAtExit:bb.a
  tail call void @free(ptr noundef %i.f) #25
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !69

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  tail call void @free(ptr noundef nonnull %i.b) #25
  %i.g = load ptr, ptr @history_sensitive, align 8, !tbaa !63
  tail call void @free(ptr noundef %i.g) #25
  br label %freeHistory.exit

end_hunk_17
begin_hunk_18_@disableReverseSearchMode:bb.a
bb.e:                                             ; preds = %.sink.split, %bb.c
  store i1 false, ptr @reverse_search_mode_enabled, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.g, ptr %i.h, align 8, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @search_result, i8 0, i64 4096, i1 false)
end_hunk_18
begin_hunk_19_@getCursorPosition:bb.a
bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31
  br i1 %exitcond.not, label %bb.d, label %.preheader, !llvm.loop !70

.preheader:                                       ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 4 uses
end_hunk_19
begin_hunk_20_@llvm.umin.i64
!55 = distinct !{!55, !37}
!56 = distinct !{!56, !37}
!57 = !{!22, !8, i64 0}
!58 = distinct !{null, null, null}
!59 = !{!15, !15, i64 0}
!60 = distinct !{!60, !37}
!61 = distinct !{!61, !37}
!62 = !{!22, !20, i64 24}
!63 = !{!64, !64, i64 0}
!64 = !{!"p1 int", !12, i64 0}
!65 = distinct !{!65, !37}
!66 = distinct !{!66, !37}
!67 = distinct !{!67, !37}
!68 = !{!40, !8, i64 0}
!69 = distinct !{!69, !37}
!70 = distinct !{!70, !37}
end_hunk_20
