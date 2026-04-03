begin_hunk_0
.lr.ph.i:                                         ; preds = %.lr.ph
  %i.e = add i32 %i.f, 1                          ; 2 uses
  %.not22.i = icmp eq i32 %i.e, %.01832.i
  br i1 %.not22.i, label %SearchImageToGetOrDelete.exit.loopexit, label %.lr.ph, !llvm.loop !43

.lr.ph:                                           ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %i.f = phi i32 [ %i.e, %.lr.ph.i ], [ 1, %.lr.ph.preheader.i ]
end_hunk_0
begin_hunk_1
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41   ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %SearchImageToGetOrDelete.exit.thread, label %.lr.ph.i, !llvm.loop !43

SearchImageToGetOrDelete.exit.loopexit:           ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48
end_hunk_1
begin_hunk_2
.lr.ph.i:                                         ; preds = %.lr.ph
  %i.e = add i32 %i.f, 1                          ; 2 uses
  %.not22.i = icmp eq i32 %i.e, %.01832.i
  br i1 %.not22.i, label %SearchImageToGetOrDelete.exit, label %.lr.ph, !llvm.loop !43

.lr.ph:                                           ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %i.f = phi i32 [ %i.e, %.lr.ph.i ], [ 1, %.lr.ph.preheader.i ]
end_hunk_2
begin_hunk_3
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41   ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %SearchImageToGetOrDelete.exit.thread, label %.lr.ph.i, !llvm.loop !43

SearchImageToGetOrDelete.exit:                    ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.j = phi ptr [ %.pre.i, %.lr.ph.preheader.i ], [ %i.i, %.lr.ph.i ]
end_hunk_3
begin_hunk_4
; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @MuxImageDiskSize(ptr noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_4
begin_hunk_5
bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45   ; 2 uses
  %.not16 = icmp eq ptr %i.g, null
  br i1 %.not16, label %bb.e, label %bb.d

end_hunk_5
begin_hunk_6
bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i64 [ %i.l, %bb.d ], [ %.0, %bb.c ]   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46   ; 2 uses
  %.not17 = icmp eq ptr %i.n, null
  br i1 %.not17, label %bb.g, label %bb.f

end_hunk_6
begin_hunk_7
bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i64 [ %i.s, %bb.f ], [ %.1, %bb.e ]   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47   ; 2 uses
  %.not18 = icmp eq ptr %i.u, null
  br i1 %.not18, label %bb.h, label %.lr.ph.i

end_hunk_7
begin_hunk_8
; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @MuxImageEmit(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(ret: address, provenance) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

end_hunk_8
begin_hunk_9
  %i.d = and i64 %i.c, 4294967294                 ; 2 uses
  %i.e = add nuw nsw i64 %i.d, 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45   ; 2 uses
  %.not16.i = icmp eq ptr %i.g, null
  br i1 %.not16.i, label %bb.d, label %bb.c

end_hunk_9
begin_hunk_10
bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i64 [ %i.l, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46   ; 2 uses
  %.not17.i = icmp eq ptr %i.n, null
  br i1 %.not17.i, label %bb.f, label %bb.e

end_hunk_10
begin_hunk_11
bb.f:                                             ; preds = %bb.e, %bb.d
  %.2.i = phi i64 [ %i.s, %bb.e ], [ %.1.i, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47   ; 2 uses
  %.not18.i = icmp eq ptr %i.u, null
  br i1 %.not18.i, label %MuxImageDiskSize.exit, label %.lr.ph.i.i

end_hunk_11
begin_hunk_12
bb.h:                                             ; preds = %ChunkEmitSpecial.exit, %bb.a
  %.0 = phi ptr [ %i.aq, %ChunkEmitSpecial.exit ], [ %1, %bb.a ] ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !45 ; 4 uses
  %.not18 = icmp eq ptr %i.as, null
  br i1 %.not18, label %bb.k, label %bb.i

end_hunk_12
begin_hunk_13
bb.k:                                             ; preds = %ChunkEmit.exit, %bb.h
  %.1 = phi ptr [ %i.bh, %ChunkEmit.exit ], [ %.0, %bb.h ] ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !46 ; 4 uses
  %.not19 = icmp eq ptr %i.bj, null
  br i1 %.not19, label %bb.n, label %bb.l

end_hunk_13
begin_hunk_14
bb.n:                                             ; preds = %ChunkEmit.exit27, %bb.k
  %.2 = phi ptr [ %i.by, %ChunkEmit.exit27 ], [ %.1, %bb.k ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !47 ; 2 uses
  %.not20 = icmp eq ptr %i.ca, null
  br i1 %.not20, label %ChunkListEmit.exit, label %.lr.ph.i

end_hunk_14
begin_hunk_15
.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.06 = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ]   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.06, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !48
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.b, label %._crit_edge

end_hunk_15
begin_hunk_16
  %i.c = getelementptr inbounds nuw i8, ptr %.06, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !49

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.03 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph ]
end_hunk_16
begin_hunk_17
  br i1 %i.j, label %.critedge80, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !50
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.critedge80, label %bb.c

end_hunk_17
begin_hunk_18
  br i1 %or.cond4, label %.critedge80, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.au = load ptr, ptr %0, align 8, !tbaa !50    ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.critedge80, label %bb.o

end_hunk_18
begin_hunk_19

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !52 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %bb.q, label %.critedge77

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !53
  %.not69 = icmp eq i32 %i.bc, %i.az
  br i1 %.not69, label %bb.r, label %.critedge80

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !54
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !55
  %.not70 = icmp eq i32 %i.be, %i.bg
  br i1 %.not70, label %.critedge77, label %.critedge80

end_hunk_19
begin_hunk_20
  br i1 %or.cond6, label %.critedge80, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %.not5.i = icmp eq ptr %i.bp, null
  br i1 %.not5.i, label %MuxHasAlpha.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %bb.v
  %.06.i = phi ptr [ %i.bt, %bb.v ], [ %i.bp, %bb.u ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !48
  %.not4.i = icmp eq i32 %i.br, 0
  br i1 %.not4.i, label %bb.v, label %MuxHasAlpha.exit

end_hunk_20
begin_hunk_21
  %i.bs = getelementptr inbounds nuw i8, ptr %.06.i, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !37 ; 2 uses
  %.not.i101 = icmp eq ptr %i.bt, null
  br i1 %.not.i101, label %MuxHasAlpha.exit.thread, label %.lr.ph.i, !llvm.loop !49

MuxHasAlpha.exit:                                 ; preds = %.lr.ph.i
  %i.bu = icmp sgt i32 %i.bl, 0
end_hunk_21
begin_hunk_22
!40 = distinct !{!40, !21}
!41 = !{!39, !39, i64 0}
!42 = !{i64 0, i64 8, !26, i64 8, i64 8, !26, i64 16, i64 8, !26, i64 24, i64 8, !26, i64 32, i64 4, !3, i64 36, i64 4, !3, i64 40, i64 4, !3, i64 44, i64 4, !3, i64 48, i64 8, !41}
!43 = distinct !{!43, !21}
!44 = !{!38, !13, i64 0}
!45 = !{!38, !13, i64 8}
!46 = !{!38, !13, i64 16}
!47 = !{!38, !13, i64 24}
!48 = !{!38, !4, i64 40}
!49 = distinct !{!49, !21}
!50 = !{!51, !39, i64 0}
!51 = !{!"WebPMux", !39, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !4, i64 56, !4, i64 60}
!52 = !{!51, !4, i64 56}
!53 = !{!38, !4, i64 32}
!54 = !{!38, !4, i64 36}
!55 = !{!51, !4, i64 60}
end_hunk_22
