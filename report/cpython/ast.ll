begin_hunk_0
  br label %bb.cf

bb.o:                                             ; preds = %bb.m, %bb.k, %bb.k, %bb.l
  %.sink = phi i64 [ 24, %bb.k ], [ 16, %bb.m ], [ 24, %bb.k ], [ 16, %bb.l ]
  %i.ad = getelementptr i8, ptr %0, i64 %.sink
  %.0 = load i32, ptr %i.ad, align 8, !tbaa !13   ; 2 uses
  %.not141 = icmp eq i32 %.0, %1
end_hunk_0
begin_hunk_1
  %.pr = load i32, ptr %0, align 8, !tbaa !37
  br label %.critedge.a

.critedge.a:                                      ; preds = %bb.n, %.critedgethread-pre-split
  %i.ak = phi i32 [ %.pr, %.critedgethread-pre-split ], [ %i.w, %bb.n ]
  switch i32 %i.ak, label %bb.ce [
    i32 1, label %bb.p
end_hunk_1
begin_hunk_2
bb.y:                                             ; preds = %._crit_edge165, %bb.w
  %i.ax = phi ptr [ %.pre166.a, %._crit_edge165 ], [ %i.ak, %bb.w ] ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  %2 = getelementptr i8, ptr %i.ax, i64 16
  br i1 %i.ay, label %.critedge153, label %.lr.ph159.a

.lr.ph159.a:                                      ; preds = %bb.y
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !14 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph162, label %.critedge153
end_hunk_2
begin_hunk_3
  %i.bl = phi i64 [ %.pre167, %..thread136_crit_edge ], [ %i.bb, %bb.aa ], [ %i.bb, %bb.z ] ; 2 uses
  %i.bm = add nuw nsw i64 %.091158161, 1          ; 2 uses
  %i.bn = icmp slt i64 %i.bm, %i.bl
  br i1 %i.bn, label %.lr.ph162, label %.critedge153, !llvm.loop !98

.critedge153:                                     ; preds = %.thread136, %bb.y, %.lr.ph159.a
  %i.bo = load ptr, ptr %i.ao, align 8, !tbaa !13
end_hunk_3
begin_hunk_4
  %i.cj = add nuw nsw i64 %.084157, 1
  %i.ck = load ptr, ptr %i.br, align 8, !tbaa !13 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.critedge155, label %.lr.ph, !llvm.loop !99

.lr.ph:                                           ; preds = %.critedge.preheader, %.critedge
  %i.cm = phi ptr [ %i.ck, %.critedge ], [ %i.cf, %.critedge.preheader ] ; 2 uses
end_hunk_4
begin_hunk_5
  %i.e = phi i64 [ %i.af, %bb.i ], [ %i.c, %.lr.ph ]
  %.0335978 = phi i64 [ %i.ag, %bb.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.f = getelementptr [8 x i8], ptr %i.b, i64 %.0335978
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100  ; 7 uses
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !101  ; 6 uses
  %i.j = getelementptr i8, ptr %i.g, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !102  ; 4 uses
  %i.l = icmp sgt i32 %i.i, %i.k
  br i1 %i.l, label %.split, label %bb.b

end_hunk_5
begin_hunk_6
  %.not = icmp eq i32 %i.k, %i.i                  ; 2 uses
  %or.cond = or i1 %i.o, %.not
  %i.p = getelementptr i8, ptr %i.g, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !103  ; 5 uses
  br i1 %or.cond, label %bb.c, label %..split67_crit_edge

..split67_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert95 = getelementptr i8, ptr %i.g, i64 36
  %.pre96 = load i32, ptr %.phi.trans.insert95, align 4, !tbaa !104
  br label %.split67

bb.c:                                             ; preds = %bb.b
end_hunk_6
begin_hunk_7

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.g, i64 36
  %i.t = load i32, ptr %i.s, align 4, !tbaa !104  ; 2 uses
  %.not44 = icmp eq i32 %i.q, %i.t
  br i1 %.not44, label %bb.e, label %.split67

end_hunk_7
begin_hunk_8

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.g, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !104  ; 2 uses
  %i.z = icmp sgt i32 %i.q, %i.y
  br i1 %i.z, label %.split72, label %bb.g

end_hunk_8
begin_hunk_9
.lr.ph23:                                         ; preds = %.lr.ph.split, %bb.b
  %.0121522 = phi i64 [ %i.e, %bb.b ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.h = getelementptr [8 x i8], ptr %i.a, i64 %.0121522
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105
  %i.j = tail call fastcc i32 @validate_pattern(ptr noundef %i.i, i32 noundef %1)
  %.not.not = icmp eq i32 %i.j, 0
  br i1 %.not.not, label %.critedge, label %bb.b
end_hunk_9
begin_hunk_10
bb.c:                                             ; preds = %.lr.ph34, %.critedge22
  %.01533 = phi i64 [ 0, %.lr.ph34 ], [ %i.y, %.critedge22 ] ; 2 uses
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %.01533
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !106  ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.i = tail call fastcc i32 @validate_expr(ptr noundef %i.h, i32 noundef 2)
  %.not18 = icmp eq i32 %i.i, 0
  br i1 %.not18, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !110
  %i.l = tail call fastcc i32 @validate_expr(ptr noundef %i.k, i32 noundef 1)
  %.not19 = icmp eq i32 %i.l, 0
  br i1 %.not19, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.g, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !111  ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.critedge22, label %.lr.ph

end_hunk_10
begin_hunk_11
  %i.y = add nuw nsw i64 %.01533, 1               ; 2 uses
  %i.z = load i64, ptr %0, align 8, !tbaa !14
  %i.aa = icmp slt i64 %i.y, %i.z
  br i1 %i.aa, label %bb.c, label %.thread, !llvm.loop !112

.thread.sink.split:                               ; preds = %.lr.ph32, %bb.b, %bb.a
  %.str.72.sink = phi ptr [ @.str.70, %bb.b ], [ @.str.70, %bb.a ], [ @.str.72, %.lr.ph32 ]
end_hunk_11
begin_hunk_12
!96 = !{!93, !8, i64 52}
!97 = !{!93, !8, i64 0}
!98 = distinct !{!98, !45}
!99 = distinct !{!99, !45}
!100 = !{!82, !82, i64 0}
!101 = !{!86, !8, i64 24}
!102 = !{!86, !8, i64 32}
!103 = !{!86, !8, i64 28}
!104 = !{!86, !8, i64 36}
!105 = !{!52, !52, i64 0}
!106 = !{!107, !107, i64 0}
!107 = !{!"p1 _ZTS14_comprehension", !18, i64 0}
!108 = !{!109, !20, i64 0}
!109 = !{!"_comprehension", !20, i64 0, !20, i64 8, !18, i64 16, !8, i64 24}
!110 = !{!109, !20, i64 8}
!111 = !{!109, !18, i64 16}
!112 = distinct !{!112, !45}
end_hunk_12
