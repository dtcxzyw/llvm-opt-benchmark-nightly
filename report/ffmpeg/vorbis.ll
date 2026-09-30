Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vorbis?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ff_vorbis_ready_floor1_list:bb.a
  %i.d = icmp sgt i32 %2, 1
  br i1 %i.d, label %.lr.ph79.preheader, label %.loopexit

.lr.ph79.preheader:                               ; preds = %.critedge.preheader
  %i.e = add nsw i32 %2, -1
  %wide.trip.count95 = zext nneg i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph77

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %._crit_edge
  %indvars.iv81 = phi i64 [ 2, %.lr.ph73.preheader ], [ %indvars.iv.next82, %._crit_edge ] ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv81 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store i16 0, ptr %i.g, align 2, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 6 ; 2 uses
  store i16 1, ptr %i.h, align 2, !tbaa !35
  %i.i = trunc i64 %indvars.iv81 to i16
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i16 %i.i, ptr %i.j, align 2, !tbaa !13
  %i.k = icmp samesign ugt i64 %indvars.iv81, 2
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph73
  %i.l = load i16, ptr %i.f, align 2, !tbaa !14
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.m = phi i16 [ 0, %.lr.ph ], [ %i.ab, %bb.g ] ; 4 uses
  %i.n = phi i16 [ 1, %.lr.ph ], [ %i.ac, %bb.g ] ; 4 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.p = load i16, ptr %i.o, align 2, !tbaa !14   ; 3 uses
  %i.q = icmp ult i16 %i.p, %i.l
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = zext i16 %i.m to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !14
  %i.u = icmp ugt i16 %i.p, %i.t
  br i1 %i.u, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.v = trunc i64 %indvars.iv to i16             ; 2 uses
  store i16 %i.v, ptr %i.g, align 2, !tbaa !34
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.w = zext i16 %i.n to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !14
  %i.z = icmp ult i16 %i.p, %i.y
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = trunc i64 %indvars.iv to i16            ; 2 uses
  store i16 %i.aa, ptr %i.h, align 2, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d
  %i.ab = phi i16 [ %i.m, %bb.e ], [ %i.m, %bb.f ], [ %i.m, %bb.c ], [ %i.v, %bb.d ]
  %i.ac = phi i16 [ %i.n, %bb.e ], [ %i.aa, %bb.f ], [ %i.n, %bb.c ], [ %i.n, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv81
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.g, %.lr.ph73
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %.critedge.preheader, label %.lr.ph73, !llvm.loop !31

.critedge.loopexit:                               ; preds = %bb.l
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %exitcond96.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count95
  br i1 %exitcond96.not, label %.loopexit, label %.lr.ph77, !llvm.loop !32

.lr.ph77:                                         ; preds = %.critedge.loopexit, %.lr.ph79.preheader
  %indvars.iv92 = phi i64 [ 0, %.lr.ph79.preheader ], [ %indvars.iv.next93, %.critedge.loopexit ] ; 2 uses
  %indvars.iv86 = phi i64 [ 1, %.lr.ph79.preheader ], [ %indvars.iv.next87, %.critedge.loopexit ] ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv92 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 2 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph77, %bb.l
  %indvars.iv88 = phi i64 [ %indvars.iv86, %.lr.ph77 ], [ %indvars.iv.next89, %bb.l ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv88 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !14
  %i.ai = icmp eq i16 %i.ae, %i.ah
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str) #10
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.aj = load i16, ptr %i.af, align 2, !tbaa !13 ; 2 uses
  %i.ak = zext i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 2 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !13 ; 2 uses
  %i.ap = zext i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !14
  %i.as = icmp ugt i16 %i.am, %i.ar
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i16 %i.ao, ptr %i.af, align 2, !tbaa !13
  store i16 %i.aj, ptr %i.an, align 2, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  br i1 %exitcond91.not, label %.critedge.loopexit, label %bb.h, !llvm.loop !33

.loopexit:                                        ; preds = %.critedge.loopexit, %.critedge.preheader, %bb.i
  %.2 = phi i32 [ -1094995529, %bb.i ], [ 0, %.critedge.preheader ], [ 0, %.critedge.loopexit ]
  ret i32 %.2
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_vorbis_floor1_render_list(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = load i16, ptr %2, align 2, !tbaa !37
  %i.b = zext i16 %i.a to i32
  %i.c = mul nsw i32 %4, %i.b                     ; 2 uses
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.03644 = phi i32 [ %i.c, %.lr.ph.preheader ], [ %.1, %bb.d ] ; 2 uses
  %.03743 = phi i32 [ 0, %.lr.ph.preheader ], [ %.138, %bb.d ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !13
  %i.h = zext i16 %i.g to i64                     ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !10
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.l = load i16, ptr %i.k, align 2, !tbaa !14
  %i.m = zext i16 %i.l to i32                     ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.h
  %i.o = load i16, ptr %i.n, align 2, !tbaa !37
  %i.p = zext i16 %i.o to i32
  %i.q = mul nsw i32 %4, %i.p                     ; 3 uses
  %i.r = icmp slt i32 %.03743, %6
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = tail call i32 @llvm.smin.i32(i32 %6, i32 %i.m)
  tail call fastcc void @render_line(i32 noundef %.03743, i32 noundef %.03644, i32 noundef %i.s, i32 noundef %i.q, ptr noundef %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %.lr.ph
  %.138 = phi i32 [ %.03743, %.lr.ph ], [ %i.m, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %.1 = phi i32 [ %.03644, %.lr.ph ], [ %i.q, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.not42 = icmp sge i32 %.138, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %.not42, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.239 = phi i32 [ 0, %bb.a ], [ %.138, %bb.d ]  ; 2 uses
  %.2 = phi i32 [ %i.c, %bb.a ], [ %.1, %bb.d ]   ; 2 uses
  %i.t = icmp slt i32 %.239, %6
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  tail call fastcc void @render_line(i32 noundef %.239, i32 noundef %.2, i32 noundef %6, i32 noundef %.2, ptr noundef %5)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @render_line(i32 noundef range(i32 0, 65536) %0, i32 noundef %1, i32 noundef range(i32 0, -2147483648) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #6 {
bb.a:
  %i.a = sub nsw i32 %3, %1                       ; 3 uses
  %i.b = sub nsw i32 %2, %0                       ; 6 uses
  %i.c = sub nsw i32 0, %i.b                      ; 3 uses
  %i.d = tail call i32 @llvm.abs.i32(i32 %i.a, i1 true) ; 5 uses
  %.inv = icmp sgt i32 %i.a, -1
  %i.e = select i1 %.inv, i32 1, i32 -1           ; 3 uses
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %.0.i5354 = tail call i32 @llvm.umin.i32(i32 %5, i32 255)
  %i.f = zext nneg i32 %.0.i5354 to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @ff_vorbis_floor1_inverse_db_table, i64 %i.f
  %i.h = load float, ptr %i.g, align 4, !tbaa !41
  %i.i = zext nneg i32 %0 to i64                  ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.i
  store float %i.h, ptr %i.j, align 4, !tbaa !41
  %i.k = shl nuw nsw i32 %i.d, 1
  %.not = icmp sgt i32 %i.k, %i.b
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i32 %2, -1
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = sub nsw i64 %i.i, %i.m                   ; 3 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %4, i64 %i.m ; 3 uses
  %i.p = icmp slt i64 %i.n, -1
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.q = sub nsw i32 %i.d, %i.b
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.043.i = phi i32 [ %i.c, %.lr.ph.i ], [ %.1.i, %bb.e ]
  %.02742.i = phi i64 [ %i.n, %.lr.ph.i ], [ %.128.i, %bb.e ] ; 2 uses
  %.02941.i = phi i32 [ %1, %.lr.ph.i ], [ %.130.i, %bb.e ] ; 3 uses
  %i.r = add nuw nsw i64 %.02742.i, 1             ; 2 uses
  %i.s = add nsw i32 %.043.i, %i.d                ; 3 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %bb.d, label %._crit_edge46.i

._crit_edge46.i:                                  ; preds = %bb.c
  %.pre.i = tail call i32 @llvm.smax.i32(i32 %.02941.i, i32 0)
  %.pre50.i = tail call i32 @llvm.umin.i32(i32 %.pre.i, i32 255)
  %.pre.i.a = zext nneg i32 %.pre50.i to i64
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr @ff_vorbis_floor1_inverse_db_table, i64 %.pre.i.a
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !41
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = add nsw i32 %i.q, %i.s
  %i.v = add i32 %.02941.i, %i.e                  ; 2 uses
  %6 = tail call i32 @llvm.smax.i32(i32 %i.v, i32 0)
  %.0.i4042.i = tail call i32 @llvm.umin.i32(i32 %6, i32 255)
  %i.w = zext nneg i32 %.0.i4042.i to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @ff_vorbis_floor1_inverse_db_table, i64 %i.w
  %i.y = load float, ptr %i.x, align 4, !tbaa !41 ; 2 uses
  %i.z = add nsw i64 %.02742.i, 2
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.r
  store float %i.y, ptr %i.aa, align 4, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge46.i
  %7 = phi float [ %.pre, %._crit_edge46.i ], [ %i.y, %bb.d ]
  %.130.i = phi i32 [ %.02941.i, %._crit_edge46.i ], [ %i.v, %bb.d ] ; 2 uses
  %.128.i = phi i64 [ %i.r, %._crit_edge46.i ], [ %i.z, %bb.d ] ; 4 uses
  %.1.i = phi i32 [ %i.s, %._crit_edge46.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.o, i64 %.128.i
  store float %7, ptr %i.ab, align 4, !tbaa !41
  %i.ac = icmp slt i64 %.128.i, -1
  br i1 %i.ac, label %bb.c, label %._crit_edge.i, !llvm.loop !38

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.029.lcssa.i = phi i32 [ %1, %bb.b ], [ %.130.i, %bb.e ]
  %.027.lcssa.i = phi i64 [ %i.n, %bb.b ], [ %.128.i, %bb.e ]
  %.0.lcssa.i = phi i32 [ %i.c, %bb.b ], [ %.1.i, %bb.e ]
  %i.ad = icmp slt i64 %.027.lcssa.i, 0
  br i1 %i.ad, label %bb.f, label %render_line_unrolled.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.ae = add nsw i32 %.0.lcssa.i, %i.d
  %i.af = icmp slt i32 %i.ae, 0
  %i.ag = select i1 %i.af, i32 0, i32 %i.e
  %.2.i = add i32 %i.ag, %.029.lcssa.i
  %8 = tail call i32 @llvm.smax.i32(i32 %.2.i, i32 0)
  %.0.i41.i = tail call i32 @llvm.umin.i32(i32 %8, i32 255)
  %i.ah = zext nneg i32 %.0.i41.i to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @ff_vorbis_floor1_inverse_db_table, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !41
  store float %i.aj, ptr %i.o, align 4, !tbaa !41
  br label %render_line_unrolled.exit

bb.g:                                             ; preds = %bb.a
  %i.ak = sdiv i32 %i.a, %i.b                     ; 2 uses
  %i.al = tail call i32 @llvm.abs.i32(i32 %i.ak, i1 true)
  %i.am = mul nsw i32 %i.al, %i.b
  %i.an = sub nsw i32 %i.d, %i.am
  %i.ao = add nuw nsw i32 %0, 1
  %i.ap = icmp samesign ult i32 %i.ao, %2
  br i1 %i.ap, label %.lr.ph.preheader, label %render_line_unrolled.exit

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.aq = add nuw nsw i64 %i.i, 1
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.aq, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.055 = phi i32 [ %i.c, %.lr.ph.preheader ], [ %.1, %.lr.ph ]
  %.04354 = phi i32 [ %1, %.lr.ph.preheader ], [ %.144, %.lr.ph ]
  %i.ar = add nsw i32 %.04354, %i.ak
  %i.as = add nsw i32 %.055, %i.an                ; 2 uses
  %i.at = icmp sgt i32 %i.as, -1                  ; 2 uses
  %i.au = select i1 %i.at, i32 %i.e, i32 0
  %.144 = add nsw i32 %i.ar, %i.au                ; 2 uses
  %i.av = select i1 %i.at, i32 %i.b, i32 0
  %.1 = sub nsw i32 %i.as, %i.av
  %9 = tail call i32 @llvm.smax.i32(i32 %.144, i32 0)
  %.0.i55 = tail call i32 @llvm.umin.i32(i32 %9, i32 255)
  %i.aw = zext nneg i32 %.0.i55 to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @ff_vorbis_floor1_inverse_db_table, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !41
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store float %i.ay, ptr %i.az, align 4, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %render_line_unrolled.exit, label %.lr.ph, !llvm.loop !39

render_line_unrolled.exit:                        ; preds = %.lr.ph, %bb.g, %bb.f, %._crit_edge.i
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!6, !6, i64 0}
!11 = !{!"short", !5, i64 0}
!12 = !{!"vorbis_floor1_entry", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6}
!13 = !{!12, !11, i64 2}
!14 = !{!12, !11, i64 0}
!15 = distinct !{!15, !9, !18, !19}
!16 = distinct !{!16, !9, !19, !18}
!17 = distinct !{!17, !9}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !29}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !29}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = !{!5, !5, i64 0}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = !{!12, !11, i64 4}
!35 = !{!12, !11, i64 6}
!36 = distinct !{!36, !9}
!37 = !{!11, !11, i64 0}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = !{!"float", !5, i64 0}
!41 = !{!40, !40, i64 0}
end_hunk_0
