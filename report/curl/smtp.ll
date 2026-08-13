inline.NumInlined: 53
inline.NumDeleted: 25
begin_hunk_0_@smtp_perform_rcpt_to:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.05 = phi ptr [ @.str.7, %bb.f ], [ %i.m, %bb.g ], [ @.str.7, %bb.c ], [ @.str.7, %bb.e ], [ @.str.7, %bb.d ] ; 2 uses
  %strchr.i = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.e, i32 64) ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %strchr.i, ptr %i.n, align 8, !tbaa !95
  %.not33.i = icmp eq ptr %strchr.i, null
  br i1 %.not33.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %strchr.i, align 1, !tbaa !93
  %i.o = getelementptr inbounds nuw i8, ptr %strchr.i, i64 1
  store ptr %i.o, ptr %i.n, align 8, !tbaa !95
  %i.p = call i32 @Curl_idnconvert_hostname(ptr noundef nonnull %2) #7 ; 0 uses
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !95  ; 2 uses
  %.not14 = icmp eq ptr %.pre, null
  br i1 %.not14, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.59, ptr noundef nonnull %i.e, ptr noundef nonnull %.pre, ptr noundef nonnull %.05) #7
  br label %bb.k

.thread:                                          ; preds = %bb.h, %bb.i
  %i.r = call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.60, ptr noundef nonnull %i.e, ptr noundef nonnull %.05) #7
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %.0 = phi i32 [ %i.q, %bb.j ], [ %i.r, %.thread ] ; 2 uses
  %i.s = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  call void %i.s(ptr noundef nonnull %i.e) #7
  %.not15 = icmp eq i32 %.0, 0
  br i1 %.not15, label %bb.l, label %smtp_parse_address.exit

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !113  ; 2 uses
  %i.v = icmp ne i32 %i.u, 9
  %i.w = icmp ne ptr %0, null
  %or.cond4.i = and i1 %i.w, %i.v
  br i1 %or.cond4.i, label %bb.m, label %smtp_state.exit

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.y = load i64, ptr %i.x, align 1
  %i.z = and i64 %i.y, 536870912
  %.not.i16 = icmp eq i64 %i.z, 0
  br i1 %.not.i16, label %smtp_state.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !10 ; 2 uses
  %.not16.i = icmp eq ptr %i.ab, null
  br i1 %.not16.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !73
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8
  %i.ag = icmp sgt i32 %i.af, 0
  %or.cond.i = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond.i, label %bb.q, label %smtp_state.exit

bb.p:                                             ; preds = %bb.n
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_smtp, i64 8), align 8, !tbaa !73
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.q, label %smtp_state.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ah = zext i32 %i.u to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @smtp_state.names, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !78
  call void (ptr, ptr, ...) @Curl_trc_smtp(ptr noundef nonnull %0, ptr noundef nonnull @.str.39, ptr noundef %i.aj, ptr noundef nonnull @.str.35) #7
  br label %smtp_state.exit

smtp_state.exit:                                  ; preds = %bb.l, %bb.m, %bb.o, %bb.p, %bb.q
  store i32 9, ptr %i.t, align 8, !tbaa !113
  br label %smtp_parse_address.exit

smtp_parse_address.exit:                          ; preds = %bb.a, %bb.k, %smtp_state.exit
  %.011 = phi i32 [ %.0, %bb.k ], [ 0, %smtp_state.exit ], [ 27, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %.011
}

