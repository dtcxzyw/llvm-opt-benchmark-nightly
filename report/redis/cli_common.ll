inline.NumInlined: 7
inline.NumDeleted: 1
begin_hunk_0_@parseRedisUri:bb.a

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.aj = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.ai, ptr noundef null, i32 noundef 10) #12, !inline_history !48
  %i.ak = trunc i64 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !49
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
end_hunk_0
begin_hunk_1_@parseRedisUri:bb.a

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ap = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.ao, ptr noundef null, i32 noundef 10) #12, !inline_history !48
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !49
  %i.as = getelementptr inbounds i8, ptr %i.an, i64 -1
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.m, %bb.p
  %.060 = phi ptr [ %i.am, %bb.p ], [ %i.ab, %bb.m ], [ %i.as, %bb.r ], [ %i.ab, %bb.q ]
  %.3 = phi ptr [ %i.ad, %bb.p ], [ %i.ad, %bb.m ], [ %.2, %bb.r ], [ %.2, %bb.q ] ; 2 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !50
  tail call void @hi_sdsfree(ptr noundef %i.at) #12
  %i.au = ptrtoint ptr %.060 to i64
  %i.av = ptrtoint ptr %.3 to i64
  %i.aw = add i64 %i.au, 1
  %i.ax = sub i64 %i.aw, %i.av
  %i.ay = tail call ptr @hi_sdsnewlen(ptr noundef nonnull %.3, i64 noundef %i.ax) #12
  store ptr %i.ay, ptr %2, align 8, !tbaa !50
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.k
end_hunk_1
begin_hunk_2_@parseRedisUri:bb.a
  br i1 %i.bb, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.az, ptr noundef null, i32 noundef 10) #12, !inline_history !48
  %i.bd = trunc i64 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !51
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.j, %bb.e, %bb.u
end_hunk_2
begin_hunk_3_@percentDecode:bb.a

bb.e:                                             ; preds = %bb.c
  %i.l = tail call ptr @__ctype_tolower_loc() #13
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03547, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !36
  %i.p = sext i8 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9
  %i.s = tail call ptr @__ctype_b_loc() #13
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54   ; 2 uses
  %sext = shl i32 %i.r, 24
  %i.u = ashr exact i32 %sext, 24                 ; 3 uses
  %i.v = sext i32 %i.u to i64
end_hunk_3
begin_hunk_4_@percentDecode:bb.a
  %.136 = phi ptr [ %i.at, %bb.h ], [ %i.au, %bb.i ] ; 2 uses
  %.1 = phi ptr [ %i.as, %bb.h ], [ %i.av, %bb.i ] ; 2 uses
  %i.aw = icmp ult ptr %.136, %i.b
  br i1 %i.aw, label %bb.b, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %bb.j, %bb.a
  %.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %.1, %bb.j ]
end_hunk_4
begin_hunk_5_@hi_sdsnewlen
; Function Attrs: nounwind uwtable
define dso_local void @freeCliConnInfo(ptr noundef readonly byval(%struct.cliConnInfo) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_5
begin_hunk_6_@escapeJsonString:bb.a
  %.1 = phi ptr [ %i.n, %bb.h ], [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.i, %bb.f ], [ %i.j, %bb.g ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01418, i64 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !57

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %.015.lcssa = phi ptr [ %i.a, %bb.a ], [ %.1, %bb.i ]
end_hunk_6
begin_hunk_7_@fwrite
!45 = !{!46, !18, i64 24}
!46 = !{!"cliConnInfo", !18, i64 0, !10, i64 8, !10, i64 12, !18, i64 16, !18, i64 24}
!47 = !{!46, !18, i64 16}
!48 = distinct !{null}
!49 = !{!46, !10, i64 8}
!50 = !{!46, !18, i64 0}
!51 = !{!46, !10, i64 12}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 int", !15, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"p1 short", !15, i64 0}
!56 = distinct !{!56, !43}
!57 = distinct !{!57, !43}
end_hunk_7
