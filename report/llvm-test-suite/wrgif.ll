begin_hunk_0_@finish_output_gif:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store i32 36, ptr %i.af, align 8, !tbaa !47
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !49
  tail call void %i.ag(ptr noundef nonnull %i.ad) #6
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
end_hunk_0
begin_hunk_1_@finish_output_gif:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i32 36, ptr %i.aw, align 8, !tbaa !47
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !49
  tail call void %i.ax(ptr noundef nonnull %i.au) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
end_hunk_1
begin_hunk_2_@emit_header:bb.a
  %i.m = shl nuw i32 1, %.070                     ; 3 uses
  %i.n = icmp sgt i32 %1, %i.m
  %i.o = add nuw nsw i32 %.070, 1
  br i1 %i.n, label %bb.c, label %bb.d, !llvm.loop !81

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 33 uses
end_hunk_2
begin_hunk_3_@emit_header:bb.a
  %i.al = tail call i32 @putc(i32 noundef %i.aj, ptr noundef %i.ak) ; 0 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 132
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !82 ; 2 uses
  %i.ap = and i32 %i.ao, 255
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !80
  %i.ar = tail call i32 @putc(i32 noundef %i.ap, ptr noundef %i.aq) ; 0 uses
end_hunk_3
begin_hunk_4_@emit_header:bb.a
  %i.bu = tail call i32 @putc(i32 noundef %.sink90, ptr noundef %i.bt) ; 0 uses
  %i.bv = add nuw nsw i32 %.075.us, 1             ; 2 uses
  %exitcond82.not = icmp eq i32 %i.bv, %smax81
  br i1 %exitcond82.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !83

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.k ] ; 5 uses
end_hunk_4
begin_hunk_5_@emit_header:bb.a
  %i.db = tail call i32 @putc(i32 noundef %.sink92, ptr noundef %i.da) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !83

._crit_edge:                                      ; preds = %bb.k, %bb.f, %bb.d
  %..070 = tail call i32 @llvm.umax.i32(i32 %.070, i32 2) ; 4 uses
end_hunk_5
begin_hunk_6_@emit_header:bb.a
  %i.dv = tail call i32 @putc(i32 noundef %i.dt, ptr noundef %i.du) ; 0 uses
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 132
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !82 ; 2 uses
  %i.dz = and i32 %i.dy, 255
  %i.ea = load ptr, ptr %i.p, align 8, !tbaa !80
  %i.eb = tail call i32 @putc(i32 noundef %i.dz, ptr noundef %i.ea) ; 0 uses
end_hunk_6
begin_hunk_7_@output:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i32 36, ptr %i.ah, align 8, !tbaa !47
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !49
  tail call void %i.ai(ptr noundef nonnull %i.af) #6
  br label %flush_packet.exit

flush_packet.exit:                                ; preds = %bb.c, %bb.d
end_hunk_7
begin_hunk_8_@output:bb.a
  %i.an = add nsw i32 %i.am, -8
  store i32 %i.an, ptr %i.b, align 8, !tbaa !77
  %i.ao = icmp sgt i32 %i.am, 15
  br i1 %i.ao, label %bb.b, label %._crit_edge, !llvm.loop !84

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96
end_hunk_8
begin_hunk_9_@llvm.smax.i32
!78 = !{!36, !5, i64 120}
!79 = !{!36, !34, i64 72}
!80 = !{!36, !38, i64 24}
!81 = distinct !{!81, !75}
!82 = !{!9, !5, i64 132}
!83 = distinct !{!83, !75}
!84 = distinct !{!84, !75}
end_hunk_9