declare void @Curl_pgrsSetUploadSize(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Curl_xfer_setup_send(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @curlx_str_number(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @smtp_perform_auth(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = tail call ptr @Curl_conn_meta_get(ptr noundef %i.b, ptr noundef nonnull @.str) #7 ; 3 uses
  %i.d = tail call ptr @Curl_bufref_ptr(ptr noundef %2) #7 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not15 = icmp eq ptr %i.d, null
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.66, ptr noundef %1, ptr noundef nonnull %i.d) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.67, ptr noundef %1) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ 2, %bb.a ], [ %i.e, %bb.c ], [ %i.f, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @smtp_continue_auth(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = tail call ptr @Curl_conn_meta_get(ptr noundef %i.b, ptr noundef nonnull @.str) #7 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @Curl_bufref_ptr(ptr noundef %2) #7
  %i.e = tail call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.43, ptr noundef %i.d) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @smtp_cancel_auth(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = tail call ptr @Curl_conn_meta_get(ptr noundef %i.b, ptr noundef nonnull @.str) #7 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.68) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 3) i32 @smtp_get_message(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = tail call ptr @Curl_conn_meta_get(ptr noundef %i.b, ptr noundef nonnull @.str) #7 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = tail call ptr @curlx_dyn_ptr(ptr noundef nonnull %i.d) #7
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.g = load i64, ptr %i.f, align 8, !tbaa !144  ; 2 uses
  %i.h = icmp ugt i64 %i.g, 4
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %i.g, -4
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %.026 = phi ptr [ %i.j, %bb.c ], [ %i.l, %.critedge ] ; 5 uses
  %.0 = phi i64 [ %i.i, %bb.c ], [ %i.m, %.critedge ] ; 3 uses
  %i.k = load i8, ptr %.026, align 1, !tbaa !93
  switch i8 %i.k, label %.preheader [
    i8 32, label %.critedge
    i8 9, label %.critedge
  ]

.preheader:                                       ; preds = %bb.d
  %.not3233 = icmp eq i64 %.0, 0
  br i1 %.not3233, label %._crit_edge, label %.lr.ph

.critedge:                                        ; preds = %bb.d, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.026, i64 1
  %i.m = add i64 %.0, -1
  br label %bb.d, !llvm.loop !152

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.134 = phi i64 [ %3, %bb.e ], [ %.0, %.preheader ] ; 3 uses
  %2 = getelementptr i8, ptr %.026, i64 %.134
  %i.n = getelementptr i8, ptr %2, i64 -1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !93
  switch i8 %i.o, label %._crit_edge [
    i8 10, label %bb.e
    i8 13, label %bb.e
    i8 32, label %bb.e
    i8 9, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %3 = add i64 %.134, -1                          ; 2 uses
  %.not32 = icmp eq i64 %3, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !153

._crit_edge:                                      ; preds = %bb.e, %.lr.ph, %.preheader
  %.1.lcssa = phi i64 [ 0, %.preheader ], [ %.134, %.lr.ph ], [ 0, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.026, i64 %.1.lcssa
  store i8 0, ptr %i.p, align 1, !tbaa !93
  tail call void @Curl_bufref_set(ptr noundef %1, ptr noundef nonnull %.026, i64 noundef %.1.lcssa, ptr noundef null) #7
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call void @Curl_bufref_set(ptr noundef %1, ptr noundef nonnull @.str.7, i64 noundef 0, ptr noundef null) #7
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f, %bb.a
  %.027 = phi i32 [ 2, %bb.a ], [ 0, %bb.f ], [ 0, %._crit_edge ]
  ret i32 %.027
}

declare ptr @Curl_bufref_ptr(ptr noundef) local_unnamed_addr #2

declare void @Curl_bufref_set(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_sasl_parse_url_auth_option(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Curl_gethostname(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Curl_pp_pollset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Curl_pp_needs_flush(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !63, i64 4504}
!11 = !{!"Curl_easy", !5, i64 0, !12, i64 8, !5, i64 16, !5, i64 20, !9, i64 24, !13, i64 32, !5, i64 40, !5, i64 44, !14, i64 48, !19, i64 104, !19, i64 112, !20, i64 120, !21, i64 128, !24, i64 176, !25, i64 184, !33, i64 424, !44, i64 2200, !45, i64 2208, !46, i64 2216, !47, i64 2224, !50, i64 2784, !67, i64 4632, !68, i64 4640, !72, i64 4864}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 _ZTS11connectdata", !9, i64 0}
!14 = !{!"Curl_message", !15, i64 0, !18, i64 32}
!15 = !{!"Curl_llist_node", !16, i64 0, !9, i64 8, !17, i64 16, !17, i64 24}
!16 = !{!"p1 _ZTS10Curl_llist", !9, i64 0}
!17 = !{!"p1 _ZTS15Curl_llist_node", !9, i64 0}
!18 = !{!"CURLMsg", !5, i64 0, !9, i64 8, !6, i64 16}
!19 = !{!"p1 _ZTS10Curl_multi", !9, i64 0}
!20 = !{!"p1 _ZTS10Curl_share", !9, i64 0}
!21 = !{!"Curl_hash", !22, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !12, i64 32, !12, i64 40}
!22 = !{!"p2 _ZTS17Curl_hash_element", !23, i64 0}
!23 = !{!"any p2 pointer", !9, i64 0}
!24 = !{!"p1 _ZTS8PslCache", !9, i64 0}
!25 = !{!"SingleRequest", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !26, i64 40, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !6, i64 76, !6, i64 77, !5, i64 80, !27, i64 88, !28, i64 96, !29, i64 104, !12, i64 168, !12, i64 176, !32, i64 184, !32, i64 192, !6, i64 200, !32, i64 208, !32, i64 216, !32, i64 224, !6, i64 232, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235}
!26 = !{!"curltime", !12, i64 0, !5, i64 8}
!27 = !{!"p1 _ZTS12Curl_cwriter", !9, i64 0}
!28 = !{!"p1 _ZTS12Curl_creader", !9, i64 0}
!29 = !{!"bufq", !30, i64 0, !30, i64 8, !30, i64 16, !31, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !5, i64 56}
!30 = !{!"p1 _ZTS9buf_chunk", !9, i64 0}
!31 = !{!"p1 _ZTS9bufc_pool", !9, i64 0}
!32 = !{!"p1 omnipotent char", !9, i64 0}
!33 = !{!"UserDefined", !34, i64 0, !9, i64 8, !32, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !5, i64 48, !5, i64 52, !9, i64 56, !9, i64 64, !12, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !35, i64 320, !36, i64 328, !37, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !12, i64 368, !38, i64 376, !38, i64 576, !35, i64 776, !41, i64 784, !6, i64 786, !6, i64 787, !42, i64 788, !12, i64 792, !5, i64 800, !5, i64 804, !9, i64 808, !35, i64 816, !12, i64 824, !12, i64 832, !6, i64 840, !6, i64 841, !6, i64 842, !35, i64 848, !35, i64 856, !35, i64 864, !5, i64 872, !6, i64 880, !6, i64 1480, !5, i64 1544, !12, i64 1552, !12, i64 1560, !9, i64 1568, !5, i64 1576, !9, i64 1584, !9, i64 1592, !9, i64 1600, !9, i64 1608, !9, i64 1616, !12, i64 1624, !12, i64 1632, !12, i64 1640, !12, i64 1648, !12, i64 1656, !5, i64 1664, !5, i64 1668, !5, i64 1672, !9, i64 1680, !9, i64 1688, !12, i64 1696, !43, i64 1704, !9, i64 1712, !9, i64 1720, !35, i64 1728, !5, i64 1736, !41, i64 1740, !41, i64 1742, !41, i64 1744, !41, i64 1746, !41, i64 1748, !41, i64 1750, !41, i64 1752, !6, i64 1754, !6, i64 1755, !6, i64 1756, !6, i64 1757, !6, i64 1758, !6, i64 1759, !6, i64 1760, !6, i64 1761, !6, i64 1762, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1770, !5, i64 1770, !5, i64 1770}
!34 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!35 = !{!"p1 _ZTS10curl_slist", !9, i64 0}
!36 = !{!"p1 _ZTS13curl_httppost", !9, i64 0}
!37 = !{!"p1 _ZTS13curl_mimepart", !9, i64 0}
!38 = !{!"ssl_config_data", !39, i64 0, !12, i64 168, !9, i64 176, !9, i64 184, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 193, !5, i64 193, !5, i64 193}
!39 = !{!"ssl_primary_config", !32, i64 0, !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !32, i64 56, !32, i64 64, !32, i64 72, !32, i64 80, !32, i64 88, !32, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !32, i64 136, !32, i64 144, !32, i64 152, !5, i64 160, !6, i64 164, !6, i64 165, !5, i64 166, !5, i64 166, !5, i64 166, !5, i64 166, !5, i64 166}
!40 = !{!"p1 _ZTS9curl_blob", !9, i64 0}
!41 = !{!"short", !6, i64 0}
!42 = !{!"ssl_general_config", !5, i64 0}
!43 = !{!"p1 _ZTS8Curl_URL", !9, i64 0}
!44 = !{!"p1 _ZTS10CookieInfo", !9, i64 0}
!45 = !{!"p1 _ZTS4hsts", !9, i64 0}
!46 = !{!"p1 _ZTS10altsvcinfo", !9, i64 0}
!47 = !{!"Progress", !26, i64 0, !12, i64 16, !48, i64 24, !48, i64 128, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !26, i64 328, !26, i64 344, !26, i64 360, !26, i64 376, !26, i64 392, !6, i64 408, !6, i64 456, !5, i64 552, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556}
!48 = !{!"pgrs_dir", !12, i64 0, !12, i64 8, !12, i64 16, !49, i64 24}
!49 = !{!"Curl_rlimit", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !26, i64 56, !5, i64 72}
!50 = !{!"UrlState", !26, i64 0, !12, i64 16, !12, i64 24, !51, i64 32, !35, i64 64, !12, i64 72, !52, i64 80, !52, i64 88, !5, i64 96, !5, i64 100, !9, i64 104, !32, i64 112, !53, i64 120, !53, i64 192, !55, i64 264, !55, i64 280, !56, i64 296, !9, i64 304, !9, i64 312, !9, i64 320, !9, i64 328, !32, i64 336, !5, i64 344, !26, i64 352, !57, i64 368, !59, i64 424, !6, i64 456, !32, i64 1296, !32, i64 1304, !12, i64 1312, !5, i64 1320, !5, i64 1324, !5, i64 1328, !6, i64 1332, !12, i64 1368, !9, i64 1376, !9, i64 1384, !43, i64 1392, !60, i64 1400, !61, i64 1464, !61, i64 1488, !35, i64 1512, !37, i64 1520, !37, i64 1528, !12, i64 1536, !51, i64 1544, !59, i64 1576, !6, i64 1608, !62, i64 1704, !35, i64 1712, !63, i64 1720, !64, i64 1728, !54, i64 1776, !65, i64 1784, !66, i64 1832, !41, i64 1840, !6, i64 1842, !6, i64 1843, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846}
!51 = !{!"dynbuf", !32, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!52 = !{!"p1 _ZTS9Curl_peer", !9, i64 0}
!53 = !{!"digestdata", !54, i64 0, !52, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !32, i64 56, !5, i64 64, !6, i64 68, !5, i64 69, !5, i64 69}
!54 = !{!"p1 _ZTS10Curl_creds", !9, i64 0}
!55 = !{!"auth", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 12}
!56 = !{!"p1 _ZTS17Curl_resolv_async", !9, i64 0}
!57 = !{!"Curl_tree", !58, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !26, i64 32, !9, i64 48}
!58 = !{!"p1 _ZTS9Curl_tree", !9, i64 0}
!59 = !{!"Curl_llist", !17, i64 0, !17, i64 8, !9, i64 16, !12, i64 24}
!60 = !{!"urlpieces", !32, i64 0, !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !32, i64 56}
!61 = !{!"bufref", !9, i64 0, !32, i64 8, !12, i64 16}
!62 = !{!"p1 _ZTS17Curl_header_store", !9, i64 0}
!63 = !{!"p1 _ZTS13curl_trc_feat", !9, i64 0}
!64 = !{!"store_netrc", !51, i64 0, !32, i64 32, !5, i64 40}
!65 = !{!"dynamically_allocated_data", !32, i64 0, !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40}
!66 = !{!"http_negotiation", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !5, i64 4, !5, i64 4, !5, i64 4, !5, i64 4}
!67 = !{!"p1 _ZTS12WildcardData", !9, i64 0}
!68 = !{!"PureInfo", !5, i64 0, !5, i64 4, !5, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !32, i64 56, !32, i64 64, !12, i64 72, !5, i64 80, !69, i64 84, !32, i64 184, !5, i64 192, !70, i64 200, !5, i64 216, !5, i64 220, !5, i64 220}
!69 = !{!"ip_quadruple", !6, i64 0, !6, i64 46, !41, i64 92, !41, i64 94, !6, i64 96}
!70 = !{!"curl_certinfo", !5, i64 0, !71, i64 8}
!71 = !{!"p2 _ZTS10curl_slist", !23, i64 0}
!72 = !{!"curl_tlssessioninfo", !5, i64 0, !9, i64 8}
!73 = !{!74, !5, i64 8}
!74 = !{!"curl_trc_feat", !32, i64 0, !5, i64 8}
!75 = !{!11, !13, i64 32}
!76 = !{!77, !77, i64 0}
!77 = !{!"_Bool", !6, i64 0}
!78 = !{!32, !32, i64 0}
!79 = !{!11, !12, i64 184}
!80 = !{!81, !5, i64 0}
!81 = !{!"SMTP", !5, i64 0, !32, i64 8, !35, i64 16, !5, i64 24, !12, i64 32, !5, i64 40, !5, i64 40}
!82 = !{!11, !35, i64 2152}
!83 = !{!81, !35, i64 16}
!84 = !{!81, !5, i64 24}
!85 = !{!81, !12, i64 32}
!86 = !{!11, !37, i64 760}
!87 = !{!88, !5, i64 16}
!88 = !{!"curl_mimepart", !89, i64 0, !37, i64 8, !5, i64 16, !5, i64 20, !32, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !34, i64 64, !35, i64 72, !35, i64 80, !32, i64 88, !32, i64 96, !32, i64 104, !12, i64 112, !90, i64 120, !91, i64 144, !92, i64 152, !12, i64 432}
!89 = !{!"p1 _ZTS9curl_mime", !9, i64 0}
!90 = !{!"mime_state", !5, i64 0, !9, i64 8, !12, i64 16}
!91 = !{!"p1 _ZTS12mime_encoder", !9, i64 0}
!92 = !{!"mime_encoder_state", !12, i64 0, !12, i64 8, !12, i64 16, !6, i64 24}
!93 = !{!6, !6, i64 0}
!94 = distinct !{null, null, null, null}
!95 = !{!96, !32, i64 16}
!96 = !{!"hostname", !32, i64 0, !32, i64 8, !32, i64 16, !32, i64 24}
!97 = !{!96, !32, i64 8}
!98 = distinct !{null, null, null}
!99 = !{!100, !41, i64 180}
!100 = !{!"smtp_conn", !101, i64 0, !102, i64 152, !5, i64 184, !32, i64 192, !5, i64 200, !5, i64 200, !5, i64 200, !5, i64 200, !5, i64 200}
!101 = !{!"pingpong", !12, i64 0, !32, i64 8, !12, i64 16, !12, i64 24, !26, i64 32, !51, i64 48, !51, i64 80, !12, i64 112, !12, i64 120, !9, i64 128, !9, i64 136, !5, i64 144, !5, i64 144}
!102 = !{!"SASL", !103, i64 0, !5, i64 8, !32, i64 16, !41, i64 24, !41, i64 26, !41, i64 28, !5, i64 30, !5, i64 30, !5, i64 30}
!103 = !{!"p1 _ZTS9SASLproto", !9, i64 0}
!104 = !{!88, !5, i64 20}
!105 = !{!11, !35, i64 744}
!106 = !{!11, !12, i64 4152}
!107 = !{!35, !35, i64 0}
!108 = !{!109, !32, i64 0}
!109 = !{!"curl_slist", !32, i64 0, !35, i64 8}
!110 = distinct !{!110, !111}
!111 = !{!"llvm.loop.mustprogress"}
!112 = !{!28, !28, i64 0}
!113 = !{!100, !5, i64 184}
!114 = !{i8 0, i8 2}
!115 = !{}
!116 = !{!81, !32, i64 8}
!117 = distinct !{!117, !111}
!118 = !{!100, !9, i64 128}
!119 = !{!100, !9, i64 136}
!120 = !{!121, !32, i64 240}
!121 = !{!"connectdata", !15, i64 0, !15, i64 32, !9, i64 64, !9, i64 72, !12, i64 80, !32, i64 88, !21, i64 96, !52, i64 144, !52, i64 152, !52, i64 160, !52, i64 168, !122, i64 176, !122, i64 200, !54, i64 224, !52, i64 232, !32, i64 240, !26, i64 248, !26, i64 264, !6, i64 280, !6, i64 288, !6, i64 304, !6, i64 320, !5, i64 336, !5, i64 340, !123, i64 344, !39, i64 384, !39, i64 552, !124, i64 720, !125, i64 728, !125, i64 736, !26, i64 744, !19, i64 760, !32, i64 768, !5, i64 776, !5, i64 780, !41, i64 784, !41, i64 786, !6, i64 788, !6, i64 789, !6, i64 790, !6, i64 791}
!122 = !{!"proxy_info", !52, i64 0, !54, i64 8, !6, i64 16}
!123 = !{!"", !6, i64 0, !12, i64 32}
!124 = !{!"ConnectBits", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 2, !5, i64 2, !5, i64 2, !5, i64 2, !5, i64 2, !5, i64 2, !5, i64 2, !5, i64 2, !5, i64 3}
!125 = !{!"p1 _ZTS11Curl_scheme", !9, i64 0}
!126 = distinct !{!126, !111}
!127 = distinct !{!127, !111}
!128 = distinct !{!128, !111}
!129 = !{!11, !32, i64 4232}
!130 = !{!100, !32, i64 192}
!131 = distinct !{null}
!132 = !{!133, !9, i64 16}
!133 = !{!"Curl_creader", !134, i64 0, !28, i64 8, !9, i64 16, !5, i64 24}
!134 = !{!"p1 _ZTS11Curl_crtype", !9, i64 0}
!135 = !{!136, !12, i64 96}
!136 = !{!"cr_eob_ctx", !133, i64 0, !29, i64 32, !12, i64 96, !12, i64 104, !5, i64 112, !5, i64 112, !5, i64 112}
!137 = !{!133, !28, i64 8}
!138 = !{!12, !12, i64 0}
!139 = distinct !{!139, !111}
!140 = !{!121, !125, i64 728}
!141 = !{!100, !41, i64 176}
!142 = !{!100, !12, i64 16}
!143 = !{!11, !5, i64 4640}
!144 = !{!100, !12, i64 120}
!145 = !{!11, !6, i64 2180}
!146 = distinct !{!146, !111}
!147 = distinct !{!147, !111}
!148 = !{!100, !12, i64 112}
!149 = !{!5, !5, i64 0}
!150 = !{!109, !35, i64 8}
!151 = distinct !{!151, !111}
!152 = distinct !{!152, !111}
end_hunk_0
