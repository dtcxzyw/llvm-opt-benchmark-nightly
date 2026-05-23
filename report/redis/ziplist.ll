inline.NumInlined: 61
inline.NumDeleted: 7
begin_hunk_0_@ziplistRandomPairsUnique:bb.a
  %i.m = call fastcc i32 @zipEntrySafe(ptr noundef nonnull readnone %0, i64 noundef range(i64 0, 4294967296) %i.i, ptr noundef nonnull %.01318.i, ptr noundef %4, i32 noundef 0)
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %bb.e, label %zipRawEntryLengthSafe.exit.i, !prof !28

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 693) #17
  tail call void @abort() #18
  unreachable

zipRawEntryLengthSafe.exit.i:                     ; preds = %bb.d
  %i.n = load i32, ptr %i.k, align 8, !tbaa !26
  %i.o = load i32, ptr %i.l, align 4, !tbaa !25
  %i.p = add i32 %i.o, %i.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.01318.i, i64 %i.q ; 2 uses
  %i.s = add i32 %.019.i, 1                       ; 4 uses
  %i.t = load i8, ptr %i.r, align 1, !tbaa !13
  %.not15.i = icmp eq i8 %i.t, -1
  br i1 %.not15.i, label %._crit_edge.i, label %bb.d, !llvm.loop !40

._crit_edge.i:                                    ; preds = %zipRawEntryLengthSafe.exit.i
  %i.u = icmp ult i32 %i.s, 65535
  br i1 %i.u, label %._crit_edge.thread.i, label %ziplistLen.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.c
  %.0.lcssa21.i = phi i32 [ %i.s, %._crit_edge.i ], [ 0, %bb.c ] ; 2 uses
  %i.v = trunc nuw i32 %.0.lcssa21.i to i16
  store i16 %i.v, ptr %i.d, align 2, !tbaa !16
  br label %ziplistLen.exit

