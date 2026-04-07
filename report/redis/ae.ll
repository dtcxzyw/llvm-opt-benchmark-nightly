begin_hunk_0_@aeProcessEvents:bb.a

usUntilEarliestTimer.exit:                        ; preds = %bb.j
  %i.v = load ptr, ptr @getMonotonicUs, align 8, !tbaa !56
  %i.w = tail call i64 %i.v() #17
  %i.x = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !57
  %spec.select21.i = tail call i64 @llvm.usub.sat.i64(i64 %i.y, i64 %i.w) ; 3 uses
end_hunk_0
begin_hunk_1_@aeProcessEvents:bb.a
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ax = load i32, ptr %i.au, align 1, !tbaa !52, !alias.scope !65
  %i.ay = load i32, ptr %i.aw, align 1, !tbaa !52, !alias.scope !65
  %i.az = insertelement <2 x i32> poison, i32 %i.ax, i64 0
  %i.ba = insertelement <2 x i32> %i.az, i32 %i.ay, i64 1 ; 3 uses
  %i.bb = and <2 x i32> %i.ba, splat (i32 1)
end_hunk_1
begin_hunk_2_@aeProcessEvents:bb.a
  %i.bh = select <2 x i1> %i.bg, <2 x i32> %i.be, <2 x i32> splat (i32 3)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bk = load i32, ptr %i.bi, align 1, !tbaa !48, !alias.scope !65
  %i.bl = load i32, ptr %i.bj, align 1, !tbaa !48, !alias.scope !65
  %i.bm = insertelement <2 x i32> poison, i32 %i.bk, i64 0
  %i.bn = insertelement <2 x i32> %i.bm, i32 %i.bl, i64 1
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index
  %interleaved.vec = shufflevector <2 x i32> %i.bn, <2 x i32> %i.bh, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bo, align 4, !tbaa !9, !alias.scope !68, !noalias !65
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %scalar.ph.preheader, label %vector.body, !llvm.loop !70

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.preheader.i106
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i106 ], [ %n.vec, %vector.body ]
end_hunk_2
begin_hunk_3_@aeProcessEvents:bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bx = load i32, ptr %i.bw, align 1, !tbaa !48
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i ; 2 uses
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !73
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 %.3.i, ptr %i.bz, align 4, !tbaa !75
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %aeApiPoll.exit, label %scalar.ph, !llvm.loop !76

bb.l:                                             ; preds = %.thread
  %i.ca = icmp eq i32 %i.am, -1
end_hunk_3
begin_hunk_4_@aeProcessEvents:bb.a
  %.0.i105 = phi i32 [ 0, %bb.l ], [ 0, %bb.m ], [ %i.am, %scalar.ph ] ; 2 uses
  %.not90 = trunc i32 %1 to i1
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !77 ; 2 uses
  %.not91 = icmp eq ptr %i.cf, null
  %i.cg = and i32 %1, 16
  %.not92 = icmp eq i32 %i.cg, 0
end_hunk_4
begin_hunk_5_@aeProcessEvents:bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread130 ] ; 2 uses
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !21
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !73 ; 4 uses
  %i.cp = load ptr, ptr %i.ck, align 8, !tbaa !20 ; 2 uses
  %i.cq = sext i32 %i.co to i64                   ; 4 uses
  %i.cr = getelementptr inbounds [32 x i8], ptr %i.cp, i64 %i.cq ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !75 ; 7 uses
  %i.cu = load i32, ptr %i.cr, align 8, !tbaa !32 ; 3 uses
  %i.cv = and i32 %i.cu, 4
  %.not93 = icmp eq i32 %i.cv, 0                  ; 2 uses
end_hunk_5
begin_hunk_6_@aeProcessEvents:bb.a
.thread130:                                       ; preds = %bb.t, %.thread117, %bb.w, %bb.y, %bb.z, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ee = icmp samesign ult i64 %indvars.iv.next, %i.cl
  br i1 %i.ee, label %bb.q, label %._crit_edge.loopexit, !llvm.loop !78

._crit_edge.loopexit:                             ; preds = %.thread130
  %indvars = trunc i64 %indvars.iv.next to i32
end_hunk_6
begin_hunk_7_@aeProcessEvents:bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !24
  %i.ej = load ptr, ptr @getMonotonicUs, align 8, !tbaa !56
  %i.ek = tail call i64 %i.ej() #17
  %.not58.i = icmp eq ptr %i.eg, null
  br i1 %.not58.i, label %processTimeEvents.exit, label %.lr.ph.i

end_hunk_7
begin_hunk_8_@aeProcessEvents:bb.a
  %i.ep = getelementptr inbounds nuw i8, ptr %.04060.i, i64 56
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !60
  %.not54.i = icmp eq i32 %i.eq, 0
  br i1 %.not54.i, label %bb.ac, label %bb.ar, !llvm.loop !79

