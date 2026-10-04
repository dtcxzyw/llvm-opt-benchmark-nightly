Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pathkeys?download=true
inline.NumInlined: 61
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@make_inner_pathkeys_for_merge:bb.a
  %.0406279 = phi ptr [ %.141, %pathkey_is_redundant.exit ], [ null, %.lr.ph ]
  %.0386378 = phi ptr [ %.1, %pathkey_is_redundant.exit ], [ %i.c, %.lr.ph ] ; 4 uses
  %indvars.iv77 = phi i64 [ %indvars.iv.next, %pathkey_is_redundant.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv77
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 152 ; 4 uses
  %.promoted.i = load ptr, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 88
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.o, null
  br i1 %.not8.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.lr.ph82
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 160 ; 4 uses
  %.promoted9.i = load ptr, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.promoted9.i, i64 88
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not710.i = icmp eq ptr %i.r, null
  br i1 %.not710.i, label %update_mergeclause_eclasses.exit, label %.lr.ph11.i

.lr.ph.i:                                         ; preds = %.lr.ph82, %.lr.ph.i
  %i.s = phi ptr [ %i.u, %.lr.ph.i ], [ %i.o, %.lr.ph82 ] ; 2 uses
  store ptr %i.s, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not.i53 = icmp eq ptr %i.u, null
  br i1 %.not.i53, label %.preheader.i, label %.lr.ph.i, !llvm.loop !3

.lr.ph11.i:                                       ; preds = %.preheader.i, %.lr.ph11.i
  %i.v = phi ptr [ %i.x, %.lr.ph11.i ], [ %i.r, %.preheader.i ] ; 2 uses
  store ptr %i.v, ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.x, null
  br i1 %.not7.i, label %update_mergeclause_eclasses.exit, label %.lr.ph11.i, !llvm.loop !4

update_mergeclause_eclasses.exit:                 ; preds = %.lr.ph11.i, %.preheader.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  %i.z = load i8, ptr %i.y, align 8, !range !9, !noundef !10
  %i.aa = trunc nuw i8 %i.z to i1                 ; 2 uses
  %.037.in = select i1 %i.aa, ptr %i.m, ptr %i.p
  %.036.in = select i1 %i.aa, ptr %i.p, ptr %i.m
  %.036 = load ptr, ptr %.036.in, align 8         ; 2 uses
  %.037 = load ptr, ptr %.037.in, align 8         ; 4 uses
  %.not49 = icmp eq ptr %.037, %.0426180
  br i1 %.not49, label %bb.g, label %bb.c

.critedge:                                        ; preds = %pathkey_is_redundant.exit, %.lr.ph, %list_head.exit
  %.044.lcssa = phi ptr [ null, %list_head.exit ], [ null, %.lr.ph ], [ %.145, %pathkey_is_redundant.exit ]
  ret ptr %.044.lcssa

bb.c:                                             ; preds = %update_mergeclause_eclasses.exit
  %.not50 = icmp eq ptr %.0386378, null
  br i1 %.not50, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.ac = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1897, ptr noundef nonnull @__func__.make_inner_pathkeys_for_merge) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %.0386378, align 8        ; 2 uses
  %.val = load i32, ptr %i.f, align 4
  %.val52 = load ptr, ptr %i.g, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0386378, i64 8 ; 2 uses
  %i.af = sext i32 %.val to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.val52, i64 %i.af
  %i.ah = icmp ult ptr %i.ae, %i.ag
  %..i = select i1 %i.ah, ptr %i.ae, ptr null
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not51 = icmp eq ptr %.037, %i.aj
  br i1 %.not51, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.al = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1902, ptr noundef nonnull @__func__.make_inner_pathkeys_for_merge) #10
  unreachable

bb.g:                                             ; preds = %bb.e, %update_mergeclause_eclasses.exit
  %.143 = phi ptr [ %.037, %bb.e ], [ %.0426180, %update_mergeclause_eclasses.exit ]
  %.141 = phi ptr [ %i.ad, %bb.e ], [ %.0406279, %update_mergeclause_eclasses.exit ] ; 5 uses
  %.1 = phi ptr [ %..i, %bb.e ], [ %.0386378, %update_mergeclause_eclasses.exit ]
  %i.am = icmp eq ptr %.036, %.037
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.141, i64 16
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.141, i64 20
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.141, i64 24
  %i.as = load i8, ptr %i.ar, align 8, !range !9, !noundef !10
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = tail call ptr @make_canonical_pathkey(ptr noundef %0, ptr noundef %.036, i32 noundef %i.ao, i32 noundef %i.aq, i1 noundef zeroext %i.at)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi ptr [ %i.au, %bb.h ], [ %.141, %bb.g ] ; 2 uses
  %i.av = getelementptr i8, ptr %.0, i64 8
  %.0.val = load ptr, ptr %i.av, align 8          ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  %i.ax = load i8, ptr %i.aw, align 8, !range !9, !noundef !10
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %pathkey_is_redundant.exit, label %.preheader.i54

.preheader.i54:                                   ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0446081, i64 16
  %.not.i55 = icmp eq ptr %.0446081, null
  br i1 %.not.i55, label %.loopexit, label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %.preheader.i54
  %i.ba = getelementptr inbounds nuw i8, ptr %.0446081, i64 4
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph14.i, label %.loopexit

.lr.ph14.i:                                       ; preds = %.lr.ph.i56
  %i.bd = load ptr, ptr %i.az, align 8
  %wide.trip.count.i = zext nneg i32 %i.bb to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph14.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph14.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  %.not18.i = icmp eq ptr %.0.val, %i.bh
  br i1 %.not18.i, label %pathkey_is_redundant.exit, label %bb.j