ziplistLen.exit:                                  ; preds = %bb.b, %._crit_edge.i, %._crit_edge.thread.i
  %.1.i = phi i32 [ %i.f, %bb.b ], [ %.0.lcssa21.i, %._crit_edge.thread.i ], [ %i.s, %._crit_edge.i ]
  %i.w = lshr i32 %.1.i, 1                        ; 3 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.w) ; 5 uses
  %i.x = tail call ptr @ziplistIndex(ptr noundef nonnull %0, i32 noundef 0) ; 3 uses
  %i.y = icmp ne i32 %spec.select, 0
  %i.z = icmp ne ptr %i.x, null
  %i.aa = and i1 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %ziplistLen.exit
  %.not45 = icmp eq ptr %3, null
  br i1 %.not45, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.j
  %.03254.us = phi ptr [ %i.av, %bb.j ], [ %i.x, %.lr.ph ] ; 3 uses
  %.03353.us = phi i32 [ %.134.us, %bb.j ], [ %spec.select, %.lr.ph ] ; 3 uses
  %.03552.us = phi i32 [ %.136.us, %bb.j ], [ 0, %.lr.ph ] ; 3 uses
  %.03751.us = phi i32 [ %i.aw, %bb.j ], [ 0, %.lr.ph ] ; 2 uses
  %i.ab = call i32 @rand() #17
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = fdiv double %i.ac, f0x41DFFFFFFFC00000
  %i.ae = uitofp i32 %.03353.us to double
  %i.af = sub i32 %i.w, %.03751.us
  %i.ag = uitofp i32 %i.af to double
  %i.ah = fdiv double %i.ae, %i.ag
  %i.ai = fcmp ugt double %i.ad, %i.ah
  br i1 %i.ai, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.aj = call i32 @ziplistGet(ptr noundef nonnull %.03254.us, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not43.us = icmp eq i32 %i.aj, 0
  br i1 %.not43.us, label %.split.us, label %bb.g, !prof !28

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.al = load i32, ptr %i.b, align 4, !tbaa !9
  %i.am = load i64, ptr %i.c, align 8, !tbaa !14
  %i.an = zext nneg i32 %.03552.us to i64
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.an ; 3 uses
  store ptr %i.ak, ptr %i.ao, align 8, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %i.al, ptr %i.ap, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %i.am, ptr %i.aq, align 8, !tbaa !53
  %i.ar = call ptr @ziplistNext(ptr noundef nonnull %0, ptr noundef nonnull %.03254.us) ; 2 uses
  %.not44.us = icmp eq ptr %i.ar, null
  br i1 %.not44.us, label %.split56.us, label %bb.h, !prof !28

bb.h:                                             ; preds = %bb.g
  %i.as = add i32 %.03353.us, -1
  %i.at = add nuw nsw i32 %.03552.us, 1
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.us
  %i.au = call ptr @ziplistNext(ptr noundef nonnull %0, ptr noundef nonnull %.03254.us) ; 2 uses
  %.not.us = icmp eq ptr %i.au, null
  br i1 %.not.us, label %.split58.us, label %bb.j, !prof !28

bb.j:                                             ; preds = %bb.i, %bb.h
  %.136.us = phi i32 [ %i.at, %bb.h ], [ %.03552.us, %bb.i ] ; 3 uses
  %.134.us = phi i32 [ %i.as, %bb.h ], [ %.03353.us, %bb.i ]
  %.1.us = phi ptr [ %i.ar, %bb.h ], [ %i.au, %bb.i ]
  %i.av = call ptr @ziplistNext(ptr noundef nonnull %0, ptr noundef nonnull %.1.us) ; 2 uses
  %i.aw = add i32 %.03751.us, 1
  %i.ax = icmp ult i32 %.136.us, %spec.select
  %i.ay = icmp ne ptr %i.av, null
  %i.az = and i1 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !56

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.q
  %.03254 = phi ptr [ %i.cb, %bb.q ], [ %i.x, %.lr.ph ] ; 3 uses
  %.03353 = phi i32 [ %.134, %bb.q ], [ %spec.select, %.lr.ph ] ; 3 uses
  %.03552 = phi i32 [ %.136, %bb.q ], [ 0, %.lr.ph ] ; 3 uses
  %.03751 = phi i32 [ %i.cc, %bb.q ], [ 0, %.lr.ph ] ; 2 uses
  %i.ba = call i32 @rand() #17
  %i.bb = sitofp i32 %i.ba to double
  %i.bc = fdiv double %i.bb, f0x41DFFFFFFFC00000
  %i.bd = uitofp i32 %.03353 to double
  %i.be = sub i32 %i.w, %.03751
  %i.bf = uitofp i32 %i.be to double
  %i.bg = fdiv double %i.bd, %i.bf
  %i.bh = fcmp ugt double %i.bc, %i.bg
  br i1 %i.bh, label %bb.p, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split
  %i.bi = call i32 @ziplistGet(ptr noundef nonnull %.03254, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not43 = icmp eq i32 %i.bi, 0
  br i1 %.not43, label %.split.us, label %bb.l, !prof !28

.split.us:                                        ; preds = %bb.k, %bb.f
  call void @_serverAssert(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 1668) #17
  call void @abort() #18
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.bk = load i32, ptr %i.b, align 4, !tbaa !9
  %i.bl = load i64, ptr %i.c, align 8, !tbaa !14
  %i.bm = zext nneg i32 %.03552 to i64            ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.bm ; 3 uses
  store ptr %i.bj, ptr %i.bn, align 8, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 %i.bk, ptr %i.bo, align 8, !tbaa !52
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %i.bl, ptr %i.bp, align 8, !tbaa !53
  %i.bq = call ptr @ziplistNext(ptr noundef nonnull %0, ptr noundef nonnull %.03254) ; 3 uses
  %.not44 = icmp eq ptr %i.bq, null
  br i1 %.not44, label %.split56.us, label %bb.m, !prof !28

.split56.us:                                      ; preds = %bb.l, %bb.g
  call void @_serverAssert(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 1671) #17
  call void @abort() #18
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.br = call i32 @ziplistGet(ptr noundef nonnull %i.bq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not46 = icmp eq i32 %i.br, 0
  br i1 %.not46, label %bb.n, label %bb.o, !prof !28

bb.n:                                             ; preds = %bb.m
  call void @_serverAssert(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 1673) #17
  call void @abort() #18
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.bt = load i32, ptr %i.b, align 4, !tbaa !9
  %i.bu = load i64, ptr %i.c, align 8, !tbaa !14
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.bm ; 3 uses
  store ptr %i.bs, ptr %i.bv, align 8, !tbaa !50
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 %i.bt, ptr %i.bw, align 8, !tbaa !52
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 %i.bu, ptr %i.bx, align 8, !tbaa !53
  %i.by = add i32 %.03353, -1
  %i.bz = add nuw nsw i32 %.03552, 1
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.split
  %i.ca = call ptr @ziplistNext(ptr noundef nonnull %0, ptr noundef nonnull %.03254) ; 2 uses
  %.not = icmp eq ptr %i.ca, null
  br i1 %.not, label %.split58.us, label %bb.q, !prof !28

.split58.us:                                      ; preds = %bb.p, %bb.i
  call void @_serverAssert(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 1680) #17
  call void @abort() #18
  unreachable

bb.q:                                             ; preds = %bb.p, %bb.o
  %.136 = phi i32 [ %i.bz, %bb.o ], [ %.03552, %bb.p ] ; 3 uses
  %.134 = phi i32 [ %i.by, %bb.o ], [ %.03353, %bb.p ]
  %.1 = phi ptr [ %i.bq, %bb.o ], [ %i.ca, %bb.p ]
  %i.cb = call ptr @ziplistNext(ptr noundef nonnull %0, ptr noundef nonnull %.1) ; 2 uses
  %i.cc = add i32 %.03751, 1
  %i.cd = icmp ult i32 %.136, %spec.select
  %i.ce = icmp ne ptr %i.cb, null
  %i.cf = and i1 %i.cd, %i.ce
  br i1 %i.cf, label %.lr.ph.split, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %bb.q, %bb.j, %ziplistLen.exit
  %.035.lcssa = phi i32 [ 0, %ziplistLen.exit ], [ %.136.us, %bb.j ], [ %.136, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.035.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.uadd.sat.i16(i16, i16) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #16 = { nofree nounwind }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(1) }
attributes #21 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long long", !11, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"short", !11, i64 0}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = !{!20, !10, i64 0}
!20 = !{!"zlentry", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !11, i64 20, !21, i64 24}
!21 = !{!"p1 omnipotent char", !22, i64 0}
!22 = !{!"any pointer", !11, i64 0}
!23 = !{!20, !10, i64 4}
!24 = !{!"branch_weights", i32 1073205, i32 2146410443}
!25 = !{!20, !10, i64 12}
!26 = !{!20, !10, i64 16}
!27 = !{!20, !21, i64 24}
!28 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = distinct !{!31, !30}
!32 = !{!20, !11, i64 20}
!33 = !{!20, !10, i64 8}
!34 = distinct !{!34, !30}
!35 = !{!"branch_weights", !"expected", i32 2163581, i32 2145320067}
!36 = !{!21, !21, i64 0}
!37 = distinct !{!37, !30}
!38 = distinct !{!38, !30}
!39 = distinct !{!39, !30}
!40 = distinct !{!40, !30}
!41 = distinct !{!41, !30}
!42 = !{!43, !43, i64 0}
!43 = !{!"p1 _ZTS8_IO_FILE", !22, i64 0}
!44 = distinct !{!44, !30}
!45 = distinct !{!45, !30}
!46 = !{!47, !10, i64 0}
!47 = !{!"", !10, i64 0, !10, i64 4}
!48 = distinct !{!48, !30}
!49 = !{!47, !10, i64 4}
!50 = !{!51, !21, i64 0}
!51 = !{!"", !21, i64 0, !10, i64 8, !15, i64 16}
!52 = !{!51, !10, i64 8}
!53 = !{!51, !15, i64 16}
!54 = distinct !{!54, !30}
!55 = distinct !{!55, !30}
!56 = distinct !{!56, !30}
end_hunk_0