bb.ac:                                            ; preds = %bb.ab
  %i.er = getelementptr inbounds nuw i8, ptr %.04060.i, i64 40
end_hunk_8
begin_hunk_9_@aeProcessEvents:bb.a
bb.ai:                                            ; preds = %bb.ah
  %i.ey = getelementptr inbounds nuw i8, ptr %.04060.i, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !43
  tail call void %i.ex(ptr noundef nonnull %0, ptr noundef %i.ez) #17
  %i.fa = load ptr, ptr @getMonotonicUs, align 8, !tbaa !56
  %i.fb = tail call i64 %i.fa() #17
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.144.i = phi i64 [ %i.fb, %bb.ai ], [ %.04359.i, %bb.ah ]
  tail call void @zfree(ptr noundef nonnull %.04060.i) #17
  br label %bb.ar, !llvm.loop !79

bb.ak:                                            ; preds = %.lr.ph.i
  %.not51.i = icmp slt i64 %i.el, %i.ei
end_hunk_9
begin_hunk_10_@aeProcessEvents:bb.a
bb.al:                                            ; preds = %bb.ak
  %i.fc = getelementptr inbounds nuw i8, ptr %.04060.i, i64 48
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !39
  br label %bb.ar, !llvm.loop !79

bb.am:                                            ; preds = %bb.ak
  %i.fe = getelementptr inbounds nuw i8, ptr %.04060.i, i64 8 ; 2 uses
end_hunk_10
begin_hunk_11_@aeProcessEvents:bb.a
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !58
  %i.fl = getelementptr inbounds nuw i8, ptr %.04060.i, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !43
  %i.fn = tail call i32 %i.fk(ptr noundef nonnull %0, i64 noundef %i.el, ptr noundef %i.fm) #17 ; 2 uses
  %i.fo = load i32, ptr %i.fg, align 8, !tbaa !60
  %i.fp = add nsw i32 %i.fo, -1
  store i32 %i.fp, ptr %i.fg, align 8, !tbaa !60
  %i.fq = add nsw i32 %.061.i, 1                  ; 2 uses
  %i.fr = load ptr, ptr @getMonotonicUs, align 8, !tbaa !56
  %i.fs = tail call i64 %i.fr() #17               ; 3 uses
  %.not53.i = icmp eq i32 %i.fn, -1
  br i1 %.not53.i, label %bb.ap, label %bb.ao

end_hunk_11
begin_hunk_12_@aeWait:bb.a
  %3 = alloca %struct.pollfd, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i64 0, ptr %3, align 8
  store i32 %0, ptr %3, align 8, !tbaa !80
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 1, ptr %i.b, align 4, !tbaa !83
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_12
begin_hunk_13_@aeWait:bb.a

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 %i.c, ptr %i.e, align 4, !tbaa !83
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_13
begin_hunk_14_@aeWait:bb.a

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.j = load i16, ptr %i.i, align 2, !tbaa !84   ; 3 uses
  %i.k = and i16 %i.j, 1
  %i.l = lshr i16 %i.j, 1
  %i.m = and i16 %i.l, 2
end_hunk_14
begin_hunk_15_@aeMain:bb.a
  %i.b = tail call i32 @aeProcessEvents(ptr noundef nonnull %0, i32 noundef 27) ; 0 uses
  %.pr = load i32, ptr %i.a, align 8, !tbaa !25
  %.not = icmp eq i32 %.pr, 0
  br i1 %.not, label %bb.b, label %bb.c, !llvm.loop !85

bb.c:                                             ; preds = %bb.b
  ret void
end_hunk_15
begin_hunk_16_@aeSetAfterSleepProc
define dso_local void @aeSetAfterSleepProc(ptr noundef writeonly captures(none) initializes((72, 80)) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.a, align 8, !tbaa !77
  ret void
}

end_hunk_16
begin_hunk_17_@llvm.assume
!62 = distinct !{!62, !35}
!63 = !{!14, !17, i64 64}
!64 = distinct !{!64, !35}
!65 = !{!66}
!66 = distinct !{!66, !67}
!67 = distinct !{!67, !"LVerDomain"}
!68 = !{!69}
!69 = distinct !{!69, !67}
!70 = distinct !{!70, !35, !71, !72}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = !{!74, !10, i64 0}
!74 = !{!"aeFiredEvent", !10, i64 0, !10, i64 4}
!75 = !{!74, !10, i64 4}
!76 = distinct !{!76, !35, !71}
!77 = !{!14, !17, i64 72}
!78 = distinct !{!78, !35}
!79 = distinct !{!79, !35}
!80 = !{!81, !10, i64 0}
!81 = !{!"pollfd", !10, i64 0, !82, i64 4, !82, i64 6}
!82 = !{!"short", !11, i64 0}
!83 = !{!81, !82, i64 4}
!84 = !{!81, !82, i64 6}
!85 = distinct !{!85, !35}
end_hunk_17