.loopexit:                                        ; preds = %bb.j, %.preheader.i54, %.lr.ph.i56
  %i.bi = tail call ptr @lappend(ptr noundef %.0446081, ptr noundef %.0) #10
  br label %pathkey_is_redundant.exit

pathkey_is_redundant.exit:                        ; preds = %bb.k, %bb.i, %.loopexit
  %.145 = phi ptr [ %i.bi, %.loopexit ], [ %.0446081, %bb.i ], [ %.0446081, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %i.bj = load i32, ptr %i.d, align 4
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next, %i.bk
  br i1 %i.bl, label %.lr.ph82, label %.critedge
}

; Function Attrs: nounwind uwtable
define dso_local ptr @trim_mergeclauses_for_inner_pathkeys(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %.critedge, label %list_head.exit

list_head.exit:                                   ; preds = %bb.a
  %i.b = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %list_head.exit
  %.val46 = load i32, ptr %i.b, align 4
  %i.e = icmp sgt i32 %.val46, 1
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %..i = select i1 %i.e, ptr %i.g, ptr null
  %i.h = load ptr, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.d, align 4
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph74.preheader, label %.critedge

.lr.ph74.preheader:                               ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.k, align 8
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %i.q = load i8, ptr %i.p, align 8, !range !9, !noundef !10
  %i.r = trunc nuw i8 %i.q to i1
  %.in.v.peel = select i1 %i.r, i64 160, i64 152
  %.in.peel = getelementptr inbounds nuw i8, ptr %i.o, i64 %.in.v.peel
  %i.s = load ptr, ptr %.in.peel, align 8
  %.not44.peel = icmp eq ptr %i.s, %i.j
  br i1 %.not44.peel, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph74.preheader
  %i.t = tail call ptr @lappend(ptr noundef null, ptr noundef nonnull %i.o) #10 ; 2 uses
  %i.u = load i32, ptr %i.d, align 4
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %.lr.ph74, label %.critedge

.lr.ph74:                                         ; preds = %bb.b, %.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread ], [ 1, %bb.b ] ; 2 uses
  %.0375573 = phi ptr [ %i.am, %.thread ], [ %i.t, %bb.b ] ; 3 uses
  %.0345672 = phi ptr [ %i.ac, %.thread ], [ %i.j, %bb.b ]
  %.0305870 = phi ptr [ %.181, %.thread ], [ %..i, %bb.b ] ; 4 uses
  %i.w = load ptr, ptr %i.k, align 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 192
  %i.aa = load i8, ptr %i.z, align 8, !range !9, !noundef !10
  %i.ab = trunc nuw i8 %i.aa to i1
  %.in.v = select i1 %i.ab, i64 160, i64 152
  %.in = getelementptr inbounds nuw i8, ptr %i.y, i64 %.in.v
  %i.ac = load ptr, ptr %.in, align 8             ; 3 uses
  %.not44 = icmp eq ptr %i.ac, %.0345672
  br i1 %.not44, label %.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph74
  %i.ad = icmp eq ptr %.0305870, null
  br i1 %i.ad, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %.0305870, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %.val = load i32, ptr %i.b, align 4
  %.val45 = load ptr, ptr %i.c, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0305870, i64 8 ; 2 uses
  %i.ai = sext i32 %.val to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %.val45, i64 %i.ai
  %i.ak = icmp ult ptr %i.ah, %i.aj
  %..i48 = select i1 %i.ak, ptr %i.ah, ptr null
  %i.al = icmp eq ptr %i.ac, %i.ag
  br i1 %i.al, label %.thread, label %.critedge

.thread:                                          ; preds = %.lr.ph74, %bb.d
  %.181 = phi ptr [ %..i48, %bb.d ], [ %.0305870, %.lr.ph74 ]
  %i.am = tail call ptr @lappend(ptr noundef %.0375573, ptr noundef nonnull %i.y) #10 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = load i32, ptr %i.d, align 4
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %.lr.ph74, label %.critedge, !llvm.loop !25

.critedge:                                        ; preds = %.thread, %bb.c, %bb.d, %bb.b, %.lr.ph74.preheader, %list_head.exit, %.lr.ph, %bb.a
  %.040 = phi ptr [ null, %bb.a ], [ null, %list_head.exit ], [ null, %.lr.ph ], [ %i.t, %bb.b ], [ null, %.lr.ph74.preheader ], [ %.0375573, %bb.d ], [ %i.am, %.thread ], [ %.0375573, %bb.c ]
  ret ptr %.040
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @has_useful_pathkeys(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.d = load i8, ptr %i.c, align 8, !range !9, !noundef !10
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.g = load ptr, ptr %i.f, align 8
  %.not4 = icmp ne ptr %i.g, null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ true, %bb.a ], [ %.not4, %bb.c ], [ true, %bb.b ]
  ret i1 %.0
}

declare ptr @palloc0(i64 noundef) local_unnamed_addr #3

declare zeroext i1 @list_member_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_sortgroupref_clause_noerr(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @list_concat_unique_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @list_free(ptr noundef) local_unnamed_addr #3

declare i32 @get_opfamily_member_for_cmptype(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_mergejoin_opfamilies(i32 noundef) local_unnamed_addr #3

declare ptr @copyObjectImpl(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @eclass_useful_for_merging(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, !11}
!2 = distinct !{!2, !11}
!3 = distinct !{!3, !11}
!4 = distinct !{!4, !11}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
